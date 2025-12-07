id sub_1BD6AE700@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC18, &qword_1BE0EEFC0);
  return sub_1BD6ADFE4(v7, a2 + *(v5 + 44));
}

uint64_t sub_1BD6AE768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD6AE7D0()
{
  result = qword_1EBD4FC48;
  if (!qword_1EBD4FC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FC50, &unk_1BE0EEFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC48);
  }

  return result;
}

uint64_t sub_1BD6AE834()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD6AE8A8()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD6AE91C()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator];
  if (v1)
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_getKeyPath();
    v4 = v1;
    sub_1BE04D8B4(v50);
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
    v3, v12, v13, v14, v15, v16, v17, v18;
    v19 = v50[0];
    if (v50[0] || (v20 = *&v0[OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction], v50[4] = sub_1BD6AF77C, v51 = v0, v50[0] = MEMORY[0x1E69E9820], v50[1] = 1107296256, v50[2] = sub_1BD307EA8, v50[3] = &block_descriptor_159, v21 = _Block_copy(v50), v22 = v51, v23 = v20, sub_1BE048964(), v22, v24, v25, v26, v27, v28, v29, v30, v31 = [v4 iconForTransaction:v23 size:0 ignoreLogoURL:0 requestType:v21 iconHandler:{45.0, 45.0}], _Block_release(v21), v23, swift_getKeyPath(), swift_getKeyPath(), v50[0] = v31, sub_1BE048964(), sub_1BE04D8C4(), v32 = swift_getKeyPath(), v33 = swift_getKeyPath(), sub_1BE04D8B4(v50), v32, v34, v35, v36, v37, v38, v39, v40, v33, v41, v42, v43, v44, v45, v46, v47, (v19 = v50[0]) != 0))
    {
    }

    else
    {
      v48 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      swift_getKeyPath();
      swift_getKeyPath();
      v50[0] = v48;
      sub_1BE048964();
      v49 = v48;
      sub_1BE04D8C4();
    }
  }
}

uint64_t sub_1BD6AEB94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1BD6AF784;
  v27 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_33_5;
  v15 = _Block_copy(aBlock);
  v16 = v27;
  v17 = a1;
  v16, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void *sub_1BD6AEE50(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v2;
      return sub_1BE04D8C4();
    }
  }

  return result;
}

uint64_t sub_1BD6AEEEC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__presentationInformation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407E8, &qword_1BE0EF170);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionPresentation(uint64_t a1)
{
  result = qword_1EBD4FC68;
  if (!qword_1EBD4FC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6AF054(uint64_t a1)
{
  sub_1BD2B01E4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD2B0248(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD6AF138@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TransactionPresentation(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD6AF178(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6AF1F0(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD6AF270(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v3 = v2;
  return sub_1BE04D8C4();
}

void sub_1BD6AF2E8(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD6AF368(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD6AF3E0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v79);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v79;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_1BE04D8B4(&v79);
  v21, v23, v24, v25, v26, v27, v28, v29;
  v22, v30, v31, v32, v33, v34, v35, v36;
  v37 = v79;
  result = [*(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (result)
  {
    v39 = result;
    v40 = sub_1BE052434();
    v42 = v41;

    result = [*(a2 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
    if (result)
    {
      v43 = result;
      v44 = sub_1BE052434();
      v46 = v45;

      if (v40 == v44 && v42 == v46)
      {
        v42, v47, v48, v49, v50, v51, v52, v53;
        v46, v72, v73, v74, v75, v76, v77, v78;
      }

      else
      {
        v55 = sub_1BE053B84();
        v42, v56, v57, v58, v59, v60, v61, v62;
        v46, v63, v64, v65, v66, v67, v68, v69;
        if ((v55 & 1) == 0)
        {
          v70 = 0;
          v71 = v20;
          v20 = v37;
LABEL_11:

          return v70;
        }
      }

      v70 = [v20 isEqual_];
      v71 = v37;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6AF5A8(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
  sub_1BE04D874();
  (*(v8 + 32))(v3 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
  *(v3 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator) = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = a1;
  *(v3 + v12) = a3;
  swift_beginAccess();
  v17 = a2;
  sub_1BD0E5E8C(0, &qword_1EBD407E0, 0x1E69B8EC0);
  v13 = a1;
  v14 = a3;
  v15 = a2;
  sub_1BE04D874();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  return v3;
}

unint64_t sub_1BD6AF794()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  swift_beginAccess();
  v3 = v2[9];
  sub_1BE048C84();
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >> 62)
  {
LABEL_25:
    v18 = sub_1BE053704();
  }

  else
  {
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v18 == v19)
    {
      goto LABEL_17;
    }

    if (v20)
    {
      break;
    }

    if (v19 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(v3 + 8 * v19 + 32) == v0)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (__OFADD__(v19++, 1))
    {
      goto LABEL_24;
    }
  }

  v22 = MEMORY[0x1BFB40900](v19, v3);
  swift_unknownObjectRelease();
  if (v22 != v0)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (!v19)
  {
LABEL_17:
    v3, v11, v12, v13, v14, v15, v16, v17;
    return 0;
  }

  result = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v20)
  {
    v30 = MEMORY[0x1BFB40900](result, v3);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v30 = *(v3 + 32 + 8 * result);
  sub_1BE048964();
LABEL_21:
  v3, v23, v24, v25, v26, v27, v28, v29;
  return v30;
}

uint64_t sub_1BD6AF8F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B7020;
  *(v6 + 32) = v2;
  *(v5 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BD12FFE4;
  *(v7 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BD6B0468;
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90, &unk_1BE0D0AA0);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *a2 = v13;
  sub_1BE048964();

  return sub_1BE048964();
}

void sub_1BD6AFAA8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1BE053704())
  {
    if (sub_1BE053704())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1BFB40900](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1BE053704();
LABEL_13:
      if (v3)
      {
        sub_1BD1DDD20(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1BD6AFB80()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1BE053704())
  {
    if (sub_1BE053704())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        sub_1BE048964();
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1BFB40900](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1BE053704();
LABEL_13:
      if (v3)
      {
        sub_1BD1DE998(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1BD6AFC58(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  while (1)
  {
    v22 = *(a1 + 16);
    if (v22 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_45;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    swift_beginAccess();
    v23 = *(a1 + 16);
    v24 = v23 >> 62;
    if (!(v23 >> 62))
    {
      break;
    }

    if (!sub_1BE053704())
    {
      goto LABEL_53;
    }

    if (!sub_1BE053704())
    {
      goto LABEL_54;
    }

LABEL_9:
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1BFB40900](0, v23);
      v26 = v23 & 0xFFFFFFFFFFFFFF8;
      if (!v24)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v25 = *(v23 + 32);
      sub_1BE048964();
      v26 = v23 & 0xFFFFFFFFFFFFFF8;
      if (!v24)
      {
LABEL_12:
        v27 = *(v26 + 16);
        if (!v27)
        {
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    if (!sub_1BE053704())
    {
      goto LABEL_51;
    }

    if (sub_1BE053704() < 1)
    {
      goto LABEL_52;
    }

    v27 = sub_1BE053704();
LABEL_23:
    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + 16) = v23;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v24)
      {
        if (v28 <= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_29:
      sub_1BE053704();
      goto LABEL_30;
    }

    if (v24)
    {
      goto LABEL_29;
    }

LABEL_30:
    v23 = sub_1BE053884();
    *(a1 + 16) = v23;
LABEL_31:
    sub_1BD1DE898(0, 1, 0);
    *(a1 + 16) = v23;
    swift_endAccess();
    sub_1BE048964();
    if ([a2 containsObject_])
    {
      v25, v30, v31, v32, v33, v34, v35, v36;
      goto LABEL_47;
    }

    swift_beginAccess();
    v6 = *(a1 + 16);
    v37 = v6 >> 62;
    if (v6 >> 62)
    {
      if (sub_1BE053704() < 0)
      {
        goto LABEL_55;
      }

      if (sub_1BE053704() < 0)
      {
        goto LABEL_56;
      }

      v41 = sub_1BE053704();
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        v25 = 0;
LABEL_47:
        *a3 = v25;
        return;
      }
    }

    else
    {
      v38 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_44;
      }
    }

    sub_1BE048964();
    v40 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + 16) = v6;
    if (!v40)
    {
      if (v37)
      {
LABEL_2:
        sub_1BE053704();
      }

LABEL_3:
      v6 = sub_1BE053884();
      *(a1 + 16) = v6;
      goto LABEL_4;
    }

    if (v37)
    {
      goto LABEL_2;
    }

    if (v39 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_1BD1DCF24(0, 0, 1, v25);
    *(a1 + 16) = v6;
    swift_endAccess();
    v25, v7, v8, v9, v10, v11, v12, v13;
    swift_beginAccess();
    v14 = v25[9];
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD1DE2D8(0, 0, v14);
    swift_endAccess();
    v14, v15, v16, v17, v18, v19, v20, v21;
    [a2 addObject_];
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1BD6B0020(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_beginAccess();
  sub_1BD6AFB80();
  v6 = v5;
  swift_endAccess();
  swift_beginAccess();
  v7 = *(v6 + 72);
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD1DE2D8(0, 0, v7);
  swift_endAccess();
  v7, v8, v9, v10, v11, v12, v13, v14;
LABEL_6:
  *a2 = v6;
}

uint64_t sub_1BD6B0128@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    sub_1BE053A14();
    result = swift_endAccess();
    if (!v15)
    {
      break;
    }

    if (v15[2] == *(a2 + 16))
    {
      v15, v8, v9, v10, v11, v12, v13, v14;
      *(a3 + 16) = 1;
    }

    else
    {
      if (*(a3 + 16))
      {
        break;
      }

      v15, v8, v9, v10, v11, v12, v13, v14;
    }

    swift_beginAccess();
  }

  *a4 = v15;
  return result;
}

uint64_t sub_1BD6B0218@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4)
  {
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  swift_beginAccess();
  *(a1 + 16) = Strong;
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = Strong;
  return sub_1BE048964();
}

void sub_1BD6B02A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *a2 = v4;
  if (v4)
  {
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  swift_beginAccess();
  *(a1 + 16) = Strong;
}

void *sub_1BD6B0320(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B7020;
  *(v5 + 32) = a2;
  v4[2] = v5;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  inited[2] = sub_1BD12F81C;
  inited[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90, &unk_1BE0D0AA0);
  v7 = swift_initStackObject();
  v7[2] = inited;
  sub_1BE048964();
  sub_1BE048964();
  while (1)
  {
    sub_1BD6B0020(v4, &v31);
    if (!v31)
    {
      v15 = 0;
      goto LABEL_7;
    }

    if (v31[2] == a1)
    {
      break;
    }

    v31, v8, v9, v10, v11, v12, v13, v14;
  }

  v15 = v31;
LABEL_7:
  inited, v8, v9, v10, v11, v12, v13, v14;
  v7, v16, v17, v18, v19, v20, v21, v22;
  v4, v23, v24, v25, v26, v27, v28, v29;
  return v15;
}

unint64_t sub_1BD6B0474()
{
  result = qword_1EBD4FC78;
  if (!qword_1EBD4FC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FC80, &qword_1BE0EF178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC78);
  }

  return result;
}

void sub_1BD6B04F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 24))
  {
    sub_1BD1B6140(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1BD1DAD20(v22, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13;
    *v3 = v21;
  }

  else
  {
    sub_1BD0DE53C(a1, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    sub_1BD6B1E10(a2, a3, v22);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD0DE53C(v22, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  }
}

void sub_1BD6B05C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1BD1DAE70(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  else
  {
    v8 = sub_1BD14BFD0();
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v22 = *v4;
      if (!v11)
      {
        sub_1BD506274();
        v12 = v22;
      }

      *(*(v12 + 56) + 16 * v10 + 8), v13, v14, v15, v16, v17, v18, v19;
      sub_1BD505344(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

void sub_1BD6B06D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v4;
    sub_1BD1DB308(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    a4, v11, v12, v13, v14, v15, v16, v17;
    *v4 = v43;
  }

  else
  {
    v18 = sub_1BD148F70(a3, a4);
    v20 = v19;
    a4, v19, v21, v22, v23, v24, v25, v26;
    if (v20)
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v5;
      v44 = *v5;
      if (!v27)
      {
        sub_1BD5069C0();
        v35 = v44;
      }

      *(*(v35 + 48) + 16 * v18 + 8), v28, v29, v30, v31, v32, v33, v34;
      *(*(v35 + 56) + 16 * v18 + 8), v36, v37, v38, v39, v40, v41, v42;
      sub_1BD50550C(v18, v35);
      *v5 = v35;
    }
  }
}

void sub_1BD6B07D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_1BD1DB7CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_1BD148F70(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_1BD5071E8();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_1BD509760();
      *v4 = v33;
    }
  }
}

void sub_1BD6B08D0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BD6B1FAC(a2, a3, MEMORY[0x1E6969530], sub_1BD5059DC, sub_1BD5079C8, v9);
    a3, v15, v16, v17, v18, v19, v20, v21;
    sub_1BD0DE53C(v9, &unk_1EBD39970, &unk_1BE0B9F80);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v3;
    sub_1BD1DBAC4(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v23, v24, v25, v26, v27, v28, v29;
    *v3 = v31;
  }
}

void sub_1BD6B0AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v3;
    sub_1BD1DBB18(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v41;
  }

  else
  {
    v16 = sub_1BD148F70(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v42 = *v4;
      if (!v25)
      {
        sub_1BD507BC8();
        v33 = v42;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;
      *(*(v33 + 56) + 8 * v16), v34, v35, v36, v37, v38, v39, v40;
      sub_1BD505A0C(v16, v33);
      *v4 = v33;
    }
  }
}

void sub_1BD6B0BDC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD3CF70, &qword_1BE0BA000);
    sub_1BD6B1FAC(a2, a3, MEMORY[0x1E6968FB0], sub_1BD505D2C, sub_1BD5085A0, v9);
    a3, v15, v16, v17, v18, v19, v20, v21;
    sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v3;
    sub_1BD1DC1E4(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v23, v24, v25, v26, v27, v28, v29;
    *v3 = v31;
  }
}

uint64_t sub_1BD6B0DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_1BD1B6150(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1BD1DC3F4(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1BD0DE53C(a1, &qword_1EBD4FCB0, &qword_1BE0EF368);
    v7 = sub_1BD149084(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1BD508850();
        v11 = v13;
      }

      sub_1BD1B6150(*(v11 + 56) + 40 * v9, v14);
      sub_1BD505F38(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1BD0DE53C(v14, &qword_1EBD4FCB0, &qword_1BE0EF368);
  }

  return result;
}

void static Analytics.trackUserEducationDemo(event:pageTag:buttonTag:source:additionalDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v17 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  v18 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = a1;
  *(inited + 72) = a2;
  v19 = v17;
  sub_1BE048C84();
  v20 = v18;
  sub_1BE048C84();
  v21 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v49 = v21;
  if ((a8 & 1) == 0)
  {
    v22 = PKApplePayUserEducationDemoSourceToString();
    if (v22)
    {
      v23 = v22;
      v24 = sub_1BE052434();
      v26 = v25;

      v27 = *MEMORY[0x1E69BA338];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v21;
      sub_1BD1DAE70(v24, v26, v27, isUniquelyReferenced_nonNull_native);

      v49 = v21;
    }
  }

  if (a6)
  {
    v29 = *MEMORY[0x1E69BA440];
    sub_1BE048C84();
    sub_1BD6B05C0(a5, a6, v29);
    v21 = v49;
  }

  if (a9)
  {
    sub_1BE048C84();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v21;
    sub_1BD6B8B40(a9, sub_1BD6B2140, 0, v30, &v48);
    a9, v31, v32, v33, v34, v35, v36, v37;
    v21 = v48;
    v49 = v48;
  }

  v38 = objc_opt_self();
  v39 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v40 = sub_1BE052224();
  v21, v41, v42, v43, v44, v45, v46, v47;
  [v38 subject:v39 sendEvent:v40];
}

uint64_t sub_1BD6B119C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BD6B04D8(*a1);
  v5 = v4;
  v6 = sub_1BD6B04D8(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1BE053B84();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_1BD6B1224()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD6B04D8(v1);
  v3 = v2;
  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD6B1288(uint64_t a1)
{
  sub_1BD6B04D8(*v1);
  v3 = v2;
  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD6B12DC(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  sub_1BD6B04D8(v2);
  v4 = v3;
  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

unint64_t sub_1BD6B133C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD6B9D24(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD6B136C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD6B04D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD6B1398(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 <= 9u)
    {
      return sub_1BE052434();
    }

    if (a1 == 10)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    if (a1 < 4u || a1 == 4)
    {
      return sub_1BE052434();
    }

    return 0x41746E756F636361;
  }
}

void sub_1BD6B14D4(void *a1, void *a2)
{
  sub_1BE048C84();
  v4 = [a2 analyticsProductType];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;

    v9 = *MEMORY[0x1E69BAC90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v6, v8, v9, isUniquelyReferenced_nonNull_native);
  }

  v11 = [a2 analyticsSubject];
  if (!v11)
  {
    v11 = *MEMORY[0x1E69BB6E0];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v20 = sub_1BE052224();
  a1, v13, v14, v15, v16, v17, v18, v19;
  [ObjCClassFromMetadata subject:v11 sendEvent:v20];
}

uint64_t sub_1BD6B1634(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v3 = 2;
      MEMORY[0x1BFB3F8C0](v1, &v3);
    }
  }

  return sub_1BE052434();
}

unint64_t sub_1BD6B16D0(char a1)
{
  result = 0x6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 0x7373696D736964;
      break;
    case 2:
      result = 0x7972616D697270;
      break;
    case 3:
      result = 0x79656E6F4D646461;
      break;
    case 4:
      result = 0x614377654E646461;
      break;
    case 5:
      result = 0x41676E696C6C6962;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x73647261776572;
      break;
    case 9:
      result = 0x7961507075746573;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0x6150656B6F766572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static Analytics.peerPaymentButtonTapAnalyticsEvent(with:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BA680];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_1BD6B8B40(a1, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v21);
  a1, v13, v14, v15, v16, v17, v18, v19;
  return v21;
}

unint64_t static Analytics.peerPaymentAnalyticsEvent(with:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v3 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v4;
  v5 = v3;
  v6 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v6;
  sub_1BD6B8B40(a1, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v16);
  a1, v8, v9, v10, v11, v12, v13, v14;
  return v16;
}

PassKitUI::Analytics::RemoteNetworkPaymentLoadingViewAnalyticsState_optional __swiftcall Analytics.RemoteNetworkPaymentLoadingViewAnalyticsState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_1BE053A44();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 8;
  if (v4 < 8)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

unint64_t Analytics.RemoteNetworkPaymentLoadingViewAnalyticsState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x466C616974696E69;
  v3 = 0xD000000000000017;
  if (v1 != 6)
  {
    v3 = 0x7369447465656873;
  }

  v4 = 0x46676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x6D73694472657375;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1BD6B1CE0(unint64_t *a1@<X8>)
{
  v2 = 0xEE006572756C6961;
  v3 = *v1;
  v4 = 0x466C616974696E69;
  v5 = 0x80000001BE117EB0;
  v6 = 0xD000000000000017;
  if (v3 != 6)
  {
    v6 = 0x7369447465656873;
    v5 = 0xEE0064657373696DLL;
  }

  v7 = 0x46676E6964616F6CLL;
  v8 = 0xED00006465737369;
  if (v3 == 4)
  {
    v8 = 0xEE006572756C6961;
  }

  else
  {
    v7 = 0x6D73694472657375;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xD000000000000014;
  v10 = 0x80000001BE117E60;
  if (v3 != 2)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001BE117E80;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v2 = 0x80000001BE117E40;
  }

  if (*v1 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v4 = v9;
    v11 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v5;
  }

  *a1 = v12;
  a1[1] = v13;
}

double sub_1BD6B1E10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BD148F70(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BD5060D0();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_1BD1B6140((*(v17 + 56) + 32 * v8), a3);
    sub_1BD505194(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BD6B1F0C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1BD149084(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v14 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v14;
  }

  v12 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v12;
}

uint64_t sub_1BD6B1FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1BD148F70(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    v33 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v23 = v33;
    }

    *(*(v23 + 48) + 16 * v14 + 8), v16, v17, v18, v19, v20, v21, v22;
    v24 = *(v23 + 56);
    v25 = a3(0);
    v32 = *(v25 - 8);
    (*(v32 + 32))(a6, v24 + *(v32 + 72) * v14, v25);
    a4(v14, v23);
    *v10 = v23;
    v26 = *(v32 + 56);
    v27 = a6;
    v28 = 0;
    v29 = v25;
  }

  else
  {
    v30 = a3(0);
    v26 = *(*(v30 - 8) + 56);
    v29 = v30;
    v27 = a6;
    v28 = 1;
  }

  return v26(v27, v28, 1, v29);
}

double sub_1BD6B2140@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  v5 = v2;

  sub_1BE048C84();
  return result;
}

void sub_1BD6B2184(char a1, unsigned __int8 a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v9 = sub_1BD6B16D0(a1);
  v11 = v10;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v12 = *MEMORY[0x1E69BABE8];
  *(inited + 80) = *MEMORY[0x1E69BABE8];
  *(inited + 88) = sub_1BD6B1398(a2);
  *(inited + 96) = v13;
  v14 = v6;
  v15 = v8;
  v16 = v12;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1BE0B98D0;
  *(v21 + 32) = v17;
  *(v21 + 40) = sub_1BE052434();
  *(v21 + 48) = v22;
  *(v21 + 56) = v18;
  *(v21 + 64) = v9;
  *(v21 + 72) = v11;
  *(v21 + 80) = v19;
  *(v21 + 88) = sub_1BD6B1398(a2);
  *(v21 + 96) = v23;
  v24 = sub_1BD1AAF50(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v20[2])
  {
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v24;
    sub_1BD6B8B40(v20, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v53);
    v20, v26, v27, v28, v29, v30, v31, v32;
    v24 = v53;
  }

  if (a3)
  {
    v33 = a3;
  }

  else
  {
    v33 = *MEMORY[0x1E69BB6E0];
  }

  v34 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v35 = a3;
  v36 = sub_1BE052224();
  v24, v37, v38, v39, v40, v41, v42, v43;
  [v34 subject:v33 sendEvent:v36];

  v20, v44, v45, v46, v47, v48, v49, v50;
}

unint64_t sub_1BD6B2434(uint64_t a1)
{
  if (!PKOslo2024UIUpdatesEnabled())
  {
    return 0;
  }

  v2 = sub_1BD1C2074(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v4 = *MEMORY[0x1E69BA4D8];
  *(inited + 32) = *MEMORY[0x1E69BA4D8];
  v5 = inited + 32;
  if (v2 > 3u)
  {
    if (v2 > 5u)
    {
      if (v2 == 6)
      {
        v7 = 0x80000001BE117300;
        v6 = 0xD000000000000019;
      }

      else
      {
        v7 = 0xE800000000000000;
        v6 = 0x797469746E656469;
      }
    }

    else if (v2 == 4)
    {
      v7 = 0xEA00000000006472;
      v6 = 0x614365676E616863;
    }

    else
    {
      v6 = 0xD000000000000010;
      v7 = 0x80000001BE1172E0;
    }
  }

  else if (v2 > 1u)
  {
    if (v2 == 2)
    {
      v7 = 0x80000001BE117290;
      v6 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x80000001BE1172B0;
      v6 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v6 = 0x636972656E6567;
    if (v2)
    {
      v6 = 0xD000000000000013;
      v7 = 0x80000001BE117270;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v9 = inited;
  v10 = v4;
  v11 = sub_1BD1AAF50(v9);
  swift_setDeallocating();
  sub_1BD0DE53C(v5, &qword_1EBD3F590, &qword_1BE0C0E20);
  return v11;
}

void sub_1BD6B261C(uint64_t a1)
{
  v2 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  v3 = sub_1BD6B2434(a1);
  if (v3)
  {
    if (v3[2])
    {
      v11 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v2;
      sub_1BD6B8B40(v11, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v154);
      v11, v13, v14, v15, v16, v17, v18, v19;
      v2 = v154;
    }

    else
    {
      v3, v4, v5, v6, v7, v8, v9, v10;
    }
  }

  v20 = *(a1 + qword_1EBDAAD68 + 32);
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = [v20 currencyCode];
  [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BB350]];

  v23 = [v20 totalSummaryItem];
  v24 = [v23 type];

  if (v24)
  {
    v25 = [v20 totalSummaryItem];
    v26 = [v25 type];

    if (v26 == 1)
    {
      v27 = PKAnalyticsReportSwitchToggleResultValue();
      [v21 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69BB328]];

      [v21 setObject:@"Amount Pending" forKeyedSubscript:*MEMORY[0x1E69BB338]];
    }
  }

  else
  {
    v28 = [v20 transactionAmount];
    v29 = [v20 totalSummaryItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([MEMORY[0x1E696AB90] zero], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v28, "isEqual:", v31), v31, v32))
    {
      v33 = PKAnalyticsReportSwitchToggleResultValue();
      [v21 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69BB328]];

      [v21 setObject:@"Free" forKeyedSubscript:*MEMORY[0x1E69BB338]];
    }

    else
    {
      v34 = [v20 initialTransactionAmount];
      if (v34)
      {
        v35 = [MEMORY[0x1E696AB90] zero];
        v36 = [v34 isEqual:v35];

        if ((v36 & 1) == 0)
        {
          v145 = v2;
          v37 = [v28 decimalNumberBySubtracting:v34];
          v38 = [v34 copy];
          v39 = [MEMORY[0x1E696AB90] zero];
          v40 = [v38 compare:v39];

          if (v40 == -1)
          {
            v41 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"-1"];
            v42 = [v38 decimalNumberByMultiplyingBy:v41];

            v38 = v42;
          }

          v43 = [v37 decimalNumberByDividingBy:v38];
          v44 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100"];
          v45 = [v43 decimalNumberByMultiplyingBy:v44];

          v46 = MEMORY[0x1E696AEC0];
          [v45 doubleValue];
          v48 = [v46 stringWithFormat:@"%.2lf", v47];
          [v21 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69BB330]];

          v2 = v145;
        }
      }

      v49 = PKAnalyticsReportSwitchToggleResultValue();
      [v21 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69BB328]];
    }
  }

  v153 = v20;
  v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v153 hasAnyPayLaterOptions];
  if (([v153 fundingMode] | 2) != 2)
  {
    v147 = 0;
    v148 = 0;
    v151 = 0;
    v152 = 0;
    v61 = 0;
    v62 = 0;
    v149 = 0;
    v150 = 0;
    v63 = 0;
    v64 = 0;
    goto LABEL_53;
  }

  v51 = [v153 mode];
  v146 = v2;
  if (v51 == 2)
  {
    v65 = [v153 remotePaymentInstrument];
    v150 = [v65 organizationName];

    v66 = [v153 remotePaymentInstrument];
    v149 = [v66 issuerCountryCode];

    v67 = [v153 remotePaymentInstrument];
    v152 = [v67 isCobranded];

    v68 = [v153 remotePaymentInstrument];
    v147 = [v68 cobrandName];
    v148 = 0;
    v151 = 0;
    v69 = 0;
    v62 = 0;
LABEL_48:

    goto LABEL_49;
  }

  if (v51 == 1)
  {
    v52 = [v153 pass];
    v53 = [v153 pass];
    v54 = [v53 uniqueID];

    v150 = [v52 organizationName];
    v149 = [v52 issuerCountryCode];
    v152 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v52, "isCobranded")}];
    v147 = [v52 cobrandName];
    v144 = @"payInFull";
    v55 = @"payInFull";
    v130 = [v153 fundingMode] == 2;
    v56 = v153;
    if (!v130)
    {
LABEL_35:
      v71 = [v56 paymentOffersController];
      v72 = [v71 eligiblePaymentOfferCriteriaForPassUniqueID:v54 type:1];
      v148 = [MEMORY[0x1E696AD98] numberWithInt:v72 != 0];
      if (v72)
      {
        v151 = [v71 ineligibleDetailsForCriteria:v72];
        [v72 suppressPayInFull];
      }

      else
      {
        v151 = 0;
      }

      v68 = [v71 eligiblePaymentOfferCriteriaForPassUniqueID:v54 type:2];
      v69 = [MEMORY[0x1E696AD98] numberWithInt:v68 != 0];
      if (!PKBankConnectEnabled())
      {
        goto LABEL_47;
      }

      [v153 pass];
      v73 = v54;
      v75 = v74 = v71;
      v76 = [v153 connectedCardStateForPass:v75];

      v71 = v74;
      v54 = v73;
      switch(v76)
      {
        case 0:
          goto LABEL_47;
        case 1:
          v77 = @"true";
          break;
        case 2:
          v77 = @"false";
          break;
        default:
          v77 = 0;
          goto LABEL_46;
      }

      v78 = v77;
LABEL_46:
      [v50 setObject:v77 forKeyedSubscript:*MEMORY[0x1E69BA9F0]];

LABEL_47:
      v62 = v144;
      goto LABEL_48;
    }

    v57 = [v153 selectedPaymentOffer];

    if (v57)
    {
      v58 = [v153 selectedPaymentOffer];
      v59 = [v58 type];

      if (v59 == 1)
      {
        v60 = @"installments";
        goto LABEL_33;
      }

      if (v59 == 2)
      {
        v60 = @"rewards";
LABEL_33:
        v144 = v60;
        v70 = v60;

        goto LABEL_34;
      }
    }

    v144 = @"payInFull";
LABEL_34:
    v56 = v153;
    goto LABEL_35;
  }

  v147 = 0;
  v148 = 0;
  v151 = 0;
  v152 = 0;
  v69 = 0;
  v62 = 0;
  v149 = 0;
  v150 = 0;
LABEL_49:
  v79 = [v153 paymentApplication];
  v80 = v79;
  if (v79)
  {
    [v79 paymentNetworkIdentifier];
    v64 = PKPaymentNetworkNameForPaymentCredentialType();
    [v80 paymentType];
    v63 = PKPaymentMethodTypeToString();
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v61 = v69;

  v2 = v146;
LABEL_53:
  [v50 setObject:v64 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
  [v50 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
  [v50 setObject:v150 forKeyedSubscript:*MEMORY[0x1E69BAC80]];
  [v50 setObject:v149 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
  if (v152)
  {
    [v152 BOOLValue];
    v81 = PKAnalyticsReportSwitchToggleResultValue();
    [v50 setObject:v81 forKeyedSubscript:*MEMORY[0x1E69BAC70]];
  }

  [v50 setObject:v147 forKeyedSubscript:*MEMORY[0x1E69BAC08]];
  v82 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v82 forKeyedSubscript:*MEMORY[0x1E69BABB0]];

  v83 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v83 forKeyedSubscript:*MEMORY[0x1E69BACD0]];

  PKHideCardBenefitPayLater();
  v84 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v84 forKeyedSubscript:*MEMORY[0x1E69BACE0]];

  PKHidePayLaterOptions();
  v85 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v85 forKeyedSubscript:*MEMORY[0x1E69BA9D8]];

  PKHideCardBenefitRewards();
  v86 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v86 forKeyedSubscript:*MEMORY[0x1E69BAD00]];

  [v153 hasAnyPayWithRewardsOffers];
  v87 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v87 forKeyedSubscript:*MEMORY[0x1E69BABB8]];

  if (v62)
  {
    [v50 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69BAD38]];
  }

  if (v148)
  {
    [v148 BOOLValue];
    v88 = PKAnalyticsReportSwitchToggleResultValue();
    [v50 setObject:v88 forKeyedSubscript:*MEMORY[0x1E69BA9D0]];
  }

  if (v151)
  {
    v89 = [v151 analyticsValue];
    [v50 setObject:v89 forKeyedSubscript:*MEMORY[0x1E69BA9C0]];
  }

  if (v61)
  {
    [v61 BOOLValue];
    v90 = PKAnalyticsReportSwitchToggleResultValue();
    [v50 setObject:v90 forKeyedSubscript:*MEMORY[0x1E69BACF8]];
  }

  [v153 hasAutomaticallyPresentedPass];
  v91 = PKAnalyticsReportSwitchToggleResultValue();
  [v50 setObject:v91 forKeyedSubscript:*MEMORY[0x1E69BAC00]];

  [v21 addEntriesFromDictionary:v50];
  if ([v21 count])
  {
    [v21 setObject:*MEMORY[0x1E69BA798] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  }

  v92 = v21;
  if (v92)
  {
    v93 = v92;
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v94 = sub_1BE052244();

    if (v94[2])
    {
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v154 = v2;
      sub_1BD6B8B40(v94, sub_1BD6B2140, 0, v102, &v154);
      v94, v103, v104, v105, v106, v107, v108, v109;
      v2 = v154;
    }

    else
    {
      v94, v95, v96, v97, v98, v99, v100, v101;
    }
  }

  v110 = [v153 selectedPaymentOffer];
  if (v110)
  {
    v118 = v110;
    if ([v153 fundingMode] == 2 && objc_msgSend(v118, sel_type) == 2 && (objc_opt_self(), (v119 = swift_dynamicCastObjCClass()) != 0) && (v120 = objc_msgSend(v119, sel_rewardsRedemptionIntent)) != 0)
    {
      v121 = v120;
      v122 = *MEMORY[0x1E69BAD18];
      [v121 rewardsType];
      v123 = PKPaymentRewardsBalanceTypeToString();
      v124 = sub_1BE052434();
      v126 = v125;

      v127 = swift_isUniquelyReferenced_nonNull_native();
      v154 = v2;
      sub_1BD1DAE70(v124, v126, v122, v127);

      v128 = v154;
      LODWORD(v122) = [v121 hasFullBalanceSelected];
      v129 = *MEMORY[0x1E69BACF0];
      v130 = v122 == 0;
      if (v122)
      {
        v131 = 1819047270;
      }

      else
      {
        v131 = 0x6C616974726170;
      }

      if (v130)
      {
        v132 = 0xE700000000000000;
      }

      else
      {
        v132 = 0xE400000000000000;
      }

      v133 = swift_isUniquelyReferenced_nonNull_native();
      v154 = v128;
      sub_1BD1DAE70(v131, v132, v129, v133);

      v2 = v154;
    }

    else
    {
    }
  }

  if (v2[2])
  {
    v134 = objc_opt_self();
    v135 = *MEMORY[0x1E69BB6E0];
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v136 = sub_1BE052224();
    v2, v137, v138, v139, v140, v141, v142, v143;
    [v134 subject:v135 sendEvent:v136];
  }

  else
  {
    v2, v111, v112, v113, v114, v115, v116, v117;
  }
}

unint64_t sub_1BD6B3418(uint64_t a1, void *a2, void *a3, id a4)
{
  if (!a4 || (v8 = [a4 uniqueID]) == 0)
  {
    v12 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
    v11 = 0;
    v93 = v12;
    goto LABEL_10;
  }

  v9 = v8;
  sub_1BE052434();
  v11 = v10;

  v12 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  v93 = v12;
  if (!v11)
  {
LABEL_10:
    LOBYTE(v24) = 1;
LABEL_11:
    v25 = *MEMORY[0x1E69BA9D0];
    goto LABEL_12;
  }

  if (!a2)
  {
    LOBYTE(v24) = 0;
    goto LABEL_11;
  }

  v13 = a2;
  sub_1BE048C84();
  v14 = sub_1BE052404();
  v15 = [v13 eligiblePaymentOfferCriteriaForPassUniqueID:v14 type:1];

  if (v15)
  {
  }

  v16 = sub_1BE052404();
  v11, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v13 eligiblePaymentOfferCriteriaForPassUniqueID:v16 type:2];

  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = *MEMORY[0x1E69BA9D0];
  LOBYTE(v24) = 0;
LABEL_12:
  v26 = sub_1BE052434();
  v28 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v12;
  sub_1BD1DAE70(v26, v28, v25, isUniquelyReferenced_nonNull_native);

  v93 = v12;
  v30 = *MEMORY[0x1E69BACF8];
  v31 = sub_1BE052434();
  v33 = v32;
  v34 = v30;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v12;
  sub_1BD1DAE70(v31, v33, v34, v35);

  v93 = v12;
  if (a3)
  {
    if (a1 == 2 && [a3 type] == 2)
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = [v43 rewardsRedemptionIntent];
        if (v44)
        {
          v45 = v44;
          v46 = *MEMORY[0x1E69BAD18];
          [v45 rewardsType];
          v47 = PKPaymentRewardsBalanceTypeToString();
          v48 = sub_1BE052434();
          v50 = v49;

          v51 = swift_isUniquelyReferenced_nonNull_native();
          v92 = v12;
          sub_1BD1DAE70(v48, v50, v46, v51);

          LODWORD(v46) = [v45 hasFullBalanceSelected];
          v52 = *MEMORY[0x1E69BACF0];
          v53 = v46 == 0;
          if (v46)
          {
            v54 = 1819047270;
          }

          else
          {
            v54 = 0x6C616974726170;
          }

          if (v53)
          {
            v55 = 0xE700000000000000;
          }

          else
          {
            v55 = 0xE400000000000000;
          }

          v56 = swift_isUniquelyReferenced_nonNull_native();
          v92 = v12;
          sub_1BD1DAE70(v54, v55, v52, v56);

          v93 = v12;
        }
      }
    }
  }

  if ((v24 & 1) == 0)
  {
    if (a2)
    {
      v57 = sub_1BE052404();
      v11, v58, v59, v60, v61, v62, v63, v64;
      v65 = [a2 merchandisingOfferForPassUniqueID_];

      goto LABEL_29;
    }

    v11, v36, v37, v38, v39, v40, v41, v42;
  }

  v65 = 0;
LABEL_29:
  v66 = [objc_opt_self() analyticsDictionaryForOffer_];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v67 = sub_1BE052244();

  v68 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v12;
  sub_1BD6B8B40(v67, sub_1BD6B2140, 0, v68, &v92);
  v67, v69, v70, v71, v72, v73, v74, v75;
  v76 = v92;
  v93 = v92;
  if (a4)
  {
    v77 = *MEMORY[0x1E69BAC80];
    v78 = a4;
    v79 = [v78 organizationName];
    v80 = sub_1BE052434();
    v82 = v81;

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v76;
    sub_1BD1DAE70(v80, v82, v77, v83);

    v93 = v92;
    v84 = *MEMORY[0x1E69BAD48];
    v85 = PKDefaultPaymentNetworkNameForPaymentPass();
    if (v85)
    {
      v86 = v85;
      v87 = sub_1BE052434();
      v89 = v88;
    }

    else
    {
      v87 = 0;
      v89 = 0;
    }

    sub_1BD6B05C0(v87, v89, v84);

    return v93;
  }

  else
  {
  }

  return v76;
}

void sub_1BD6B39C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v101 = a2;
  v102 = a5;
  v104 = a3;
  v7 = sub_1BE04C614();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v96 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v96 - v15;
  v17 = v8[2];
  v17(&v96 - v15, a1, v7, v14);
  v18 = v8[11];
  if (v18(v16, v7) != *MEMORY[0x1E69BC8D8])
  {
    v96 = v8[1];
    v96(v16, v7);
    (v17)(v12, a1, v7);
    v19 = v18(v12, v7);
    v20 = *MEMORY[0x1E69BC8B8];
    v97 = a4;
    v99 = a1;
    if (v19 == v20)
    {
      v21 = 3;
    }

    else if (v19 == *MEMORY[0x1E69BC8E0])
    {
      v21 = 7;
    }

    else if (v19 == *MEMORY[0x1E69BC8B0])
    {
      v21 = 6;
    }

    else
    {
      v96(v12, v7);
      v21 = 2;
    }

    v98 = v21;
    v100 = *MEMORY[0x1E69BB6E0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v23 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v24;
    v25 = *MEMORY[0x1E69BABE8];
    *(inited + 56) = *MEMORY[0x1E69BABE8];
    *(inited + 64) = sub_1BD6B1398(v98);
    *(inited + 72) = v26;
    v27 = v23;
    v28 = v25;
    v29 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    v30 = v103;
    (v17)(v103, v99, v7);
    v31 = v18(v30, v7);
    if (v31 == *MEMORY[0x1E69BC8A8])
    {
      v32 = *MEMORY[0x1E69BAA18];
      v33 = v104;
      if (v104)
      {
        v34 = v32;
        [v33 hasAnyEligiblePaymentOfferCriteriaOfType_];
        v77 = sub_1BE052434();
        v79 = v78;
      }

      else
      {
        v77 = sub_1BE052434();
        v79 = v75;
        v76 = v32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v29;
      sub_1BD1DAE70(v77, v79, v32, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v35 = v104;
      if (v31 == *MEMORY[0x1E69BC8E0])
      {
        if (v97)
        {
          if (v104)
          {
            v36 = v97;
            v37 = [v36 criteriaIdentifier];
            if (!v37)
            {
              sub_1BE052434();
              v39 = v38;
              v37 = sub_1BE052404();
              v39, v40, v41, v42, v43, v44, v45, v46;
            }

            v47 = [v36 passUniqueID];
            if (!v47)
            {
              sub_1BE052434();
              v49 = v48;
              v47 = sub_1BE052404();
              v49, v50, v51, v52, v53, v54, v55, v56;
            }

            v35 = [v35 paymentOfferCollectionForCriteriaIdentifier:v37 passUniqueID:v47];

            if (v35)
            {
              v57 = [v35 installmentAssessment];

              if (v57)
              {
                v35 = [v57 offers];

                if (v35)
                {
                  sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
                  v58 = sub_1BE052744();

                  if (v58 >> 62)
                  {
                    v35 = sub_1BE053704();
                  }

                  else
                  {
                    v35 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v58, v59, v60, v61, v62, v63, v64, v65;
                }
              }

              else
              {
                v35 = 0;
              }
            }
          }
        }

        else
        {
          v35 = 0;
        }

        v81 = *MEMORY[0x1E69BA9C8];
        v105 = v35;
        v82 = v81;
        v83 = sub_1BE053B24();
        v85 = v84;
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v29;
        sub_1BD1DAE70(v83, v85, v82, v86);
      }

      else
      {
        if (v31 != *MEMORY[0x1E69BC8B0])
        {
          (v96)(v30, v7, v97);
LABEL_35:
          v87 = objc_opt_self();
          type metadata accessor for PKAnalyticsKey(0);
          sub_1BD1F0E18();
          v88 = sub_1BE052224();
          v29, v89, v90, v91, v92, v93, v94, v95;
          [v87 subject:v100 sendEvent:v88];

          return;
        }

        v66 = sub_1BD6B3418(v101, v104, v97, v102);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v29;
        sub_1BD6B8B40(v66, sub_1BD6B2140, 0, v67, &v105);
        v66, v68, v69, v70, v71, v72, v73, v74;
      }
    }

    v29 = v105;
    goto LABEL_35;
  }
}

void sub_1BD6B4058(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v5 = sub_1BE04C614();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = v6[2];
  v13(&v44 - v11, a1, v5, v10);
  v14 = v6[11];
  if (v14(v12, v5) != *MEMORY[0x1E69BC8D8])
  {
    v45 = a3;
    v15 = v6[1];
    v15(v12, v5);
    (v13)(v8, a1, v5);
    v16 = v14(v8, v5);
    if (v16 == *MEMORY[0x1E69BC8B8])
    {
      v17 = 3;
    }

    else if (v16 == *MEMORY[0x1E69BC8E0])
    {
      v17 = 7;
    }

    else if (v16 == *MEMORY[0x1E69BC8B0])
    {
      v17 = 6;
    }

    else
    {
      v15(v8, v5);
      v17 = 2;
    }

    v18 = *MEMORY[0x1E69BB6E0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v20 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v21;
    v22 = *MEMORY[0x1E69BABE8];
    *(inited + 56) = *MEMORY[0x1E69BABE8];
    *(inited + 64) = sub_1BD6B1398(v17);
    *(inited + 72) = v23;
    v24 = v20;
    v25 = v22;
    v26 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    if (v45)
    {
      if (v46 == 2 && [v45 type] == 2)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = [v27 rewardsRedemptionIntent];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 hasFullBalanceSelected];
            v31 = *MEMORY[0x1E69BACF0];
            if (v30)
            {
              v32 = 1819047270;
            }

            else
            {
              v32 = 0x6C616974726170;
            }

            if (v30)
            {
              v33 = 0xE400000000000000;
            }

            else
            {
              v33 = 0xE700000000000000;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = v26;
            sub_1BD1DAE70(v32, v33, v31, isUniquelyReferenced_nonNull_native);

            v26 = v47;
          }
        }
      }
    }

    v35 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v36 = sub_1BE052224();
    v26, v37, v38, v39, v40, v41, v42, v43;
    [v35 subject:v18 sendEvent:v36];
  }
}

void sub_1BD6B4444(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v118 - v9;
  v11 = _s14PaymentSummaryVMa(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    if (([v16 isEligible] & 1) == 0)
    {
      v19 = [v16 reason];

      if ((v19 - 7) >= 8)
      {
        LOBYTE(v17) = 6;
      }

      else
      {
        v17 = 0x101060606060602uLL >> (8 * (v19 - 7));
      }

      goto LABEL_31;
    }
  }

  if (a3 && [a3 code] == 40030)
  {
    LOBYTE(v17) = 5;
  }

  else if (a1)
  {
    v18 = a1;
    if ([v18 isValid])
    {
      if ([v18 eligibility] == 1)
      {
        sub_1BD0DE19C(a4, v10, &unk_1EBD43B30, &qword_1BE0B8530);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          sub_1BD0DE53C(v10, &unk_1EBD43B30, &qword_1BE0B8530);
        }

        else
        {
          sub_1BD6BB6C0(v10, v15);
          v20 = &v15[*(v11 + 24)];
          v22 = *v20;
          v21 = *(v20 + 1);
          sub_1BE048C84();
          v23 = [v18 monetaryValue];
          v24 = [v23 currency];

          if (!v24)
          {
            v21, v25, v26, v27, v28, v29, v30, v31;

            sub_1BD6BBDAC(v15, _s14PaymentSummaryVMa);
            LOBYTE(v17) = 2;
            goto LABEL_31;
          }

          v32 = sub_1BE052434();
          v34 = v33;

          if (v22 == v32 && v21 == v34)
          {
            v21, v35, v36, v37, v38, v39, v40, v41;
            v34, v58, v59, v60, v61, v62, v63, v64;
            sub_1BD6BBDAC(v15, _s14PaymentSummaryVMa);
          }

          else
          {
            v43 = sub_1BE053B84();
            v21, v44, v45, v46, v47, v48, v49, v50;
            v34, v51, v52, v53, v54, v55, v56, v57;
            sub_1BD6BBDAC(v15, _s14PaymentSummaryVMa);
            if ((v43 & 1) == 0)
            {

              LOBYTE(v17) = 2;
              goto LABEL_31;
            }
          }
        }

        v65 = [v18 monetaryValue];
        v66 = [v65 amount];

        if (!v66)
        {
          __break(1u);
          return;
        }

        v67 = sub_1BE0533F4();
        v69 = v68;
        v71 = v70;

        v72 = MEMORY[0x1BFB403C0](0);
        v75 = MEMORY[0x1BFB40440](v67, v69, v71, v72, v73, v74);

        if (v75)
        {
          LOBYTE(v17) = 4;
        }

        else
        {
          LOBYTE(v17) = 7;
        }
      }

      else
      {

        LOBYTE(v17) = 0;
      }
    }

    else
    {

      LOBYTE(v17) = 3;
    }
  }

  else
  {
    LOBYTE(v17) = 3;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v77 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v78 = sub_1BE052434();
  v79 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v78;
  *(inited + 48) = v80;
  v81 = *v79;
  *(inited + 56) = *v79;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v82;
  v83 = v77;
  v84 = v81;
  v85 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v86 = v17;
  v87 = *MEMORY[0x1E69BACF8];
  if (v17 == 7)
  {
    v88 = sub_1BE052434();
    v90 = v89;
    v91 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v85;
  }

  else
  {
    v93 = sub_1BE052434();
    v95 = v94;
    v96 = v87;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v85;
    sub_1BD1DAE70(v93, v95, v96, v97);

    v98 = 0xEE00656C62696769;
    v99 = 0x6C656E4972657375;
    v100 = v119;
    v101 = 0xED00006465726975;
    v102 = 0x7165526E4974706FLL;
    if (v86 != 5)
    {
      v102 = 0x616C696176616E75;
      v101 = 0xEB00000000656C62;
    }

    v103 = 0x80000001BE134D30;
    v104 = 0xD000000000000012;
    if (v86 != 3)
    {
      v104 = 0x5A65636E616C6162;
      v103 = 0xEB000000006F7265;
    }

    if (v86 <= 4)
    {
      v102 = v104;
      v101 = v103;
    }

    v105 = 0xD000000000000010;
    v106 = 0x80000001BE134D70;
    if (v86 != 1)
    {
      v105 = 0xD000000000000014;
      v106 = 0x80000001BE134D50;
    }

    if (v86)
    {
      v99 = v105;
      v98 = v106;
    }

    if (v86 <= 2)
    {
      v88 = v99;
    }

    else
    {
      v88 = v102;
    }

    if (v86 <= 2)
    {
      v90 = v98;
    }

    else
    {
      v90 = v101;
    }

    v91 = *MEMORY[0x1E69BAD08];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v100;
  }

  sub_1BD1DAE70(v88, v90, v91, isUniquelyReferenced_nonNull_native);

  v107 = v119;
  v108 = objc_opt_self();
  v109 = *MEMORY[0x1E69BB6E0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v110 = sub_1BE052224();
  v107, v111, v112, v113, v114, v115, v116, v117;
  [v108 subject:v109 sendEvent:v110];
}

void _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(uint64_t a1, void *a2)
{
  sub_1BD113234(a1, v50);
  if (v51 <= 2)
  {
    if ((v51 - 1) < 2 || !v51)
    {
      goto LABEL_9;
    }
  }

  else if ((v51 - 3) < 3 || v51 == 6)
  {
LABEL_9:
    v3 = sub_1BE052434();
    v5 = v4;
    goto LABEL_10;
  }

  sub_1BD11326C(v50);
  v3 = 0;
  v5 = 0;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v7 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v8 = sub_1BE052434();
  v9 = MEMORY[0x1E69BAFB0];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = *v9;
  *(inited + 56) = *v9;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v12;
  v13 = v7;
  v14 = v11;
  v15 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50[0] = v15;
  sub_1BD6B8B40(a2, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, v50);
  a2, v17, v18, v19, v20, v21, v22, v23;
  v24 = v50[0];
  if (v5)
  {
    sub_1BD6B05C0(v3, v5, *MEMORY[0x1E69BAF88]);
    v24 = v50[0];
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1BE0B69E0;
  v26 = *MEMORY[0x1E69BA850];
  *(v25 + 32) = *MEMORY[0x1E69BA850];
  *(v25 + 40) = sub_1BE052434();
  *(v25 + 48) = v27;
  v28 = v26;
  v29 = sub_1BD1AAF50(v25);
  swift_setDeallocating();
  sub_1BD0DE53C(v25 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v29;
  sub_1BD6B8B40(v24, sub_1BD6B2140, 0, v30, &v49);
  v24, v31, v32, v33, v34, v35, v36, v37;
  v38 = *MEMORY[0x1E69BB6A8];
  v39 = objc_opt_self();
  v40 = v49;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v41 = sub_1BE052224();
  v40, v42, v43, v44, v45, v46, v47, v48;
  [v39 subject:v38 sendEvent:v41];
}

void _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v1 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v2 = v1;
  *(inited + 40) = sub_1BE04B814();
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E69BAFB0];
  *(inited + 56) = *MEMORY[0x1E69BAFB0];
  v5 = v4;
  v6 = sub_1BE04B7E4();
  v7 = MEMORY[0x1E69BA850];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = *v7;
  *(inited + 80) = *v7;
  v10 = sub_1BE052434();
  v11 = MEMORY[0x1E69BA680];
  *(inited + 88) = v10;
  *(inited + 96) = v12;
  v13 = *v11;
  *(inited + 104) = *v11;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v14;
  v15 = v9;
  v16 = v13;
  v17 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + 32) = v15;
  *(v18 + 40) = sub_1BE052434();
  *(v18 + 48) = v19;
  v20 = sub_1BD1AAF50(v18);
  swift_setDeallocating();
  sub_1BD0DE53C(v18 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v20;
  sub_1BD6B8B40(v17, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v40);
  v17, v22, v23, v24, v25, v26, v27, v28;
  v29 = *MEMORY[0x1E69BB6A8];
  v30 = objc_opt_self();
  v31 = v40;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v32 = sub_1BE052224();
  v31, v33, v34, v35, v36, v37, v38, v39;
  [v30 subject:v29 sendEvent:v32];
}

void sub_1BD6B50F8(char a1, id a2)
{
  v4 = [a2 analyticsPageTag];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = sub_1BE052434();
    v8 = v9;
  }

  sub_1BD0E5E8C(0, &unk_1EBD35E80, 0x1E69B8540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v11 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v12;
  v13 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = sub_1BD6B16D0(a1);
  *(inited + 72) = v14;
  v15 = *MEMORY[0x1E69BABE8];
  *(inited + 80) = *MEMORY[0x1E69BABE8];
  *(inited + 88) = v6;
  *(inited + 96) = v8;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  sub_1BD6B14D4(v19, a2);
  v19, v20, v21, v22, v23, v24, v25, v26;
}

void sub_1BD6B528C(uint64_t a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  v10 = v3[2];
  v10(&v46 - v8, a1, v2, v7);
  v11 = v3[11];
  if (v11(v9, v2) != *MEMORY[0x1E69BC8D8])
  {
    v12 = v3[1];
    v12(v9, v2);
    (v10)(v5, a1, v2);
    v13 = v11(v5, v2);
    if (v13 == *MEMORY[0x1E69BC8D0])
    {
      v14 = 7;
      goto LABEL_26;
    }

    if (v13 == *MEMORY[0x1E69BC8A8])
    {
      if (PKOslo2024UIUpdatesEnabled())
      {
        v14 = 16;
      }

      else
      {
        v14 = 3;
      }

      goto LABEL_26;
    }

    if (v13 == *MEMORY[0x1E69BC8B8])
    {
      v14 = 8;
      goto LABEL_26;
    }

    if (v13 == *MEMORY[0x1E69BC8C0])
    {
      v14 = 6;
      goto LABEL_26;
    }

    if (v13 == *MEMORY[0x1E69BC8C8])
    {
      v14 = 5;
      goto LABEL_26;
    }

    if (v13 == *MEMORY[0x1E69BC890])
    {
      goto LABEL_15;
    }

    if (v13 == *MEMORY[0x1E69BC8A0] || v13 == *MEMORY[0x1E69BC888])
    {
      v14 = 12;
    }

    else if (v13 == *MEMORY[0x1E69BC8E0])
    {
      v14 = 15;
    }

    else
    {
      if (v13 == *MEMORY[0x1E69BC8B0])
      {
LABEL_15:
        v14 = 3;
        goto LABEL_26;
      }

      v12(v5, v2);
      v14 = 0;
    }

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v17 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v18 = sub_1BE052434();
    v19 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v18;
    *(inited + 48) = v20;
    v21 = *v19;
    *(inited + 56) = *v19;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v22;
    v23 = *MEMORY[0x1E69BB170];
    *(inited + 80) = *MEMORY[0x1E69BB170];
    v24 = v17;
    v25 = v21;
    v26 = v23;
    v27 = off_1E8010218[v14];
    v28 = off_1E80102A0[v14];
    v29 = v27;
    v30 = v28;
    if (v30)
    {
      v31 = v30;
      v32 = *MEMORY[0x1E69BB6E0];
      v33 = objc_opt_self();
      v34 = sub_1BE052434();
      v36 = v35;

      *(inited + 88) = v34;
      *(inited + 96) = v36;
      v37 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v38 = sub_1BE052224();
      v37, v39, v40, v41, v42, v43, v44, v45;
      [v33 subject:v32 sendEvent:v38];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD6B56B4(uint64_t a1, int a2)
{
  v730 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v719 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v719 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v719 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v719 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v719 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v719 - v19;
  v21 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v719 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v731 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  sub_1BD6BBD44(a1, v23, type metadata accessor for Analytics.StateChange);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v186 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v187 = swift_allocObject();
      *(v187 + 16) = xmmword_1BE0B6CA0;
      v188 = *MEMORY[0x1E69BB070];
      *(v187 + 32) = *MEMORY[0x1E69BB070];
      v189 = v188;
      *(v187 + 40) = sub_1BD6B1634(v186);
      *(v187 + 48) = v190;
      v191 = *MEMORY[0x1E69BB050];
      *(v187 + 56) = *MEMORY[0x1E69BB050];
      v192 = v191;
      v193 = @"shippingAddress";
      if (!v193)
      {
        goto LABEL_278;
      }

      v194 = v193;
      v195 = sub_1BE052434();
      v197 = v196;
      v731, v196, v198, v199, v200, v201, v202, v203;

      *(v187 + 64) = v195;
      *(v187 + 72) = v197;
      v204 = sub_1BD1AAF50(v187);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v733 = v204;
      if (!v186)
      {
        goto LABEL_272;
      }

      v205 = [v186 valueSource];
      if (v205)
      {
        v206 = v205;
        v207 = sub_1BE052434();
        v209 = v208;

        v210 = *MEMORY[0x1E69BB068];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v732 = v204;
        sub_1BD1DAE70(v207, v209, v210, isUniquelyReferenced_nonNull_native);

        v733 = v732;
      }

      v212 = [v186 formattingConstrained];
      v213 = *MEMORY[0x1E69BB060];
      if (v212 == 1)
      {
        v214 = @"true";
      }

      else
      {
        if (v212 != 2)
        {
          v214 = 0;
          goto LABEL_101;
        }

        v214 = @"false";
      }

      v373 = v214;
LABEL_101:
      v374 = v214;
      if (v374)
      {
        v375 = v374;
        v376 = sub_1BE052434();
        v378 = v377;
      }

      else
      {
        v376 = 0;
        v378 = 0;
      }

      sub_1BD6B05C0(v376, v378, v213);

      goto LABEL_272;
    case 2u:
      v149 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v151 = *MEMORY[0x1E69BB070];
      *(inited + 32) = *MEMORY[0x1E69BB070];
      v20 = (inited + 32);
      v152 = v151;
      *(inited + 40) = sub_1BD6B1634(v149);
      *(inited + 48) = v153;
      v154 = *MEMORY[0x1E69BB050];
      *(inited + 56) = *MEMORY[0x1E69BB050];
      v155 = v154;
      v156 = @"shippingMethod";
      if (v156)
      {
        goto LABEL_60;
      }

      __break(1u);
LABEL_31:
      LODWORD(v729) = v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70, &qword_1BE0D5BD0) + 48)];
      sub_1BD36A448(v23, v20);
      sub_1BD0DE19C(v20, v17, &unk_1EBD52A20, &unk_1BE0F66E0);
      v157 = sub_1BE04A704();
      v158 = *(v157 - 8);
      v159 = *(v158 + 48);
      if (v159(v17, 1, v157) == 1)
      {
        sub_1BD0DE53C(v17, &unk_1EBD52A20, &unk_1BE0F66E0);
      }

      else
      {
        sub_1BE04A664();
        v262 = v261;
        (*(v158 + 8))(v17, v157);
        if (v262)
        {
          v262, v263, v264, v265, v266, v267, v268, v269;
        }
      }

      sub_1BD0DE19C(v20, v14, &unk_1EBD52A20, &unk_1BE0F66E0);
      if (v159(v14, 1, v157) == 1)
      {
        sub_1BD0DE53C(v14, &unk_1EBD52A20, &unk_1BE0F66E0);
      }

      else
      {
        sub_1BE04A684();
        v271 = v270;
        (*(v158 + 8))(v14, v157);
        if (v271)
        {
          v271, v272, v273, v274, v275, v276, v277, v278;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v279 = swift_allocObject();
      *(v279 + 16) = xmmword_1BE0B98E0;
      v280 = *MEMORY[0x1E69BB070];
      *(v279 + 32) = *MEMORY[0x1E69BB070];
      *(v279 + 40) = sub_1BE052434();
      *(v279 + 48) = v281;
      v282 = *MEMORY[0x1E69BB050];
      *(v279 + 56) = *MEMORY[0x1E69BB050];
      v283 = v280;
      v284 = v282;
      v285 = @"shippingContact";
      if (!v285)
      {
        goto LABEL_279;
      }

      v286 = v285;
      v287 = sub_1BE052434();
      v289 = v288;
      v731, v288, v290, v291, v292, v293, v294, v295;

      v296 = MEMORY[0x1E69BA868];
      *(v279 + 64) = v287;
      *(v279 + 72) = v289;
      v297 = *v296;
      *(v279 + 80) = *v296;
      *(v279 + 88) = sub_1BE052434();
      *(v279 + 96) = v298;
      v299 = *MEMORY[0x1E69BB068];
      *(v279 + 104) = *MEMORY[0x1E69BB068];
      *(v279 + 112) = sub_1BD6B04D8(v729);
      *(v279 + 120) = v300;
      v301 = v297;
      v302 = v299;
      v303 = sub_1BD1AAF50(v279);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v304 = v20;
LABEL_77:
      sub_1BD0DE53C(v304, &unk_1EBD52A20, &unk_1BE0F66E0);
      v733 = v303;
      goto LABEL_272;
    case 3u:
      goto LABEL_31;
    case 4u:
      v67 = *v23;
      if (!*v23)
      {
        goto LABEL_250;
      }

      v68 = [*v23 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
      v69 = sub_1BE052744();

      if (v69 >> 62)
      {
        goto LABEL_248;
      }

      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      goto LABEL_249;
    case 5u:
      v67 = *v23;
      if (!*v23)
      {
        goto LABEL_257;
      }

      v215 = [*v23 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
      v216 = sub_1BE052744();

      if (v216 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_49;
        }

LABEL_256:
        v216, v217, v218, v219, v220, v221, v222, v223;
LABEL_257:
        v86 = 0;
        goto LABEL_258;
      }

      if (!*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_256;
      }

LABEL_49:
      if ((v216 & 0xC000000000000001) != 0)
      {
        v224 = MEMORY[0x1BFB40900](0, v216);
      }

      else
      {
        if (!*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_274;
        }

        v224 = *(v216 + 32);
      }

      v232 = v224;
      v216, v225, v226, v227, v228, v229, v230, v231;
      v86 = [v232 value];

LABEL_258:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v670 = swift_initStackObject();
      *(v670 + 16) = xmmword_1BE0B98D0;
      v671 = *MEMORY[0x1E69BB070];
      *(v670 + 32) = *MEMORY[0x1E69BB070];
      v672 = v671;
      *(v670 + 40) = sub_1BD6B1634(v86);
      *(v670 + 48) = v673;
      v674 = *MEMORY[0x1E69BB050];
      *(v670 + 56) = *MEMORY[0x1E69BB050];
      v675 = v674;
      v676 = @"shippingContact";
      if (v676)
      {
        v677 = v676;
        v678 = sub_1BE052434();
        v680 = v679;
        v731, v679, v681, v682, v683, v684, v685, v686;

        v687 = MEMORY[0x1E69BA868];
        *(v670 + 64) = v678;
        *(v670 + 72) = v680;
        v688 = *v687;
        *(v670 + 80) = *v687;
        *(v670 + 88) = sub_1BE052434();
        *(v670 + 96) = v689;
        v690 = v688;
        v662 = sub_1BD1AAF50(v670);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
        swift_arrayDestroy();
        v733 = v662;
        if (!v67)
        {
LABEL_262:

          goto LABEL_272;
        }

        v663 = [v67 valueSource];
        if (!v663)
        {
LABEL_261:

          goto LABEL_262;
        }

        goto LABEL_254;
      }

LABEL_284:
      __break(1u);
      return;
    case 6u:
      LODWORD(v729) = v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70, &qword_1BE0D5BD0) + 48)];
      sub_1BD36A448(v23, v11);
      sub_1BD0DE19C(v11, v8, &unk_1EBD52A20, &unk_1BE0F66E0);
      v233 = sub_1BE04A704();
      v234 = *(v233 - 8);
      v235 = *(v234 + 48);
      if (v235(v8, 1, v233) == 1)
      {
        sub_1BD0DE53C(v8, &unk_1EBD52A20, &unk_1BE0F66E0);
      }

      else
      {
        sub_1BE04A664();
        v306 = v305;
        (*(v234 + 8))(v8, v233);
        if (v306)
        {
          v306, v307, v308, v309, v310, v311, v312, v313;
        }
      }

      sub_1BD0DE19C(v11, v5, &unk_1EBD52A20, &unk_1BE0F66E0);
      if (v235(v5, 1, v233) == 1)
      {
        sub_1BD0DE53C(v5, &unk_1EBD52A20, &unk_1BE0F66E0);
      }

      else
      {
        sub_1BE04A684();
        v315 = v314;
        (*(v234 + 8))(v5, v233);
        if (v315)
        {
          v315, v316, v317, v318, v319, v320, v321, v322;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v323 = swift_initStackObject();
      *(v323 + 16) = xmmword_1BE0B98E0;
      v324 = *MEMORY[0x1E69BB070];
      *(v323 + 32) = *MEMORY[0x1E69BB070];
      *(v323 + 40) = sub_1BE052434();
      *(v323 + 48) = v325;
      v326 = *MEMORY[0x1E69BB050];
      *(v323 + 56) = *MEMORY[0x1E69BB050];
      v327 = v324;
      v328 = v326;
      v329 = @"shippingContact";
      if (!v329)
      {
        goto LABEL_282;
      }

      v330 = v329;
      v331 = sub_1BE052434();
      v333 = v332;
      v731, v332, v334, v335, v336, v337, v338, v339;

      v340 = MEMORY[0x1E69BA868];
      *(v323 + 64) = v331;
      *(v323 + 72) = v333;
      v341 = *v340;
      *(v323 + 80) = *v340;
      *(v323 + 88) = sub_1BE052434();
      *(v323 + 96) = v342;
      v343 = *MEMORY[0x1E69BB068];
      *(v323 + 104) = *MEMORY[0x1E69BB068];
      *(v323 + 112) = sub_1BD6B04D8(v729);
      *(v323 + 120) = v344;
      v345 = v341;
      v346 = v343;
      v303 = sub_1BD1AAF50(v323);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v304 = v11;
      goto LABEL_77;
    case 7u:
      v731, v24, v25, v26, v27, v28, v29, v30;
      v160 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v161 = swift_initStackObject();
      *(v161 + 16) = xmmword_1BE0B98D0;
      v162 = *MEMORY[0x1E69BB070];
      *(v161 + 32) = *MEMORY[0x1E69BB070];
      v163 = v162;
      v164 = sub_1BD6B1634(v160);
      v165 = MEMORY[0x1E69BB050];
      *(v161 + 40) = v164;
      *(v161 + 48) = v166;
      v167 = *v165;
      *(v161 + 56) = *v165;
      v168 = sub_1BE052434();
      v169 = MEMORY[0x1E69BA868];
      *(v161 + 64) = v168;
      *(v161 + 72) = v170;
      v171 = *v169;
      *(v161 + 80) = *v169;
      *(v161 + 88) = sub_1BE052434();
      *(v161 + 96) = v172;
      v173 = v167;
      v174 = v171;
      v175 = sub_1BD1AAF50(v161);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v733 = v175;
      if (!v160)
      {
        goto LABEL_272;
      }

      v176 = [v160 valueSource];
      if (v176)
      {
        v177 = v176;
        v178 = sub_1BE052434();
        v180 = v179;

        v181 = *MEMORY[0x1E69BB068];
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v732 = v175;
        sub_1BD1DAE70(v178, v180, v181, v182);

        v733 = v732;
      }

      v183 = [v160 formattingConstrained];
      v184 = *MEMORY[0x1E69BB060];
      if (v183 == 1)
      {
        v185 = @"true";
      }

      else
      {
        if (v183 != 2)
        {
          v185 = 0;
LABEL_94:
          v368 = v185;
          if (v368)
          {
            v369 = v368;
            v370 = sub_1BE052434();
            v372 = v371;
          }

          else
          {
            v370 = 0;
            v372 = 0;
          }

          sub_1BD6B05C0(v370, v372, v184);

          goto LABEL_272;
        }

        v185 = @"false";
      }

      v367 = v185;
      goto LABEL_94;
    case 8u:
      v149 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v245 = *MEMORY[0x1E69BB070];
      *(inited + 32) = *MEMORY[0x1E69BB070];
      v246 = v245;
      *(inited + 40) = sub_1BD6B1634(v149);
      *(inited + 48) = v247;
      v248 = *MEMORY[0x1E69BB050];
      *(inited + 56) = *MEMORY[0x1E69BB050];
      v249 = v248;
      v156 = @"bankAccount";
      if (!v156)
      {
        goto LABEL_281;
      }

LABEL_60:
      v250 = v156;
      v251 = sub_1BE052434();
      v253 = v252;
      v731, v252, v254, v255, v256, v257, v258, v259;

      *(inited + 64) = v251;
      *(inited + 72) = v253;
      v260 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();

      v733 = v260;
      goto LABEL_272;
    case 9u:
      v123 = *(v23 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v124 = swift_initStackObject();
      v125 = *MEMORY[0x1E69BB070];
      *(v124 + 32) = *MEMORY[0x1E69BB070];
      *(v124 + 16) = xmmword_1BE0B6CA0;
      *(v124 + 40) = sub_1BE052434();
      *(v124 + 48) = v126;
      v127 = *MEMORY[0x1E69BB050];
      *(v124 + 56) = *MEMORY[0x1E69BB050];
      v128 = v125;
      v129 = v127;
      v130 = @"couponCode";
      if (!v130)
      {
        goto LABEL_277;
      }

      v138 = v130;
      v123, v131, v132, v133, v134, v135, v136, v137;
      v139 = sub_1BE052434();
      v141 = v140;
      v731, v140, v142, v143, v144, v145, v146, v147;

      *(v124 + 64) = v139;
      *(v124 + 72) = v141;
      v148 = sub_1BD1AAF50(v124);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v733 = v148;
      goto LABEL_272;
    case 0xAu:
      v731, v24, v25, v26, v27, v28, v29, v30;
      v236 = *v23;
      v238 = *(v23 + 1);
      v237 = *(v23 + 2);
      v239 = *(v23 + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v240 = swift_initStackObject();
      v241 = MEMORY[0x1E69BA4D8];
      *(v240 + 16) = xmmword_1BE0B98D0;
      v242 = *v241;
      *(v240 + 32) = *v241;
      if (v236 > 3)
      {
        if (v236 > 5)
        {
          if (v236 == 6)
          {
            v243 = 0x80000001BE117300;
            v244 = 0xD000000000000019;
          }

          else
          {
            v243 = 0xE800000000000000;
            v244 = 0x797469746E656469;
          }
        }

        else if (v236 == 4)
        {
          v243 = 0xEA00000000006472;
          v244 = 0x614365676E616863;
        }

        else
        {
          v244 = 0xD000000000000010;
          v243 = 0x80000001BE1172E0;
        }
      }

      else if (v236 > 1)
      {
        if (v236 == 2)
        {
          v243 = 0x80000001BE117290;
          v244 = 0xD000000000000011;
        }

        else
        {
          v243 = 0x80000001BE1172B0;
          v244 = 0xD00000000000001CLL;
        }
      }

      else if (v236)
      {
        v243 = 0x80000001BE117270;
        v244 = 0xD000000000000013;
      }

      else
      {
        v243 = 0xE700000000000000;
        v244 = 0x636972656E6567;
      }

      v379 = MEMORY[0x1E69BB050];
      *(v240 + 40) = v244;
      *(v240 + 48) = v243;
      v380 = *v379;
      *(v240 + 56) = *v379;
      v381 = v240;
      *(v240 + 64) = sub_1BE052434();
      v381[9] = v382;
      v383 = *MEMORY[0x1E69BABB0];
      v381[10] = *MEMORY[0x1E69BABB0];
      v381[11] = sub_1BE052434();
      v381[12] = v384;
      v385 = v242;
      v386 = v380;
      v387 = v383;
      v388 = sub_1BD1AAF50(v381);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v733 = v388;
      if (v239)
      {
        if (!v237)
        {
          goto LABEL_268;
        }

        v239 = v239;
        sub_1BD4808D8(v238, v237);
        if (v396)
        {
        }

        v397 = *MEMORY[0x1E69BA9D0];
        v398 = sub_1BE052434();
        v400 = v399;
        v401 = v397;
        v402 = swift_isUniquelyReferenced_nonNull_native();
        v732 = v388;
        sub_1BD1DAE70(v398, v400, v401, v402);

        v733 = v732;
        v403 = sub_1BE052404();
        v404 = [v239 eligiblePaymentOfferCriteriaForPassUniqueID_];

        if (v404)
        {
          sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
          v69 = sub_1BE052744();
          v237, v412, v413, v414, v415, v416, v417, v418;
        }

        else
        {
          v237, v405, v406, v407, v408, v409, v410, v411;
          v69 = MEMORY[0x1E69E7CC0];
        }

        if (v69 >> 62)
        {
          v67 = sub_1BE053704();
          if (v67)
          {
LABEL_119:
            v420 = 0;
            while (1)
            {
              if ((v69 & 0xC000000000000001) != 0)
              {
                v421 = MEMORY[0x1BFB40900](v420, v69);
              }

              else
              {
                if (v420 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_247;
                }

                v421 = *(v69 + 8 * v420 + 32);
              }

              v422 = v421;
              v423 = (v420 + 1);
              if (__OFADD__(v420, 1))
              {
                break;
              }

              if ([v421 type] == 1)
              {
                v69, v424, v425, v426, v427, v428, v429, v430;
                objc_opt_self();
                v431 = swift_dynamicCastObjCClass();
                if (v431)
                {
                  v432 = [v431 suppressPayInFull];

                  v433 = *MEMORY[0x1E69BACD0];
                  if (v432)
                  {
                    v434 = sub_1BE052434();
                    v436 = v435;
                    v437 = v433;
LABEL_270:
                    v692 = v733;
                    v693 = swift_isUniquelyReferenced_nonNull_native();
                    v732 = v692;
                    sub_1BD1DAE70(v434, v436, v437, v693);

                    goto LABEL_271;
                  }

LABEL_269:
                  v437 = v433;
                  v434 = sub_1BE052434();
                  v436 = v691;
                  goto LABEL_270;
                }

LABEL_268:
                v433 = *MEMORY[0x1E69BACD0];
                goto LABEL_269;
              }

              ++v420;
              if (v423 == v67)
              {
                goto LABEL_266;
              }
            }

            __break(1u);
LABEL_247:
            __break(1u);
LABEL_248:
            if (!sub_1BE053704())
            {
LABEL_249:
              v69, v70, v71, v72, v73, v74, v75, v76;
LABEL_250:
              v86 = 0;
              goto LABEL_251;
            }

LABEL_21:
            if ((v69 & 0xC000000000000001) != 0)
            {
              v77 = MEMORY[0x1BFB40900](0, v69);
              goto LABEL_24;
            }

            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v77 = *(v69 + 32);
LABEL_24:
              v85 = v77;
              v69, v78, v79, v80, v81, v82, v83, v84;
              v86 = [v85 value];

LABEL_251:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
              v641 = swift_initStackObject();
              *(v641 + 16) = xmmword_1BE0B98D0;
              v642 = *MEMORY[0x1E69BB070];
              *(v641 + 32) = *MEMORY[0x1E69BB070];
              v643 = v642;
              *(v641 + 40) = sub_1BD6B1634(v86);
              *(v641 + 48) = v644;
              v645 = *MEMORY[0x1E69BB050];
              *(v641 + 56) = *MEMORY[0x1E69BB050];
              v646 = v645;
              v647 = @"shippingContact";
              if (!v647)
              {
                goto LABEL_283;
              }

              v648 = v647;
              v649 = sub_1BE052434();
              v651 = v650;
              v731, v650, v652, v653, v654, v655, v656, v657;

              v658 = MEMORY[0x1E69BA868];
              *(v641 + 64) = v649;
              *(v641 + 72) = v651;
              v659 = *v658;
              *(v641 + 80) = *v658;
              *(v641 + 88) = sub_1BE052434();
              *(v641 + 96) = v660;
              v661 = v659;
              v662 = sub_1BD1AAF50(v641);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
              swift_arrayDestroy();
              v733 = v662;
              if (!v67)
              {
                goto LABEL_262;
              }

              v663 = [v67 valueSource];
              if (!v663)
              {
                goto LABEL_261;
              }

LABEL_254:
              v664 = v663;
              v665 = sub_1BE052434();
              v667 = v666;

              v668 = *MEMORY[0x1E69BB068];
              v669 = swift_isUniquelyReferenced_nonNull_native();
              v732 = v662;
              sub_1BD1DAE70(v665, v667, v668, v669);

              goto LABEL_271;
            }

            __break(1u);
LABEL_274:
            __break(1u);
            goto LABEL_275;
          }
        }

        else
        {
          v67 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v67)
          {
            goto LABEL_119;
          }
        }

LABEL_266:

        v419 = v69;
      }

      else
      {
        v419 = v237;
      }

      v419, v389, v390, v391, v392, v393, v394, v395;
      goto LABEL_268;
    case 0xBu:
      v49 = *v23;
      v50 = *(*v23 + qword_1EBDAAD68 + 32);
      v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v52 = [v50 hasAnyPayLaterOptions];
      v53 = [v50 fundingMode] | 2;
      v724 = v52;
      if (v53 != 2)
      {
        v725 = 0;
        v726 = 0;
        v728 = 0;
        v729 = 0;
        v347 = 0;
        v59 = 0;
        v727 = 0;
        v348 = 0;
        v349 = 0;
        v350 = 0;
        v723 = 1;
        goto LABEL_156;
      }

      v54 = [v50 mode];
      if (v54 == 2)
      {
        v355 = [v50 remotePaymentInstrument];
        v722 = [v355 organizationName];

        v356 = [v50 remotePaymentInstrument];
        v727 = [v356 issuerCountryCode];

        v357 = [v50 remotePaymentInstrument];
        v358 = [v357 isCobranded];

        v59 = v358;
        v359 = [v50 remotePaymentInstrument];
        v360 = [v359 cobrandName];
        v725 = 0;
        v726 = v360;
        v728 = 0;
        v729 = 0;
        v347 = 0;
        v723 = 1;
        goto LABEL_151;
      }

      if (v54 != 1)
      {
        v725 = 0;
        v726 = 0;
        v728 = 0;
        v729 = 0;
        v347 = 0;
        v59 = 0;
        v727 = 0;
        v722 = 0;
        v723 = 1;
        goto LABEL_152;
      }

      v721 = v49;
      v55 = [v50 pass];
      v56 = [v50 pass];
      v57 = [v56 uniqueID];

      v58 = [v55 organizationName];
      v727 = [v55 issuerCountryCode];
      v59 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v55, "isCobranded")}];
      v726 = [v55 cobrandName];
      v728 = @"payInFull";
      v60 = @"payInFull";
      if ([v50 fundingMode] != 2)
      {
        goto LABEL_138;
      }

      v61 = v57;
      v62 = v59;
      v63 = [v50 selectedPaymentOffer];

      if (v63)
      {
        v64 = [v50 selectedPaymentOffer];
        v65 = [v64 type];

        if (v65 == 1)
        {
          v66 = @"installments";
          v59 = v62;
          goto LABEL_135;
        }

        v59 = v62;
        if (v65 == 2)
        {
          v66 = @"rewards";
LABEL_135:
          v57 = v61;
          v728 = v66;
          v438 = v66;

          goto LABEL_138;
        }

        v728 = @"payInFull";
      }

      else
      {
        v728 = @"payInFull";
        v59 = v62;
      }

      v57 = v61;
LABEL_138:
      v722 = v58;
      v439 = [v50 paymentOffersController];
      v440 = [v439 eligiblePaymentOfferCriteriaForPassUniqueID:v57 type:1];
      v725 = [MEMORY[0x1E696AD98] numberWithInt:v440 != 0];
      if (v440)
      {
        v729 = [v439 ineligibleDetailsForCriteria:v440];
        v723 = [v440 suppressPayInFull] ^ 1;
      }

      else
      {
        v723 = 1;
        v729 = 0;
      }

      v720 = v439;
      v359 = [v439 eligiblePaymentOfferCriteriaForPassUniqueID:v57 type:2];
      v347 = [MEMORY[0x1E696AD98] numberWithInt:v359 != 0];
      if (!PKBankConnectEnabled())
      {
        goto LABEL_150;
      }

      v441 = [v50 pass];
      v719 = v57;
      v442 = v347;
      v443 = v55;
      v444 = v59;
      v445 = v441;
      v446 = [v50 connectedCardStateForPass:v441];

      v59 = v444;
      v55 = v443;
      v347 = v442;
      v57 = v719;
      switch(v446)
      {
        case 0:
          goto LABEL_150;
        case 1:
          v447 = @"true";
          break;
        case 2:
          v447 = @"false";
          break;
        default:
          v447 = 0;
LABEL_149:
          [v51 setObject:v447 forKeyedSubscript:*MEMORY[0x1E69BA9F0]];

LABEL_150:
          v49 = v721;
LABEL_151:

LABEL_152:
          v449 = [v50 paymentApplication];
          v450 = v449;
          if (v449)
          {
            [v449 paymentNetworkIdentifier];
            v350 = PKPaymentNetworkNameForPaymentCredentialType();
            [v450 paymentType];
            v349 = PKPaymentMethodTypeToString();
          }

          else
          {
            v349 = 0;
            v350 = 0;
          }

          v348 = v722;
LABEL_156:
          [v51 setObject:v350 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
          [v51 setObject:v349 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
          [v51 setObject:v348 forKeyedSubscript:*MEMORY[0x1E69BAC80]];
          [v51 setObject:v727 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          if (v59)
          {
            [v59 BOOLValue];
            v451 = PKAnalyticsReportSwitchToggleResultValue();
            [v51 setObject:v451 forKeyedSubscript:*MEMORY[0x1E69BAC70]];
          }

          v452 = v59;
          [v51 setObject:v726 forKeyedSubscript:*MEMORY[0x1E69BAC08]];
          v453 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v453 forKeyedSubscript:*MEMORY[0x1E69BABB0]];

          v454 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v454 forKeyedSubscript:*MEMORY[0x1E69BACD0]];

          PKHideCardBenefitPayLater();
          v455 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v455 forKeyedSubscript:*MEMORY[0x1E69BACE0]];

          PKHidePayLaterOptions();
          v456 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v456 forKeyedSubscript:*MEMORY[0x1E69BA9D8]];

          PKHideCardBenefitRewards();
          v457 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v457 forKeyedSubscript:*MEMORY[0x1E69BAD00]];

          [v50 hasAnyPayWithRewardsOffers];
          v458 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v458 forKeyedSubscript:*MEMORY[0x1E69BABB8]];

          if (v728)
          {
            [v51 setObject:v728 forKeyedSubscript:*MEMORY[0x1E69BAD38]];
          }

          if (v725)
          {
            [v725 BOOLValue];
            v459 = PKAnalyticsReportSwitchToggleResultValue();
            [v51 setObject:v459 forKeyedSubscript:*MEMORY[0x1E69BA9D0]];
          }

          if (v729)
          {
            v460 = [v729 analyticsValue];
            [v51 setObject:v460 forKeyedSubscript:*MEMORY[0x1E69BA9C0]];
          }

          if (v347)
          {
            [v347 BOOLValue];
            v461 = PKAnalyticsReportSwitchToggleResultValue();
            [v51 setObject:v461 forKeyedSubscript:*MEMORY[0x1E69BACF8]];
          }

          [v50 hasAutomaticallyPresentedPass];
          v462 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v462 forKeyedSubscript:*MEMORY[0x1E69BAC00]];

          v463 = v51;
          if (!v463)
          {
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
            goto LABEL_284;
          }

          v464 = v463;
          type metadata accessor for PKAnalyticsKey(0);
          sub_1BD1F0E18();
          v465 = sub_1BE052244();
          v731, v466, v467, v468, v469, v470, v471, v472;

          v733 = v465;
          v473 = *MEMORY[0x1E69BB050];
          v474 = @"card";
          v475 = v49;
          if (v474)
          {
            v476 = v474;
            v477 = sub_1BE052434();
            v479 = v478;
          }

          else
          {
            v477 = 0;
            v479 = 0;
          }

          sub_1BD6B05C0(v477, v479, v473);
          v480 = sub_1BD6B2434(v475);
          if (v480)
          {
            if (v480[2])
            {
              v488 = v733;
              v489 = v480;
              v490 = swift_isUniquelyReferenced_nonNull_native();
              v732 = v488;
              sub_1BD6B8B40(v489, sub_1BD6B2140, 0, v490, &v732);
              v489, v491, v492, v493, v494, v495, v496, v497;
              v733 = v732;
            }

            else
            {
              v480, v481, v482, v483, v484, v485, v486, v487;
            }
          }

          if ([v50 mode] == 1)
          {
            v498 = *MEMORY[0x1E69BB070];
            v499 = [v50 pass];
            v500 = sub_1BD6B1634(v499);
            v502 = v501;

            v503 = v733;
            v504 = swift_isUniquelyReferenced_nonNull_native();
            v732 = v503;
            sub_1BD1DAE70(v500, v502, v498, v504);

            v733 = v732;
            v505 = *MEMORY[0x1E69BAD90];
            v506 = [v50 pass];
            v507 = [v506 associatedAccountServiceAccountIdentifier];

            if (v507)
            {
              v508 = @"appleCard";
            }

            else if ([v506 hasAssociatedPeerPaymentAccount])
            {
              v508 = @"appleCash";
            }

            else
            {
              v530 = [v506 devicePrimaryPaymentApplication];
              v531 = [v530 paymentNetworkIdentifier];

              if (v531 == 123)
              {
                v508 = @"barcode";
              }

              else
              {
                v508 = @"other";
              }
            }

            v532 = v508;

            v533 = v508;
            if (v533)
            {
              v534 = sub_1BE052434();
              v536 = v535;
            }

            else
            {
              v534 = 0;
              v536 = 0;
            }

            sub_1BD6B05C0(v534, v536, v505);
            goto LABEL_188;
          }

          if ([v50 mode] != 2)
          {
LABEL_188:
            v475, v509, v510, v511, v512, v513, v514, v515;

LABEL_272:
            v694 = *MEMORY[0x1E69BA680];
            v695 = sub_1BE052434();
            v697 = v696;
            v698 = v694;
            v699 = v733;
            v700 = swift_isUniquelyReferenced_nonNull_native();
            v732 = v699;
            sub_1BD1DAE70(v695, v697, v698, v700);

            v701 = v732;
            v733 = v732;
            v702 = *MEMORY[0x1E69BABE8];
            v703 = sub_1BD6B1398(v730);
            v705 = v704;
            v706 = v702;
            v707 = swift_isUniquelyReferenced_nonNull_native();
            v732 = v701;
            sub_1BD1DAE70(v703, v705, v706, v707);

            v708 = v732;
            v709 = objc_opt_self();
            v710 = *MEMORY[0x1E69BB6E0];
            type metadata accessor for PKAnalyticsKey(0);
            sub_1BD1F0E18();
            v711 = sub_1BE052224();
            v708, v712, v713, v714, v715, v716, v717, v718;
            [v709 subject:v710 sendEvent:v711];

            return;
          }

          v516 = *MEMORY[0x1E69BB070];
          v517 = [v50 remotePaymentInstrument];
          v518 = sub_1BD6B1634(v517);
          v520 = v519;

          v521 = v733;
          v522 = swift_isUniquelyReferenced_nonNull_native();
          v732 = v521;
          sub_1BD1DAE70(v518, v520, v516, v522);
          v475, v523, v524, v525, v526, v527, v528, v529;

LABEL_271:
          v733 = v732;
          goto LABEL_272;
      }

      v448 = v447;
      goto LABEL_149;
    case 0xCu:
      v88 = *v23;
      v87 = *(v23 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      v89 = swift_initStackObject();
      *(v89 + 16) = xmmword_1BE0B98D0;
      v90 = *MEMORY[0x1E69BAC80];
      *(v89 + 32) = *MEMORY[0x1E69BAC80];
      v91 = v90;
      v92 = [v88 organizationName];
      *(v89 + 40) = sub_1BE052434();
      *(v89 + 48) = v93;
      v94 = *MEMORY[0x1E69BAD48];
      *(v89 + 56) = *MEMORY[0x1E69BAD48];
      v95 = v94;
      v96 = PKDefaultPaymentNetworkNameForPaymentPass();
      if (!v96)
      {
        goto LABEL_276;
      }

      v97 = v96;

      v98 = sub_1BE052434();
      v100 = v99;
      v731, v99, v101, v102, v103, v104, v105, v106;

      v107 = MEMORY[0x1E69BB050];
      *(v89 + 64) = v98;
      *(v89 + 72) = v100;
      v108 = *v107;
      *(v89 + 80) = *v107;
      *(v89 + 88) = sub_1BE052434();
      *(v89 + 96) = v109;
      v110 = v108;
      v111 = sub_1BD1AAF50(v89);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      v733 = v111;
      v112 = [objc_opt_self() analyticsDictionaryForOffer_];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v113 = sub_1BE052244();

      v114 = v733;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v732 = v114;
      sub_1BD6B8B40(v113, sub_1BD6B2140, 0, v115, &v732);

      v113, v116, v117, v118, v119, v120, v121, v122;
      goto LABEL_271;
    default:
      v31 = *v23;
      v32 = *(*v23 + qword_1EBDAAD68 + 32);
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v34 = [v32 hasAnyPayLaterOptions];
      v35 = [v32 fundingMode] | 2;
      v724 = v34;
      if (v35 != 2)
      {
        v725 = 0;
        v726 = 0;
        v728 = 0;
        v729 = 0;
        v351 = 0;
        v41 = 0;
        v727 = 0;
        v352 = 0;
        v353 = 0;
        v354 = 0;
        v723 = 1;
        goto LABEL_211;
      }

      v36 = [v32 mode];
      if (v36 == 2)
      {
        v361 = [v32 remotePaymentInstrument];
        v722 = [v361 organizationName];

        v362 = [v32 remotePaymentInstrument];
        v727 = [v362 issuerCountryCode];

        v363 = [v32 remotePaymentInstrument];
        v364 = [v363 isCobranded];

        v41 = v364;
        v365 = [v32 remotePaymentInstrument];
        v366 = [v365 cobrandName];
        v725 = 0;
        v726 = v366;
        v728 = 0;
        v729 = 0;
        v351 = 0;
        v723 = 1;
        goto LABEL_206;
      }

      if (v36 != 1)
      {
        v725 = 0;
        v726 = 0;
        v728 = 0;
        v729 = 0;
        v351 = 0;
        v41 = 0;
        v727 = 0;
        v722 = 0;
        v723 = 1;
        goto LABEL_207;
      }

      v721 = v31;
      v37 = [v32 pass];
      v38 = [v32 pass];
      v39 = [v38 uniqueID];

      v40 = [v37 organizationName];
      v727 = [v37 issuerCountryCode];
      v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v37, "isCobranded")}];
      v726 = [v37 cobrandName];
      v728 = @"payInFull";
      v42 = @"payInFull";
      if ([v32 fundingMode] != 2)
      {
        goto LABEL_193;
      }

      v43 = v39;
      v44 = v41;
      v45 = [v32 selectedPaymentOffer];

      if (v45)
      {
        v46 = [v32 selectedPaymentOffer];
        v47 = [v46 type];

        if (v47 == 1)
        {
          v48 = @"installments";
          v41 = v44;
          goto LABEL_190;
        }

        v41 = v44;
        if (v47 == 2)
        {
          v48 = @"rewards";
LABEL_190:
          v39 = v43;
          v728 = v48;
          v537 = v48;

          goto LABEL_193;
        }

        v728 = @"payInFull";
      }

      else
      {
        v728 = @"payInFull";
        v41 = v44;
      }

      v39 = v43;
LABEL_193:
      v722 = v40;
      v538 = [v32 paymentOffersController];
      v539 = [v538 eligiblePaymentOfferCriteriaForPassUniqueID:v39 type:1];
      v725 = [MEMORY[0x1E696AD98] numberWithInt:v539 != 0];
      if (v539)
      {
        v729 = [v538 ineligibleDetailsForCriteria:v539];
        v723 = [v539 suppressPayInFull] ^ 1;
      }

      else
      {
        v723 = 1;
        v729 = 0;
      }

      v720 = v538;
      v365 = [v538 eligiblePaymentOfferCriteriaForPassUniqueID:v39 type:2];
      v351 = [MEMORY[0x1E696AD98] numberWithInt:v365 != 0];
      if (!PKBankConnectEnabled())
      {
        goto LABEL_205;
      }

      v540 = [v32 pass];
      v719 = v39;
      v541 = v351;
      v542 = v37;
      v543 = v41;
      v544 = v540;
      v545 = [v32 connectedCardStateForPass:v540];

      v41 = v543;
      v37 = v542;
      v351 = v541;
      v39 = v719;
      switch(v545)
      {
        case 0:
          goto LABEL_205;
        case 1:
          v546 = @"true";
          break;
        case 2:
          v546 = @"false";
          break;
        default:
          v546 = 0;
          goto LABEL_204;
      }

      v547 = v546;
LABEL_204:
      [v33 setObject:v546 forKeyedSubscript:*MEMORY[0x1E69BA9F0]];

LABEL_205:
      v31 = v721;
LABEL_206:

LABEL_207:
      v548 = [v32 paymentApplication];
      v549 = v548;
      if (v548)
      {
        [v548 paymentNetworkIdentifier];
        v354 = PKPaymentNetworkNameForPaymentCredentialType();
        [v549 paymentType];
        v353 = PKPaymentMethodTypeToString();
      }

      else
      {
        v353 = 0;
        v354 = 0;
      }

      v352 = v722;
LABEL_211:
      [v33 setObject:v354 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
      [v33 setObject:v353 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
      [v33 setObject:v352 forKeyedSubscript:*MEMORY[0x1E69BAC80]];
      [v33 setObject:v727 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
      if (v41)
      {
        [v41 BOOLValue];
        v550 = PKAnalyticsReportSwitchToggleResultValue();
        [v33 setObject:v550 forKeyedSubscript:*MEMORY[0x1E69BAC70]];
      }

      v551 = v41;
      [v33 setObject:v726 forKeyedSubscript:*MEMORY[0x1E69BAC08]];
      v552 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v552 forKeyedSubscript:*MEMORY[0x1E69BABB0]];

      v553 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v553 forKeyedSubscript:*MEMORY[0x1E69BACD0]];

      PKHideCardBenefitPayLater();
      v554 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v554 forKeyedSubscript:*MEMORY[0x1E69BACE0]];

      PKHidePayLaterOptions();
      v555 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v555 forKeyedSubscript:*MEMORY[0x1E69BA9D8]];

      PKHideCardBenefitRewards();
      v556 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v556 forKeyedSubscript:*MEMORY[0x1E69BAD00]];

      [v32 hasAnyPayWithRewardsOffers];
      v557 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v557 forKeyedSubscript:*MEMORY[0x1E69BABB8]];

      if (v728)
      {
        [v33 setObject:v728 forKeyedSubscript:*MEMORY[0x1E69BAD38]];
      }

      if (v725)
      {
        [v725 BOOLValue];
        v558 = PKAnalyticsReportSwitchToggleResultValue();
        [v33 setObject:v558 forKeyedSubscript:*MEMORY[0x1E69BA9D0]];
      }

      if (v729)
      {
        v559 = [v729 analyticsValue];
        [v33 setObject:v559 forKeyedSubscript:*MEMORY[0x1E69BA9C0]];
      }

      if (v351)
      {
        [v351 BOOLValue];
        v560 = PKAnalyticsReportSwitchToggleResultValue();
        [v33 setObject:v560 forKeyedSubscript:*MEMORY[0x1E69BACF8]];
      }

      [v32 hasAutomaticallyPresentedPass];
      v561 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v561 forKeyedSubscript:*MEMORY[0x1E69BAC00]];

      v562 = v33;
      if (!v562)
      {
        goto LABEL_280;
      }

      v563 = v562;
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v564 = sub_1BE052244();
      v731, v565, v566, v567, v568, v569, v570, v571;

      v733 = v564;
      v572 = *MEMORY[0x1E69BB050];
      v573 = @"card";
      v574 = v31;
      if (v573)
      {
        v575 = v573;
        v576 = sub_1BE052434();
        v578 = v577;
      }

      else
      {
        v576 = 0;
        v578 = 0;
      }

      sub_1BD6B05C0(v576, v578, v572);
      v579 = sub_1BD6B2434(v574);
      if (v579)
      {
        if (v579[2])
        {
          v587 = v733;
          v588 = v579;
          v589 = swift_isUniquelyReferenced_nonNull_native();
          v732 = v587;
          sub_1BD6B8B40(v588, sub_1BD6B2140, 0, v589, &v732);
          v588, v590, v591, v592, v593, v594, v595, v596;
          v733 = v732;
        }

        else
        {
          v579, v580, v581, v582, v583, v584, v585, v586;
        }
      }

      if ([v32 mode] == 1)
      {
        v597 = *MEMORY[0x1E69BB070];
        v598 = [v32 pass];
        v599 = sub_1BD6B1634(v598);
        v601 = v600;

        v602 = v733;
        v603 = swift_isUniquelyReferenced_nonNull_native();
        v732 = v602;
        sub_1BD1DAE70(v599, v601, v597, v603);

        v733 = v732;
        v604 = *MEMORY[0x1E69BAD90];
        v605 = [v32 pass];
        v606 = [v605 associatedAccountServiceAccountIdentifier];

        if (v606)
        {
          v607 = @"appleCard";
        }

        else if ([v605 hasAssociatedPeerPaymentAccount])
        {
          v607 = @"appleCash";
        }

        else
        {
          v615 = [v605 devicePrimaryPaymentApplication];
          v616 = [v615 paymentNetworkIdentifier];

          if (v616 == 123)
          {
            v607 = @"barcode";
          }

          else
          {
            v607 = @"other";
          }
        }

        v617 = v607;

        v618 = v607;
        if (v618)
        {
          v619 = sub_1BE052434();
          v621 = v620;
        }

        else
        {
          v619 = 0;
          v621 = 0;
        }

        sub_1BD6B05C0(v619, v621, v604);
      }

      else if ([v32 mode] == 2)
      {
        v608 = *MEMORY[0x1E69BB070];
        v609 = [v32 remotePaymentInstrument];
        v610 = sub_1BD6B1634(v609);
        v612 = v611;

        v613 = v733;
        v614 = swift_isUniquelyReferenced_nonNull_native();
        v732 = v613;
        sub_1BD1DAE70(v610, v612, v608, v614);

        v733 = v732;
      }

      v622 = [v32 pass];
      if (v622)
      {
        v630 = v622;
        v574, v623, v624, v625, v626, v627, v628, v629;

        goto LABEL_272;
      }

      v631 = *MEMORY[0x1E69BB068];
      v632 = v733;
      v633 = swift_isUniquelyReferenced_nonNull_native();
      v732 = v632;
      sub_1BD1DAE70(1280070990, 0xE400000000000000, v631, v633);
      v574, v634, v635, v636, v637, v638, v639, v640;

      goto LABEL_271;
  }
}

void _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BA680];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v11;
  sub_1BD6B8B40(a1, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v31);
  a1, v13, v14, v15, v16, v17, v18, v19;
  v20 = *MEMORY[0x1E69BB6A8];
  v21 = objc_opt_self();
  v22 = v31;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v23 = sub_1BE052224();
  v22, v24, v25, v26, v27, v28, v29, v30;
  [v21 subject:v20 sendEvent:v23];
}

void _s9PassKitUI9AnalyticsO27trackPeerPaymentSheetRowTap3for10p2pContexty0G6UIBase0g6DetailH0O_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE04C614();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 104);
  v10(v9, *MEMORY[0x1E69BC8A8], v5, v7);
  v11 = sub_1BE04C604();
  v12 = *(v6 + 8);
  v12(v9, v5);
  if (v11 & 1) != 0 || ((v10)(v9, *MEMORY[0x1E69BC8B0], v5), v13 = sub_1BE04C604(), v12(v9, v5), (v13))
  {
    v14 = sub_1BE052434();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v18 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v19;
    v20 = *MEMORY[0x1E69BA440];
    v21 = MEMORY[0x1E69BAF60];
    *(inited + 56) = *MEMORY[0x1E69BA440];
    *(inited + 64) = v14;
    v22 = *v21;
    *(inited + 72) = v16;
    *(inited + 80) = v22;
    *(inited + 88) = a2;
    *(inited + 96) = a3;
    v23 = v18;
    v24 = v20;
    v25 = v22;
    sub_1BE048C84();
    v26 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v26);
    v26, v27, v28, v29, v30, v31, v32, v33;
  }
}

void sub_1BD6B8B40(uint64_t a1, void (*a2)(void *__return_ptr, void *, __n128), void *a3, char a4, void *a5)
{
  v71 = a5;
  v7 = (a1 + 64);
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v64 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;
  sub_1BE048C84();
  sub_1BE048964();
  v15 = 0;
  v65 = v7;
  while (v10)
  {
    v68 = a4;
    v25 = v15;
LABEL_14:
    v27 = __clz(__rbit64(v10)) | (v25 << 6);
    v28 = *(*(a1 + 48) + 8 * v27);
    v29 = (*(a1 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v70[0] = v28;
    v70[1] = v30;
    v70[2] = v31;
    v32 = v28;
    sub_1BE048C84();
    (a2)(v69, v70);
    v31, v33, v34, v35, v36, v37, v38, v39;

    v41 = v69[0];
    v40 = v69[1];
    v42 = v69[2];
    v43 = *v71;
    v45 = sub_1BD14BFD0();
    v46 = v43[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_25;
    }

    v49 = v44;
    if (v43[3] >= v48)
    {
      if ((v68 & 1) == 0)
      {
        sub_1BD506274();
      }
    }

    else
    {
      sub_1BD500374(v48, v68 & 1);
      v50 = sub_1BD14BFD0();
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_27;
      }

      v45 = v50;
    }

    v10 &= v10 - 1;
    v52 = *v71;
    if (v49)
    {

      v16 = (v52[7] + 16 * v45);
      v17 = v16[1];
      *v16 = v40;
      v16[1] = v42;
      v17, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v52[(v45 >> 6) + 8] |= 1 << v45;
      *(v52[6] + 8 * v45) = v41;
      v53 = (v52[7] + 16 * v45);
      *v53 = v40;
      v53[1] = v42;
      v54 = v52[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_26;
      }

      v52[2] = v56;
    }

    a4 = 1;
    v15 = v25;
    v7 = v65;
  }

  v26 = v15;
  while (1)
  {
    v25 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v11)
    {
      sub_1BD0D45FC(a1, v7, ~v64, v15, 0, v12, v13, v14);
      a3, v57, v58, v59, v60, v61, v62, v63;
      return;
    }

    v10 = *&v7[8 * v25];
    ++v26;
    if (v10)
    {
      v68 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BE053C14();
  __break(1u);
}

void _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD6BBD44(a1, v6, type metadata accessor for NearbyPeerPaymentReceiverState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_destroy_boxed_opaque_existential_0(v6, v8, v9, v10, v11, v12, v13, v14);
      return;
    }

    goto LABEL_8;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_1BD6BBDAC(v6, type metadata accessor for NearbyPeerPaymentReceiverState);
LABEL_8:
    v23 = sub_1BE052434();
    v25 = v26;
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680, &unk_1BE0CCB00);
  *(v6 + *(v15 + 48) + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = sub_1BE052434();
  v25 = v24;
  sub_1BD0DE53C(v6, &unk_1EBD3F690, &unk_1BE0DA4D0);
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v28 = *MEMORY[0x1E69BAF88];
  *(inited + 32) = *MEMORY[0x1E69BAF88];
  v29 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v23;
  *(inited + 48) = v25;
  v30 = *v29;
  *(inited + 56) = *v29;
  v31 = sub_1BE052434();
  v32 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v31;
  *(inited + 72) = v33;
  v34 = *v32;
  *(inited + 80) = *v32;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v35;
  v36 = v28;
  v37 = v30;
  v38 = v34;
  v39 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v39;
  sub_1BD6B8B40(a2, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v74);
  a2, v41, v42, v43, v44, v45, v46, v47;
  v48 = v74;
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1BE0B69E0;
  v50 = *MEMORY[0x1E69BA850];
  *(v49 + 32) = *MEMORY[0x1E69BA850];
  *(v49 + 40) = sub_1BE052434();
  *(v49 + 48) = v51;
  v52 = v50;
  v53 = sub_1BD1AAF50(v49);
  swift_setDeallocating();
  sub_1BD0DE53C(v49 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v53;
  sub_1BD6B8B40(v48, sub_1BD6B2140, 0, v54, &v74);
  v48, v55, v56, v57, v58, v59, v60, v61;
  v62 = *MEMORY[0x1E69BB6A8];
  v63 = objc_opt_self();
  v64 = v74;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v65 = sub_1BE052224();
  v64, v66, v67, v68, v69, v70, v71, v72;
  [v63 subject:v62 sendEvent:v65];
}

void _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  v5 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v6 = v5;
  *(inited + 40) = sub_1BE04B814();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x1E69BAFB0];
  *(inited + 56) = *MEMORY[0x1E69BAFB0];
  v9 = v8;
  v10 = sub_1BE04B7E4();
  v11 = MEMORY[0x1E69BA850];
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = *v11;
  *(inited + 80) = *v11;
  v14 = sub_1BE052434();
  v15 = MEMORY[0x1E69BA680];
  *(inited + 88) = v14;
  *(inited + 96) = v16;
  v17 = *v15;
  *(inited + 104) = *v15;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v18;
  v19 = *MEMORY[0x1E69BA440];
  *(inited + 128) = *MEMORY[0x1E69BA440];
  *(inited + 136) = a1;
  *(inited + 144) = a2;
  v20 = v13;
  v21 = v17;
  v22 = v19;
  sub_1BE048C84();
  v23 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1BE0B69E0;
  *(v24 + 32) = v20;
  *(v24 + 40) = sub_1BE052434();
  *(v24 + 48) = v25;
  v26 = sub_1BD1AAF50(v24);
  swift_setDeallocating();
  sub_1BD0DE53C(v24 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v26;
  sub_1BD6B8B40(v23, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v46);
  v23, v28, v29, v30, v31, v32, v33, v34;
  v35 = *MEMORY[0x1E69BB6A8];
  v36 = objc_opt_self();
  v37 = v46;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v38 = sub_1BE052224();
  v37, v39, v40, v41, v42, v43, v44, v45;
  [v36 subject:v35 sendEvent:v38];
}

unint64_t sub_1BD6B9440()
{
  result = qword_1EBD4FC88;
  if (!qword_1EBD4FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.ValueSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.ValueSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD6B9608()
{
  result = qword_1EBD4FC90;
  if (!qword_1EBD4FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC90);
  }

  return result;
}

void sub_1BD6B965C(uint64_t a1)
{
  v2 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v4 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BA440];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  if (a1 == 2)
  {
    v9 = 0x4F746E656D796170;
  }

  else
  {
    v9 = 0x6C75466E49796170;
  }

  if (a1 == 2)
  {
    v10 = 0xEC00000072656666;
  }

  else
  {
    v10 = 0xE90000000000006CLL;
  }

  v11 = objc_opt_self();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v13 = *v12;
  *(inited + 80) = *v12;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v14;
  v15 = v4;
  v16 = v8;
  v17 = v13;
  v18 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v19 = sub_1BE052224();
  v18, v20, v21, v22, v23, v24, v25, v26;
  [v11 subject:v2 sendEvent:v19];
}

void sub_1BD6B9818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v1 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v2 = sub_1BE052434();
  v3 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = *v3;
  *(inited + 56) = *v3;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v6;
  v7 = *MEMORY[0x1E69BB170];
  *(inited + 80) = *MEMORY[0x1E69BB170];
  v8 = v1;
  v9 = v5;
  v10 = v7;
  v11 = @"card";
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x1E69BB6E0];
    v14 = objc_opt_self();
    v15 = sub_1BE052434();
    v17 = v16;

    *(inited + 88) = v15;
    *(inited + 96) = v17;
    v18 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v19 = sub_1BE052224();
    v18, v20, v21, v22, v23, v24, v25, v26;
    [v14 subject:v13 sendEvent:v19];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6B99C4(unint64_t a1, void *a2)
{
  if (a1 <= 6)
  {
    v3 = sub_1BE052434();
    v5 = v4;
    sub_1BE048C84();
    sub_1BD0E5E8C(0, &unk_1EBD35E80, 0x1E69B8540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v7 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v8 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v3;
    *(inited + 48) = v5;
    v9 = *v8;
    *(inited + 56) = *v8;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v10;
    v73 = v7;
    v11 = v9;
    v12 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    sub_1BD6B14D4(v12, a2);
    v12, v13, v14, v15, v16, v17, v18, v19;
    if ([a2 requestType] == 9 && (objc_opt_self(), (v27 = swift_dynamicCastObjCClass()) != 0))
    {
      v28 = v27;
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_1BE0B6CA0;
      *(v29 + 32) = v73;
      *(v29 + 40) = v3;
      *(v29 + 48) = v5;
      *(v29 + 56) = v11;
      *(v29 + 64) = sub_1BE052434();
      *(v29 + 72) = v30;
      v31 = v73;
      v32 = v11;
      v33 = a2;
      v34 = sub_1BD1AAF50(v29);
      swift_setDeallocating();
      swift_arrayDestroy();
      v35 = [v28 analyticsMessagesContext];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1BE052244();

        v38 = objc_opt_self();
        v39 = sub_1BD1A8C44(v34);
        v34, v40, v41, v42, v43, v44, v45, v46;
        v47 = sub_1BE052224();
        v39, v48, v49, v50, v51, v52, v53, v54;
        v55 = sub_1BE052224();
        v37, v56, v57, v58, v59, v60, v61, v62;
        [v38 reportAppleCashEvent:v47 withMessagesContext:v55];
      }

      else
      {
        v63 = objc_opt_self();
        v64 = *MEMORY[0x1E69BB6A8];
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD1F0E18();
        v65 = sub_1BE052224();
        v34, v66, v67, v68, v69, v70, v71, v72;
        [v63 subject:v64 sendEvent:v65];
      }
    }

    else
    {
      v5, v20, v21, v22, v23, v24, v25, v26;
    }
  }
}

unint64_t sub_1BD6B9D24(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void sub_1BD6B9D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  v43 = v6;
  if (a3)
  {
    if (qword_1EBD36D30 != -1)
    {
      swift_once();
    }

    v7 = qword_1EBDAB490;
    sub_1BE048C84();
    sub_1BD6B05C0(a2, a3, v7);
    v8 = v43;
  }

  else
  {
    v8 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v11;
  v12 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = 0xD000000000000013;
  v13 = *MEMORY[0x1E69BABE8];
  *(inited + 72) = 0x80000001BE134C50;
  *(inited + 80) = v13;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001BE134CF0;
  v14 = v10;
  v15 = v12;
  v16 = v13;
  v17 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  if (v8[2])
  {
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v17;
    sub_1BD6B8B40(v8, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v42);
    v8, v19, v20, v21, v22, v23, v24, v25;
    v17 = v42;
  }

  v26 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v27 = sub_1BE052224();
  v17, v28, v29, v30, v31, v32, v33, v34;
  [v26 subject:a1 sendEvent:v27];

  v8, v35, v36, v37, v38, v39, v40, v41;
}

uint64_t sub_1BD6B9FD4()
{
  v0 = sub_1BE04B0D4();
  v97 = *(v0 - 8);
  v98 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v97 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC98, &unk_1BE0EF348);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v97 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80, &unk_1BE0DCDD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v97 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FCA0, &qword_1BE0EF358);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  *(inited + 32) = 16707;
  *(inited + 40) = 0xE200000000000000;
  v10 = sub_1BD537298(&unk_1F3B8F1E0);
  swift_arrayDestroy();
  *(inited + 48) = v10;
  *(inited + 56) = 16723;
  *(inited + 64) = 0xE200000000000000;
  v11 = sub_1BD537298(&unk_1F3B8F220);
  swift_arrayDestroy();
  *(inited + 72) = v11;
  *(inited + 80) = 18499;
  *(inited + 88) = 0xE200000000000000;
  v12 = sub_1BD537298(&unk_1F3B8F260);
  swift_arrayDestroy();
  *(inited + 96) = v12;
  *(inited + 104) = 17730;
  *(inited + 112) = 0xE200000000000000;
  v13 = sub_1BD537298(&unk_1F3B8F2A0);
  swift_arrayDestroy();
  *(inited + 120) = v13;
  v14 = sub_1BD1ADF28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FCA8, &qword_1BE0EF360);
  swift_arrayDestroy();
  sub_1BE04B094();
  v15 = sub_1BE04B084();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) != 1)
  {
    v27 = sub_1BE04B004();
    v29 = v28;
    (*(v16 + 8))(v8, v15);
    sub_1BE04B0E4();
    sub_1BE04B0B4();
    (*(v97 + 8))(v2, v98);
    v30 = sub_1BE04B014();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v5, 1, v30) == 1)
    {
      v29, v32, v33, v34, v35, v36, v37, v38;
      v14, v39, v40, v41, v42, v43, v44, v45;
      v24 = &qword_1EBD4FC98;
      v25 = &unk_1BE0EF348;
      v26 = v5;
      goto LABEL_5;
    }

    v46 = v27;
    v47 = sub_1BE04B004();
    v49 = v48;
    (*(v31 + 8))(v5, v30);
    if (v14[2])
    {
      v57 = sub_1BD148F70(v46, v29);
      v59 = v58;
      v29, v58, v60, v61, v62, v63, v64, v65;
      if (v59)
      {
        v73 = *(v14[7] + 8 * v57);
        sub_1BE048C84();
        v14, v74, v75, v76, v77, v78, v79, v80;
        v81 = sub_1BD6CC230(v47, v49, v73);
        v73, v82, v83, v84, v85, v86, v87, v88;
        if (v81)
        {
          return v47;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v29, v50, v51, v52, v53, v54, v55, v56;
    }

    v14, v66, v67, v68, v69, v70, v71, v72;
LABEL_12:
    v49, v89, v90, v91, v92, v93, v94, v95;
    return sub_1BE052434();
  }

  v14, v17, v18, v19, v20, v21, v22, v23;
  v24 = &qword_1EBD3DA80;
  v25 = &unk_1BE0DCDD0;
  v26 = v8;
LABEL_5:
  sub_1BD0DE53C(v26, v24, v25);
  return sub_1BE052434();
}

void sub_1BD6BA48C(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1BE04B0F4();
  v6 = *(v167 - 1);
  v7 = MEMORY[0x1EEE9AC00](v167);
  v9 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 paymentRequest];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 analyticsPageTag];
    v166 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BE052434();
      v16 = v15;
    }

    else
    {
      v14 = sub_1BE052434();
      v16 = v20;
    }

    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0BA730;
    v22 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v165 = *MEMORY[0x1E69BA818];
    v23 = sub_1BE052434();
    v24 = MEMORY[0x1E69BAE88];
    *(inited + 40) = v23;
    *(inited + 48) = v25;
    v26 = *v24;
    *(inited + 56) = *v24;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v27;
    v28 = *MEMORY[0x1E69BABE8];
    *(inited + 80) = *MEMORY[0x1E69BABE8];
    *(inited + 88) = v14;
    v29 = *MEMORY[0x1E69BAE00];
    *(inited + 96) = v16;
    *(inited + 104) = v29;
    v163 = v22;
    v30 = v26;
    v162 = v28;
    sub_1BE048C84();
    v31 = v29;
    v32 = v166;
    v33 = [v166 requestType];
    if (v33 > 0xF)
    {
      v34 = @"unknown";
      v35 = @"unknown";
    }

    else
    {
      v34 = off_1E8010328[v33];
      v35 = off_1E80103A8[v33];
    }

    v36 = v34;
    v37 = v35;
    if (!v37)
    {
      goto LABEL_50;
    }

    v45 = v37;
    v16, v38, v39, v40, v41, v42, v43, v44;
    v46 = sub_1BE052434();
    v48 = v47;

    *(inited + 112) = v46;
    *(inited + 120) = v48;
    v49 = *MEMORY[0x1E69BA5F0];
    *(inited + 128) = *MEMORY[0x1E69BA5F0];
    v50 = v49;
    sub_1BE04B0A4();
    v51 = sub_1BD6B9FD4();
    v53 = v52;
    (*(v6 + 8))(v9, v167);
    *(inited + 136) = v51;
    *(inited + 144) = v53;
    v54 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    if ([v32 requestType] != 10)
    {
      goto LABEL_37;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_37;
    }

    v55 = *MEMORY[0x1E69BA628];
    [v32 merchantCapabilities];
    v56 = PKAnalyticsReportSwitchToggleResultValue();
    v57 = sub_1BE052434();
    v59 = v58;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168 = v54;
    sub_1BD1DAE70(v57, v59, v55, isUniquelyReferenced_nonNull_native);

    v54 = v168;
    v61 = [v32 paymentSummaryItems];
    v62 = sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
    v63 = sub_1BE052744();

    if (v63 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_16:
        if ((v63 & 0xC000000000000001) != 0)
        {
          v71 = MEMORY[0x1BFB40900](0, v63);
        }

        else
        {
          if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v71 = *(v63 + 32);
        }

        v79 = v71;
        v63, v72, v73, v74, v75, v76, v77, v78;
        v63 = &selRef_activateWithCompletionBlock_;
        v80 = [v79 amount];

        if (!v80)
        {
          goto LABEL_37;
        }

        v59 = v80;
        v81 = [v32 paymentSummaryItems];
        v62 = sub_1BE052744();

        if (!(v62 >> 62))
        {
          v82 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v83 = v59;
          if (v82)
          {
            goto LABEL_22;
          }

LABEL_35:

          v103 = v62;
          goto LABEL_36;
        }

LABEL_34:
        v82 = sub_1BE053704();
        v83 = v59;
        if (v82)
        {
LABEL_22:
          v84 = __OFSUB__(v82, 1);
          v85 = v82 - 1;
          if (v84)
          {
            __break(1u);
          }

          else if ((v62 & 0xC000000000000001) == 0)
          {
            if ((v85 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v85 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v86 = *(v62 + 8 * v85 + 32);
              goto LABEL_27;
            }

            __break(1u);
LABEL_50:
            __break(1u);
            return;
          }

          v86 = MEMORY[0x1BFB40900](v85, v62);
LABEL_27:
          v94 = v86;
          v62, v87, v88, v89, v90, v91, v92, v93;
          v95 = [v94 *(v63 + 1840)];

          if (v95)
          {
            v167 = *MEMORY[0x1E69BA620];
            [v95 pk:v83 isLessThan:?];
            v96 = PKAnalyticsReportSwitchToggleResultValue();
            v97 = v83;
            v98 = sub_1BE052434();
            v100 = v99;

            v101 = swift_isUniquelyReferenced_nonNull_native();
            v168 = v54;
            v102 = v167;
            sub_1BD1DAE70(v98, v100, v167, v101);

            v54 = v168;
          }

          else
          {
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v103 = v63;
LABEL_36:
    v103, v64, v65, v66, v67, v68, v69, v70;
LABEL_37:
    if ([v32 requestType] == 9)
    {
      objc_opt_self();
      v104 = swift_dynamicCastObjCClass();
      if (v104)
      {
        v105 = v104;
        v106 = v32;
        if ([v105 isP2P])
        {
          v107 = swift_initStackObject();
          *(v107 + 16) = xmmword_1BE0B98D0;
          v108 = v162;
          *(v107 + 32) = v162;
          *(v107 + 40) = sub_1BE052434();
          *(v107 + 48) = v109;
          v110 = v163;
          *(v107 + 56) = v163;
          *(v107 + 64) = sub_1BE052434();
          *(v107 + 72) = v111;
          v112 = *MEMORY[0x1E69BAF60];
          *(v107 + 80) = *MEMORY[0x1E69BAF60];
          v113 = v110;
          v114 = v108;
          v115 = v112;
          [v105 isDeviceTap];
          *(v107 + 88) = sub_1BE052434();
          *(v107 + 96) = v116;
          v117 = sub_1BD1AAF50(v107);
          swift_setDeallocating();
          swift_arrayDestroy();
          v118 = [v105 analyticsMessagesContext];
          if (v118)
          {
            v119 = v118;
            v120 = sub_1BE052244();

            v121 = objc_opt_self();
            v122 = sub_1BD1A8C44(v117);
            v117, v123, v124, v125, v126, v127, v128, v129;
            v130 = sub_1BE052224();
            v122, v131, v132, v133, v134, v135, v136, v137;
            v138 = sub_1BE052224();
            v120, v139, v140, v141, v142, v143, v144, v145;
            [v121 reportAppleCashEvent:v130 withMessagesContext:v138];
          }

          else
          {
            v146 = objc_opt_self();
            v147 = *MEMORY[0x1E69BB6A8];
            type metadata accessor for PKAnalyticsKey(0);
            sub_1BD1F0E18();
            v138 = sub_1BE052224();
            v117, v148, v149, v150, v151, v152, v153, v154;
            [v146 subject:v147 sendEvent:v138];
          }

          v32 = v166;
        }
      }
    }

    sub_1BD0E5E8C(0, &unk_1EBD35E80, 0x1E69B8540);
    sub_1BD6B14D4(v54, v32);
    v54, v155, v156, v157, v158, v159, v160, v161;

    return;
  }

  sub_1BE04D1E4();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BD026000, v17, v18, "paymentRequest was nil when trying to call trackPaymentSheetDidAppear.", v19, 2u);
    MEMORY[0x1BFB45F20](v19, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void sub_1BD6BAE0C(void *a1)
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v6 = sub_1BE052434();
  v7 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = *v7;
  *(inited + 56) = *v7;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v10;
  v72 = v5;
  v71 = v9;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v12 = sub_1BE052224();
  v11, v13, v14, v15, v16, v17, v18, v19;
  v73 = v2;
  [v2 subject:v3 sendEvent:v12];

  v20 = [a1 paymentRequest];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 requestType];

    if (v22 == 9)
    {
      v23 = [a1 paymentRequest];
      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          if ([v25 isP2P])
          {
            v27 = swift_initStackObject();
            *(v27 + 16) = xmmword_1BE0B98D0;
            *(v27 + 32) = v71;
            *(v27 + 40) = sub_1BE052434();
            *(v27 + 48) = v28;
            *(v27 + 56) = v72;
            *(v27 + 64) = sub_1BE052434();
            *(v27 + 72) = v29;
            v30 = *MEMORY[0x1E69BAF60];
            *(v27 + 80) = *MEMORY[0x1E69BAF60];
            v31 = v72;
            v32 = v71;
            v33 = v30;
            [v26 isDeviceTap];
            *(v27 + 88) = sub_1BE052434();
            *(v27 + 96) = v34;
            v35 = sub_1BD1AAF50(v27);
            swift_setDeallocating();
            swift_arrayDestroy();
            v36 = [v26 analyticsMessagesContext];
            if (v36)
            {
              v37 = v36;
              v38 = sub_1BE052244();

              v39 = sub_1BD1A8C44(v35);
              v35, v40, v41, v42, v43, v44, v45, v46;
              v47 = sub_1BE052224();
              v39, v48, v49, v50, v51, v52, v53, v54;
              v55 = sub_1BE052224();
              v38, v56, v57, v58, v59, v60, v61, v62;
              [v73 reportAppleCashEvent:v47 withMessagesContext:v55];
            }

            else
            {
              v63 = *MEMORY[0x1E69BB6A8];
              v55 = sub_1BE052224();
              v35, v64, v65, v66, v67, v68, v69, v70;
              [v73 subject:v63 sendEvent:v55];
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6BB1F4(unsigned __int8 a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v6;
  v7 = *MEMORY[0x1E69BABE8];
  *(inited + 56) = *MEMORY[0x1E69BABE8];
  *(inited + 64) = sub_1BD6B1398(a1);
  *(inited + 72) = v8;
  v9 = v5;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v12 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v13 = sub_1BE052224();
  v11, v14, v15, v16, v17, v18, v19, v20;
  [v12 subject:a2 sendEvent:v13];
}

void sub_1BD6BB340(uint64_t a1)
{
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v4 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BA440];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v12 = *v10;
  *(inited + 80) = *v10;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v13;
  v14 = v4;
  v15 = v8;
  v16 = v12;
  v17 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v18 = sub_1BE052224();
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v2 subject:a1 sendEvent:v18];
}

void sub_1BD6BB4C0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v11;
  v12 = qword_1EBD36D28;
  v13 = v6;
  v14 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = 11061;
  if (a2 < 5)
  {
    v15 = 13628;
  }

  v16 = qword_1EBDAB488;
  *(inited + 80) = qword_1EBDAB488;
  *(inited + 88) = v15;
  *(inited + 96) = 0xE200000000000000;
  v17 = v16;
  v18 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v19 = sub_1BE052224();
  v18, v20, v21, v22, v23, v24, v25, v26;
  [v4 subject:a1 sendEvent:v19];
}

uint64_t type metadata accessor for Analytics.StateChange(uint64_t a1)
{
  result = qword_1EBD35F38;
  if (!qword_1EBD35F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6BB6C0(uint64_t a1, uint64_t a2)
{
  v4 = _s14PaymentSummaryVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6BB724(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          return 0xD000000000000018;
        }

        else
        {
          return 0xD000000000000016;
        }
      }

      return 0xD000000000000014;
    }

    if (!a1)
    {
      return 0xD000000000000011;
    }

    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 0xD000000000000011;
    }

    if (a1 == 8)
    {
      return 0x52534F726577656ELL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 5)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_1BD6BB890(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v6 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v7;
  v8 = v6;
  v9 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        0x80000001BE117EB0, v10, v11, v12, v13, v14, v15, v16;
LABEL_17:
        v28 = *MEMORY[0x1E69BA440];
        v29 = sub_1BE052434();
        v31 = v30;
        v32 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1BD1DAE70(v29, v31, v32, isUniquelyReferenced_nonNull_native);

        v34 = v9;
        v35 = *MEMORY[0x1E69BA680];
        v36 = sub_1BE052434();
        v38 = v37;
        v39 = v35;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v70 = v34;
        sub_1BD1DAE70(v36, v38, v39, v40);

LABEL_41:
        v9 = v70;
        goto LABEL_42;
      }

      v19 = 0xEE0064657373696DLL;
    }

    else if (v4 == 4)
    {
      v19 = 0xEE006572756C6961;
    }

    else
    {
      v19 = 0xED00006465737369;
    }
  }

  else
  {
    v17 = 0x80000001BE117E60;
    if (v4 != 2)
    {
      v17 = 0x80000001BE117E80;
    }

    v18 = 0x80000001BE117E40;
    if (!v4)
    {
      v18 = 0xEE006572756C6961;
    }

    if (v4 <= 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }
  }

  v20 = sub_1BE053B84();
  v19, v21, v22, v23, v24, v25, v26, v27;
  if (v20)
  {
    goto LABEL_17;
  }

  v41 = 0x7369447465656873;
  v42 = 0xEE0064657373696DLL;
  v43 = 0x46676E6964616F6CLL;
  if (v4 == 4)
  {
    v44 = 0xEE006572756C6961;
  }

  else
  {
    v43 = 0x6D73694472657375;
    v44 = 0xED00006465737369;
  }

  if (v4 <= 5)
  {
    v41 = v43;
    v42 = v44;
  }

  v45 = 0x80000001BE117E60;
  v46 = 0xD000000000000011;
  if (v4 == 2)
  {
    v46 = 0xD000000000000014;
  }

  else
  {
    v45 = 0x80000001BE117E80;
  }

  v47 = 0x80000001BE117E40;
  if (v4)
  {
    v48 = 0xD000000000000014;
  }

  else
  {
    v48 = 0x466C616974696E69;
  }

  if (!v4)
  {
    v47 = 0xEE006572756C6961;
  }

  if (v4 <= 1)
  {
    v46 = v48;
    v45 = v47;
  }

  if (v4 <= 3)
  {
    v49 = v46;
  }

  else
  {
    v49 = v41;
  }

  if (v4 <= 3)
  {
    v50 = v45;
  }

  else
  {
    v50 = v42;
  }

  v51 = *MEMORY[0x1E69BA680];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BD1DAE70(v49, v50, v51, v52);

  if ((a3 & 1) == 0)
  {
    v53 = *MEMORY[0x1E69BA678];
    v54 = sub_1BD6BB724(a2);
    v56 = v55;
    v57 = v53;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v9;
    sub_1BD1DAE70(v54, v56, v57, v58);

    goto LABEL_41;
  }

LABEL_42:
  v59 = objc_opt_self();
  v60 = *MEMORY[0x1E69BB6E0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v61 = sub_1BE052224();
  v9, v62, v63, v64, v65, v66, v67, v68;
  [v59 subject:v60 sendEvent:v61];
}

uint64_t sub_1BD6BBD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6BBDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD6BBE0C(uint64_t a1)
{
  type metadata accessor for StateMachineAuthorizationModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD10315C(319, &qword_1EBD4FCB8, &qword_1EBD406E0, 0x1E695CD58);
    if (v2 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD4FCC0, &qword_1EBD45FC8, 0x1E69B9298);
      if (v3 <= 0x3F)
      {
        sub_1BD6BBF4C(319);
        if (v4 <= 0x3F)
        {
          sub_1BD10315C(319, &qword_1EBD4FCD0, &qword_1EBD45530, 0x1E69B86A8);
          if (v5 <= 0x3F)
          {
            sub_1BD6BBFC0(319);
            if (v6 <= 0x3F)
            {
              sub_1BD6BC068(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD6BBF4C(uint64_t a1)
{
  if (!qword_1EBD4FCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52A20, &unk_1BE0F66E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4FCC8);
    }
  }
}

void sub_1BD6BBFC0(uint64_t a1)
{
  if (!qword_1EBD4FCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C860, &qword_1BE0E5958);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBD4FCD8);
    }
  }
}

void sub_1BD6BC068(uint64_t a1)
{
  if (!qword_1EBD4FCE0)
  {
    sub_1BD0E5E8C(255, &unk_1EBD40340, 0x1E69B8D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F530, &unk_1BE0EF380);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4FCE0);
    }
  }
}

id PKDashboardRewardsBalanceDetailsViewHosting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKDashboardRewardsBalanceDetailsViewHosting.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardRewardsBalanceDetailsViewHosting();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PKDashboardRewardsBalanceDetailsViewHosting.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PKDashboardRewardsBalanceDetailsViewHosting();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD6BC230()
{
  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(0);
  swift_allocObject();
  return sub_1BD5FF4E8();
}

id sub_1BD6BC268()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = v0[1];
  v18 = *v0;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
  sub_1BE0516A4();
  v9 = v17;
  v10 = [v17 isRedeemable];

  v11 = *MEMORY[0x1E69B8088];
  v12 = *(v2 + 104);
  if (v10)
  {
    v12(v7, v11, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v7, v1);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v12(v4, v11, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v7 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6BC47C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD18, &qword_1BE0EF458);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD20, &qword_1BE0EF460);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD28, &qword_1BE0EF468);
  sub_1BD0DE4F4(&qword_1EBD4FD30, &qword_1EBD4FD28, &qword_1BE0EF468, MEMORY[0x1E6981F48]);
  sub_1BE0504A4();
  sub_1BD6C00AC(v1, &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v12 = swift_allocObject();
  sub_1BD6C0110(&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = sub_1BD0DE4F4(&qword_1EBD4FD38, &qword_1EBD4FD18, &qword_1BE0EF458, MEMORY[0x1E697CCF0]);
  sub_1BE050944();
  v12, v14, v15, v16, v17, v18, v19, v20;
  (*(v5 + 8))(v7, v4);
  sub_1BE052434();
  v22 = v21;
  v37 = v4;
  v38 = v13;
  swift_getOpaqueTypeConformance2();
  v23 = v34;
  sub_1BE050DE4();
  v22, v24, v25, v26, v27, v28, v29, v30;
  return (*(v33 + 8))(v10, v23);
}

id sub_1BD6BC7E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD50, &qword_1BE0EF4A8);
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - v12;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8088], v3, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v4 + 8))(v6, v3);
    v81 = v16;
    v82 = v18;
    sub_1BD0DDEBC();
    v81 = sub_1BE0506C4();
    v82 = v19;
    LOBYTE(v83) = v20 & 1;
    v84 = v21;
    MEMORY[0x1EEE9AC00](v81);
    *(&v74 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD58, &qword_1BE0EF4B0);
    sub_1BD6C0248();
    v22 = v13;
    v76 = v13;
    sub_1BE051A54();
    v23 = a1[1];
    v81 = *a1;
    v82 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
    sub_1BE0516A4();
    v24 = v80;
    type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(0);
    sub_1BD6C0640(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel, &unk_1BE0E7BB8);
    v25 = sub_1BE04E3C4();
    sub_1BD9E1928(v24, &v81);

    v25, v26, v27, v28, v29, v30, v31, v32;
    v33 = v78;
    v34 = *(v78 + 16);
    v34(v9, v22, v7);
    v36 = v81;
    v35 = v82;
    v37 = v84;
    v38 = v9;
    v77 = v9;
    v39 = v7;
    v40 = v86;
    v74 = v85;
    v75 = v83;
    v41 = v87;
    v42 = v79;
    v34(v79, v38, v39);
    v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD78, &qword_1BE0EF4C0) + 48)];
    *v43 = v36;
    v43[1] = v35;
    v44 = v74;
    v43[2] = v75;
    v43[3] = v37;
    v43[4] = v44;
    v43[5] = v40;
    v43[6] = v41;
    v45 = *(v33 + 8);
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v45(v76, v39);
    v41, v46, v47, v48, v49, v50, v51, v52;
    v40, v53, v54, v55, v56, v57, v58, v59;
    v37, v60, v61, v62, v63, v64, v65, v66;
    v35, v67, v68, v69, v70, v71, v72, v73;
    return (v45)(v77, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6BCC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD70, &qword_1BE0EF4B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-v6];
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD80, &unk_1BE0EF4C8);
  sub_1BD0DE4F4(&qword_1EBD4FD88, &qword_1EBD4FD80, &unk_1BE0EF4C8, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v9 = sub_1BE0501E4();
  *(inited + 32) = v9;
  v10 = sub_1BE0501F4();
  *(inited + 33) = v10;
  v11 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v9)
  {
    v11 = sub_1BE050214();
  }

  inited, v12, v13, v14, v15, v16, v17, v18;
  sub_1BE050214();
  if (sub_1BE050214() != v10)
  {
    v11 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD58, &qword_1BE0EF4B0);
  v28 = a2 + *(result + 36);
  *v28 = v11;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1BD6BCE7C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  v85 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = v4;
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD90, &qword_1BE0EF4D8);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD98, &qword_1BE0EF4E0);
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v81 - v7;
  v8 = sub_1BE04AA64();
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v81 - v11;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDA0, &qword_1BE0EF4E8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v99 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v81 - v18;
  v96 = sub_1BE04FF64();
  v19 = *(v96 - 1);
  MEMORY[0x1EEE9AC00](v96);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDA8, &qword_1BE0EF4F0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB0, &qword_1BE0EF4F8);
  v94 = *(v25 - 8);
  v95 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB8, &qword_1BE0EF500);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  *v24 = sub_1BE04F7C4();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDC0, &qword_1BE0EF508);
  sub_1BD6BD788(a1, &v24[*(v33 + 44)]);
  sub_1BE04FF44();
  v34 = sub_1BD0DE4F4(&qword_1EBD4FDC8, &qword_1EBD4FDA8, &qword_1BE0EF4F0, MEMORY[0x1E6981870]);
  sub_1BE050D14();
  (*(v19 + 8))(v21, v96);
  sub_1BD0DE53C(v24, &qword_1EBD4FDA8, &qword_1BE0EF4F0);
  sub_1BE052434();
  v36 = v35;
  v104 = v22;
  v105 = v34;
  v37 = 1;
  swift_getOpaqueTypeConformance2();
  v96 = v32;
  v38 = v95;
  sub_1BE050DE4();
  v36, v39, v40, v41, v42, v43, v44, v45;
  (*(v94 + 8))(v27, v38);
  v46 = a1[1];
  v104 = *a1;
  v105 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
  sub_1BE0516A4();
  v47 = v103;
  v48 = [v103 programURL];

  if (v48)
  {
    v49 = v82;
    sub_1BE04A9F4();

    v51 = v88;
    v50 = v89;
    v52 = *(v89 + 32);
    v53 = v90;
    v52(v88, v49, v90);
    v54 = v87;
    sub_1BD6C00AC(a1, v87);
    v55 = v84;
    (*(v50 + 16))(v84, v51, v53);
    v56 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v57 = (v86 + *(v50 + 80) + v56) & ~*(v50 + 80);
    v58 = swift_allocObject();
    sub_1BD6C0110(v54, v58 + v56);
    v52((v58 + v57), v55, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDD8, &qword_1BE0EF518);
    sub_1BD0DE4F4(&qword_1EBD4FDE0, &qword_1EBD4FDD8, &qword_1BE0EF518, MEMORY[0x1E69817F8]);
    v59 = v93;
    sub_1BE051704();
    v60 = sub_1BE050324();
    KeyPath = swift_getKeyPath();
    v62 = (v59 + *(v92 + 36));
    *v62 = KeyPath;
    v62[1] = v60;
    sub_1BE052434();
    v64 = v63;
    sub_1BD6C03D4();
    v65 = v91;
    sub_1BE050DE4();
    v64, v66, v67, v68, v69, v70, v71, v72;
    sub_1BD0DE53C(v59, &qword_1EBD4FD90, &qword_1BE0EF4D8);
    (*(v50 + 8))(v51, v53);
    v73 = v65;
    v74 = v98;
    sub_1BD0DE204(v73, v98, &qword_1EBD4FD98, &qword_1BE0EF4E0);
    v37 = 0;
  }

  else
  {
    v74 = v98;
  }

  (*(v100 + 56))(v74, v37, 1, v101);
  v76 = v96;
  v75 = v97;
  sub_1BD098FCC(v96, v97);
  v77 = v99;
  sub_1BD0DE19C(v74, v99, &qword_1EBD4FDA0, &qword_1BE0EF4E8);
  v78 = v102;
  sub_1BD098FCC(v75, v102);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDD0, &qword_1BE0EF510);
  sub_1BD0DE19C(v77, v78 + *(v79 + 48), &qword_1EBD4FDA0, &qword_1BE0EF4E8);
  sub_1BD0DE53C(v74, &qword_1EBD4FDA0, &qword_1BE0EF4E8);
  sub_1BD09903C(v76);
  sub_1BD0DE53C(v77, &qword_1EBD4FDA0, &qword_1BE0EF4E8);
  return sub_1BD09903C(v75);
}

id sub_1BD6BD788@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v288 = a1;
  v284 = a2;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v290 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v279 = &v277 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v278 = &v277 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v283 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v282 = &v277 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v280 = &v277 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v287 = &v277 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v281 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v289 = &v277 - v16;
  v292 = sub_1BD6BC268();
  v293 = v17;
  v285 = sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1BE0502A4();
  v26 = sub_1BE0505F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v25, v27, v29, v31, v33, v34, v35, v36;
  sub_1BD0DDF10(v18, v20, (v22 & 1), v37, v38, v39, v40, v41);
  v24, v42, v43, v44, v45, v46, v47, v48;
  v49 = sub_1BE051464();
  v50 = sub_1BE050564();
  v52 = v51;
  LOBYTE(v20) = v53;
  v55 = v54;
  v49, v51, v53, v54, v56, v57, v58, v59;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v60, v61, v62, v63, v64);
  v32, v65, v66, v67, v68, v69, v70, v71;
  KeyPath = swift_getKeyPath();
  v292 = v50;
  v293 = v52;
  v294 = v20 & 1;
  v295 = v55;
  v296 = KeyPath;
  v73 = 1;
  v297 = 1;
  sub_1BE052434();
  v75 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
  sub_1BD0EF0FC();
  sub_1BE050DE4();
  v75, v76, v77, v78, v79, v80, v81, v82;
  sub_1BD0DDF10(v50, v52, (v20 & 1), v83, v84, v85, v86, v87);
  KeyPath, v88, v89, v90, v91, v92, v93, v94;
  v55, v95, v96, v97, v98, v99, v100, v101;
  v102 = v288[1];
  v292 = *v288;
  v293 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
  sub_1BE0516A4();
  v103 = v291;
  v104 = [v291 formattedMonetaryValue];

  if (v104)
  {
    v105 = sub_1BE052434();
    v107 = v106;

    v292 = v105;
    v293 = v107;
    v108 = sub_1BE0506C4();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v116 = sub_1BE050484();
    v117 = sub_1BE0505F4();
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v116, v118, v120, v122, v124, v125, v126, v127;
    sub_1BD0DDF10(v108, v110, (v112 & 1), v128, v129, v130, v131, v132);
    v114, v133, v134, v135, v136, v137, v138, v139;
    v140 = sub_1BE051464();
    v141 = sub_1BE050564();
    v143 = v142;
    v145 = v144;
    v147 = v146;
    v140, v142, v144, v146, v148, v149, v150, v151;
    sub_1BD0DDF10(v117, v119, (v121 & 1), v152, v153, v154, v155, v156);
    v123, v157, v158, v159, v160, v161, v162, v163;
    v292 = v141;
    v293 = v143;
    v294 = v145 & 1;
    v295 = v147;
    sub_1BE052434();
    v165 = v164;
    v166 = v278;
    sub_1BE050DE4();
    v165, v167, v168, v169, v170, v171, v172, v173;
    sub_1BD0DDF10(v141, v143, (v145 & 1), v174, v175, v176, v177, v178);
    v147, v179, v180, v181, v182, v183, v184, v185;
    v186 = v287;
    sub_1BD0DE204(v166, v287, &qword_1EBD452C0, &qword_1BE0B7620);
    v73 = 0;
  }

  else
  {
    v186 = v287;
  }

  v187 = v290 + 56;
  v188 = *(v290 + 56);
  v189 = 1;
  v188(v186, v73, 1, v286);
  v190 = sub_1BD6BE034();
  if (v191)
  {
    v292 = v190;
    v293 = v191;
    v192 = sub_1BE0506C4();
    v194 = v193;
    v196 = v195;
    v290 = v187;
    v198 = v197;
    v199 = sub_1BE0502A4();
    v200 = sub_1BE0505F4();
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v199, v201, v203, v205, v207, v208, v209, v210;
    sub_1BD0DDF10(v192, v194, (v196 & 1), v211, v212, v213, v214, v215);
    v198, v216, v217, v218, v219, v220, v221, v222;
    v223 = sub_1BE051494();
    v224 = sub_1BE050564();
    v226 = v225;
    LOBYTE(v194) = v227;
    v229 = v228;
    v223, v225, v227, v228, v230, v231, v232, v233;
    sub_1BD0DDF10(v200, v202, (v204 & 1), v234, v235, v236, v237, v238);
    v206, v239, v240, v241, v242, v243, v244, v245;
    v292 = v224;
    v293 = v226;
    v294 = v194 & 1;
    v295 = v229;
    sub_1BE052434();
    v247 = v246;
    v248 = v279;
    sub_1BE050DE4();
    v247, v249, v250, v251, v252, v253, v254, v255;
    sub_1BD0DDF10(v224, v226, (v194 & 1), v256, v257, v258, v259, v260);
    v229, v261, v262, v263, v264, v265, v266, v267;
    v268 = v280;
    sub_1BD0DE204(v248, v280, &qword_1EBD452C0, &qword_1BE0B7620);
    v189 = 0;
  }

  else
  {
    v268 = v280;
  }

  v188(v268, v189, 1, v286);
  v269 = v268;
  v270 = v289;
  v271 = v281;
  sub_1BD0DE19C(v289, v281, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v272 = v287;
  v273 = v282;
  sub_1BD0DE19C(v287, v282, &unk_1EBD5BB60, &qword_1BE0C4580);
  v274 = v283;
  sub_1BD0DE19C(v269, v283, &unk_1EBD5BB60, &qword_1BE0C4580);
  v275 = v284;
  sub_1BD0DE19C(v271, v284, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE08, &unk_1BE0EF5D0);
  sub_1BD0DE19C(v273, v275 + *(v276 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v274, v275 + *(v276 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v269, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v272, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v270, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v274, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v273, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v271, &qword_1EBD38A98, &unk_1BE0C3CC0);
}

uint64_t sub_1BD6BE034()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v27 = *v0;
  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
  sub_1BE0516A4();
  v7 = v26;
  v8 = [v26 rewardsType];

  if (v8 == 2)
  {
    v27 = v5;
    v28 = v6;
    sub_1BE0516A4();
    v11 = v26;
    v10 = [v26 formattedQuantityValue];

    if (v10)
    {
LABEL_6:
      v12 = sub_1BE052434();
      v14 = v13;

      (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1BE0B69E0;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1BD110550();
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      v16 = sub_1BE04B714();
      v15, v17, v18, v19, v20, v21, v22, v23;
      (*(v2 + 8))(v4, v1);
      return v16;
    }
  }

  else if (v8 == 1)
  {
    v27 = v5;
    v28 = v6;
    sub_1BE0516A4();
    v9 = v26;
    v10 = [v26 formattedQuantityValue];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

void sub_1BD6BE2BC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1BE04A9C4();
  v2 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD6C0640(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  v10 = sub_1BE052224();
  v2, v3, v4, v5, v6, v7, v8, v9;
  [v0 openURL:v1 options:v10 completionHandler:0];
}

double sub_1BD6BE3C8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  v16 = 1;
  sub_1BD6BE4E4(&v9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v17 = v9;
  v18 = v10;
  v24 = v14;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[0] = v9;
  v23[1] = v10;
  sub_1BD0DE19C(&v17, v8, &qword_1EBD4FE00, &qword_1BE0EF560);
  sub_1BD0DE53C(v23, &qword_1EBD4FE00, &qword_1BE0EF560);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v4 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v15[64];
  *(a2 + 96) = *&v15[79];
  result = *&v15[16];
  v6 = *v15;
  *(a2 + 33) = *&v15[16];
  v7 = v16;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 17) = v6;
  return result;
}

void sub_1BD6BE4E4(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8088], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v43 = v9;
    v44 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v9) = v15;
    v17 = v16;
    KeyPath = swift_getKeyPath();
    v19 = sub_1BE051574();
    v20 = sub_1BE051464();
    v21 = swift_getKeyPath();
    v22 = (v9 & 1);
    LOBYTE(v43) = v22;
    v42[8] = 1;
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 16) = v22;
    *(a1 + 24) = v17;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    *(a1 + 64) = v19;
    *(a1 + 72) = v21;
    *(a1 + 80) = v20;
    sub_1BD0D7F18(v12, v14, v22);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD0DDF10(v12, v14, v22, v23, v24, v25, v26, v27);
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
    v17, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6BE70C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1BE0528A4();
  v1[4] = sub_1BE052894();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1BD6BE7BC;

  return sub_1BD6BEA98();
}

uint64_t sub_1BD6BE7BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1BD6BE8FC;

  return sub_1BD6BF728();
}

uint64_t sub_1BD6BE8FC()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD6BEA38, v1, v0);
}

uint64_t sub_1BD6BEA38(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD6BEA98()
{
  v1[31] = v0;
  v2 = sub_1BE04D214();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = sub_1BE0528A4();
  v1[38] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[39] = v4;
  v1[40] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD6BEBA8, v4, v3);
}

uint64_t sub_1BD6BEBA8(uint64_t a1)
{
  sub_1BE04D154();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, v3, "Refreshing Payment Rewards Balance", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v5 = v1[36];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[31];

  (*(v7 + 8))(v5, v6);
  v9 = *v8;
  v1[41] = *v8;
  v10 = v8[1];
  v1[42] = v10;
  v1[18] = v9;
  v1[19] = v10;
  v1[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
  sub_1BE0516A4();
  v11 = v1[26];
  v12 = [v11 passUniqueID];

  v13 = v12;
  v14 = v12;
  if (!v12)
  {
    sub_1BE052434();
    v16 = v15;
    v14 = sub_1BE052404();
    v16, v17, v18, v19, v20, v21, v22, v23;
    sub_1BE052434();
    v25 = v24;
    v13 = sub_1BE052404();
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  v1[44] = v13;
  v1[45] = v14;
  v1[20] = v9;
  v1[21] = v10;
  v33 = v12;
  sub_1BE0516A4();
  v34 = v1[27];
  v35 = [v34 balanceIdentifier];

  v36 = sub_1BE052434();
  v38 = v37;

  v1[46] = v36;
  v1[47] = v38;
  v1[22] = v9;
  v1[23] = v10;
  sub_1BE0516A4();
  v39 = v1[28];
  v40 = [v39 transactionSourceIdentifiers];

  v1[48] = sub_1BE052A34();
  v41 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v1[49] = v41;
  v1[2] = v1;
  v1[7] = v1 + 29;
  v1[3] = sub_1BD6BEEF8;
  v42 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD48, &qword_1BE0EF4A0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BD6BFB30;
  v1[13] = &block_descriptor_160;
  v1[14] = v42;
  [v41 updatePaymentRewardsBalancesWithPassUniqueIdentifier:v14 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1BD6BEEF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = *(v1 + 376);
    v4 = *(v1 + 384);

    v3, v5, v6, v7, v8, v9, v10, v11;
    v4, v12, v13, v14, v15, v16, v17, v18;
    v19 = *(v1 + 312);
    v20 = *(v1 + 320);
    v21 = sub_1BD6BF564;
  }

  else
  {
    v19 = *(v1 + 312);
    v20 = *(v1 + 320);
    v21 = sub_1BD6BF02C;
  }

  return MEMORY[0x1EEE6DFA0](v21, v19, v20);
}

uint64_t sub_1BD6BF02C()
{
  v1 = *(v0 + 232);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v42 = *(v0 + 384);
    v43 = *(v0 + 392);
    v44 = *(v0 + 376);
    v45 = *(v0 + 304);

    v45, v46, v47, v48, v49, v50, v51, v52;
    v44, v53, v54, v55, v56, v57, v58, v59;
    v42, v60, v61, v62, v63, v64, v65, v66;
    v1, v67, v68, v69, v70, v71, v72, v73;

    v74 = *(v0 + 8);

    return v74();
  }

LABEL_23:
  v2 = sub_1BE053704();
  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    *(v0 + 408) = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(v0 + 368);
    v76 = *(v0 + 376);
    v8 = [v4 identifier];
    v9 = sub_1BE052434();
    v11 = v10;

    if (v9 == v7 && v11 == v76)
    {
      v1, v12, v13, v14, v15, v16, v17, v18;
      v1 = *(v0 + 376);
      goto LABEL_18;
    }

    v20 = sub_1BE053B84();
    v11, v21, v22, v23, v24, v25, v26, v27;
    if (v20)
    {
      break;
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_24;
    }
  }

  v11 = *(v0 + 376);
LABEL_18:
  v11, v28, v29, v30, v31, v32, v33, v34;
  v1, v35, v36, v37, v38, v39, v40, v41;

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF274, 0, 0);
}

uint64_t sub_1BD6BF274(uint64_t a1)
{
  *(v1 + 416) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF300, v3, v2);
}

uint64_t sub_1BD6BF300(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 408);
  v10 = *(v8 + 384);
  v11 = *(v8 + 352);
  v13 = *(v8 + 328);
  v12 = *(v8 + 336);
  *(v8 + 416), a2, a3, a4, a5, a6, a7, a8;
  v14 = objc_allocWithZone(PKDashboardRewardsBalanceItem);
  v15 = v9;
  v16 = sub_1BE052A24();
  v10, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v14 initWithPaymentRewardsBalance:v15 passUniqueIdentifier:v11 transactionSourceIdentifiers:v16];

  *(v8 + 192) = v13;
  *(v8 + 200) = v12;
  *(v8 + 240) = v24;
  sub_1BE0516B4();
  v25 = *(v8 + 312);
  v26 = *(v8 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF414, v25, v26);
}

uint64_t sub_1BD6BF414(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 304), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D154();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C14();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v8 + 408);
  v13 = *(v8 + 392);
  v14 = *(v8 + 280);
  v15 = *(v8 + 256);
  v16 = *(v8 + 264);
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "Refreshed Payment Rewards Balance", v17, 2u);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    v18 = v13;
    v13 = v9;
  }

  else
  {
    v18 = *(v8 + 408);
    v12 = v9;
  }

  (*(v16 + 8))(v14, v15);

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD6BF564(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 400);
  v10 = *(v8 + 360);
  *(v8 + 304), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  sub_1BE04D154();
  v11 = v9;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C34();

  v14 = os_log_type_enabled(v12, v13);
  v16 = *(v8 + 392);
  v15 = *(v8 + 400);
  if (v14)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v15;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BD026000, v12, v13, "Could not refresh Payment Rewards Balance, %@", v17, 0xCu);
    sub_1BD0DE53C(v18, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 264) + 8))(*(v8 + 272), *(v8 + 256));

  v21 = *(v8 + 8);

  return v21();
}

uint64_t sub_1BD6BF728()
{
  v1[8] = v0;
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF7C0, v3, v2);
}

uint64_t sub_1BD6BF7C0()
{
  v1 = v0[8];
  v2 = *v1;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40, &qword_1BE0EF498);
  sub_1BE0516A4();
  v4 = v0[6];
  v5 = [v4 passUniqueID];

  v6 = sub_1BE052434();
  v8 = v7;

  v0[12] = v8;
  v0[4] = v2;
  v0[5] = v3;
  sub_1BE0516A4();
  v9 = v0[7];
  v10 = [v9 transactionSourceIdentifiers];

  v11 = sub_1BE052A34();
  v0[13] = v11;

  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(0);
  sub_1BD6C0640(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel, &unk_1BE0E7BB8);
  v0[14] = sub_1BE04E3C4();
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1BD6BF9AC;

  return sub_1BD5FDFB8(v6, v8, v11);
}

uint64_t sub_1BD6BF9AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  v4, v5, v6, v7, v8, v9, v10, v11;
  v3, v12, v13, v14, v15, v16, v17, v18;
  v2, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v1 + 88);
  v27 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD262FF0, v27, v26);
}

uint64_t sub_1BD6BFB30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1BD0E5E8C(0, &unk_1EBD3E570, 0x1E69B8DA8);
    **(*(v4 + 64) + 40) = sub_1BE052744();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD6BFC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F104();
  *a1 = result & 1;
  return result;
}

id _s9PassKitUI43PKDashboardRewardsBalanceDetailsViewHostingC04makeH10Controller07rewardsF4ItemSo06UIViewK0CSo0defM0C_tFZ_0(void *a1)
{
  v2 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  *(v7 + 2) = sub_1BD6BC230;
  *(v7 + 3) = 0;
  v7[32] = 0;
  v9 = *(v8 + 32);
  *&v7[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  *v7 = a1;
  *(v7 + 1) = 0;
  sub_1BD6C00AC(v7, v4);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE10, &qword_1BE0EF610));
  v11 = a1;
  v12 = sub_1BE04F894();
  v13 = [v12 navigationItem];
  v14 = [v11 programName];
  if (!v14)
  {
    sub_1BE052434();
    v16 = v15;
    v14 = sub_1BE052404();
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  [v13 setTitle_];

  v24 = [v12 navigationItem];
  [v24 setLargeTitleDisplayMode_];

  sub_1BD6C04B8(v7);
  return v12;
}

uint64_t type metadata accessor for PKDashboardRewardsBalanceDetailsView(uint64_t a1)
{
  result = qword_1EBD4FCE8;
  if (!qword_1EBD4FCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6BFEF0(uint64_t a1)
{
  sub_1BD6BFF8C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD6BFFF4(319);
    if (v2 <= 0x3F)
    {
      sub_1BD170C00(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD6BFF8C(uint64_t a1)
{
  if (!qword_1EBD4FCF8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD4FD00, off_1E8004DC8);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4FCF8);
    }
  }
}

void sub_1BD6BFFF4(uint64_t a1)
{
  if (!qword_1EBD4FD08)
  {
    type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(255);
    sub_1BD6C0640(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel, &unk_1BE0E7BB8);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4FD08);
    }
  }
}

uint64_t sub_1BD6C00AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6C0110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6C0174()
{
  v2 = *(type metadata accessor for PKDashboardRewardsBalanceDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD6BE70C(v0 + v3);
}

unint64_t sub_1BD6C0248()
{
  result = qword_1EBD4FD60;
  if (!qword_1EBD4FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FD58, &qword_1BE0EF4B0);
    sub_1BD0DE4F4(&qword_1EBD4FD68, &qword_1EBD4FD70, &qword_1BE0EF4B8, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FD60);
  }

  return result;
}

void sub_1BD6C0308()
{
  type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  sub_1BE04AA64();

  sub_1BD6BE2BC();
}

unint64_t sub_1BD6C03D4()
{
  result = qword_1EBD4FDE8;
  if (!qword_1EBD4FDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FD90, &qword_1BE0EF4D8);
    sub_1BD0DE4F4(&qword_1EBD4FDF0, &qword_1EBD4FDF8, &unk_1BE0EF550, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FDE8);
  }

  return result;
}

uint64_t sub_1BD6C04B8(uint64_t a1)
{
  v2 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6C0514()
{
  result = qword_1EBD4FE18;
  if (!qword_1EBD4FE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FE20, &qword_1BE0EF618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FD18, &qword_1BE0EF458);
    sub_1BD0DE4F4(&qword_1EBD4FD38, &qword_1EBD4FD18, &qword_1BE0EF458, MEMORY[0x1E697CCF0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD6C0640(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FE18);
  }

  return result;
}

uint64_t sub_1BD6C0640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD6C0688@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v215 = a2;
  v199 = a1;
  v214 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE48, &qword_1BE0EF738);
  v212 = *(v4 - 8);
  v213 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v198 = &v178 - v5;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE50, &qword_1BE0EF740);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v178 - v6;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE58, &qword_1BE0EF748);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v189 = &v178 - v7;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE60, &unk_1BE0EF750);
  MEMORY[0x1EEE9AC00](v193);
  v197 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v196 = &v178 - v10;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490, &qword_1BE0EFBC0);
  MEMORY[0x1EEE9AC00](v187);
  v195 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v194 = &v178 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE68, &qword_1BE0EF760);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v211 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v210 = &v178 - v17;
  v216 = sub_1BE04FF64();
  v218 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v202 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE70, &qword_1BE0EF768);
  MEMORY[0x1EEE9AC00](v203);
  v200 = &v178 - v19;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE78, &qword_1BE0EF770);
  v206 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v201 = &v178 - v20;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE80, &unk_1BE0EF778) - 8;
  MEMORY[0x1EEE9AC00](v204);
  v209 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v217 = &v178 - v23;
  v24 = sub_1BE050474();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v208 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v178 - v31;
  v219 = sub_1BD6C31A4(a1);
  v220 = v33;
  sub_1BD0DDEBC();
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = *(v25 + 104);
  v182 = *MEMORY[0x1E6980EF8];
  v183 = v25 + 104;
  v181 = v41;
  v41(v27);
  sub_1BE0503A4();
  v42 = sub_1BE050284();
  v43 = *(v25 + 8);
  v184 = v27;
  v186 = v24;
  v185 = v25 + 8;
  v180 = v43;
  v43(v27, v24);
  v44 = sub_1BE0505F4();
  v46 = v45;
  LOBYTE(v27) = v47;
  v49 = v48;
  v42, v45, v47, v48, v50, v51, v52, v53;
  sub_1BD0DDF10(v34, v36, (v38 & 1), v54, v55, v56, v57, v58);
  v40, v59, v60, v61, v62, v63, v64, v65;
  KeyPath = swift_getKeyPath();
  v219 = v44;
  v220 = v46;
  v67 = (v27 & 1);
  v221 = v27 & 1;
  v222 = v49;
  v223 = KeyPath;
  v224 = 2;
  v225 = 0;
  sub_1BE052434();
  v69 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  v207 = v32;
  sub_1BE050DE4();
  v69, v70, v71, v72, v73, v74, v75, v76;
  v77 = v67;
  v78 = v199;
  sub_1BD0DDF10(v44, v46, v77, v79, v80, v81, v82, v83);
  KeyPath, v84, v85, v86, v87, v88, v89, v90;
  v49, v91, v92, v93, v94, v95, v96, v97;
  v98 = sub_1BE050194();
  v99 = v200;
  *v200 = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE88, &qword_1BE0EF7B8);
  sub_1BD6C15B8(v78, v215, v99 + *(v100 + 44));
  v101 = v202;
  sub_1BE04FF44();
  v102 = sub_1BD0DE4F4(&qword_1EBD4FE90, &qword_1EBD4FE70, &qword_1BE0EF768, MEMORY[0x1E697BF80]);
  v103 = v201;
  v104 = v101;
  v105 = v203;
  sub_1BE050D14();
  v106 = *(v218 + 8);
  v218 += 8;
  v179 = v106;
  v106(v101, v216);
  sub_1BD0DE53C(v99, &qword_1EBD4FE70, &qword_1BE0EF768);
  sub_1BE052434();
  v108 = v107;
  v219 = v105;
  v220 = v102;
  swift_getOpaqueTypeConformance2();
  v109 = v217;
  v110 = v205;
  sub_1BE050DE4();
  v108, v111, v112, v113, v114, v115, v116, v117;
  (*(v206 + 8))(v103, v110);
  v118 = sub_1BE051494();
  v119 = swift_getKeyPath();
  v120 = (v109 + *(v204 + 44));
  *v120 = v119;
  v120[1] = v118;
  v121 = [v78 details];
  v122 = [v121 redeemed];
  if (!v122)
  {
    v122 = [v121 intended];
  }

  v123 = [v122 monetaryValue];
  if (v123)
  {
    v124 = v194;
    sub_1BE051984();
    v125 = sub_1BE050234();
    sub_1BE04E1F4();
    v127 = v126;
    v129 = v128;
    v131 = v130;
    v133 = v132;
    v134 = v124 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
    *v134 = v125;
    *(v134 + 8) = v127;
    *(v134 + 16) = v129;
    *(v134 + 24) = v131;
    *(v134 + 32) = v133;
    *(v134 + 40) = 0;
    v135 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v136 = v124 + *(v187 + 36);
    *v136 = v135;
    *(v136 + 8) = v137;
    *(v136 + 16) = v138;
    *(v136 + 24) = v139;
    *(v136 + 32) = v140;
    *(v136 + 40) = 0;
    v141 = sub_1BE050194();
    v142 = v188;
    *v188 = v141;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEA0, &qword_1BE0EF800);
    sub_1BD6C2040(v123, v142 + *(v143 + 44));
    v144 = v104;
    sub_1BE04FF44();
    v145 = sub_1BD0DE4F4(&qword_1EBD4FEA8, &qword_1EBD4FE50, &qword_1BE0EF740, MEMORY[0x1E697BF80]);
    v146 = v189;
    v147 = v190;
    sub_1BE050D14();
    v179(v144, v216);
    sub_1BD0DE53C(v142, &qword_1EBD4FE50, &qword_1BE0EF740);
    sub_1BE052434();
    v149 = v148;
    v219 = v147;
    v220 = v145;
    swift_getOpaqueTypeConformance2();
    v150 = v196;
    v151 = v192;
    sub_1BE050DE4();
    v149, v152, v153, v154, v155, v156, v157, v158;
    (*(v191 + 8))(v146, v151);
    v159 = v184;
    v160 = v186;
    v181(v184, v182, v186);
    sub_1BE0503A4();
    v161 = sub_1BE050284();
    v180(v159, v160);
    v162 = swift_getKeyPath();
    v163 = (v150 + *(v193 + 36));
    *v163 = v162;
    v163[1] = v161;
    v164 = v195;
    sub_1BD0DE19C(v124, v195, &qword_1EBD47490, &qword_1BE0EFBC0);
    v165 = v197;
    sub_1BD0DE19C(v150, v197, &qword_1EBD4FE60, &unk_1BE0EF750);
    v166 = v198;
    sub_1BD0DE19C(v164, v198, &qword_1EBD47490, &qword_1BE0EFBC0);
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEB0, &qword_1BE0EF838);
    sub_1BD0DE19C(v165, v166 + *(v167 + 48), &qword_1EBD4FE60, &unk_1BE0EF750);

    sub_1BD0DE53C(v150, &qword_1EBD4FE60, &unk_1BE0EF750);
    sub_1BD0DE53C(v124, &qword_1EBD47490, &qword_1BE0EFBC0);
    sub_1BD0DE53C(v165, &qword_1EBD4FE60, &unk_1BE0EF750);
    sub_1BD0DE53C(v164, &qword_1EBD47490, &qword_1BE0EFBC0);
    v168 = v210;
    sub_1BD0992E8(v166, v210);
    v169 = 0;
  }

  else
  {
    v169 = 1;
    v168 = v210;
  }

  (*(v212 + 56))(v168, v169, 1, v213);
  v170 = v207;
  v171 = v208;
  sub_1BD0DE19C(v207, v208, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v172 = v217;
  v173 = v209;
  sub_1BD0DE19C(v217, v209, &qword_1EBD4FE80, &unk_1BE0EF778);
  v174 = v211;
  sub_1BD0DE19C(v168, v211, &qword_1EBD4FE68, &qword_1BE0EF760);
  v175 = v214;
  sub_1BD0DE19C(v171, v214, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE98, &unk_1BE0EF7F0);
  sub_1BD0DE19C(v173, v175 + *(v176 + 48), &qword_1EBD4FE80, &unk_1BE0EF778);
  sub_1BD0DE19C(v174, v175 + *(v176 + 64), &qword_1EBD4FE68, &qword_1BE0EF760);
  sub_1BD0DE53C(v168, &qword_1EBD4FE68, &qword_1BE0EF760);
  sub_1BD0DE53C(v172, &qword_1EBD4FE80, &unk_1BE0EF778);
  sub_1BD0DE53C(v170, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v174, &qword_1EBD4FE68, &qword_1BE0EF760);
  sub_1BD0DE53C(v173, &qword_1EBD4FE80, &unk_1BE0EF778);
  return sub_1BD0DE53C(v171, &qword_1EBD3C0E8, &qword_1BE0C4010);
}

uint64_t sub_1BD6C15B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEF8, &qword_1BE0EF888);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF00, &qword_1BE0EF890);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF08, &qword_1BE0EF898);
  sub_1BD6C1810(a1, a2, &v17[*(v18 + 44)]);
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF10, &qword_1BE0EF8A0);
  sub_1BD6C1C30(a1, a2, &v11[*(v19 + 44)]);
  sub_1BD0DE19C(v17, v14, &qword_1EBD4FF00, &qword_1BE0EF890);
  sub_1BD0DE19C(v11, v8, &qword_1EBD4FEF8, &qword_1BE0EF888);
  sub_1BD0DE19C(v14, a3, &qword_1EBD4FF00, &qword_1BE0EF890);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF18, &unk_1BE0EF8A8);
  sub_1BD0DE19C(v8, a3 + *(v20 + 48), &qword_1EBD4FEF8, &qword_1BE0EF888);
  sub_1BD0DE53C(v11, &qword_1EBD4FEF8, &qword_1BE0EF888);
  sub_1BD0DE53C(v17, &qword_1EBD4FF00, &qword_1BE0EF890);
  sub_1BD0DE53C(v8, &qword_1EBD4FEF8, &qword_1BE0EF888);
  return sub_1BD0DE53C(v14, &qword_1EBD4FF00, &qword_1BE0EF890);
}

uint64_t sub_1BD6C1810@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v92 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v85 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEE0, &qword_1BE0EF870);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  v93 = sub_1BD6C362C(a2);
  v94 = v16;
  sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  v93 = v17;
  v94 = v18;
  v23 = (v22 & 1);
  v95 = v22 & 1;
  v96 = v20;
  sub_1BE052434();
  v25 = v24;
  sub_1BE050DE4();
  v25, v26, v27, v28, v29, v30, v31, v32;
  sub_1BD0DDF10(v17, v19, v23, v33, v34, v35, v36, v37);
  v21, v38, v39, v40, v41, v42, v43, v44;
  KeyPath = swift_getKeyPath();
  v46 = &v15[*(v11 + 44)];
  *v46 = KeyPath;
  *(v46 + 1) = 1;
  v46[16] = 0;
  v47 = sub_1BD6C3870(v87);
  if (v48)
  {
    v93 = v47;
    v94 = v48;
    v49 = sub_1BE0506C4();
    v51 = v50;
    v53 = v52;
    v93 = v49;
    v94 = v50;
    v55 = (v54 & 1);
    v95 = v54 & 1;
    v96 = v52;
    sub_1BE052434();
    v57 = v56;
    v58 = v86;
    sub_1BE050DE4();
    v57, v59, v60, v61, v62, v63, v64, v65;
    sub_1BD0DDF10(v49, v51, v55, v66, v67, v68, v69, v70);
    v53, v71, v72, v73, v74, v75, v76, v77;
    sub_1BD133260(v58, v9);
    v78 = 0;
  }

  else
  {
    v78 = 1;
  }

  (*(v88 + 56))(v9, v78, 1, v90);
  v79 = v89;
  sub_1BD0DE19C(v15, v89, &qword_1EBD4FEE0, &qword_1BE0EF870);
  v80 = v91;
  sub_1BD0DE19C(v9, v91, &unk_1EBD5BB60, &qword_1BE0C4580);
  v81 = v92;
  sub_1BD0DE19C(v79, v92, &qword_1EBD4FEE0, &qword_1BE0EF870);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF28, &qword_1BE0EF8C8);
  v83 = v81 + *(v82 + 48);
  *v83 = 0;
  *(v83 + 8) = 1;
  sub_1BD0DE19C(v80, v81 + *(v82 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v9, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v15, &qword_1EBD4FEE0, &qword_1BE0EF870);
  sub_1BD0DE53C(v80, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v79, &qword_1EBD4FEE0, &qword_1BE0EF870);
}

uint64_t sub_1BD6C1C30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v91 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEE0, &qword_1BE0EF870);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  v92 = sub_1BD6C362C(a2);
  v93 = v16;
  sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  v92 = v17;
  v93 = v18;
  v23 = (v22 & 1);
  v94 = v22 & 1;
  v95 = v20;
  sub_1BE052434();
  v25 = v24;
  sub_1BE050DE4();
  v25, v26, v27, v28, v29, v30, v31, v32;
  sub_1BD0DDF10(v17, v19, v23, v33, v34, v35, v36, v37);
  v21, v38, v39, v40, v41, v42, v43, v44;
  KeyPath = swift_getKeyPath();
  v46 = &v15[*(v11 + 44)];
  *v46 = KeyPath;
  *(v46 + 1) = 2;
  v46[16] = 0;
  v47 = sub_1BD6C3870(v86);
  if (v48)
  {
    v92 = v47;
    v93 = v48;
    v49 = sub_1BE0506C4();
    v51 = v50;
    v53 = v52;
    v92 = v49;
    v93 = v50;
    v55 = (v54 & 1);
    v94 = v54 & 1;
    v95 = v52;
    sub_1BE052434();
    v57 = v56;
    v58 = v85;
    sub_1BE050DE4();
    v57, v59, v60, v61, v62, v63, v64, v65;
    sub_1BD0DDF10(v49, v51, v55, v66, v67, v68, v69, v70);
    v53, v71, v72, v73, v74, v75, v76, v77;
    sub_1BD133260(v58, v9);
    v78 = 0;
  }

  else
  {
    v78 = 1;
  }

  (*(v87 + 56))(v9, v78, 1, v89);
  v79 = v88;
  sub_1BD0DE19C(v15, v88, &qword_1EBD4FEE0, &qword_1BE0EF870);
  v80 = v90;
  sub_1BD0DE19C(v9, v90, &unk_1EBD5BB60, &qword_1BE0C4580);
  v81 = v91;
  sub_1BD0DE19C(v79, v91, &qword_1EBD4FEE0, &qword_1BE0EF870);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF20, &unk_1BE0EF8B8);
  sub_1BD0DE19C(v80, v81 + *(v82 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v9, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v15, &qword_1EBD4FEE0, &qword_1BE0EF870);
  sub_1BD0DE53C(v80, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v79, &qword_1EBD4FEE0, &qword_1BE0EF870);
}

uint64_t sub_1BD6C2040@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEB8, &qword_1BE0EF840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEC0, &qword_1BE0EF848);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  *v16 = sub_1BE04F504();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEC8, &qword_1BE0EF850);
  sub_1BD6C22AC(a3, &v16[*(v17 + 44)]);
  *v10 = sub_1BE04F7C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FED0, &qword_1BE0EF858);
  sub_1BD6C2768(a3, &v10[*(v18 + 44)]);
  sub_1BD0DE19C(v16, v13, &qword_1EBD4FEC0, &qword_1BE0EF848);
  sub_1BD0DE19C(v10, v7, &qword_1EBD4FEB8, &qword_1BE0EF840);
  v19 = v23;
  sub_1BD0DE19C(v13, v23, &qword_1EBD4FEC0, &qword_1BE0EF848);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FED8, &unk_1BE0EF860);
  sub_1BD0DE19C(v7, v19 + *(v20 + 48), &qword_1EBD4FEB8, &qword_1BE0EF840);
  sub_1BD0DE53C(v10, &qword_1EBD4FEB8, &qword_1BE0EF840);
  sub_1BD0DE53C(v16, &qword_1EBD4FEC0, &qword_1BE0EF848);
  sub_1BD0DE53C(v7, &qword_1EBD4FEB8, &qword_1BE0EF840);
  return sub_1BD0DE53C(v13, &qword_1EBD4FEC0, &qword_1BE0EF848);
}

id sub_1BD6C22AC@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEE0, &qword_1BE0EF870);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  sub_1BD6C25A0();
  KeyPath = swift_getKeyPath();
  v17 = &v15[*(v10 + 44)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  result = [a1 formattedStringValue];
  if (result)
  {
    v19 = result;
    v20 = sub_1BE052434();
    v22 = v21;

    v56 = v20;
    v57 = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    v56 = v23;
    v57 = v24;
    v29 = (v28 & 1);
    v58 = v28 & 1;
    v59 = v26;
    sub_1BE052434();
    v31 = v30;
    sub_1BE050DE4();
    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD0DDF10(v23, v25, v29, v39, v40, v41, v42, v43);
    v27, v44, v45, v46, v47, v48, v49, v50;
    sub_1BD0DE19C(v15, v12, &qword_1EBD4FEE0, &qword_1BE0EF870);
    sub_1BD0DE19C(v8, v5, &qword_1EBD452C0, &qword_1BE0B7620);
    v51 = v55;
    sub_1BD0DE19C(v12, v55, &qword_1EBD4FEE0, &qword_1BE0EF870);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEF0, &qword_1BE0EF880);
    v53 = v51 + *(v52 + 48);
    *v53 = 0;
    *(v53 + 8) = 1;
    sub_1BD0DE19C(v5, v51 + *(v52 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v8, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v15, &qword_1EBD4FEE0, &qword_1BE0EF870);
    sub_1BD0DE53C(v5, &qword_1EBD452C0, &qword_1BE0B7620);
    return sub_1BD0DE53C(v12, &qword_1EBD4FEE0, &qword_1BE0EF870);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD6C25A0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v38 = v7;
    v39 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v38 = v10;
    v39 = v11;
    v16 = (v15 & 1);
    v40 = v15 & 1;
    v41 = v13;
    sub_1BE052434();
    v18 = v17;
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD0DDF10(v10, v12, v16, v26, v27, v28, v29, v30);
    v14, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD6C2768@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEE0, &qword_1BE0EF870);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  sub_1BD6C25A0();
  KeyPath = swift_getKeyPath();
  v17 = &v15[*(v10 + 44)];
  *v17 = KeyPath;
  *(v17 + 1) = 2;
  v17[16] = 0;
  result = [a1 formattedStringValue];
  if (result)
  {
    v19 = result;
    v20 = sub_1BE052434();
    v22 = v21;

    v55 = v20;
    v56 = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    v55 = v23;
    v56 = v24;
    v29 = (v28 & 1);
    v57 = v28 & 1;
    v58 = v26;
    sub_1BE052434();
    v31 = v30;
    sub_1BE050DE4();
    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD0DDF10(v23, v25, v29, v39, v40, v41, v42, v43);
    v27, v44, v45, v46, v47, v48, v49, v50;
    sub_1BD0DE19C(v15, v12, &qword_1EBD4FEE0, &qword_1BE0EF870);
    sub_1BD0DE19C(v8, v5, &qword_1EBD452C0, &qword_1BE0B7620);
    v51 = v54;
    sub_1BD0DE19C(v12, v54, &qword_1EBD4FEE0, &qword_1BE0EF870);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FEE8, &qword_1BE0EF878);
    sub_1BD0DE19C(v5, v51 + *(v52 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v8, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v15, &qword_1EBD4FEE0, &qword_1BE0EF870);
    sub_1BD0DE53C(v5, &qword_1EBD452C0, &qword_1BE0B7620);
    return sub_1BD0DE53C(v12, &qword_1EBD4FEE0, &qword_1BE0EF870);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD6C2A48@<D0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE38, &qword_1BE0EF728);
  sub_1BD6C0688(v5, v4, a2 + *(v6 + 44));
  LOBYTE(v4) = sub_1BE0501D4();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE40, &qword_1BE0EF730) + 36);
  *v7 = v4;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  return result;
}

uint64_t PKTransactionDetailRewardsRedemptionInfoTableViewCell.configure(withRewardsRedemption:rewardsBalance:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE28, &unk_1BE0EF620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_1BD5C355C();
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v12[3] = v4;
  v12[4] = sub_1BD0DE4F4(&qword_1EBD4FE30, &qword_1EBD4FE28, &unk_1BE0EF620, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_1BE04FCD4();
  (*(v5 + 8))(v7, v4);
  return MEMORY[0x1BFB3FD10](v12);
}

id sub_1BD6C2C64@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v5 = *(v1 + 16);
  *a1 = v5;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

id PKTransactionDetailRewardsRedemptionInfoTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}

id PKTransactionDetailRewardsRedemptionInfoTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v15;
}

id PKTransactionDetailRewardsRedemptionInfoTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKTransactionDetailRewardsRedemptionInfoTableViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKTransactionDetailRewardsRedemptionInfoTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD6C31A4(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - v20;
  v22 = [a1 status];
  v27 = v2;
  if (v22 > 3)
  {
    if ((v22 - 5) >= 2)
    {
      if (v22 == 4)
      {
        (*(v3 + 104))(v11, *MEMORY[0x1E69B8088], v2);
        result = PKPassKitBundle();
        if (result)
        {
          v24 = result;
          v25 = sub_1BE04B6F4();
          v21 = v11;
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      goto LABEL_15;
    }

    (*(v3 + 104))(v8, *MEMORY[0x1E69B8088], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v21 = v8;
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 == 1)
  {
    (*(v3 + 104))(v21, *MEMORY[0x1E69B8088], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v22 != 2)
  {
    if (v22 == 3)
    {
      (*(v3 + 104))(v14, *MEMORY[0x1E69B8088], v2);
      result = PKPassKitBundle();
      if (result)
      {
        v24 = result;
        v25 = sub_1BE04B6F4();
        v21 = v14;
LABEL_19:

        (*(v3 + 8))(v21, v27);
        return v25;
      }

      goto LABEL_24;
    }

LABEL_15:
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8088], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v21 = v5;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  (*(v3 + 104))(v17, *MEMORY[0x1E69B8088], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v21 = v17;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_1BD6C362C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  if (v7)
  {
    v11 = [v7 programName];
    v12 = sub_1BE052434();
    v14 = v13;

    (*(v3 + 104))(v10, *MEMORY[0x1E69B8088], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B69E0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1BD110550();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    v16 = sub_1BE04B714();
    v15, v17, v18, v19, v20, v21, v22, v23;
    v5 = v10;
LABEL_5:
    (*(v3 + 8))(v5, v2);
    return v16;
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69B8088], v2, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v16 = sub_1BE04B6F4();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6C3870(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE053304();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 details];
  v12 = [v11 redeemed];
  if (v12)
  {
    v13 = v12;

    goto LABEL_4;
  }

  v13 = [v11 intended];

  if (v13)
  {
LABEL_4:
    v14 = [v13 type];
    if (v14 == 3)
    {
      v15 = [v13 monetaryValue];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 formattedStringValue];

        if (v17)
        {
          v18 = sub_1BE052434();

          return v18;
        }
      }

      goto LABEL_15;
    }

    v20 = v14;
    v21 = [v13 value];
    if (v21)
    {
      v22 = v21;
      v43 = v3;
      v44 = v2;
      sub_1BE0533F4();
      MEMORY[0x1BFB37210]();
      sub_1BD154B6C();
      sub_1BE053464();
      (*(v7 + 8))(v10, v6);
      v23 = v45;
      v24 = v46;
      if (v20 == 1)
      {
        v26 = v43;
        v25 = v44;
        (*(v43 + 104))(v5, *MEMORY[0x1E69B8088], v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1BE0B69E0;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = sub_1BD110550();
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        goto LABEL_13;
      }

      v26 = v43;
      v25 = v44;
      if (v20 == 2)
      {
        (*(v43 + 104))(v5, *MEMORY[0x1E69B8088], v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1BE0B69E0;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = sub_1BD110550();
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
LABEL_13:
        v28 = sub_1BE04B714();

        v27, v29, v30, v31, v32, v33, v34, v35;
        (*(v26 + 8))(v5, v25);
        return v28;
      }

      v24, v36, v37, v38, v39, v40, v41, v42;
    }

LABEL_15:
  }

  return 0;
}

unint64_t sub_1BD6C3C98()
{
  result = qword_1EBD4FF30;
  if (!qword_1EBD4FF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FE40, &qword_1BE0EF730);
    sub_1BD0DE4F4(&qword_1EBD4FF38, &qword_1EBD4FF40, &unk_1BE0EF8D0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FF30);
  }

  return result;
}

uint64_t sub_1BD6C3D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1BD6C3D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}