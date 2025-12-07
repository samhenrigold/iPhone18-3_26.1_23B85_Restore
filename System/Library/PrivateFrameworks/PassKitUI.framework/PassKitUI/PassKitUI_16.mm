unint64_t sub_1BD1DE4FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1DE5FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1DE6BC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1BD1D8E78(isUniquelyReferenced_nonNull_native, v11, 1, v4, &qword_1EBD3CA60, &qword_1BE0BFC98, &type metadata for PaymentPassPaneIdentifier, v10);
    *v2 = v4;
  }

  result = sub_1BD1DE5FC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1BD1DE794(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DE898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for UIFlowNode();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BE053704();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DE998(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BE053704();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1BE053704();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1BD1DA6D8(result, 1);

  return sub_1BD1DE898(v5, v3, 0);
}

uint64_t sub_1BD1DEA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1DEAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD1DEB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1DEBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1DEC5C()
{
  result = qword_1EBD3CB20;
  if (!qword_1EBD3CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CB20);
  }

  return result;
}

unint64_t sub_1BD1DECB0()
{
  result = qword_1EBD3CB28;
  if (!qword_1EBD3CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CB28);
  }

  return result;
}

void sub_1BD1DEDD4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1BE04D194();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "Resuming account updates", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates) = 0;
    v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount);
    if (v13)
    {
      v14 = v13;
      sub_1BE04D194();
      v15 = sub_1BE04D204();
      v16 = sub_1BE052C54();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1BD026000, v15, v16, "Account update following resumption", v17, 2u);
        MEMORY[0x1BFB45F20](v17, -1, -1);
      }

      v12(v5, v2);
      sub_1BD1DFCC4(v14);
    }
  }
}

uint64_t sub_1BD1DF06C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  return v19;
}

char *sub_1BD1DF0D8(void *a1, int a2)
{
  v3 = v2;
  v98 = a2;
  v97 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v94 = v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD50, &qword_1BE0C0200);
  v101 = *(v6 - 1);
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v93 = v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD48, &qword_1BE0C01F8);
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v86 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD40, &qword_1BE0C01F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v86 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD38, &qword_1BE0C01E8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v86 - v17;
  v19 = OBJC_IVAR____TtC9PassKitUI12AccountModel__savingsDetails;
  aBlock[0] = 0;
  v86[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CCF0, &qword_1BE0BFEB8);
  sub_1BE04D874();
  v88 = v16;
  v20 = *(v16 + 32);
  v87 = v19;
  v89 = v15;
  v20(&v3[v19], v18, v15);
  v21 = OBJC_IVAR____TtC9PassKitUI12AccountModel__savingsSummary;
  aBlock[0] = 0;
  v86[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD00, &qword_1BE0BFEC0);
  sub_1BE04D874();
  v91 = v12;
  v22 = *(v12 + 32);
  v92 = v11;
  v22(&v3[v21], v14, v11);
  v23 = OBJC_IVAR____TtC9PassKitUI12AccountModel__appleBalanceDetails;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD10, &qword_1BE0BFEC8);
  sub_1BE04D874();
  v24 = *(v100 + 32);
  v90 = v8;
  v24(&v3[v23], v10, v8);
  v25 = OBJC_IVAR____TtC9PassKitUI12AccountModel__appleBalanceSummary;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD20, &qword_1BE0BFED0);
  v26 = v93;
  sub_1BE04D874();
  (*(v101 + 32))(&v3[v25], v26, v102);
  v27 = OBJC_IVAR____TtC9PassKitUI12AccountModel__expectingAccountUpdate;
  LOBYTE(aBlock[0]) = 0;
  v28 = v94;
  sub_1BE04D874();
  (*(v95 + 32))(&v3[v27], v28, v96);
  v29 = OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService;
  *&v3[v29] = [objc_opt_self() sharedInstance];
  *&v3[OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState] = 2;
  v3[OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount] = 0;
  swift_beginAccess();
  v30 = v97;
  v106 = v97;
  sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
  v31 = v30;
  sub_1BE04D874();
  swift_endAccess();
  v32 = [v31 type];
  v97 = v31;
  if (v32 == 3)
  {
    v39 = [v31 appleBalanceDetails];
    v40 = [v39 accountSummary];
    swift_beginAccess();
    v41 = *(v100 + 8);
    v42 = v39;
    v41(&v3[v23], v90);
    v106 = v39;
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    v43 = *(v101 + 8);
    v44 = v40;
    v43(&v3[v25], v102);
    v106 = v40;
    sub_1BE04D874();
    swift_endAccess();
    v45 = [v44 currentBalance];
    if (!v45)
    {
      sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
      v45 = sub_1BE053044();
    }

    v46 = v45;
    sub_1BE0529E4();
    v48 = v47;

    v49 = ObjectType;
    v35 = v98;
    v36 = 4477781;
    v50 = &selRef_setUpNavigationBar;
    v37 = &unk_1EBD3C000;
    if (v42)
    {
      v51 = [v42 currencyCode];
      if (v51)
      {
        v52 = v51;
        v36 = sub_1BE052434();
        v54 = v53;

        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v32 != 4)
  {
    v48 = 0;
    v54 = 0xE300000000000000;
    v49 = ObjectType;
    v35 = v98;
    v36 = 4477781;
    v50 = &selRef_setUpNavigationBar;
    v37 = &unk_1EBD3C000;
    goto LABEL_22;
  }

  v33 = [v31 savingsDetails];
  v34 = v33;
  v35 = v98;
  v36 = 4477781;
  v37 = &unk_1EBD3C000;
  if (v33)
  {
    v38 = [v33 accountSummary];
  }

  else
  {
    v38 = 0;
  }

  v55 = v87;
  swift_beginAccess();
  v56 = *(v88 + 8);
  v102 = v34;
  v56(&v3[v55], v89);
  v106 = v34;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v57 = *(v91 + 8);
  v58 = v38;
  v57(&v3[v21], v92);
  v106 = v38;
  sub_1BE04D874();
  swift_endAccess();
  v59 = [v58 currentBalance];
  if (!v59)
  {
    sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
    v59 = sub_1BE053044();
  }

  v60 = v59;
  sub_1BE0529E4();
  v48 = v61;

  v49 = ObjectType;
  v50 = &selRef_setUpNavigationBar;
  if (v34)
  {
    v44 = v102;
    v62 = [v102 currencyCode];
    if (v62)
    {
      v63 = v62;
      v36 = sub_1BE052434();
      v54 = v64;

      goto LABEL_22;
    }

LABEL_19:
    goto LABEL_21;
  }

LABEL_21:
  v54 = 0xE300000000000000;
LABEL_22:
  type metadata accessor for AccountObservableBalance(0);
  v65 = swift_allocObject();
  swift_beginAccess();
  v106 = v48;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v106 = v36;
  v107 = v54;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v106 = v65;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v106) = v35 & 1;
  sub_1BE04D874();
  swift_endAccess();
  v105.receiver = v3;
  v105.super_class = v49;
  v66 = objc_msgSendSuper2(&v105, sel_init);
  v67 = v37[404];
  v68 = *&v66[v67];
  if (v68)
  {
    [v68 registerObserver_];
  }

  v69 = [objc_opt_self() v50[211]];
  v70 = v97;
  if (v69)
  {
    v71 = v69;
    v72 = [v69 registerObserver_];

    *&v66[OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState] = v72 & 0x101;
  }

  v73 = *&v66[v67];
  if (v73)
  {
    v74 = v73;
    v75 = [v70 accountIdentifier];
    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD1E16C4;
    v104 = v76;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_64_0;
    v77 = _Block_copy(aBlock);
    v104, v78, v79, v80, v81, v82, v83, v84;
    [v74 accountWithIdentifier:v75 completion:v77];

    _Block_release(v77);
    v70 = v75;
  }

  return v66;
}

void sub_1BD1DFC58(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a1;
      sub_1BD1DFCC4(v6);
    }
  }
}

void sub_1BD1DFCC4(void *a1)
{
  v2 = sub_1BE051F54();
  v97 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(aBlock);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = aBlock[0];
  v25 = [aBlock[0] accountIdentifier];

  if (v25)
  {
    v26 = sub_1BE052434();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [a1 accountIdentifier];
  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_15;
    }

LABEL_11:
    v28, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

  v37 = v29;
  v38 = sub_1BE052434();
  v40 = v39;

  if (!v28)
  {
    if (v40)
    {
      v40, v30, v31, v32, v33, v34, v35, v36;
      return;
    }

    goto LABEL_15;
  }

  if (!v40)
  {
    goto LABEL_11;
  }

  if (v26 == v38 && v28 == v40)
  {
    v28, v30, v31, v32, v33, v34, v35, v36;
    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  else
  {
    v48 = sub_1BE053B84();
    v28, v49, v50, v51, v52, v53, v54, v55;
    v40, v56, v57, v58, v59, v60, v61, v62;
    if ((v48 & 1) == 0)
    {
      return;
    }
  }

LABEL_15:
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  sub_1BE04D8B4(aBlock);
  v63, v65, v66, v67, v68, v69, v70, v71;
  v64, v72, v73, v74, v75, v76, v77, v78;
  v79 = aBlock[0];
  v80 = [aBlock[0] type];

  if (v80 == [a1 type])
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v81 = sub_1BE052D54();
    v82 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v83 = swift_allocObject();
    *(v83 + 16) = v82;
    *(v83 + 24) = a1;
    aBlock[4] = sub_1BD1E1530;
    v99 = v83;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_20;
    v84 = _Block_copy(aBlock);
    v85 = v99;
    v86 = a1;
    v85, v87, v88, v89, v90, v91, v92, v93;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v7, v4, v84);
    _Block_release(v84);

    (*(v97 + 8))(v4, v2);
    (*(v95 + 8))(v7, v96);
  }
}

id sub_1BD1E0128()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService];
  if (v2)
  {
    [v2 unregisterObserver_];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AccountModel(uint64_t a1)
{
  result = qword_1EBD3CCC8;
  if (!qword_1EBD3CCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1E04EC(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates))
  {
    sub_1BE04D194();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Received account while updates are suspended", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v15 = *&v11[OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount];
    *&v11[OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount] = a2;

    v16 = a2;
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v72) = 0;
  v17 = v11;
  sub_1BE04D8C4();
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(&v72);
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  v34 = v72;
  LOBYTE(v19) = PKEqualObjects();

  if ((v19 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = a2;
    v38 = v17;
    v39 = a2;
    sub_1BE04D8C4();
    v40 = [v39 type];
    if (v40 == 3)
    {
      v45 = [v39 appleBalanceDetails];
      v46 = [v45 accountSummary];
      swift_getKeyPath();
      swift_getKeyPath();
      v72 = v45;
      v47 = v38;
      v48 = v45;
      sub_1BE04D8C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v72 = v46;
      v49 = v47;
      v50 = v46;
      sub_1BE04D8C4();
      v51 = [v50 currentBalance];
      if (!v51)
      {
LABEL_19:
        sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
        v51 = sub_1BE053044();
      }
    }

    else
    {
      v41 = 0;
      if (v40 != 4)
      {
LABEL_21:
        v56 = swift_getKeyPath();
        v57 = swift_getKeyPath();
        sub_1BE04D8B4(&v72);
        v56, v58, v59, v60, v61, v62, v63, v64;
        v57, v65, v66, v67, v68, v69, v70, v71;
        swift_getKeyPath();
        swift_getKeyPath();
        v72 = v41;
        sub_1BE04D8C4();

        return;
      }

      v42 = [v39 savingsDetails];
      v43 = v42;
      if (v42)
      {
        v44 = [v42 accountSummary];
      }

      else
      {
        v44 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v72 = v43;
      v52 = v38;
      v48 = v43;
      sub_1BE04D8C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v72 = v44;
      v50 = v44;
      v53 = v52;
      sub_1BE04D8C4();
      v51 = [v50 currentBalance];
      if (!v51)
      {
        goto LABEL_19;
      }
    }

    v54 = v51;
    sub_1BE0529E4();
    v41 = v55;

    goto LABEL_21;
  }

  sub_1BE04D194();
  v35 = sub_1BE04D204();
  v36 = sub_1BE052C54();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1BD026000, v35, v36, "Received account update but account has not changed", v37, 2u);
    MEMORY[0x1BFB45F20](v37, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v9, v3);
}

void sub_1BD1E0AEC(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a1;
    v4 = a3;
    sub_1BD1DFCC4(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1E0B4C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = a1;
    v6 = v5;
    if (Strong)
    {
      sub_1BD1DFCC4(v5);
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      sub_1BD1DEDD4();
    }
  }
}

uint64_t sub_1BD1E0C6C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D194();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, "Suspending account updates", v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates) = 1;
  return result;
}

void sub_1BD1E0DEC(uint64_t a1)
{
  sub_1BD1E1060(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD3CCE8, &qword_1EBD3CCF0, &qword_1BE0BFEB8);
    if (v2 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD3CCF8, &qword_1EBD3CD00, &qword_1BE0BFEC0);
      if (v3 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD3CD08, &qword_1EBD3CD10, &qword_1BE0BFEC8);
        if (v4 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD3CD18, &qword_1EBD3CD20, &qword_1BE0BFED0);
          if (v5 <= 0x3F)
          {
            sub_1BD1E10C8(319);
            if (v6 <= 0x3F)
            {
              sub_1BD1E1120();
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD1E1060(uint64_t a1)
{
  if (!qword_1EBD3CCD8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3CCE0, 0x1E69B8330);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3CCD8);
    }
  }
}

void sub_1BD1E10C8(uint64_t a1)
{
  if (!qword_1EBD3CD28)
  {
    type metadata accessor for AccountObservableBalance(255);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3CD28);
    }
  }
}

void sub_1BD1E1120()
{
  if (!qword_1EBD368F0)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD368F0);
    }
  }
}

uint64_t sub_1BD1E1170@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD1E11D8(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return sub_1BE04D8C4();
}

void sub_1BD1E1248(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD1E12C8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD1E1344(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD1E13C4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

double sub_1BD1E1434@<D0>(double *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  result = v20;
  *a2 = v20;
  return result;
}

uint64_t sub_1BD1E14B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD1E1538(__int16 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState);
  if (v2 != 2)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState) = a1 & 0x101;
    if ((a1 & 1) != 0 && (v2 & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService);
      if (v3)
      {
        KeyPath = swift_getKeyPath();
        v5 = swift_getKeyPath();
        sub_1BE04D8B4(v31);
        KeyPath, v6, v7, v8, v9, v10, v11, v12;
        v5, v13, v14, v15, v16, v17, v18, v19;
        v20 = v31[0];
        v21 = [v31[0] accountIdentifier];

        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31[4] = sub_1BD1E16BC;
        v32 = v22;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 1107296256;
        v31[2] = sub_1BD14E1D8;
        v31[3] = &block_descriptor_60;
        v23 = _Block_copy(v31);
        v32, v24, v25, v26, v27, v28, v29, v30;
        [v3 accountWithIdentifier:v21 completion:v23];
        _Block_release(v23);
      }
    }
  }
}

uint64_t sub_1BD1E1798()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = [*&v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_appClip] appClipLaunchURL];
  sub_1BE04A9F4();

  v11 = objc_allocWithZone(MEMORY[0x1E6994678]);
  v12 = sub_1BE04A9C4();
  v13 = [v11 initWithURL_];

  (*(v3 + 16))(v5, v9, v2);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v3 + 32))(v15 + v14, v5, v2);
  aBlock[4] = sub_1BD1E2280;
  v28 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD14E1D8;
  aBlock[3] = &block_descriptor_21;
  v16 = _Block_copy(aBlock);
  v17 = v28;
  v18 = v1;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 requestMetadataWithCompletion_];
  _Block_release(v16);

  (*(v3 + 8))(v9, v2);
  return 1;
}

uint64_t sub_1BD1E19EC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v36 = a2;
  v37 = a3;
  v39 = sub_1BE051F54();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v38 = sub_1BE052D54();
  (*(v12 + 16))(v14, a4, v11);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a1;
  v17 = a1;
  v19 = v36;
  v18 = v37;
  *(v16 + 3) = v36;
  *(v16 + 4) = v18;
  (*(v12 + 32))(&v16[v15], v14, v11);
  aBlock[4] = sub_1BD1E2304;
  v44 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9;
  v20 = _Block_copy(aBlock);
  v21 = v44;
  v22 = v17;
  v23 = v19;
  v24 = v18;
  v21, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v32 = v39;
  sub_1BE053664();
  v33 = v38;
  MEMORY[0x1BFB3FDF0](0, v10, v7, v20);
  _Block_release(v20);

  (*(v42 + 8))(v7, v32);
  return (*(v40 + 8))(v10, v41);
}

void sub_1BD1E1D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E6994680]);
    v5 = sub_1BE04A9C4();
    v6 = [v4 initWithURL_];

    v20 = sub_1BD1E1F80;
    v21 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1BD3CC8C0;
    v19 = &block_descriptor_15_0;
    v7 = _Block_copy(&v16);
    [v6 requestClipWithCompletion_];
    _Block_release(v7);
LABEL_11:

    return;
  }

  v8 = PKDisplayableErrorForCommonType();
  v6 = v8;
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE04A844();
  }

  else
  {
    v10 = 0;
  }

  v20 = PKEdgeInsetsMake;
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1BD126964;
  v19 = &block_descriptor_12;
  v11 = _Block_copy(&v16);
  v12 = PKAlertForDisplayableErrorWithCancelHandler(v10, 0, v11);
  _Block_release(v11);

  if (v12)
  {
    PKApplyDefaultIconToAlertController();
    v13 = a3 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(v12, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BD1E1F80(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  if (a2)
  {
    v10 = a2;
    sub_1BE04D0E4();
    v11 = a2;
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1BD026000, v12, v13, "Error: Cannot launch App Clip URL %@", v14, 0xCu);
      sub_1BD1E236C(v15);
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BE04D0E4();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Launch App Clip URL", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    v6 = v9;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD1E21DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1E2218(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD1E2280(void *a1, void *a2)
{
  v5 = *(sub_1BE04AA64() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD1E19EC(a1, a2, v6, v7);
}

void sub_1BD1E2304()
{
  sub_1BE04AA64();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_1BD1E1D58(v1, v2, v3);
}

uint64_t sub_1BD1E236C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E590, &unk_1BE0B7E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD1E23EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE50, &qword_1BE0C05A0);
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE58, &qword_1BE0C05A8) + 36));
  *v12 = KeyPath;
  v12[1] = a2;
  sub_1BE048964();
  sub_1BE050384();
  v13 = sub_1BE050354();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = sub_1BE0503B4();
  sub_1BD0DE53C(v9, &qword_1EBD49130, &qword_1BE0C7180);
  v15 = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE60, &qword_1BE0C05E0) + 36));
  *v16 = v15;
  v16[1] = v14;
  v17 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE68, &unk_1BE0C0618);
  v19 = a3 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = 1;
  *(v19 + 16) = 0;
  return result;
}

uint64_t sub_1BD1E25F4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051384();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051584();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[10];
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v90 = v139;
  v91 = v137;
  v88 = v142;
  v89 = v141;
  v189 = 1;
  v188 = v138;
  v187 = v140;
  v9 = *(a1 + 8);
  v87 = v8 * 0.15;
  if (v9 && (a1[11] & 1) != 0)
  {
    *v136 = a1[7];
    *(&v136[0] + 1) = v9;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v83 = sub_1BE0506C4();
    v79 = v10;
    v12 = v11;
    v14 = v13;
    if (*(a1 + 12) == 2)
    {
      v15 = sub_1BE051424();
    }

    else
    {
      v15 = sub_1BE0513F4();
    }

    v17 = v15;
    v18 = *(a1 + 4);
    v16 = v8 * 0.42;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v19 = v12 & 1;
    LOBYTE(v110) = v12 & 1;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v20 = v144;
    v77 = v145;
    v78 = v143;
    v21 = v146;
    v75 = v148;
    v76 = v147;
    LOBYTE(v92[0]) = 1;
    LOBYTE(v132[0]) = v144;
    LOBYTE(v170) = v146;
    *&v104[0] = v83;
    *(&v104[0] + 1) = v79;
    LOBYTE(v104[1]) = v19;
    *(&v104[1] + 1) = v14;
    *&v104[2] = v17;
    *(&v104[2] + 1) = v18;
    v104[3] = v121;
    v104[4] = v122;
    v134[1] = v104[1];
    v134[0] = v104[0];
    v134[2] = v104[2];
    v134[3] = v121;
    v104[5] = v123;
    LOWORD(v105) = 1;
    v134[4] = v122;
    v134[5] = v123;
    LOWORD(v134[6]) = 1;
    *&v133[0] = v83;
    *(&v133[0] + 1) = v79;
    LOBYTE(v133[1]) = v19;
    *(&v133[1] + 1) = v14;
    *&v133[2] = v17;
    *(&v133[2] + 1) = v18;
    v133[5] = v123;
    v133[4] = v122;
    v133[3] = v121;
    LOWORD(v133[6]) = 1;
    sub_1BD0DE19C(v104, v136, &qword_1EBD3CDD8, &qword_1BE0C0460);
    sub_1BD0DE53C(v133, &qword_1EBD3CDD8, &qword_1BE0C0460);
    v136[4] = v134[4];
    v136[5] = v134[5];
    v136[0] = v134[0];
    v136[1] = v134[1];
    v136[3] = v134[3];
    v136[2] = v134[2];
    v136[6] = *&v134[6];
    LOBYTE(v136[7]) = 1;
    *(&v136[7] + 1) = v78;
    LOBYTE(v136[8]) = v20;
    *(&v136[8] + 1) = v77;
    LOBYTE(v136[9]) = v21;
    *(&v136[9] + 1) = v76;
    *&v136[10] = v75;
    PKEdgeInsetsMake();
    v184 = v136[8];
    v185 = v136[9];
    v186 = *&v136[10];
    v180 = v136[4];
    v181 = v136[5];
    v183 = v136[7];
    v182 = v136[6];
    v176 = v136[0];
    v177 = v136[1];
    v179 = v136[3];
    v178 = v136[2];
  }

  else
  {
    sub_1BD1E49FC(&v176);
    v16 = v8 * 0.42;
  }

  v22 = *a1;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v135[6] = v149;
  *&v135[22] = v150;
  *&v135[38] = v151;
  v23 = *(a1 + 9);
  v175 = v23;
  if (v23)
  {
    v83 = *&v16;
    v79 = v22;
    if (v9)
    {
      sub_1BD1E4A4C(v136);
      sub_1BE048964();
      sub_1BD0DE19C(&v175, v134, &qword_1EBD3CDB8, &unk_1BE0C0440);
    }

    else
    {
      sub_1BE048964();
      sub_1BD0DE19C(&v175, v136, &qword_1EBD3CDB8, &unk_1BE0C0440);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v77 = v154;
      v78 = v152;
      v75 = v157;
      v76 = v156;
      LOBYTE(v121) = 1;
      LOBYTE(v110) = v153;
      LOBYTE(v92[0]) = v155;
      v25 = [objc_opt_self() systemGray2Color];
      v26 = sub_1BE0511C4();
      sub_1BE051CD4();
      sub_1BE04E5E4();
      *&v95[6] = v158;
      *&v95[22] = v159;
      *&v95[38] = v160;
      v27 = v121;
      v28 = v110;
      LODWORD(v74) = LOBYTE(v92[0]);
      *&v104[0] = v26;
      WORD4(v104[0]) = 256;
      *(v104 + 10) = *v95;
      *(&v104[1] + 10) = *&v95[16];
      *(&v104[2] + 10) = *&v95[32];
      *(&v104[3] + 1) = *(&v160 + 1);
      v133[3] = v104[3];
      v133[2] = v104[2];
      v133[1] = v104[1];
      v133[0] = v104[0];
      *&v134[0] = v26;
      WORD4(v134[0]) = 256;
      *(&v134[3] + 1) = *(&v160 + 1);
      *(&v134[2] + 10) = *&v95[32];
      *(&v134[1] + 10) = *&v95[16];
      *(v134 + 10) = *v95;
      sub_1BD0DE19C(v104, v136, &qword_1EBD3CDC0, &qword_1BE113A50);
      sub_1BD0DE53C(v134, &qword_1EBD3CDC0, &qword_1BE113A50);
      *&v136[0] = 0;
      BYTE8(v136[0]) = v27;
      *&v136[1] = v78;
      BYTE8(v136[1]) = v28;
      *&v136[2] = v77;
      BYTE8(v136[2]) = v74;
      *&v136[3] = v76;
      *(&v136[3] + 1) = v75;
      v136[4] = v133[0];
      v136[5] = v133[1];
      v136[6] = v133[2];
      v136[7] = v133[3];
      PKEdgeInsetsMake();
    }

    v100 = v136[4];
    v101 = v136[5];
    v102 = v136[6];
    v103 = v136[7];
    v96 = v136[0];
    v97 = v136[1];
    v98 = v136[2];
    v99 = v136[3];
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v77 = v163;
    v78 = v161;
    v75 = v166;
    v76 = v165;
    LOBYTE(v132[0]) = 1;
    LOBYTE(v170) = v162;
    v120 = v164;
    v29 = sub_1BE051CD4();
    v73 = v30;
    v74 = v29;
    v31 = v23;
    v32 = sub_1BE051564();
    v34 = v84;
    v33 = v85;
    v35 = v86;
    (*(v85 + 104))(v84, *MEMORY[0x1E6981630], v86);
    v72 = sub_1BE0515E4();
    v32, v36, v37, v38, v39, v40, v41, v42;
    (*(v33 + 8))(v34, v35);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v136[0]) = 1;
    *&v93[6] = v167;
    *&v93[22] = v168;
    *&v93[38] = v169;
    if (*(a1 + 12) == 2)
    {
      (*(v81 + 104))(v80, *MEMORY[0x1E69814D8], v82);
      v43 = sub_1BE0514A4();
      v51 = sub_1BE051454();
      v52 = 20.0;
    }

    else
    {
      v43 = sub_1BE0513F4();
      v51 = sub_1BE051454();
      v52 = 5.0;
    }

    v43, v44, v45, v46, v47, v48, v49, v50;
    v92[4] = v100;
    v92[5] = v101;
    v92[6] = v102;
    v92[7] = v103;
    v92[0] = v96;
    v92[1] = v97;
    v92[2] = v98;
    v92[3] = v99;
    *(v112 + 2) = *v93;
    LODWORD(v84) = LOBYTE(v132[0]);
    LODWORD(v85) = LOBYTE(v170);
    LODWORD(v86) = v120;
    v53 = v73;
    v54 = v74;
    *&v110 = v74;
    *(&v110 + 1) = v73;
    v55 = v72;
    v111 = v72;
    LOWORD(v112[0]) = 1;
    *(&v112[1] + 2) = *&v93[16];
    *(&v112[2] + 2) = *&v93[32];
    *&v112[3] = *&v93[46];
    BYTE8(v112[3]) = 1;
    HIDWORD(v112[3]) = *&v94[3];
    *(&v112[3] + 9) = *v94;
    *&v113 = v51;
    *(&v113 + 1) = v52;
    v114 = 0uLL;
    sub_1BD0DE19C(v92, v136, &qword_1EBD3CDC8, &qword_1BE0C0450);
    sub_1BD0DE19C(&v110, v136, &qword_1EBD3CDD0, &qword_1BE0C0458);
    sub_1BD0DE53C(&v175, &qword_1EBD3CDB8, &unk_1BE0C0440);
    v125 = v112[2];
    v126 = v112[3];
    v127 = v113;
    v128 = v114;
    v121 = v110;
    v122 = v111;
    v123 = v112[0];
    v124 = v112[1];
    *(&v104[2] + 2) = *v93;
    *&v104[0] = v54;
    *(&v104[0] + 1) = v53;
    v104[1] = v55;
    LOWORD(v104[2]) = 1;
    *(&v104[3] + 2) = *&v93[16];
    *(&v104[4] + 2) = *&v93[32];
    *&v104[5] = *&v93[46];
    BYTE8(v104[5]) = 1;
    *(&v104[5] + 9) = *v94;
    HIDWORD(v104[5]) = *&v94[3];
    *&v105 = v51;
    *(&v105 + 1) = v52;
    v106 = 0uLL;
    sub_1BD0DE53C(v104, &qword_1EBD3CDD0, &qword_1BE0C0458);
    v133[4] = v100;
    v133[5] = v101;
    v133[6] = v102;
    v133[7] = v103;
    v133[0] = v96;
    v133[1] = v97;
    v133[2] = v98;
    v133[3] = v99;
    sub_1BD0DE53C(v133, &qword_1EBD3CDC8, &qword_1BE0C0450);
    v134[4] = v100;
    v134[5] = v101;
    v134[6] = v102;
    v134[7] = v103;
    v134[0] = v96;
    v134[1] = v97;
    v134[2] = v98;
    v134[3] = v99;
    *&v134[8] = 0;
    BYTE8(v134[8]) = v84;
    *&v134[9] = v78;
    BYTE8(v134[9]) = v85;
    *&v134[10] = v77;
    BYTE8(v134[10]) = v86;
    *&v134[11] = v76;
    *(&v134[11] + 1) = v75;
    v134[16] = v125;
    v134[17] = v126;
    v134[18] = v127;
    v134[19] = v128;
    v134[12] = v121;
    v134[13] = v122;
    v134[14] = v123;
    v134[15] = v124;
    PKEdgeInsetsMake();
    memcpy(v136, v134, sizeof(v136));
    v24 = v79;
  }

  else
  {
    sub_1BD1E4A1C(v136);
    sub_1BE048964();
    v24 = v22;
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v86 = v172;
  v87 = v170;
  v120 = 1;
  v119 = v171;
  v118 = v173;
  v56 = v189;
  v57 = v188;
  v58 = v187;
  v115 = v184;
  v116 = v185;
  v117 = v186;
  v112[2] = v180;
  v112[3] = v181;
  v113 = v182;
  v114 = v183;
  v110 = v176;
  v111 = v177;
  v112[0] = v178;
  v112[1] = v179;
  memcpy(v134, v136, sizeof(v134));
  v129 = v184;
  v130 = v185;
  v125 = v180;
  v126 = v181;
  v128 = v183;
  v127 = v182;
  v121 = v176;
  v122 = v177;
  v124 = v179;
  v123 = v178;
  *(v132 + 10) = *v135;
  v59 = v171;
  v60 = v173;
  v131 = v186;
  *&v132[0] = v24;
  WORD4(v132[0]) = 1;
  *(&v132[1] + 10) = *&v135[16];
  *(&v132[2] + 10) = *&v135[32];
  *(&v132[3] + 1) = *&v135[46];
  memcpy(v133, v136, sizeof(v133));
  *a2 = 0;
  *(a2 + 8) = v56;
  v61 = v90;
  *(a2 + 16) = v91;
  *(a2 + 24) = v57;
  *(a2 + 32) = v61;
  *(a2 + 40) = v58;
  v62 = v88;
  *(a2 + 48) = v89;
  *(a2 + 56) = v62;
  v63 = v185;
  *(a2 + 192) = v184;
  *(a2 + 208) = v63;
  *(a2 + 224) = v186;
  v64 = v181;
  *(a2 + 128) = v180;
  *(a2 + 144) = v64;
  v65 = v183;
  *(a2 + 160) = v182;
  *(a2 + 176) = v65;
  v66 = v177;
  *(a2 + 64) = v176;
  *(a2 + 80) = v66;
  v67 = v179;
  *(a2 + 96) = v178;
  *(a2 + 112) = v67;
  v68 = v132[1];
  *(a2 + 232) = v132[0];
  *(a2 + 248) = v68;
  v69 = v132[3];
  *(a2 + 264) = v132[2];
  *(a2 + 280) = v69;
  memcpy((a2 + 296), v136, 0x140uLL);
  *(a2 + 616) = 0;
  *(a2 + 624) = 1;
  v70 = v86;
  *(a2 + 632) = v87;
  *(a2 + 640) = v59;
  *(a2 + 648) = v70;
  *(a2 + 656) = v60;
  *(a2 + 664) = v174;
  sub_1BD0DE19C(&v121, v104, &qword_1EBD3CDA0, &qword_1BE0C0428);
  sub_1BD0DE19C(v132, v104, &qword_1EBD3CDA8, &qword_1BE0C0430);
  sub_1BD0DE19C(v133, v104, &qword_1EBD3CDB0, &qword_1BE0C0438);
  sub_1BD0DE53C(v134, &qword_1EBD3CDB0, &qword_1BE0C0438);
  *&v92[0] = v24;
  WORD4(v92[0]) = 1;
  *(v92 + 10) = *v135;
  *(&v92[1] + 10) = *&v135[16];
  *(&v92[2] + 10) = *&v135[32];
  *(&v92[3] + 1) = *&v135[46];
  sub_1BD0DE53C(v92, &qword_1EBD3CDA8, &qword_1BE0C0430);
  v107 = v115;
  v108 = v116;
  v109 = v117;
  v104[4] = v112[2];
  v104[5] = v112[3];
  v105 = v113;
  v106 = v114;
  v104[0] = v110;
  v104[1] = v111;
  v104[2] = v112[0];
  v104[3] = v112[1];
  return sub_1BD0DE53C(v104, &qword_1EBD3CDA0, &qword_1BE0C0428);
}

void *sub_1BD1E34E0@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  v14[4] = *(v2 + 64);
  v14[5] = v4;
  v15 = *(v2 + 96);
  v5 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v5;
  v6 = *(v2 + 48);
  v14[2] = *(v2 + 32);
  v14[3] = v6;
  v7 = sub_1BE04F504();
  v13 = 0;
  sub_1BD1E25F4(v14, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, sizeof(v17));
  sub_1BD0DE19C(__dst, v10, &qword_1EBD3CD98, &qword_1BE0C0420);
  sub_1BD0DE53C(v17, &qword_1EBD3CD98, &qword_1BE0C0420);
  memcpy(&v12[7], __dst, 0x2A8uLL);
  v8 = v13;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  return memcpy((a2 + 17), v12, 0x2AFuLL);
}

uint64_t DynamicPaymentButtonView.init(type:style:paymentRequest:scale:cardArtImage:interfaceStyle:localizedButtonLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 48) = a7;
  *(a8 + 56) = a3;
  *(a8 + 40) = a6;
  return result;
}

uint64_t DynamicPaymentButtonView.body.getter@<X0>(double (**a1)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1BD1E391C;
  a1[1] = v5;
  return sub_1BD1E3924(v10, &v9);
}

double sub_1BD1E369C@<D0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v5 = 140.0;
  }

  else
  {
    v5 = 100.0;
  }

  sub_1BE04E684();
  if (v6 > v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  sub_1BE04E684();
  if (v7 < 40.0)
  {
    v9 = 0.129032258;
LABEL_11:
    v10 = v7 * v9;
    goto LABEL_13;
  }

  if (v7 > 160.0)
  {
    v9 = 0.0371495327;
    goto LABEL_11;
  }

  v10 = (v7 + -40.0) / 120.0 * 0.782634911 + 5.16129032;
LABEL_13:
  if (v8 > 30.0)
  {
    v11 = v8;
  }

  else
  {
    v11 = 30.0;
  }

  v12 = sub_1BE04F7B4();
  v29 = 1;
  v13 = sub_1BE050194();
  sub_1BD1E3F04(a2, __src, v11);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v31, __src, sizeof(v31));
  sub_1BD0DE19C(__dst, v26, &qword_1EBD3CDE0, &qword_1BE0C0468);
  sub_1BD0DE53C(v31, &qword_1EBD3CDE0, &qword_1BE0C0468);
  memcpy(&v28[7], __dst, 0x138uLL);
  v14 = v29;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v15 = sub_1BE051CD4();
  v17 = v16;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDE8, &qword_1BE0C0470) + 36));
  *v18 = v15;
  v18[1] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDF0, &qword_1BE0C0478);
  sub_1BD1E3978(a2, v18 + *(v19 + 44), v10);
  v20 = sub_1BE051CD4();
  v22 = v21;
  v23 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDF8, &qword_1BE0C0480) + 36));
  *v23 = v20;
  v23[1] = v22;
  *a3 = v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = v14;
  *(a3 + 24) = v13;
  memcpy((a3 + 25), v28, 0x13FuLL);
  v24 = *&__src[16];
  *(a3 + 344) = *__src;
  *(a3 + 360) = v24;
  result = *&__src[32];
  *(a3 + 376) = *&__src[32];
  return result;
}

uint64_t sub_1BD1E3978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v61 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE00, &qword_1BE0C0488);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE08, &qword_1BE0C0490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - v11;
  v12 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v12);
  v53 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v51 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE10, &qword_1BE0C0498);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v52 = v12;
  v25 = *(v12 + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1BE04F684();
  v28 = *(*(v27 - 8) + 104);
  v28(v16 + v25, v26, v27);
  *v16 = a3;
  v16[1] = a3;
  if (*(a1 + 8) == 3)
  {
    v29 = 2 * (*(a1 + 32) == 1);
  }

  else
  {
    v29 = *(a1 + 8);
  }

  if (v29 == 2)
  {
    v30 = sub_1BE0513F4();
  }

  else
  {
    v30 = sub_1BE051424();
  }

  v31 = v30;
  sub_1BD1E4AAC(v16, v21);
  *&v21[*(v17 + 52)] = v31;
  *&v21[*(v17 + 56)] = 256;
  v32 = v24;
  sub_1BD0DE204(v21, v24, &qword_1EBD3CE10, &qword_1BE0C0498);
  if (v29 == 1)
  {
    v33 = v53;
    v28(v53 + *(v52 + 20), v26, v27);
    *v33 = a3;
    v33[1] = a3;
    v34 = sub_1BE0513F4();
    sub_1BE04E3F4();
    v35 = v55;
    sub_1BD1E4B10(v33, v55);
    v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE20, &qword_1BE0C04A8) + 36);
    v37 = v63;
    *v36 = v62;
    *(v36 + 16) = v37;
    *(v36 + 32) = v64;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE28, &qword_1BE0C04B0);
    *(v35 + *(v38 + 52)) = v34;
    *(v35 + *(v38 + 56)) = 256;
    v39 = sub_1BE051CD4();
    v41 = v40;
    sub_1BD1E4B74(v33);
    v42 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE30, &qword_1BE0C04B8) + 36));
    *v42 = v39;
    v42[1] = v41;
    v43 = v54;
    sub_1BD0DE204(v35, v54, &qword_1EBD3CE00, &qword_1BE0C0488);
    v44 = v58;
    sub_1BD0DE204(v43, v58, &qword_1EBD3CE00, &qword_1BE0C0488);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v58;
  }

  (*(v57 + 56))(v44, v45, 1, v59);
  v46 = v56;
  sub_1BD0DE19C(v32, v56, &qword_1EBD3CE10, &qword_1BE0C0498);
  v47 = v60;
  sub_1BD0DE19C(v44, v60, &qword_1EBD3CE08, &qword_1BE0C0490);
  v48 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD3CE10, &qword_1BE0C0498);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE18, &qword_1BE0C04A0);
  sub_1BD0DE19C(v47, v48 + *(v49 + 48), &qword_1EBD3CE08, &qword_1BE0C0490);
  sub_1BD0DE53C(v44, &qword_1EBD3CE08, &qword_1BE0C0490);
  sub_1BD0DE53C(v32, &qword_1EBD3CE10, &qword_1BE0C0498);
  sub_1BD0DE53C(v47, &qword_1EBD3CE08, &qword_1BE0C0490);
  return sub_1BD0DE53C(v46, &qword_1EBD3CE10, &qword_1BE0C0498);
}

uint64_t sub_1BD1E3F04@<X0>(__int128 *a1@<X0>, void *a2@<X8>, double a4@<D1>)
{
  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a1[1];
    v72 = *a1;
    v73 = v7;
    v8 = a1[3];
    v74 = a1[2];
    v75 = v8;
    v9 = v6;
    sub_1BD1E42CC(v9, &v81, a4);

    v11 = *(&v81 + 1);
    v10 = v81;
    v13 = *(&v82 + 1);
    v12 = v82;
    v30 = v84;
    v31 = v83;
    v29 = *(&v84 + 1);
    v27 = *(&v85 + 1);
    v28 = v85;
    v26 = v86;
    v24 = *(&v83 + 1);
    v25 = *(&v86 + 1);
    v23 = v87;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v30 = 0;
    v31 = 0;
    v24 = 0;
    v25 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v23 = 0;
  }

  v14 = a1[1];
  v72 = *a1;
  v73 = v14;
  v15 = a1[3];
  v74 = a1[2];
  v75 = v15;
  sub_1BD1E4468(&v81, a4);
  v16 = a1[1];
  v72 = *a1;
  v73 = v16;
  v17 = a1[3];
  v74 = a1[2];
  v75 = v17;
  sub_1BD1E45E0(a4 * 0.42 * 2.43333333, a4 * 0.42);
  v19 = v18;
  v20 = *(a1 + 1);
  if (v20 == 3)
  {
    v20 = 2 * (*(a1 + 4) == 1);
  }

  v37 = v85;
  v38 = v86;
  v33 = v81;
  v34 = v82;
  v35 = v83;
  v36 = v84;
  *&v42 = v10;
  *(&v42 + 1) = v11;
  *&v43 = v12;
  *(&v43 + 1) = v13;
  *&v44 = v31;
  *(&v44 + 1) = v24;
  *&v45 = v30;
  *(&v45 + 1) = v29;
  *&v46 = v28;
  *(&v46 + 1) = v27;
  *&v47 = v26;
  *(&v47 + 1) = v25;
  __src[0] = v42;
  __src[1] = v43;
  __src[4] = v46;
  __src[5] = v47;
  __src[2] = v44;
  __src[3] = v45;
  v49[0] = v81;
  v49[1] = v82;
  v49[4] = v85;
  v49[5] = v86;
  v49[2] = v83;
  v49[3] = v84;
  *(&__src[8] + 8) = v83;
  v39 = v87;
  v41 = 1;
  v40 = 1;
  v48 = v23;
  *&__src[6] = v23;
  v50 = v87;
  *(&__src[7] + 8) = v82;
  *(&__src[6] + 8) = v81;
  *(&__src[12] + 1) = v87;
  *(&__src[11] + 8) = v86;
  *(&__src[10] + 8) = v85;
  *(&__src[9] + 8) = v84;
  *&v52 = 0;
  v51 = v18;
  BYTE8(v52) = 1;
  v53 = 0x4024000000000000uLL;
  LOBYTE(v54) = 1;
  v56 = 0uLL;
  v55 = 0;
  *&v57 = a4;
  BYTE8(v57) = 0;
  v58 = v20;
  __src[13] = v18;
  __src[14] = v52;
  *&__src[19] = v20;
  __src[17] = 0uLL;
  __src[18] = v57;
  __src[15] = 0x4024000000000000uLL;
  __src[16] = v54;
  memcpy(a2, __src, 0x138uLL);
  v59[2] = 0;
  v59[0] = v19;
  v59[1] = 0;
  v60 = 1;
  v61 = 0x4024000000000000;
  v62 = 0;
  v63 = 1;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v67 = a4;
  v68 = 0;
  v69 = v20;
  sub_1BD0DE19C(&v42, &v72, &qword_1EBD3CE38, &qword_1BE0C04C0);
  sub_1BD1E4BD0(v49, &v72);
  sub_1BD1E4BD0(&v51, &v72);
  sub_1BD1E4C08(v59);
  v70[4] = v37;
  v70[5] = v38;
  v71 = v39;
  v70[0] = v33;
  v70[1] = v34;
  v70[2] = v35;
  v70[3] = v36;
  sub_1BD1E4C08(v70);
  *&v72 = v10;
  *(&v72 + 1) = v11;
  *&v73 = v12;
  *(&v73 + 1) = v13;
  *&v74 = v31;
  *(&v74 + 1) = v24;
  *&v75 = v30;
  *(&v75 + 1) = v29;
  v76 = v28;
  v77 = v27;
  v78 = v26;
  v79 = v25;
  v80 = v23;
  return sub_1BD0DE53C(&v72, &qword_1EBD3CE38, &qword_1BE0C04C0);
}

id sub_1BD1E42CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a4@<D1>)
{
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[4];
  v11 = v4[5];
  v10 = v4[6];
  if (a4 >= 44.0)
  {
    v13 = a4 * 0.43;
    v14 = 20.0;
  }

  else
  {
    v12 = 14.0;
    if (a4 < 30.0)
    {
      goto LABEL_8;
    }

    v13 = a4 * 0.46;
    v14 = 17.0;
  }

  if (v13 <= v14)
  {
    v12 = v13;
  }

  else
  {
    v12 = v14;
  }

LABEL_8:
  PKSizeRoundToPixelWithScale();
  sub_1BD1E45E0(v15, v16);
  v18 = v17;
  PKPassFrontFaceContentSize();
  PKSizeAspectFit();
  if (v10)
  {
    v21 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v21 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = 2 * (v9 == 1);
  if (v7 != 3)
  {
    v23 = v7;
  }

  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = 0;
  *(a2 + 32) = v12;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = v11;
  *(a2 + 64) = v10;
  *(a2 + 72) = a1;
  *(a2 + 80) = a4;
  *(a2 + 88) = v22;
  *(a2 + 96) = v23;
  sub_1BE048C84();

  return a1;
}

uint64_t sub_1BD1E4468@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v5 = v2[1];
  v6 = v2[4];
  v8 = v2[5];
  v7 = v2[6];
  if (a2 >= 44.0)
  {
    v10 = a2 * 0.43;
    v11 = 20.0;
  }

  else
  {
    v9 = 14.0;
    if (a2 < 30.0)
    {
      goto LABEL_8;
    }

    v10 = a2 * 0.46;
    v11 = 17.0;
  }

  if (v10 <= v11)
  {
    v9 = v10;
  }

  else
  {
    v9 = v11;
  }

LABEL_8:
  PKSizeRoundToPixelWithScale();
  sub_1BD1E45E0(v12, v13);
  if (v7)
  {
    v15 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v15 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = 2 * (v6 == 1);
  if (v5 != 3)
  {
    v17 = v5;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v14;
  *(a1 + 24) = 1;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;

  return sub_1BE048C84();
}

void sub_1BD1E45E0(CGFloat a1, CGFloat a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 1);
  if (v9 == 3)
  {
    v9 = 2 * (*(v2 + 4) == 1);
  }

  v10 = v2[2];
  if (v9 == 2)
  {
    v11 = "PayButtonLogoBlack";
  }

  else
  {
    v11 = "tSetupOpenAppClipFlowItem";
  }

  v12 = PKPassKitUIBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052404();
    v15 = sub_1BE052404();
    v16 = [v13 URLForResource:v14 withExtension:v15];

    if (v16)
    {
      sub_1BE04A9F4();

      v17 = sub_1BE04A9C4();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17 = 0;
    }

    v18 = PKUIImageFromPDF(v17, a1, a2, v10);

    if (v18)
    {
      (v11 | 0x8000000000000000), v19, v20, v21, v22, v23, v24, v25;
      sub_1BE051544();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD1E47D4@<X0>(double (**a1)@<D0>(uint64_t@<X0>, uint64_t@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  v7 = v1[3];
  *(v5 + 48) = v1[2];
  *(v5 + 64) = v7;
  *a1 = sub_1BD1E4F3C;
  a1[1] = v5;
  return sub_1BD1E3924(v10, &v9);
}

uint64_t sub_1BD1E4860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BD1E48BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD1E4930(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BD1E4978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1BD1E49FC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1BD1E4A1C(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1BD1E4A4C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t objectdestroyTm_10()
{
  v0[8], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD1E4AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04EDE4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1E4B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04EDE4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1E4B74(uint64_t a1)
{
  v2 = sub_1BE04EDE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD1E4C38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BD1E4C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD1E4CE8()
{
  result = qword_1EBD3CE70;
  if (!qword_1EBD3CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CE68, &unk_1BE0C0618);
    sub_1BD1E4DA0();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE70);
  }

  return result;
}

unint64_t sub_1BD1E4DA0()
{
  result = qword_1EBD3CE78;
  if (!qword_1EBD3CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CE60, &qword_1BE0C05E0);
    sub_1BD1E4E58();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE78);
  }

  return result;
}

unint64_t sub_1BD1E4E58()
{
  result = qword_1EBD3CE80;
  if (!qword_1EBD3CE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CE58, &qword_1BE0C05A8);
    sub_1BD0DE4F4(&qword_1EBD3CE88, &qword_1EBD3CE50, &qword_1BE0C05A0, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE80);
  }

  return result;
}

id BankConnectAccountCredentialsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAccountCredentialsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountCredentialsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectAccountCredentialsViewControllerProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BankConnectAccountCredentialsViewControllerProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AccountPaymentInformation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE049D04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s9PassKitUI51BankConnectAccountCredentialsViewControllerProviderC04makehI007accountG00lG5TitleSo06UIViewI0CSaySo27FKAccountPaymentInformationCG_SStFZ_0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA0, &qword_1BE0C06B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  v10 = sub_1BE049D04();
  v65 = *(v10 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v77 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v14 = 0;
    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    v76 = a1 & 0xC000000000000001;
    v66 = *MEMORY[0x1E6967BD0];
    v69 = (v65 + 104);
    v72 = (v65 + 48);
    v73 = (v65 + 56);
    v64 = *MEMORY[0x1E6967BE0];
    v71 = (v65 + 32);
    v78 = MEMORY[0x1E69E7CC0];
    v63 = *MEMORY[0x1E6967BD8];
    v68 = a1;
    v67 = v9;
    v70 = v10;
    v74 = i;
    while (v76)
    {
      v15 = MEMORY[0x1BFB40900](v14, a1, v11);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_26;
      }

LABEL_9:
      v17 = v15;
      v18 = [v17 ach];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 accountNumber];
        v21 = sub_1BE052434();
        v23 = v22;

        v24 = [v19 routingNumber];
        v25 = sub_1BE052434();
        v27 = v26;

        *v6 = v21;
        v6[1] = v23;
        v9 = v67;
        a1 = v68;
        v6[2] = v25;
        v6[3] = v27;
        v10 = v70;
        (*v69)(v6, v66, v70);
      }

      else
      {
        v28 = [v17 scan];
        if (!v28)
        {
          v43 = [v17 iban];
          if (v43)
          {
            v44 = v43;
            v45 = sub_1BE052434();
            v47 = v46;

            *v6 = v45;
            v6[1] = v47;
            v10 = v70;
            (*v69)(v6, v63, v70);
            v48 = 0;
          }

          else
          {
            v48 = 1;
          }

          (*v73)(v6, v48, 1, v10);
          goto LABEL_14;
        }

        v29 = v28;
        v30 = [v28 accountNumber];
        v31 = sub_1BE052434();
        v33 = v32;

        v34 = [v29 sortCode];
        v35 = sub_1BE052434();
        v37 = v36;

        *v6 = v31;
        v6[1] = v33;
        v10 = v70;
        a1 = v68;
        v6[2] = v35;
        v6[3] = v37;
        v9 = v67;
        (*v69)(v6, v64, v10);
      }

      (*v73)(v6, 0, 1, v10);
LABEL_14:
      sub_1BD1E5814(v6, v9);

      if ((*v72)(v9, 1, v10) == 1)
      {
        sub_1BD1E5884(v9);
      }

      else
      {
        v38 = *v71;
        (*v71)(v77, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1BD1D7C9C(0, *(v78 + 2) + 1, 1, v78);
        }

        v40 = *(v78 + 2);
        v39 = *(v78 + 3);
        if (v40 >= v39 >> 1)
        {
          v78 = sub_1BD1D7C9C((v39 > 1), v40 + 1, 1, v78);
        }

        v41 = v77;
        v42 = v78;
        *(v78 + 2) = v40 + 1;
        v38(&v42[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v40], v41, v10);
      }

      ++v14;
      if (v16 == v74)
      {
        goto LABEL_30;
      }
    }

    if (v14 >= *(v75 + 16))
    {
      goto LABEL_27;
    }

    v15 = *(a1 + 8 * v14 + 32);
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v49 = v62;
  sub_1BE048C84();
  v50 = v78;
  sub_1BD20585C(v78, v61, v49, &v81);
  v50, v51, v52, v53, v54, v55, v56, v57;
  v79 = v81;
  v80[0] = v82[0];
  *(v80 + 9) = *(v82 + 9);
  v58 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA8, qword_1BE0C06C0));
  return sub_1BE04F894();
}

unint64_t sub_1BD1E5770()
{
  result = qword_1EBD3CE90;
  if (!qword_1EBD3CE90)
  {
    sub_1BE049D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE90);
  }

  return result;
}

unint64_t sub_1BD1E57C8()
{
  result = qword_1EBD3CE98;
  if (!qword_1EBD3CE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3CE98);
  }

  return result;
}

uint64_t sub_1BD1E5814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA0, &qword_1BE0C06B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1E5884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA0, &qword_1BE0C06B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD1E59C4(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_manager) viewControllerForStep_];
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController);
    *(v1 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController) = v3;
    v5 = v3;

    a1(0xD000000000000024, 0x80000001BE11D3F0, 0, 0);
  }

  else
  {
    a1(0xD000000000000021, 0x80000001BE11D3C0, 0, 1);
  }
}

uint64_t sub_1BD1E5AD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1E5B10(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD1E5BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController);
  v2 = v1;
  return v1;
}

id sub_1BD1E5C80(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_manager] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_step] = a2;
  v12 = 0;
  v13 = 0xE000000000000000;
  v7 = a1;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000025, 0x80000001BE11D390);
  v11 = a2;
  type metadata accessor for FKBankConnectAuthorizationStepType(0);
  sub_1BE053974();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_identifier];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD1E5D94()
{
  v53.receiver = v0;
  v53.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v53, sel_loadView);
  v1 = [v0 explanationView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v0 setShowDoneButton_];
  [v0 setShowCancelButton_];
  v3 = [objc_opt_self() sharedInstance];
  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_credential];
  v5 = [v4 configuration];
  if (!v5)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 provisioningTemplateIdentifier];

  if (v7)
  {
    v8 = sub_1BE052434();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_1BD1E60E8(0xD000000000000017, 0x80000001BE11D520, v3, v8, v10);
  v12 = v11;
  v13 = sub_1BE052404();
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v2 setTitleText_];

  sub_1BD1E60E8(0xD000000000000016, 0x80000001BE11D540, v3, v8, v10);
  v22 = v21;
  v23 = sub_1BE052404();
  v22, v24, v25, v26, v27, v28, v29, v30;
  [v2 setBodyText_];

  v31 = [v2 dockView];
  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = v31;
  v33 = [v31 primaryButton];

  if (!v33)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_1BD1E60E8(0x45554E49544E4F43, 0xE800000000000000, v3, v8, v10);
  v35 = v34;
  v10, v34, v36, v37, v38, v39, v40, v41;
  v42 = sub_1BE052404();
  v35, v43, v44, v45, v46, v47, v48, v49;
  [v33 setTitle:v42 forStates:0];

  if (v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_allowPartnerAppFlow] == 1)
  {
    sub_1BD1E62A8();
  }

  v50 = [v4 configuration];
  v51 = [objc_allocWithZone(PKCredentialPairingExplanationHeaderView) initWithConfiguration_];

  [v2 setHeroView_];
  v52 = [objc_opt_self() pk:8 privacyLinkForContext:?];
  [v0 setPrivacyLinkController_];
}

id sub_1BD1E60E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v12 = [a3 provisioningString:v11 templateIdentifier:a5];

  if (v12)
  {
    v13 = sub_1BE052434();

    return v13;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();

      (*(v8 + 8))(v10, v7);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BD1E62A8()
{
  v1 = [v0 explanationView];
  if (!v1)
  {
    return;
  }

  v24 = v1;
  v2 = [v1 dockView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 footerView];

  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = [v4 skipCardButton];

  if (v5)
  {
    v6 = sub_1BE052404();
    [v5 setTitle:v6 forState:0];

    [v5 pkui:1 updateConfigurationShowingActivityIndicator:?];
    [v5 addTarget:v0 action:sel_skipCardButtonPressed forControlEvents:0x2000];
    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      v9 = [*&v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_credential] configuration];
      if (v9)
      {
        v10 = v9;
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = v24;
        v12[4] = v5;
        aBlock[4] = sub_1BD1E83E0;
        v26 = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD1E74A8;
        aBlock[3] = &block_descriptor_22;
        v13 = _Block_copy(aBlock);
        v14 = v26;
        v15 = v24;
        v16 = v5;
        v14, v17, v18, v19, v20, v21, v22, v23;
        [v8 canAddCarKeyPassWithConfiguration:v10 completion:v13];
        _Block_release(v13);

        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1BD1E6600(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v129 = &v125 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v130 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    goto LABEL_86;
  }

  v20 = Strong;
  if (!a2)
  {

LABEL_86:
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v113 = sub_1BE052D54();
    v114 = swift_allocObject();
    *(v114 + 16) = a5;
    v138 = sub_1BD1E83EC;
    v139 = v114;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1BD126964;
    v137 = &block_descriptor_10_0;
    v115 = _Block_copy(&aBlock);
    v116 = v139;
    v117 = a5;
    v116, v118, v119, v120, v121, v122, v123, v124;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v12, v115);
    _Block_release(v115);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return;
  }

  v21 = a2;
  v22 = [v21 associatedApplicationIdentifiers];
  if (!v22)
  {

    goto LABEL_86;
  }

  v127 = v20;
  v128 = v21;
  v126 = a5;
  v23 = v22;
  v24 = sub_1BE052744();

  v32 = v24[2];
  if (!v32)
  {

    v24, v106, v107, v108, v109, v110, v111, v112;
    a5 = v126;
    goto LABEL_86;
  }

  v33 = 0;
  v133 = MEMORY[0x1E69E7CC0];
  v131 = &aBlock + 1;
  while (v33 != v32)
  {
    if (v33 >= v24[2])
    {
      __break(1u);
LABEL_89:
      sub_1BE048C84();
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      return;
    }

    v34 = &v24[2 * v33 + 4];
    v36 = *v34;
    v35 = v34[1];
    v37 = HIBYTE(v35) & 0xF;
    v38 = v36 & 0xFFFFFFFFFFFFLL;
    if ((v35 & 0x2000000000000000) != 0)
    {
      v39 = HIBYTE(v35) & 0xF;
    }

    else
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (!v39)
    {
      goto LABEL_89;
    }

    if ((v35 & 0x1000000000000000) == 0)
    {
      if ((v35 & 0x2000000000000000) != 0)
      {
        aBlock = v36;
        v135 = v35 & 0xFFFFFFFFFFFFFFLL;
        if (v36 == 43)
        {
          if (!v37)
          {
            goto LABEL_91;
          }

          if (--v37)
          {
            v42 = 0;
            v50 = v131;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              if (!is_mul_ok(v42, 0xAuLL))
              {
                break;
              }

              v45 = __CFADD__(10 * v42, v51);
              v42 = 10 * v42 + v51;
              if (v45)
              {
                break;
              }

              ++v50;
              if (!--v37)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v36 == 45)
        {
          if (!v37)
          {
            goto LABEL_93;
          }

          if (--v37)
          {
            v42 = 0;
            v46 = v131;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              if (!is_mul_ok(v42, 0xAuLL))
              {
                break;
              }

              v45 = 10 * v42 >= v47;
              v42 = 10 * v42 - v47;
              if (!v45)
              {
                break;
              }

              ++v46;
              if (!--v37)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v37)
        {
          v42 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v54 = *p_aBlock - 48;
            if (v54 > 9)
            {
              break;
            }

            if (!is_mul_ok(v42, 0xAuLL))
            {
              break;
            }

            v45 = __CFADD__(10 * v42, v54);
            v42 = 10 * v42 + v54;
            if (v45)
            {
              break;
            }

            p_aBlock = (p_aBlock + 1);
            if (!--v37)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if ((v36 & 0x1000000000000000) != 0)
        {
          v40 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v40 = sub_1BE0538B4();
        }

        v41 = *v40;
        if (v41 == 43)
        {
          if (v38 < 1)
          {
            goto LABEL_92;
          }

          v37 = v38 - 1;
          if (v38 != 1)
          {
            v42 = 0;
            if (!v40)
            {
              goto LABEL_62;
            }

            v48 = v40 + 1;
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                break;
              }

              if (!is_mul_ok(v42, 0xAuLL))
              {
                break;
              }

              v45 = __CFADD__(10 * v42, v49);
              v42 = 10 * v42 + v49;
              if (v45)
              {
                break;
              }

              ++v48;
              if (!--v37)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v41 == 45)
        {
          if (v38 < 1)
          {
            goto LABEL_94;
          }

          v37 = v38 - 1;
          if (v38 != 1)
          {
            v42 = 0;
            if (v40)
            {
              v43 = v40 + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  goto LABEL_70;
                }

                if (!is_mul_ok(v42, 0xAuLL))
                {
                  goto LABEL_70;
                }

                v45 = 10 * v42 >= v44;
                v42 = 10 * v42 - v44;
                if (!v45)
                {
                  goto LABEL_70;
                }

                ++v43;
                if (!--v37)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_62:
            LOBYTE(v37) = 0;
LABEL_71:
            v132 = v37;
            v55 = v37;
            sub_1BE048C84();
            if (v55)
            {
              goto LABEL_90;
            }

            goto LABEL_72;
          }
        }

        else
        {
          if (!v38)
          {
            goto LABEL_70;
          }

          v42 = 0;
          if (!v40)
          {
            goto LABEL_62;
          }

          while (1)
          {
            v52 = *v40 - 48;
            if (v52 > 9)
            {
              break;
            }

            if (!is_mul_ok(v42, 0xAuLL))
            {
              break;
            }

            v45 = __CFADD__(10 * v42, v52);
            v42 = 10 * v42 + v52;
            if (v45)
            {
              break;
            }

            ++v40;
            if (!--v38)
            {
              goto LABEL_62;
            }
          }
        }
      }

LABEL_70:
      v42 = 0;
      LOBYTE(v37) = 1;
      goto LABEL_71;
    }

    swift_bridgeObjectRetain_n();
    sub_1BD1E78BC(v36, v35, 10);
    v42 = v64;
    v66 = v65;
    v35, v65, v67, v68, v69, v70, v71, v72;
    if (v66)
    {
      goto LABEL_90;
    }

LABEL_72:
    ++v33;
    v56 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v35, v57, v58, v59, v60, v61, v62, v63;
    if (v56)
    {
      MEMORY[0x1BFB3F7A0]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      v130 = v133;
    }
  }

  v24, v25, v26, v27, v28, v29, v30, v31;
  v73 = sub_1BE04AA64();
  v74 = *(v73 - 8);
  v75 = v129;
  (*(v74 + 56))(v129, 1, 1, v73);
  sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
  v76 = v130;
  v77 = sub_1BE052724();
  v76, v78, v79, v80, v81, v82, v83, v84;
  v85 = 0;
  if ((*(v74 + 48))(v75, 1, v73) != 1)
  {
    v85 = sub_1BE04A9C4();
    (*(v74 + 8))(v75, v73);
  }

  v86 = [objc_allocWithZone(PKLinkedApplication) initWithStoreIDs:v77 defaultLaunchURL:v85];

  v87 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication;
  v88 = v127;
  v89 = *&v127[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication];
  *&v127[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication] = v86;

  v90 = *&v88[v87];
  if (v90)
  {
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    v93 = v126;
    v92[2] = v91;
    v92[3] = v93;
    v92[4] = a6;
    v138 = sub_1BD1E843C;
    v139 = v92;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1BD126964;
    v137 = &block_descriptor_19_0;
    v94 = _Block_copy(&aBlock);
    v95 = v139;
    v96 = v90;
    v97 = v93;
    v98 = a6;
    v95, v99, v100, v101, v102, v103, v104, v105;
    [v96 reloadApplicationStateIfNecessaryWithCompletion_];

    _Block_release(v94);
  }

  else
  {
  }
}

void sub_1BD1E6F84(void *a1)
{
  v1 = [a1 dockView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 footerView];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v3 setSkipCardButton_];
}

void sub_1BD1E7018(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v13 = Strong;
  if ([Strong state] != 1)
  {

LABEL_12:
    v37 = [a2 dockView];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 footerView];

      if (v39)
      {
        [v39 setSkipCardButton_];
LABEL_23:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v14 = [a2 dockView];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v14 primaryButton];

  if (!v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v73 = a3;
  v74 = a2;
  v17 = *(v6 + 104);
  v72 = *MEMORY[0x1E69B8038];
  v71 = v17;
  v17(v11);
  v18 = PKPassKitBundle();
  if (!v18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = v18;
  sub_1BE04B6F4();
  v21 = v20;

  v69 = *(v6 + 8);
  v70 = v6 + 8;
  v69(v11, v5);
  v22 = sub_1BE052404();
  v21, v23, v24, v25, v26, v27, v28, v29;
  [v16 setTitle:v22 forStates:0];

  if ([v13 isInstalled])
  {
    v30 = "CAR_KEY_GET_PARTNER_APP_ACTION";
  }

  else
  {
    v30 = "CAR_KEY_ENTER_CODE_ACTION";
  }

  v71(v8, v72, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BE0B69E0;
  v32 = [v13 displayName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052434();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1BD110550();
  v40 = 0x72656E74726150;
  if (v36)
  {
    v40 = v34;
  }

  v41 = 0xE700000000000000;
  if (v36)
  {
    v41 = v36;
  }

  *(v31 + 32) = v40;
  *(v31 + 40) = v41;
  sub_1BE04B714();
  v43 = v42;
  v31, v42, v44, v45, v46, v47, v48, v49;
  v69(v8, v5);
  v50 = v73;
  [v73 pkui:0 updateConfigurationShowingActivityIndicator:?];
  v51 = sub_1BE052404();
  [v50 setTitle:v51 forState:0];

  v52 = [v74 dockView];
  if (!v52)
  {
    goto LABEL_29;
  }

  v53 = v52;
  v39 = [v52 footerView];

  if (v39)
  {
    v43, v54, v55, v56, v57, v58, v59, v60;
    (v30 | 0x8000000000000000), v61, v62, v63, v64, v65, v66, v67;
    [v39 setNeedsLayout];

    goto LABEL_23;
  }

LABEL_30:
  __break(1u);
}

void sub_1BD1E74A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v17 = a3;
  v9 = a4;
  v8(a2, a3, a4);
  v7, v10, v11, v12, v13, v14, v15, v16;
}

void sub_1BD1E753C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication);
  if (v2)
  {
    v3 = v2;
    if ([v3 state] == 1)
    {
      [v3 openApplication:0 withLaunchOptions:1];
    }
  }
}

void *sub_1BD1E7848(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF90, &qword_1BE0B9608);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1BD1E78BC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v86 = a1;
  v87 = a2;
  sub_1BE048C84();
  v4 = sub_1BE052644();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v45 = v5;
    v12 = sub_1BD1E7E40(v4, v5);
    v47 = v46;
    v45, v46, v48, v49, v50, v51, v52, v53;
    v5 = v47;
    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = v5;
      v13 = sub_1BE0538B4();
      v14 = v85;
      v5 = v84;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v27 = v14 - 1;
        if (v27)
        {
          v28 = a3 + 48;
          v29 = a3 + 55;
          v30 = a3 + 87;
          if (a3 > 10)
          {
            v28 = 58;
          }

          else
          {
            v30 = 97;
            v29 = 65;
          }

          if (v13)
          {
            v31 = 0;
            v32 = v13 + 1;
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v28)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  if (v33 < 0x61 || v33 >= v30)
                  {
                    goto LABEL_127;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              if (is_mul_ok(v31, a3))
              {
                v35 = v31 * a3;
                v36 = v33 + v34;
                v26 = __CFADD__(v35, v36);
                v31 = v35 + v36;
                if (!v26)
                {
                  ++v32;
                  if (--v27)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v13)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v13;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_127;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if (is_mul_ok(v40, a3))
            {
              v43 = v40 * a3;
              v44 = v41 + v42;
              v26 = __CFADD__(v43, v44);
              v40 = v43 + v44;
              if (!v26)
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            if (is_mul_ok(v20, a3))
            {
              v24 = v20 * a3;
              v25 = v22 + v23;
              v26 = v24 >= v25;
              v20 = v24 - v25;
              if (v26)
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v54 = HIBYTE(v5) & 0xF;
  v86 = v12;
  v87 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v54)
      {
        v75 = 0;
        v76 = a3 + 48;
        v77 = a3 + 55;
        v78 = a3 + 87;
        if (a3 > 10)
        {
          v76 = 58;
        }

        else
        {
          v78 = 97;
          v77 = 65;
        }

        v79 = &v86;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v76)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              if (v80 < 0x61 || v80 >= v78)
              {
                goto LABEL_127;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          if (is_mul_ok(v75, a3))
          {
            v82 = v75 * a3;
            v83 = v80 + v81;
            v26 = __CFADD__(v82, v83);
            v75 = v82 + v83;
            if (!v26)
            {
              v79 = (v79 + 1);
              if (--v54)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v54)
    {
      v55 = v54 - 1;
      if (v55)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v86 + 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          if (is_mul_ok(v56, a3))
          {
            v63 = v56 * a3;
            v64 = v61 + v62;
            v26 = v63 >= v64;
            v56 = v63 - v64;
            if (v26)
            {
              ++v60;
              if (--v55)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v54)
  {
    v65 = v54 - 1;
    if (v65)
    {
      v66 = 0;
      v67 = a3 + 48;
      v68 = a3 + 55;
      v69 = a3 + 87;
      if (a3 > 10)
      {
        v67 = 58;
      }

      else
      {
        v69 = 97;
        v68 = 65;
      }

      v70 = &v86 + 1;
      while (1)
      {
        v71 = *v70;
        if (v71 < 0x30 || v71 >= v67)
        {
          if (v71 < 0x41 || v71 >= v68)
          {
            if (v71 < 0x61 || v71 >= v69)
            {
              goto LABEL_127;
            }

            v72 = -87;
          }

          else
          {
            v72 = -55;
          }
        }

        else
        {
          v72 = -48;
        }

        if (is_mul_ok(v66, a3))
        {
          v73 = v66 * a3;
          v74 = v71 + v72;
          v26 = __CFADD__(v73, v74);
          v66 = v73 + v74;
          if (!v26)
          {
            ++v70;
            if (--v65)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_1BD1E7E40(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BE052654();
  v4 = v3;
  v7 = sub_1BD1E7EC0(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1BD1E7EC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v29[0] = a3;
      v29[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BE052514();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1BE0534D4();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1BD1E7848(v9, 0);
  v12 = sub_1BD1E8018(v29, (v11 + 4), v10, a1, a2, a3, a4);
  v13 = v29[3];
  sub_1BE048C84();
  v13, v14, v15, v16, v17, v18, v19, v20;
  if (v12 == v10)
  {
LABEL_13:
    v21 = sub_1BE052514();
    v11, v22, v23, v24, v25, v26, v27, v28;
    return v21;
  }

  __break(1u);
LABEL_11:
  sub_1BE0538B4();
LABEL_4:

  return sub_1BE052514();
}

unint64_t sub_1BD1E8018(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BD65DD34(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BE0525E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BE0538B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BD65DD34(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BE0525B4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BD1E8238()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(Strong, &off_1F3B9BBC8, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD1E82EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    memset(v7, 0, sizeof(v7));
    v8 = 2;
    sub_1BD865A00(Strong, &off_1F3B9BBC8, v7, ObjectType, v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v7);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_3Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t AccountAutomaticPayments.Step.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

unint64_t sub_1BD1E850C()
{
  result = qword_1EBD3CFA0;
  if (!qword_1EBD3CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CFA0);
  }

  return result;
}

unint64_t sub_1BD1E8594()
{
  result = qword_1EBD3CFA8;
  if (!qword_1EBD3CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CFB0, qword_1BE0C0848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CFA8);
  }

  return result;
}

unint64_t sub_1BD1E860C()
{
  result = qword_1EBD3CFB8[0];
  if (!qword_1EBD3CFB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD3CFB8);
  }

  return result;
}

void sub_1BD1E867C(uint64_t a1)
{
  sub_1BD127BD0(319, &qword_1EBD3D040, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BD127BD0(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD1E8784(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1BD1E88FC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
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
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((((((((((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

double sub_1BD1E8B54(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516A4();
  return v2;
}

double sub_1BD1E8BB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516C4();
  return v2;
}

double sub_1BD1E8C18(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516A4();
  return v2;
}

double sub_1BD1E8C78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516C4();
  return v2;
}

uint64_t sub_1BD1E8CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D048, &qword_1BE0C0970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050, &unk_1BE0C0978);
  v3 = *(a1 + 16);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051874();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = sub_1BE04EBD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  sub_1BE051CE4();
  v14 = *(a1 + 24);
  v42 = v3;
  v43 = v14;
  v44 = v40;
  sub_1BE051864();
  v15 = sub_1BD1E8BB4(a1);
  v17 = v16;
  v19 = v18;
  v47[0] = v16;
  v47[1] = v18;
  *&v47[2] = v15;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB3E0D0](v47, v4, &type metadata for WidthGetter, WitnessTable);
  v19, v21, v22, v23, v24, v25, v26, v27;
  v17, v28, v29, v30, v31, v32, v33, v34;
  (*(v39 + 8))(v6, v4);
  v35 = sub_1BD1E9CCC();
  v45 = WitnessTable;
  v46 = v35;
  swift_getWitnessTable();
  sub_1BD147308();
  v36 = *(v8 + 8);
  v36(v10, v7);
  sub_1BD147308();
  return (v36)(v13, v7);
}

uint64_t sub_1BD1E9060@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050, &unk_1BE0C0978);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  v48 = sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1BE051874();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D048, &qword_1BE0C0970);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = a1[5];
  v19 = *(sub_1BE04EDE4() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1BE04F684();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  *v17 = v18;
  *(v17 + 1) = v18;
  LOBYTE(v20) = sub_1BE0501C4();
  v23 = type metadata accessor for AccountPromotionProgressView(0, a2, a3, v22);
  sub_1BD1E8C18(v23);
  sub_1BE04E1F4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D060, &qword_1BE0C0988) + 36)];
  *v32 = v20;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = a1[3];
  KeyPath = swift_getKeyPath();
  v35 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D068, &unk_1BE0C09C0) + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v36 = &v17[*(v12 + 36)];
  v37 = v59;
  *v36 = v58;
  *(v36 + 1) = v37;
  *(v36 + 2) = v60;
  sub_1BE051CF4();
  v51 = a2;
  v52 = a3;
  v53 = a1;
  sub_1BE051864();
  v38 = swift_getWitnessTable();
  v39 = v46;
  sub_1BD147308();
  v40 = v49;
  v41 = *(v49 + 8);
  v41(v9, v7);
  v44 = v14;
  sub_1BD0DE19C(v17, v14, &qword_1EBD3D048, &qword_1BE0C0970);
  v57[0] = v14;
  (*(v40 + 16))(v9, v39, v7);
  v57[1] = v9;
  v56[0] = v45;
  v56[1] = v7;
  v54 = sub_1BD1EA010();
  v55 = v38;
  sub_1BD13A4C4(v57, 2uLL, v56);
  v41(v39, v7);
  sub_1BD0DE53C(v17, &qword_1EBD3D048, &qword_1BE0C0970);
  v41(v9, v7);
  return sub_1BD0DE53C(v44, &qword_1EBD3D048, &qword_1BE0C0970);
}

uint64_t sub_1BD1E9528@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v92 = a4;
  v87 = a2;
  v5 = sub_1BE04EBD4();
  v89 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v82 - v8;
  v9 = sub_1BE04EDE4();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D090, &qword_1BE0C09D0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D098, &qword_1BE0C09D8);
  MEMORY[0x1EEE9AC00](v82);
  v17 = &v82 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0A0, &qword_1BE0C09E0);
  MEMORY[0x1EEE9AC00](v83);
  v19 = &v82 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D050, &unk_1BE0C0978);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v82 - v25;
  v26 = a1[5];
  v27 = *(v10 + 28);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1BE04F684();
  (*(*(v29 - 8) + 104))(&v12[v27], v28, v29);
  *v12 = v26;
  *(v12 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0A8, &qword_1BE0C09E8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BE0B6CA0;
  v31 = a1[2];
  *(v30 + 32) = a1[1];
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = sub_1BE048964();
  }

  *(v30 + 40) = v32;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051EB4();
  sub_1BE051EC4();
  MEMORY[0x1BFB3EBB0](v30);
  sub_1BE04E874();
  sub_1BD1E4AAC(v12, v15);
  v33 = &v15[*(v13 + 52)];
  v34 = v100;
  *v33 = v99;
  *(v33 + 1) = v34;
  *(v33 + 4) = v101;
  *&v15[*(v13 + 56)] = 256;
  v35 = v87;
  v36 = v88;
  v38 = type metadata accessor for AccountPromotionProgressView(0, v87, v88, v37);
  sub_1BD1E8B54(v38);
  sub_1BD1E8C18(v38);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v15, v17, &qword_1EBD3D090, &qword_1BE0C09D0);
  v39 = &v17[*(v82 + 36)];
  v40 = v103;
  *v39 = v102;
  *(v39 + 1) = v40;
  *(v39 + 2) = v104;
  v41 = sub_1BE0501C4();
  sub_1BD1E8C18(v38);
  sub_1BE04E1F4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1BD0DE204(v17, v19, &qword_1EBD3D098, &qword_1BE0C09D8);
  v50 = &v19[*(v83 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v19, v23, &qword_1EBD3D0A0, &qword_1BE0C09E0);
  v51 = v84;
  v52 = &v23[*(v84 + 36)];
  v53 = v106;
  *v52 = v105;
  *(v52 + 1) = v53;
  *(v52 + 2) = v107;
  v54 = v85;
  sub_1BD0DE204(v23, v85, &qword_1EBD3D050, &unk_1BE0C0978);
  v55 = sub_1BD1E8C78(v38);
  v57 = v56;
  v59 = v58;
  v96 = v56;
  v97 = v58;
  v98 = v55;
  v60 = v91;
  MEMORY[0x1BFB3E0D0](&v96, v35, &type metadata for WidthGetter, v36);
  v59, v61, v62, v63, v64, v65, v66, v67;
  v57, v68, v69, v70, v71, v72, v73, v74;
  v75 = sub_1BD1E9CCC();
  v95[2] = v36;
  v95[3] = v75;
  WitnessTable = swift_getWitnessTable();
  v77 = v90;
  sub_1BD147308();
  v78 = v89;
  v79 = *(v89 + 8);
  v79(v60, v5);
  v80 = v86;
  sub_1BD0DE19C(v54, v86, &qword_1EBD3D050, &unk_1BE0C0978);
  v96 = v80;
  (*(v78 + 16))(v60, v77, v5);
  v97 = v60;
  v95[0] = v51;
  v95[1] = v5;
  v93 = sub_1BD1EA238();
  v94 = WitnessTable;
  sub_1BD13A4C4(&v96, 2uLL, v95);
  v79(v77, v5);
  sub_1BD0DE53C(v54, &qword_1EBD3D050, &unk_1BE0C0978);
  v79(v60, v5);
  return sub_1BD0DE53C(v80, &qword_1EBD3D050, &unk_1BE0C0978);
}

unint64_t sub_1BD1E9CCC()
{
  result = qword_1EBD3D058;
  if (!qword_1EBD3D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D058);
  }

  return result;
}

uint64_t sub_1BD1E9D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1BE04E6A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1BE051404();
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a5;
  (*(v11 + 32))(v15 + v14, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *a4 = v13;
  a4[1] = sub_1BD1EA440;
  a4[2] = v15;
  a4[3] = 0;
  a4[4] = 0;
  sub_1BE048964();
  return sub_1BE048964();
}

uint64_t sub_1BD1E9E90(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BE04E684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8, &qword_1BE0BE5D8);
  return sub_1BE0518F4();
}

uint64_t sub_1BD1E9F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = swift_allocObject();
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v7;
  sub_1BE048964();
  sub_1BE048964();
  v9 = sub_1BE051CD4();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0D0, &qword_1BE0C0A78);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0D8, &unk_1BE0C0A80);
  v14 = (a2 + *(result + 36));
  *v14 = sub_1BD1EA434;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v11;
  return result;
}

unint64_t sub_1BD1EA010()
{
  result = qword_1EBD3D070;
  if (!qword_1EBD3D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D048, &qword_1BE0C0970);
    sub_1BD1EA09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D070);
  }

  return result;
}

unint64_t sub_1BD1EA09C()
{
  result = qword_1EBD3D078;
  if (!qword_1EBD3D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D068, &unk_1BE0C09C0);
    sub_1BD1EA154();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D078);
  }

  return result;
}

unint64_t sub_1BD1EA154()
{
  result = qword_1EBD3D080;
  if (!qword_1EBD3D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D060, &qword_1BE0C0988);
    sub_1BD1EA1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D080);
  }

  return result;
}

unint64_t sub_1BD1EA1E0()
{
  result = qword_1EBD3D088;
  if (!qword_1EBD3D088)
  {
    sub_1BE04EDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D088);
  }

  return result;
}

unint64_t sub_1BD1EA238()
{
  result = qword_1EBD3D0B0;
  if (!qword_1EBD3D0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050, &unk_1BE0C0978);
    sub_1BD1EA2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0B0);
  }

  return result;
}

unint64_t sub_1BD1EA2C4()
{
  result = qword_1EBD3D0B8;
  if (!qword_1EBD3D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D0A0, &qword_1BE0C09E0);
    sub_1BD1EA350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0B8);
  }

  return result;
}

unint64_t sub_1BD1EA350()
{
  result = qword_1EBD3D0C0;
  if (!qword_1EBD3D0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D098, &qword_1BE0C09D8);
    sub_1BD0DE4F4(&qword_1EBD3D0C8, &qword_1EBD3D090, &qword_1BE0C09D0, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0C0);
  }

  return result;
}

uint64_t sub_1BD1EA440()
{
  sub_1BE04E6A4();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  return sub_1BD1E9E90(v1, v2, v3);
}

unint64_t sub_1BD1EA4A8()
{
  result = qword_1EBD3D0E0;
  if (!qword_1EBD3D0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D0D8, &unk_1BE0C0A80);
    sub_1BD0DE4F4(&qword_1EBD3D0E8, &qword_1EBD3D0D0, &qword_1BE0C0A78, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD3D0F0, &qword_1EBD3D0F8, &unk_1BE0C0A90, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0E0);
  }

  return result;
}

id FlightShareMessageBubbleView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *FlightShareMessageBubbleView.init()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v94 = &v87 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v87 - v4;
  v5 = sub_1BE053204();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE053104();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE053274();
  v99 = *(v10 - 8);
  v100 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BE04A604();
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v87 - v16;
  v17 = sub_1BE04BD74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_properties] = 0;
  *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_model] = 0;
  *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_progressView] = 0;
  v21 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle;
  *&v0[v21] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v22 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle;
  *&v0[v22] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v23 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripe;
  *&v0[v23] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v24 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle;
  *&v0[v24] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v25 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle;
  *&v0[v25] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v26 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle;
  *&v0[v26] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v27 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle;
  *&v0[v27] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v28 = OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo;
  *&v0[v28] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v29 = OBJC_IVAR___PKFlightShareMessageBubbleView_flightStatus;
  *&v0[v29] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v30 = OBJC_IVAR___PKFlightShareMessageBubbleView_followButton;
  *&v0[v30] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v31 = &v0[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  v32 = *(MEMORY[0x1E69DDCE0] + 16);
  *v31 = *MEMORY[0x1E69DDCE0];
  *(v31 + 1) = v32;
  v102.receiver = v0;
  v102.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v102, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 blackColor];
  [v35 setBackgroundColor_];

  [v35 addSubview_];
  [v35 addSubview_];
  (*(v18 + 104))(v20, *MEMORY[0x1E69B80C0], v17);
  result = PKPassKitBundle();
  if (result)
  {
    v38 = result;
    sub_1BE04B6F4();

    (*(v18 + 8))(v20, v17);
    v39 = v96;
    sub_1BE04A5F4();
    v40 = *MEMORY[0x1E69DDC90];
    v101 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB980]);
    sub_1BD1EB2D0();
    sub_1BE04A614();
    v101 = sub_1BE051424();
    sub_1BD1C80F8();
    sub_1BE04A614();
    sub_1BE0531B4();
    (*(v87 + 104))(v9, *MEMORY[0x1E69DC508], v88);
    sub_1BE053124();
    (*(v91 + 104))(v90, *MEMORY[0x1E69DC568], v92);
    sub_1BE0530F4();
    v41 = [v34 blackColor];
    sub_1BE0531D4();
    v42 = [v34 whiteColor];
    sub_1BE0531E4();
    (*(v97 + 16))(v89, v39, v98);
    v43 = v93;
    sub_1BE04A5C4();
    v44 = sub_1BE04A5B4();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    sub_1BE0531A4();
    sub_1BE053154();
    sub_1BE053154();
    sub_1BE053164();
    v45 = OBJC_IVAR___PKFlightShareMessageBubbleView_followButton;
    v46 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_followButton];
    v48 = v99;
    v47 = v100;
    v49 = v94;
    (*(v99 + 16))(v94, v12, v100);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = v46;
    sub_1BE0532A4();

    [*&v35[v45] addTarget:v35 action:sel_followTapped forControlEvents:64];
    [v35 addSubview_];
    [v35 addSubview_];
    v51 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle;
    v52 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle];
    v53 = [v34 whiteColor];
    [v52 setTextColor_];

    v54 = *MEMORY[0x1E69DDD08];
    v55 = *&v35[v51];
    v56 = PKFontForDefaultDesign(v54, v40, 32770, 0);
    [v55 setFont_];

    v57 = *&v35[v51];
    ObjectType = v12;
    [v57 setLineBreakMode_];
    [v35 addSubview_];
    v58 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle;
    v59 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle];
    v60 = [v34 whiteColor];
    [v59 setTextColor_];

    v61 = *&v35[v58];
    v62 = PKFontForDefaultDesign(v54, v40, 0x8000, 0);
    [v61 setFont_];

    [*&v35[v58] setLineBreakMode_];
    [v35 addSubview_];
    v63 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle;
    v64 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle];
    v65 = [v34 whiteColor];
    [v64 setTextColor_];

    v66 = *&v35[v63];
    v94 = *MEMORY[0x1E69DDD10];
    v67 = v94;
    v68 = v66;
    v69 = PKFontForDefaultDesign(v67, v40, 32770, 0);
    [v68 setFont_];

    [*&v35[v63] setLineBreakMode_];
    [v35 addSubview_];
    v70 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle;
    v71 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle];
    v72 = [v34 whiteColor];
    [v71 setTextColor_];

    v73 = *MEMORY[0x1E69DDDC0];
    v74 = *MEMORY[0x1E69DB960];
    v75 = *&v35[v70];
    v76 = PKFontForDefaultDesign(v73, v40, v74);
    [v75 setFont_];

    [v35 &selRef:*&v35[v70] analyticsEventReportWithPreSelect:?];
    v77 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle;
    v78 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle];
    v79 = [v34 whiteColor];
    [v78 setTextColor_];

    v80 = *&v35[v77];
    v81 = PKFontForDefaultDesign(v73, v40, v74);
    [v80 setFont_];

    [v35 &selRef:*&v35[v77] analyticsEventReportWithPreSelect:?];
    v82 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle;
    v83 = *&v35[OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle];
    v84 = [v34 whiteColor];
    [v83 setTextColor_];

    v85 = *&v35[v82];
    v86 = PKFontForDefaultDesign(v94, v40, 32770, 0);
    [v85 setFont_];

    [*&v35[v82] setLineBreakMode_];
    [v35 &selRef:*&v35[v82] analyticsEventReportWithPreSelect:?];

    (*(v99 + 8))(ObjectType, v100);
    (*(v97 + 8))(v96, v98);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1EB2D0()
{
  result = qword_1EBD4AA00;
  if (!qword_1EBD4AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AA00);
  }

  return result;
}

CGSize __swiftcall FlightShareMessageBubbleView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = [objc_opt_self() defaultMetrics];
  [v2 scaledValueForValue_];
  v4 = v3;

  v5 = width;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

Swift::Void __swiftcall FlightShareMessageBubbleView.updateView(properties:)(PKFlightSharingMessageExtensionViewProperties *properties)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v225 = *(v4 - 8);
  v226 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v223 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlightWidgetProgressView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v213 - v10;
  v12 = sub_1BE04C004();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178, &unk_1BE0C0AC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v213 - v16;
  v18 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_properties];
  *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_properties] = properties;

  v19 = properties;
  v20 = [(PKFlightSharingMessageExtensionViewProperties *)v19 flight];
  *&v230 = 0;
  v21 = type metadata accessor for BoardingPassAttributes(0);
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v222 = v20;
  sub_1BE04BF74();
  type metadata accessor for FlightWidgetViewModel(0);
  swift_allocObject();
  v22 = FlightWidgetViewModel.init(perspective:boardingPassAttributes:contentState:)(&v230, v17, v14);
  v23 = OBJC_IVAR___PKFlightShareMessageBubbleView_model;
  v24 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_model];
  *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_model] = v22;
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD1EC018();
  v32 = OBJC_IVAR___PKFlightShareMessageBubbleView_progressView;
  v33 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_progressView];
  if (v33)
  {
    v34 = [v33 view];
    if (!v34)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v35 = v34;
    [v34 removeFromSuperview];
  }

  v224 = v23;
  v36 = *&v2[v23];
  if (!v36)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v230) = 4;
  v37 = sub_1BE048964();
  static FlightWidgetProgressContent.createContent(viewModel:context:)(v37, &v230, v228);
  v36, v38, v39, v40, v41, v42, v43, v44;
  v242 = v228[12];
  v243 = v228[13];
  v244 = v228[14];
  v245 = v229;
  v238 = v228[8];
  v239 = v228[9];
  v240 = v228[10];
  v241 = v228[11];
  v234 = v228[4];
  v235 = v228[5];
  v236 = v228[6];
  v237 = v228[7];
  v230 = v228[0];
  v231 = v228[1];
  v232 = v228[2];
  v233 = v228[3];
  if (get_enum_tag_for_layout_string_13PaymentUIBase16ClientViewSource_pSg_0(&v230) != 1)
  {
    v227 = 0x403A000000000000;
    sub_1BD0DBFDC();
    sub_1BE04E524();
    *&v11[v6[6]] = 0x4044000000000000;
    v227 = 0x402A000000000000;
    sub_1BE04E524();
    *&v11[v6[8]] = 0x403E000000000000;
    v227 = 0x4044000000000000;
    sub_1BE04E524();
    v227 = 0x4046800000000000;
    sub_1BE04E524();
    *&v11[v6[11]] = 0x4059000000000000;
    v45 = v243;
    *(v11 + 12) = v242;
    *(v11 + 13) = v45;
    *(v11 + 14) = v244;
    *(v11 + 30) = v245;
    v46 = v239;
    *(v11 + 8) = v238;
    *(v11 + 9) = v46;
    v47 = v241;
    *(v11 + 10) = v240;
    *(v11 + 11) = v47;
    v48 = v235;
    *(v11 + 4) = v234;
    *(v11 + 5) = v48;
    v49 = v237;
    *(v11 + 6) = v236;
    *(v11 + 7) = v49;
    v50 = v231;
    *v11 = v230;
    *(v11 + 1) = v50;
    v51 = v233;
    *(v11 + 2) = v232;
    *(v11 + 3) = v51;
    sub_1BD1EE0A8(v11, v8);
    v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D180, &qword_1BE0C0AD0));
    v53 = sub_1BE04F894();
    v54 = *&v2[v32];
    *&v2[v32] = v53;
    v55 = v53;

    v56 = [v55 view];
    if (!v56)
    {
LABEL_35:
      __break(1u);
      return;
    }

    [v2 addSubview_];

    sub_1BD1EE10C(v11);
  }

  v57 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo];
  v58 = [(PKFlightSharingMessageExtensionViewProperties *)v19 logoImage];
  [v57 setImage_];

  v59 = *&v2[v32];
  if (!v59)
  {
    goto LABEL_30;
  }

  v60 = [v59 view];
  if (!v60)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v61 = v60;
  v62 = objc_opt_self();
  v63 = [v62 clearColor];
  [v61 setBackgroundColor_];

  v64 = [(PKFlightSharingMessageExtensionViewProperties *)v19 backgroundColor];
  if (v64 && (v65 = v64, v66 = [(PKColor *)v64 CGColor], v65, v66))
  {
    v67 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripe];
    v68 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    [v67 setBackgroundColor_];
  }

  else
  {
    v69 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripe];
    v68 = [v62 systemBlueColor];
    [v69 setBackgroundColor_];
  }

  v70 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle];
  v71 = v2;
  v72 = v222;
  v73 = [(PKFlight *)v222 airlineName];
  if (!v73)
  {
    sub_1BE052434();
    v75 = v74;
    v73 = sub_1BE052404();
    v75, v76, v77, v78, v79, v80, v81, v82;
  }

  [v70 setText_];

  v83 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle];
  v220 = "BLE_FOLLOW_BUTTON";
  v221 = v83;
  v84 = v225;
  v85 = *(v225 + 104);
  v86 = v223;
  v218 = *MEMORY[0x1E69B80C0];
  v219 = v225 + 104;
  v217 = v85;
  v85(v223);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v87 = swift_allocObject();
  v215 = xmmword_1BE0B6CA0;
  *(v87 + 16) = xmmword_1BE0B6CA0;
  v88 = [(PKFlight *)v72 airlineCode];
  v89 = sub_1BE052434();
  v91 = v90;

  v92 = v72;
  v93 = MEMORY[0x1E69E6158];
  *(v87 + 56) = MEMORY[0x1E69E6158];
  v94 = sub_1BD110550();
  *(v87 + 64) = v94;
  *(v87 + 32) = v89;
  *(v87 + 40) = v91;
  v95 = v92;
  v227 = [(PKFlight *)v92 flightNumber];
  v96 = sub_1BE053B24();
  *(v87 + 96) = v93;
  *(v87 + 104) = v94;
  v214 = v94;
  v97 = v71;
  *(v87 + 72) = v96;
  *(v87 + 80) = v98;
  sub_1BE04B714();
  v100 = v99;
  v87, v99, v101, v102, v103, v104, v105, v106;
  v107 = *(v84 + 8);
  v108 = &selRef_setRowModel_;
  v225 = v84 + 8;
  v220 = v107;
  (v107)(v86, v226);
  v109 = sub_1BE052404();
  v100, v110, v111, v112, v113, v114, v115, v116;
  [v221 setText_];

  v117 = *&v97[OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle];
  v118 = [(PKFlight *)v95 departure];
  v119 = [v118 airport];

  v120 = [v119 code];
  v121 = v95;
  if (!v120)
  {
    sub_1BE052434();
    v123 = v122;
    v120 = sub_1BE052404();
    v123, v124, v125, v126, v127, v128, v129, v130;
  }

  [v117 setText_];

  v131 = *&v97[v224];
  if (!v131)
  {
    goto LABEL_32;
  }

  v132 = *&v97[OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle];
  v133 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
  v134 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone;
  sub_1BE048964();
  sub_1BD3A9168(v131 + v133, v131 + v134);
  v136 = v135;
  v131, v135, v137, v138, v139, v140, v141, v142;
  v143 = sub_1BE052404();
  v136, v144, v145, v146, v147, v148, v149, v150;
  [v132 setText_];

  v151 = *&v97[OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle];
  v152 = [(PKFlight *)v121 arrival];
  v153 = [v152 airport];

  v154 = [v153 code];
  if (!v154)
  {
    sub_1BE052434();
    v156 = v155;
    v154 = sub_1BE052404();
    v156, v157, v158, v159, v160, v161, v162, v163;
  }

  [v151 setText_];

  v164 = *&v97[v224];
  if (!v164)
  {
    goto LABEL_33;
  }

  v165 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate;
  v166 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone;
  sub_1BE048964();
  sub_1BD3A9168(v164 + v165, v164 + v166);
  v168 = v167;
  v170 = v169;
  v164, v169, v171, v172, v173, v174, v175, v176;
  v177 = [(PKFlight *)v121 arrival];
  v178 = [v177 terminal];

  if (v178)
  {
    v179 = sub_1BE052434();
    v181 = v180;

    v189 = HIBYTE(v181) & 0xF;
    if ((v181 & 0x2000000000000000) == 0)
    {
      v189 = v179 & 0xFFFFFFFFFFFFLL;
    }

    if (v189)
    {
      v190 = v223;
      v191 = v226;
      v217(v223, v218, v226);
      v192 = swift_allocObject();
      *(v192 + 16) = v215;
      v193 = MEMORY[0x1E69E6158];
      v194 = v214;
      *(v192 + 56) = MEMORY[0x1E69E6158];
      *(v192 + 64) = v194;
      *(v192 + 32) = v168;
      *(v192 + 40) = v170;
      *(v192 + 96) = v193;
      *(v192 + 104) = v194;
      *(v192 + 72) = v179;
      *(v192 + 80) = v181;
      sub_1BE04B714();
      v170 = v195;
      v192, v195, v196, v197, v198, v199, v200, v201;
      v202 = v190;
      v121 = v222;
      v203 = v191;
      v108 = &selRef_setRowModel_;
      (v220)(v202, v203);
    }

    else
    {
      v181, v182, v183, v184, v185, v186, v187, v188;
    }
  }

  v204 = *&v97[OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle];
  v205 = sub_1BE052404();
  v170, v206, v207, v208, v209, v210, v211, v212;
  [v204 v108[372]];

  [v97 setNeedsLayout];
}

id sub_1BD1EC018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1BE053204();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BE053104();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BE053274();
  v12 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04A604();
  v37 = *(v15 - 8);
  v38 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v41 = v0;
  result = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_properties];
  if (result)
  {
    v23 = [result flight];
    v24 = [v23 departure];

    v25 = [v24 status];
    result = sub_1BD1EE44C(v25);
    if (v26)
    {
      v33 = result;
      sub_1BE04A5F4();
      v42 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
      sub_1BD1EB2D0();
      sub_1BE04A614();
      v42 = sub_1BE051424();
      sub_1BD1C80F8();
      sub_1BE04A614();
      sub_1BE0531B4();
      (*(v9 + 104))(v11, *MEMORY[0x1E69DC508], v34);
      sub_1BE053124();
      (*(v35 + 104))(v8, *MEMORY[0x1E69DC568], v36);
      sub_1BE0530F4();
      v28 = v37;
      v27 = v38;
      (*(v37 + 16))(v17, v21, v38);
      sub_1BE04A5C4();
      v29 = sub_1BE04A5B4();
      (*(*(v29 - 8) + 56))(v5, 0, 1, v29);
      sub_1BE0531A4();
      sub_1BE053154();
      sub_1BE053154();
      sub_1BE053164();
      v31 = v40;
      v30 = v41;
      v32 = v39;
      (*(v12 + 16))(v40, v14, v39);
      (*(v12 + 56))(v31, 0, 1, v32);
      sub_1BE0532A4();
      [v30 setNeedsLayout];
      (*(v12 + 8))(v14, v32);
      return (*(v28 + 8))(v21, v27);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall FlightShareMessageBubbleView.layoutSubviews()()
{
  v337 = *MEMORY[0x1E69E9840];
  v336.receiver = v0;
  v336.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v336, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  swift_beginAccess();
  PKEdgeInsetsMake();
  v12 = PKEdgeInsetsInsetRectTm(v2, v4, v6, v8, v10, v11);
  v317 = v13;
  v322 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle];
  [v18 sizeThatFits_];
  v331 = v19;
  v21 = v20;
  v22 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle];
  [v22 sizeThatFits_];
  v310 = v23;
  v25 = *&v24;
  v327 = *&v21;
  v26 = v21 + v24 + 12.0;
  v27 = v9[2] + v26;
  [v0 bounds];
  Width = CGRectGetWidth(v338);
  [v0 bounds];
  v30 = v29;
  v32 = v31;
  v34.n128_u64[0] = v33;
  v36 = v35;
  v37.n128_f64[0] = Width;
  v38.n128_f64[0] = v27;
  v39.n128_u64[0] = v30;
  v40.n128_u64[0] = v32;
  v41.n128_u64[0] = v34.n128_u64[0];
  v42.n128_u64[0] = v36;
  PKSizeAlignedInRect(0x200000001, v37, v38, v39, v40, v41, v42, v34);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  [*&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_stripe] setFrame_];
  [v0 bounds];
  v51.n128_f64[0] = CGRectGetWidth(v339);
  v52.n128_f64[0] = v26;
  v53.n128_u64[0] = v44;
  v54.n128_u64[0] = v46;
  v55.n128_u64[0] = v48;
  v56.n128_u64[0] = v50;
  PKSizeAlignedInRect(1, v51, v52, v53, v54, v55, v56, v57);
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v340.origin.y = v317;
  v340.origin.x = v322;
  v340.size.width = v15;
  v340.size.height = v17;
  CGRectDivide(v340, &slice, &remainder, v26, CGRectMaxYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  v67 = remainder.size.width;
  height = remainder.size.height;
  v68 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_followButton];
  [v68 sizeThatFits_];
  v313 = x;
  v69.n128_f64[0] = x;
  v70.n128_f64[0] = v61;
  v318 = v67;
  v71.n128_f64[0] = v67;
  v72.n128_f64[0] = v65;
  PKSizeAlignedInRect(0x100000002, v73, v74, v69, v70, v71, v72, v75);
  v77 = v76;
  v307 = v79;
  v308 = v78;
  rect = v80;
  [v68 setFrame_];
  v81 = PKEdgeInsetsInsetRectTm(v59, v61, v63, v65, 6.0, v9[1] + 14.0);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88.n128_u64[0] = v310;
  v89.n128_u64[0] = v25;
  v311 = *&v81;
  v90.n128_f64[0] = v81;
  v91.n128_u64[0] = v83;
  v92.n128_u64[0] = v85;
  v93.n128_u64[0] = v87;
  PKSizeAlignedInRect(0, v88, v89, v90, v91, v92, v93, v94);
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v309 = v77;
  if (([v68 isHidden] & 1) == 0)
  {
    v341.origin.x = v96;
    v341.origin.y = v98;
    v341.size.width = v100;
    v341.size.height = v102;
    if (v77 < CGRectGetMaxX(v341) + 10.0)
    {
      v342.origin.x = v96;
      v342.origin.y = v98;
      v342.size.width = v100;
      v342.size.height = v102;
      v305 = CGRectGetMaxX(v342) + 10.0;
      v343.origin.x = v77;
      v343.size.width = v307;
      v343.origin.y = v308;
      v343.size.height = rect;
      CGRectGetMinX(v343);
      v96 = PKEdgeInsetsInsetRectTm(v96, v98, v100, v102, 0.0, 0.0);
      v98 = v103;
      v100 = v104;
      v102 = v105;
    }
  }

  [v22 setFrame_];
  v107.n128_u64[0] = v327;
  v106.n128_u64[0] = v331;
  v108.n128_u64[0] = v311;
  v109.n128_u64[0] = v83;
  v110.n128_u64[0] = v85;
  v111.n128_u64[0] = v87;
  PKSizeAlignedInRect(0x200000000, v106, v107, v108, v109, v110, v111, v112);
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v120 = v119;
  if (([v68 isHidden] & 1) == 0)
  {
    v344.origin.x = v114;
    v344.origin.y = v116;
    v344.size.width = v118;
    v344.size.height = v120;
    if (v309 < CGRectGetMaxX(v344) + 10.0)
    {
      v345.origin.x = v114;
      v345.origin.y = v116;
      v345.size.width = v118;
      v345.size.height = v120;
      CGRectGetMaxX(v345);
      v346.origin.x = v309;
      v346.size.width = v307;
      v346.origin.y = v308;
      v346.size.height = rect;
      CGRectGetMinX(v346);
      v114 = PKEdgeInsetsInsetRectTm(v114, v116, v118, v120, 0.0, 0.0);
      v116 = v121;
      v118 = v122;
      v120 = v123;
    }
  }

  [v18 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v347.origin.x = v313;
  v347.size.height = height;
  v347.size.width = v318;
  v347.origin.y = y;
  CGRectDivide(v347, &slice, &remainder, 8.0, CGRectMaxYEdge);
  v124 = *&remainder.origin.x;
  v125 = *&remainder.origin.y;
  v126 = remainder.size.width;
  v127 = remainder.size.height;
  v128 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle];
  [v128 sizeThatFits_];
  v129.n128_u64[0] = v124;
  v130.n128_u64[0] = v125;
  v131.n128_f64[0] = v126;
  v132.n128_f64[0] = v127;
  PKSizeAlignedInRect(0x200000002, v133, v134, v129, v130, v131, v132, v135);
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v332 = v142;
  [v128 setFrame_];
  v143 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle];
  [v143 sizeThatFits_];
  v324 = *&v125;
  v328 = *&v124;
  v144.n128_u64[0] = v124;
  v145.n128_u64[0] = v125;
  v316 = v127;
  v319 = v126;
  v146.n128_f64[0] = v126;
  v147.n128_f64[0] = v127;
  PKSizeAlignedInRect(0x200000000, v148, v149, v144, v145, v146, v147, v150);
  v151 = v348.origin.x;
  v152 = v348.origin.y;
  v153 = v348.size.width;
  v154 = v348.size.height;
  if (v137 >= CGRectGetMaxX(v348) + 10.0)
  {
    v161 = v332;
  }

  else
  {
    v349.origin.x = v151;
    v349.origin.y = v152;
    v349.size.width = v153;
    v349.size.height = v154;
    v155 = CGRectGetMaxX(v349) + 10.0;
    v350.origin.x = v137;
    v350.origin.y = v332;
    v350.size.width = v139;
    v350.size.height = v141;
    v156 = (v155 - CGRectGetMinX(v350)) * 0.5;
    v151 = PKEdgeInsetsInsetRectTm(v151, v152, v153, v154, 0.0, 0.0);
    v152 = v157;
    v153 = v158;
    v154 = v159;
    v137 = PKEdgeInsetsInsetRectTm(v137, v332, v139, v141, 0.0, v156);
    v161 = v160;
    v139 = v162;
    v141 = v163;
    [v128 setFrame_];
  }

  [v143 setFrame_];
  v351.origin.x = v151;
  v351.origin.y = v152;
  v351.size.width = v153;
  v351.size.height = v154;
  v164 = CGRectGetHeight(v351);
  v352.origin.x = v137;
  v352.origin.y = v161;
  v352.size.width = v139;
  v352.size.height = v141;
  v165 = CGRectGetHeight(v352);
  v166 = CGFloatMax(v164, v165);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v353.origin.y = v324;
  v353.origin.x = v328;
  v353.size.height = v316;
  v353.size.width = v319;
  CGRectDivide(v353, &slice, &remainder, v166, CGRectMaxYEdge);
  v168 = remainder.origin.x;
  v167 = remainder.origin.y;
  v169 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle];
  size = remainder.size;
  [v169 sizeThatFits_];
  v171 = v170;
  v173 = v172;
  v174 = [v143 font];
  if (!v174)
  {
    __break(1u);
    goto LABEL_22;
  }

  v175 = v174;
  [v174 ascender];
  v177 = v176;

  v178 = [v143 font];
  if (!v178)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v179 = v178;
  [v178 capHeight];
  v181 = v180;

  v182 = [v169 font];
  if (!v182)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v183 = v182;
  v184 = v177 - v181;
  [v182 descender];
  v186 = v185;

  v187.n128_f64[0] = v173 - fabs(v186) - v184;
  v188.n128_u64[0] = v171;
  v320 = v168;
  v189.n128_f64[0] = v168;
  *&v190 = v167;
  v191.n128_f64[0] = v167;
  v192.n128_u64[0] = *&size.width;
  v193.n128_u64[0] = *&size.height;
  PKSizeAlignedInRect(0x200000000, v188, v187, v189, v191, v192, v193, v194);
  v196 = v195;
  v198 = v197;
  v200 = v199;
  v325 = v201;
  [v169 setFrame_];
  v202 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle];
  [v202 sizeThatFits_];
  v204 = v203;
  v206 = v205;
  v207 = [v128 font];
  if (!v207)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v208 = v207;
  [v207 ascender];
  v210 = v209;

  v211 = [v128 font];
  if (!v211)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v212 = v211;
  v314 = v200;
  [v211 capHeight];
  v214 = v213;

  v215 = [v202 font];
  if (!v215)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v216 = v215;
  v217 = v210 - v214;
  [v215 descender];
  v219 = v218;

  v220.n128_f64[0] = v206 - fabs(v219) - v217;
  v221.n128_u64[0] = v204;
  v222.n128_f64[0] = v320;
  v223.n128_u64[0] = v190;
  v224.n128_u64[0] = *&size.width;
  v225.n128_u64[0] = *&size.height;
  PKSizeAlignedInRect(0x200000002, v221, v220, v222, v223, v224, v225, v226);
  v228 = v227;
  v230 = v229;
  v232 = v231;
  v312 = *&v190;
  v234 = v233;
  [v202 setFrame_];
  v354.origin.x = v196;
  v354.size.width = v314;
  v354.origin.y = v198;
  v354.size.height = v325;
  v235 = CGRectGetHeight(v354);
  v355.origin.x = v228;
  v355.origin.y = v230;
  v355.size.width = v232;
  v355.size.height = v234;
  v236 = CGRectGetHeight(v355);
  v237 = CGFloatMax(v235, v236);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v356.origin.x = v320;
  v356.origin.y = v312;
  v356.size.width = size.width;
  v356.size.height = size.height;
  CGRectDivide(v356, &slice, &remainder, v237, CGRectMaxYEdge);
  v238 = *&remainder.origin.x;
  v239 = *&remainder.origin.y;
  v240 = remainder.size.width;
  v241 = remainder.size.height;
  v242 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_flightStatus];
  [v242 sizeThatFits_];
  v243.n128_u64[0] = v238;
  v321 = *&v239;
  v326 = *&v238;
  v244.n128_u64[0] = v239;
  v245.n128_f64[0] = v240;
  v246.n128_f64[0] = v241;
  PKSizeAlignedInRect(2, v247, v248, v243, v244, v245, v246, v249);
  v330 = v251;
  v333 = v250;
  v253 = v252;
  v255 = v254;
  [v242 setFrame_];
  v256 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo];
  [v256 sizeThatFits_];
  PKSizeAspectFit();
  v257.n128_u64[0] = v238;
  v258.n128_u64[0] = v239;
  v259.n128_f64[0] = v240;
  v260.n128_f64[0] = v241;
  PKSizeAlignedInRect(0, v261, v262, v257, v258, v259, v260, v263);
  v265 = v264;
  v267 = v266;
  v269 = v268;
  v271 = v270;
  [v256 setFrame_];
  v357.origin.x = v265;
  v357.origin.y = v267;
  v357.size.width = v269;
  v357.size.height = v271;
  v272 = CGRectGetHeight(v357);
  v358.origin.y = v330;
  v358.origin.x = v333;
  v358.size.width = v253;
  v358.size.height = v255;
  v273 = CGRectGetHeight(v358);
  v274 = CGFloatMax(v272, v273);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v359.origin.y = v321;
  v359.origin.x = v326;
  v359.size.width = v240;
  v359.size.height = v241;
  CGRectDivide(v359, &slice, &remainder, v274, CGRectMinYEdge);
  v360 = CGRectInset(remainder, 0.0, 10.0);
  v275 = OBJC_IVAR___PKFlightShareMessageBubbleView_progressView;
  v276 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_progressView];
  if (!v276)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v277 = v360.origin.x;
  v278 = v360.origin.y;
  v279 = v360.size.width;
  v280 = v360.size.height;
  v281 = [v276 view];
  if (!v281)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v282 = v281;
  [v281 sizeThatFits_];
  v284 = v283;
  v286 = v285;

  v287.n128_u64[0] = v284;
  v288.n128_u64[0] = v286;
  v289.n128_f64[0] = v277;
  v290.n128_f64[0] = v278;
  v291.n128_f64[0] = v279;
  v292.n128_f64[0] = v280;
  PKSizeAlignedInRect(0x200000001, v287, v288, v289, v290, v291, v292, v293);
  v298 = *&v0[v275];
  if (!v298)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v299 = v294;
  v300 = v295;
  v301 = v296;
  v302 = v297;
  v303 = [v298 view];
  if (!v303)
  {
    goto LABEL_30;
  }

  v304 = v303;
  [v303 setFrame_];
}

double FlightShareMessageBubbleView.contentInsets.getter()
{
  v1 = v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets;
  swift_beginAccess();
  return *v1;
}

id FlightShareMessageBubbleView.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [v4 setNeedsLayout];
}

id sub_1BD1ED398(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  return [v3 setNeedsLayout];
}

id (*FlightShareMessageBubbleView.contentInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD1ED468;
}

id sub_1BD1ED468(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id FlightShareMessageBubbleView.isFromMe.setter(char a1)
{
  [*&v1[OBJC_IVAR___PKFlightShareMessageBubbleView_followButton] setHidden_];

  return [v1 setNeedsLayout];
}

id (*FlightShareMessageBubbleView.isFromMe.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton);
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = [v3 isHidden];
  return sub_1BD1ED620;
}

id sub_1BD1ED620(uint64_t a1)
{
  v1 = *a1;
  [*(a1 + 8) setHidden_];

  return [v1 setNeedsLayout];
}

void sub_1BD1ED670()
{
  [*(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton) setEnabled_];
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_properties);
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 flight];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v6 = [v5 UUIDString];

  if (!v6)
  {
    sub_1BE052434();
    v8 = v7;
    v6 = sub_1BE052404();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[4] = sub_1BD1EE218;
  v26 = v16;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1BD3F08C0;
  v25[3] = &block_descriptor_23;
  v17 = _Block_copy(v25);
  v26, v18, v19, v20, v21, v22, v23, v24;
  [v2 addSharedFlight:v4 fromSenderAddress:v6 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1BD1ED830(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v11 = sub_1BE052D54();
  aBlock[4] = sub_1BD1EE220;
  v23 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);
  v13 = v23;
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1BD1EDAA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton);

    [v3 setEnabled_];
  }
}

id FlightShareMessageBubbleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FlightShareMessageBubbleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FlightShareMessageBubbleViewRepresentable.init(flight:pass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(PKFlightSharingMessageExtensionViewProperties) init];
  a3[1] = a2;
  a3[2] = result;
  *a3 = a1;
  return result;
}

char *FlightShareMessageBubbleViewRepresentable.makeUIView(context:)()
{
  v1 = v0[1];
  v2 = v0[2];
  [(PKFlightSharingMessageExtensionViewProperties *)v2 setFlight:*v0];
  v3 = [v1 logoImage];
  if (v3)
  {
    v4 = v3;
    result = [objc_opt_self() imageWithPKImage_];
    if (!result)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v6 = result;
    [(PKFlightSharingMessageExtensionViewProperties *)v2 setLogoImage:result];
  }

  result = [v1 displayProfile];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v8 = [result foregroundColor];

  if (v8)
  {
    [(PKFlightSharingMessageExtensionViewProperties *)v2 setForegroundColor:v8];
  }

  result = [v1 displayProfile];
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  v10 = [result backgroundColor];

  if (v10)
  {
    [(PKFlightSharingMessageExtensionViewProperties *)v2 setBackgroundColor:v10];
  }

  v11 = [objc_allocWithZone(type metadata accessor for FlightShareMessageBubbleView()) init];
  v12 = &v11[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 1) = xmmword_1BE0C0AA0;
  [v11 setNeedsLayout];
  FlightShareMessageBubbleView.updateView(properties:)(v2);
  return v11;
}

uint64_t sub_1BD1EDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EE3F8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD1EE01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EE3F8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD1EE080(uint64_t a1)
{
  sub_1BD1EE3F8();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD1EE0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetProgressView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1EE10C(uint64_t a1)
{
  v2 = type metadata accessor for FlightWidgetProgressView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD1EE1B4()
{
  result = qword_1EBD3D188;
  if (!qword_1EBD3D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D188);
  }

  return result;
}

void sub_1BD1EE228()
{
  *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_properties) = 0;
  *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_model) = 0;
  *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_progressView) = 0;
  v1 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripe;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v9 = OBJC_IVAR___PKFlightShareMessageBubbleView_flightStatus;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10 = OBJC_IVAR___PKFlightShareMessageBubbleView_followButton;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v11 = (v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  *v11 = *MEMORY[0x1E69DDCE0];
  v11[1] = v12;
  sub_1BE053994();
  __break(1u);
}

unint64_t sub_1BD1EE3F8()
{
  result = qword_1EBD3D190;
  if (!qword_1EBD3D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D190);
  }

  return result;
}

id sub_1BD1EE44C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v10;
  if (a1 == 1)
  {
    (*(v3 + 104))(v8, *MEMORY[0x1E69B80C0], v2, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v13 = sub_1BE04B6F4();
      v12 = v8;
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B80C0], v2, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v13 = sub_1BE04B6F4();
      v12 = v5;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  v13 = 0;
  if (a1 != 2)
  {
    return v13;
  }

  (*(v3 + 104))(&v16 - v10, *MEMORY[0x1E69B80C0], v2, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v13 = sub_1BE04B6F4();
LABEL_10:

    (*(v3 + 8))(v12, v2);
    return v13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t PeerPaymentMessagesExplanation.init(message:buttonTitle:buttonAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 PeerPaymentMessagesExplanationView.init(explanation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

id PeerPaymentMessagesExplanationView.makeUIViewController(context:)()
{
  v0 = [objc_allocWithZone(PKPeerPaymentMessagesExplanationViewController) init];
  sub_1BD1EE77C(v0);
  return v0;
}

void sub_1BD1EE77C(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1BE052404();
  [a1 setExplanation_];

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_1BE048964();
    v8 = sub_1BE052404();
    [a1 setButtonTitle_];

    v24[4] = v4;
    v25 = v5;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    v24[2] = sub_1BD126964;
    v24[3] = &block_descriptor_24;
    v9 = _Block_copy(v24);
    v10 = v25;
    sub_1BE048964();
    v10, v11, v12, v13, v14, v15, v16, v17;
    [a1 setButtonAction_];
    _Block_release(v9);
    sub_1BD0D4744(v4, v5, v18, v19, v20, v21, v22, v23);
  }
}

unint64_t sub_1BD1EE8EC()
{
  result = qword_1EBD3D198;
  if (!qword_1EBD3D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D198);
  }

  return result;
}

id sub_1BD1EE940()
{
  v0 = [objc_allocWithZone(PKPeerPaymentMessagesExplanationViewController) init];
  sub_1BD1EE77C(v0);
  return v0;
}

uint64_t sub_1BD1EEA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EEBE4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD1EEA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EEBE4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD1EEAF0(uint64_t a1)
{
  sub_1BD1EEBE4();
  sub_1BE0500A4();
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

uint64_t sub_1BD1EEB40(uint64_t a1, int a2)
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

uint64_t sub_1BD1EEB88(uint64_t result, int a2, int a3)
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

unint64_t sub_1BD1EEBE4()
{
  result = qword_1EBD3D1A0;
  if (!qword_1EBD3D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D1A0);
  }

  return result;
}

char *ApplePayUserEducationInstructionsViewController.init(source:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView] = 0;
  *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController] = 0;
  v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = 4;
  *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_source] = a1;
  v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_didStartAnimation] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  result = objc_msgSendSuper2(&v11, sel_initWithContext_, 0);
  if (result)
  {
    v3 = result;
    [v3 setExplanationViewControllerDelegate_];
    v4 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController());
    v5 = sub_1BD1F0BE4(v3, v4);
    v6 = OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController;
    v7 = *&v3[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController];
    *&v3[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController] = v5;

    v8 = *&v3[v6];
    if (v8)
    {
      [v8 setModalPresentationStyle_];
      v9 = *&v3[v6];
      if (v9)
      {
        [v9 setModalTransitionStyle_];
      }
    }

    v10 = [objc_opt_self() defaultCenter];
    [v10 addObserver:v3 selector:sel_applicationWillAddDeactivationReasonWithNotification_ name:*MEMORY[0x1E69DE878] object:0];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ApplePayUserEducationInstructionsViewController.__deallocating_deinit()
{
  v1 = v0[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason];
  if (v1 >= 2)
  {
    if (v1 - 3 >= 2)
    {
      v0[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = 3;
    }

    else
    {
      [objc_opt_self() endSubjectReporting_];
    }
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD1EEF14()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73 - v10;
  v12 = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  v81.receiver = v1;
  v81.super_class = v12;
  objc_msgSendSuper2(&v81, sel_loadView);
  [v1 setShowCancelButton_];
  [v1 setShowCloseButton_];
  v13 = [v1 explanationView];
  if (v13)
  {
    v78 = v1;
    v79 = v5;
    v14 = v13;
    v80 = v13;
    [v13 setShowPrivacyView_];
    [v14 setImageIgnoresTopSafeArea_];
    v15 = *MEMORY[0x1E69B80D8];
    v16 = *(v3 + 104);
    v16(v11, v15, v2);
    v17 = PKPassKitBundle();
    if (v17)
    {
      v18 = v17;
      sub_1BE04B6F4();
      v20 = v19;

      v77 = *(v3 + 8);
      v77(v11, v2);
      v21 = sub_1BE052404();
      v20, v22, v23, v24, v25, v26, v27, v28;
      v29 = v80;
      [v80 setTitleText_];

      v75 = v15;
      v76 = v3 + 104;
      v74 = v16;
      v16(v8, v15, v2);
      v30 = PKPassKitBundle();
      if (v30)
      {
        v31 = v30;
        sub_1BE04B6F4();
        v33 = v32;

        v34 = v77;
        v77(v8, v2);
        v35 = sub_1BE052404();
        v33, v36, v37, v38, v39, v40, v41, v42;
        [v29 setBodyText_];

        [v29 setTopMargin_];
        v43 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoAnimationView());
        v44 = ApplePayUserEducationDemoAnimationView.init()();
        v45 = OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView;
        v46 = v78;
        v47 = *&v78[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView];
        *&v78[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView] = v44;
        v48 = v44;

        v49 = v29;
        v50 = v34;
        if (v48)
        {
          v51 = [v48 layer];
          [v51 setSpeed_];

          v52 = [v48 layer];
          [v52 setTimeOffset_];

          v53 = [v48 layer];
          [v53 setBeginTime_];
        }

        [v49 setHeroView_];
        v54 = [v49 dockView];
        v55 = v79;
        if (!v54)
        {
          v56 = v49;
LABEL_13:

          return;
        }

        v56 = v54;
        v57 = [v54 primaryButton];
        if (v57)
        {
          v58 = v57;
          v74(v55, v75, v2);
          v59 = PKPassKitBundle();
          if (v59)
          {
            v60 = v59;
            sub_1BE04B6F4();
            v62 = v61;

            v50(v55, v2);
            v63 = sub_1BE052404();
            v62, v64, v65, v66, v67, v68, v69, v70;
            [v58 setTitle:v63 forState:0];

            v71 = *&v46[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController];
            if (v71)
            {
              v72 = v71;
              [v72 loadViewIfNeeded];
            }

            goto LABEL_13;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_1BD1EF4A0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  v25.receiver = v1;
  v25.super_class = v6;
  objc_msgSendSuper2(&v25, sel_viewDidAppear_, a1 & 1);
  if (v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] == 4)
  {
    if ((v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_didStartAnimation] & 1) == 0)
    {
      v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_didStartAnimation] = 1;
      v7 = *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView];
      if (v7)
      {
        v8 = v7;
        sub_1BDA8313C();
      }
    }

    v9 = *MEMORY[0x1E69BB6B0];
    v10 = objc_opt_self();
    v11 = [v10 reporterForSubject_];
    if (v11)
    {
    }

    else
    {
      [v10 beginSubjectReporting_];
    }

    v12 = sub_1BE0528D4();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_1BE0528A4();
    v13 = v1;
    v14 = sub_1BE052894();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v17 = sub_1BD122C00(0, 0, v5, &unk_1BE0C0E10, v15);
    v17, v18, v19, v20, v21, v22, v23, v24;
  }
}

uint64_t sub_1BD1EF694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_1BE0528A4();
  v4[13] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD1EF72C, v6, v5);
}

uint64_t sub_1BD1EF72C()
{
  v1 = v0[12];
  v0[16] = sub_1BE052434();
  v0[17] = v2;
  v0[18] = sub_1BE052434();
  v0[19] = v3;
  v0[20] = *(v1 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_source);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1BD1EF7F4;

  return sub_1BD1F0E70();
}

uint64_t sub_1BD1EF7F4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BD1EF91C, v4, v3);
}

uint64_t sub_1BD1EF91C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v49 = v8;
  v9 = *(v8 + 152);
  v11 = *(v8 + 136);
  v10 = *(v8 + 144);
  v12 = *(v8 + 128);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v14 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  v15 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = v12;
  *(inited + 72) = v11;
  v16 = v14;
  v17 = v15;
  v18 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v19 = PKApplePayUserEducationDemoSourceToString();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;

    v24 = *MEMORY[0x1E69BA338];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v18;
    sub_1BD1DAE70(v21, v23, v24, isUniquelyReferenced_nonNull_native);
  }

  v26 = *(v8 + 176);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v18;
  sub_1BD6BC0F4(v26, sub_1BD6B2140, 0, v27, &v48);
  *(v8 + 176), v28, v29, v30, v31, v32, v33, v34;
  v35 = v48;
  v36 = objc_opt_self();
  v37 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v38 = sub_1BE052224();
  v35, v39, v40, v41, v42, v43, v44, v45;
  [v36 subject:v37 sendEvent:v38];

  v46 = *(v8 + 8);

  return v46();
}

void sub_1BD1EFBDC(char a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  objc_msgSendSuper2(&v25, sel_viewDidDisappear_, a1 & 1);
  if ((*(v1 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason) & 0xFB) == 0)
  {
    v3 = sub_1BE052434();
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v10 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = v6;
    *(inited + 48) = v8;
    v11 = *MEMORY[0x1E69BA680];
    *(inited + 56) = *MEMORY[0x1E69BA680];
    *(inited + 64) = v3;
    *(inited + 72) = v5;
    v12 = v10;
    v13 = v11;
    v14 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    v15 = objc_opt_self();
    v16 = *MEMORY[0x1E69BB6B0];
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v17 = sub_1BE052224();
    v14, v18, v19, v20, v21, v22, v23, v24;
    [v15 subject:v16 sendEvent:v17];
  }
}

void sub_1BD1EFE2C(int a1)
{
  LODWORD(v2) = a1;
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v115 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v115 - v14;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v115 - v19;
  if (v2 < 2u)
  {
    v21 = [v1 presentingViewController];
    if (v21)
    {
      v22 = v21;
      v130 = sub_1BD1F0764;
      v131 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v127 = 1107296256;
      v128 = sub_1BD126964;
      v129 = &block_descriptor_33;
      v23 = v2;
      v2 = _Block_copy(&aBlock);
      [v22 dismissViewControllerAnimated:1 completion:v2];
      v24 = v2;
      LOBYTE(v2) = v23;
      _Block_release(v24);
LABEL_23:
    }

LABEL_24:
    v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = v2;
    return;
  }

  if (v2 != 2)
  {
    goto LABEL_24;
  }

  v123 = v4;
  v125 = v17;
  v25 = [v1 pkui_frontMostViewController];
  if (!v25)
  {
    v25 = v1;
  }

  v26 = v25;
  sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v124 = v26;
  if (([v26 isKindOfClass_] & 1) == 0)
  {
    v31 = v125;
    v32 = *(v125 + 104);
    LODWORD(v123) = *MEMORY[0x1E69B80D8];
    v121 = v32;
    v32(v20);
    v33 = PKPassKitBundle();
    if (v33)
    {
      v34 = v33;
      v118 = sub_1BE04B6F4();
      v122 = v35;

      v36 = *(v31 + 8);
      v125 = v31 + 8;
      v36(v20, v7);
      v37 = *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_source];
      v117 = v2;
      v119 = v1;
      if (v37 == 2)
      {
        v38 = "PAYMETS_AND_CONTACTLESS";
      }

      else if (PKIsSettingsShowingPaymentsAndContactless())
      {
        v38 = "v16@?0@UIAlertAction8";
      }

      else
      {
        v38 = "USER_EDUCATION_DEMO_END_TITLE";
      }

      v120 = v36;
      v39 = v121;
      v121(v15, v123, v7);
      v40 = PKPassKitBundle();
      if (v40)
      {
        v41 = v40;
        v115[0] = v38;
        v115[1] = sub_1BE04B6F4();
        v116 = v42;

        v43 = v120;
        v120(v15, v7);
        v39(v12, *MEMORY[0x1E69B80D0], v7);
        v44 = PKPassKitBundle();
        if (v44)
        {
          v45 = v44;
          v46 = v39;
          sub_1BE04B6F4();
          v48 = v47;

          v43(v12, v7);
          v46(v9, v123, v7);
          v49 = PKPassKitBundle();
          if (v49)
          {
            v50 = v49;
            sub_1BE04B6F4();
            v52 = v51;

            v43(v9, v7);
            v53 = sub_1BE052404();
            v54 = v116;
            v55 = sub_1BE052404();
            v56 = [objc_opt_self() alertControllerWithTitle:v53 message:v55 preferredStyle:1];

            v57 = v48;
            v58 = sub_1BE052404();
            v59 = objc_opt_self();
            v60 = [v59 actionWithTitle:v58 style:0 handler:0];

            [v56 addAction_];
            v61 = swift_allocObject();
            v1 = v119;
            swift_unknownObjectWeakInit();
            sub_1BE048964();
            v62 = sub_1BE052404();
            v130 = sub_1BD1F1EF4;
            v131 = v61;
            aBlock = MEMORY[0x1E69E9820];
            v127 = 1107296256;
            v128 = sub_1BD198918;
            v129 = &block_descriptor_30_0;
            v63 = _Block_copy(&aBlock);
            v131, v64, v65, v66, v67, v68, v69, v70;
            v71 = [v59 actionWithTitle:v62 style:2 handler:v63];
            _Block_release(v63);
            v61, v72, v73, v74, v75, v76, v77, v78;

            [v56 addAction_];
            v79 = [v1 pkui_frontMostViewController];
            if (v79)
            {
              v22 = v79;
              v52, v80, v81, v82, v83, v84, v85, v86;
              v57, v87, v88, v89, v90, v91, v92, v93;
              v54, v94, v95, v96, v97, v98, v99, v100;
              (v115[0] | 0x8000000000000000), v101, v102, v103, v104, v105, v106, v107;
              v122, v108, v109, v110, v111, v112, v113, v114;
              [v22 presentViewController:v56 animated:1 completion:0];

              LOBYTE(v2) = v117;
              goto LABEL_23;
            }

            goto LABEL_29;
          }

LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_1BE04D134();
  v28 = sub_1BE04D204();
  v29 = sub_1BE052C34();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1BD026000, v28, v29, "Frontmost VC is an alert view, skipping presenting another", v30, 2u);
    MEMORY[0x1BFB45F20](v30, -1, -1);
  }

  else
  {
  }

  (*(v123 + 8))(v6, v3);
}

void sub_1BD1F0658(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentingViewController];
    if (v4)
    {
      v5 = v4;
      aBlock[4] = sub_1BD1F0764;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_36;
      v6 = _Block_copy(aBlock);
      [v5 dismissViewControllerAnimated:1 completion:v6];
      _Block_release(v6);
    }

    v3[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = 1;
  }
}

id sub_1BD1F0764()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6B0];

  return [v0 endSubjectReporting_];
}

uint64_t sub_1BD1F07A8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

void sub_1BD1F080C(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_1BE052244();

  sub_1BE052434();
  sub_1BE0537C4();
  if (!v5[2] || (v13 = sub_1BD149040(v23), (v6 & 1) == 0))
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    sub_1BD149CE8(v23);
LABEL_12:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_13;
  }

  sub_1BD038CD0(v5[7] + 32 * v13, &v24);
  sub_1BD149CE8(v23);
  v5, v14, v15, v16, v17, v18, v19, v20;
  if (!*(&v25 + 1))
  {
LABEL_13:
    sub_1BD0DE53C(&v24, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    return;
  }

  if ((swift_dynamicCast() & 1) != 0 && v23[0] != 7 && v23[0] != 12)
  {
    v21 = *(v2 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController);
    if (v21)
    {
      v22 = [v21 presentingViewController];
      if (v22)
      {

        sub_1BD1EFE2C(2);
      }
    }
  }
}

id ApplePayUserEducationInstructionsViewController.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithContext_];
}

Swift::Void __swiftcall ApplePayUserEducationInstructionsViewController.applePayUserEducationDidSelectEndDemo()()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v4[4] = sub_1BD1F0764;
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1BD126964;
    v4[3] = &block_descriptor_25;
    v3 = _Block_copy(v4);
    [v2 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }

  *(v0 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason) = 1;
}

char *sub_1BD1F0BE4(void *a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate + 8] = 0;
  v4 = swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView] = 0;
  *(v4 + 8) = &protocol witness table for ApplePayUserEducationInstructionsViewController;
  swift_unknownObjectWeakAssign();

  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 0;
  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility] = 1;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer] = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.LockButtonConsumer()) init];
  v26.receiver = a2;
  v26.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  v5 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  v6 = *&v5[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v9 = *&v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v10 = *&v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp + 8];
  *v8 = sub_1BD1F1EFC;
  v8[1] = v7;
  v11 = v6;
  sub_1BE048964();
  sub_1BD0D4744(v9, v10, v12, v13, v14, v15, v16, v17);

  v7, v18, v19, v20, v21, v22, v23, v24;
  return v5;
}

uint64_t sub_1BD1F0D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD1EF694(a1, v4, v5, v6);
}

unint64_t sub_1BD1F0E18()
{
  result = qword_1EBD35F00;
  if (!qword_1EBD35F00)
  {
    type metadata accessor for PKAnalyticsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F00);
  }

  return result;
}

uint64_t sub_1BD1F0E70()
{
  v1 = sub_1BE04AF64();
  v0[29] = v1;
  v0[30] = *(v1 - 8);
  v0[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  v0[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840, &unk_1BE0C73F0);
  v0[33] = swift_task_alloc();
  v2 = sub_1BE04A474();
  v0[34] = v2;
  v0[35] = *(v2 - 8);
  v0[36] = swift_task_alloc();
  v3 = sub_1BE04B104();
  v0[37] = v3;
  v0[38] = *(v3 - 8);
  v0[39] = swift_task_alloc();
  v4 = sub_1BE04B2F4();
  v0[40] = v4;
  v0[41] = *(v4 - 8);
  v0[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  sub_1BE0528A4();
  v0[45] = sub_1BE052894();
  v6 = sub_1BE052844();
  v0[46] = v6;
  v0[47] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD1F1128, v6, v5);
}

uint64_t sub_1BD1F1128()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v56 = *(v0 + 344);
    v3 = *(v0 + 328);
    v48 = *(v0 + 336);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    v50 = *(v0 + 288);
    v53 = *(v0 + 352);
    v54 = *(v0 + 280);
    v8 = *(v0 + 264);
    v55 = *(v0 + 272);
    v47 = *(v0 + 256);
    v49 = *(v0 + 248);
    v51 = *(v0 + 240);
    v52 = *(v0 + 232);
    *(v0 + 408) = [v1 hasPassesOfType_];

    (*(v7 + 104))(v4, *MEMORY[0x1E6969868], v6);
    sub_1BE04B114();
    (*(v7 + 8))(v4, v6);
    (*(v3 + 56))(v8, 1, 1, v5);
    v9 = sub_1BE04B3B4();
    (*(*(v9 - 8) + 56))(v47, 1, 1, v9);
    LOBYTE(v46) = 1;
    LOBYTE(v45) = 1;
    LOBYTE(v44) = 1;
    LOBYTE(v43) = 1;
    LOBYTE(v42) = 1;
    LOBYTE(v41) = 1;
    LOBYTE(v40) = 1;
    LOBYTE(v39) = 1;
    LOBYTE(v38) = 1;
    LOBYTE(v37) = 1;
    LOBYTE(v36) = 1;
    sub_1BE04A454();
    sub_1BE04AEF4();
    sub_1BE04B214();
    v10 = *(v51 + 8);
    v10(v49, v52);
    (*(v54 + 8))(v50, v55);
    (*(v3 + 8))(v48, v5);
    v11 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    *(v0 + 384) = v11;
    sub_1BD15D62C(v53, v56);
    v12 = 0;
    if ((*(v51 + 48))(v56, 1, v52) != 1)
    {
      v13 = *(v0 + 344);
      v14 = *(v0 + 232);
      v12 = sub_1BE04AE64();
      v10(v13, v14);
    }

    [v11 setStartDate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B7020;
    *(v15 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(v0 + 392) = sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v16 = sub_1BE052724();
    v15, v17, v18, v19, v20, v21, v22, v23;
    [v11 setTransactionTypes_];

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BE0B7020;
    *(v24 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v25 = sub_1BE052724();
    v24, v26, v27, v28, v29, v30, v31, v32;
    [v11 setTransactionSources_];

    v33 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    *(v0 + 400) = v33;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = sub_1BD1F1670;
    v34 = swift_continuation_init();
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D278, qword_1BE0C0F30);
    *(v0 + 160) = MEMORY[0x1E69E9820];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_1BD1F07A8;
    *(v0 + 184) = &block_descriptor_24_0;
    *(v0 + 192) = v34;
    [v33 transactionCountForRequest:v11 completion:v0 + 160];
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD1F1670()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1BD1F1778, v2, v1);
}

uint64_t sub_1BD1F1778(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 400);
  v10 = *(v8 + 384);
  v11 = *(v8 + 408);
  *(v8 + 360), a2, a3, a4, a5, a6, a7, a8;
  v12 = *(v8 + 224);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  v14 = inited;
  v15 = MEMORY[0x1E69BA8A8];
  *(inited + 16) = xmmword_1BE0B6CA0;
  v16 = *v15;
  *(inited + 32) = v16;
  v17 = 1702195828;
  if (!v11)
  {
    v17 = 0x65736C6166;
  }

  v18 = 0xE500000000000000;
  if (v11)
  {
    v18 = 0xE400000000000000;
  }

  *(inited + 40) = v17;
  *(inited + 48) = v18;
  v19 = *MEMORY[0x1E69BA8A0];
  *(inited + 56) = *MEMORY[0x1E69BA8A0];
  v20 = v16;
  v21 = v19;
  v22 = sub_1BE053054();
  v23 = v22;
  if (v12)
  {
    v12 = v12;
    v24 = sub_1BE053074();

    if (v24)
    {
      v25 = 0xE400000000000000;
      v26 = 1701736302;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v26 = sub_1BE052434();
LABEL_10:
  v27 = *(v8 + 384);
  v28 = *(v8 + 352);
  *(v14 + 64) = v26;
  *(v14 + 72) = v25;
  v31 = sub_1BD1AAF50(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();

  sub_1BD0DE53C(v28, &unk_1EBD39970, &unk_1BE0B9F80);

  v29 = *(v8 + 8);

  return v29(v31);
}

void sub_1BD1F19B0()
{
  v1 = *&v0[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController];
  if (v1)
  {
    [v0 presentViewController:v1 animated:1 completion:0];
  }

  v2 = sub_1BE052434();
  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = sub_1BE052434();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v12 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v14 = v12;
  v15 = v13;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v17 = *MEMORY[0x1E69BA440];
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BD1DAE70(v8, v10, v17, isUniquelyReferenced_nonNull_native);

  v19 = objc_opt_self();
  v20 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v21 = sub_1BE052224();
  v16, v22, v23, v24, v25, v26, v27, v28;
  [v19 subject:v20 sendEvent:v21];

  v10, v29, v30, v31, v32, v33, v34, v35;
}

void _s9PassKitUI47ApplePayUserEducationInstructionsViewControllerC011explanationiJ15DidSelectCancelyySo013PKExplanationiJ0CF_0()
{
  v1 = v0;
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = sub_1BE052434();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v12 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v14 = v12;
  v15 = v13;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v17 = *MEMORY[0x1E69BA440];
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = v16;
  sub_1BD1DAE70(v8, v10, v17, isUniquelyReferenced_nonNull_native);

  v19 = objc_opt_self();
  v20 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v21 = sub_1BE052224();
  v16, v22, v23, v24, v25, v26, v27, v28;
  [v19 subject:v20 sendEvent:v21];

  v10, v29, v30, v31, v32, v33, v34, v35;
  v36 = [v1 presentingViewController];
  if (v36)
  {
    v37 = v36;
    v39[4] = sub_1BD1F0764;
    v39[5] = 0;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 1107296256;
    v39[2] = sub_1BD126964;
    v39[3] = &block_descriptor_20;
    v38 = _Block_copy(v39);
    [v37 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
  }

  *(v1 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason) = 0;
}

unint64_t sub_1BD1F1E88()
{
  result = qword_1EBD3D250;
  if (!qword_1EBD3D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D250);
  }

  return result;
}

uint64_t PKPeerPaymentRecurringPaymentFrequency.id.getter()
{
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v1 = sub_1BE052434();

  return v1;
}

unint64_t sub_1BD1F1F70(uint64_t a1)
{
  result = sub_1BD1F1F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD1F1F98()
{
  result = qword_1EBD3D290;
  if (!qword_1EBD3D290)
  {
    type metadata accessor for PKPeerPaymentRecurringPaymentFrequency(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D290);
  }

  return result;
}

void sub_1BD1F1FF0(uint64_t *a1@<X8>)
{
  v2 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v3 = sub_1BE052434();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
}

uint64_t type metadata accessor for FrequencySelectionRow(uint64_t a1)
{
  result = qword_1EBD3D298;
  if (!qword_1EBD3D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1F20B4(uint64_t a1)
{
  sub_1BD1F21A8(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1F223C(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1BD1F223C(319, &qword_1EBD3D2B8, sub_1BD1F2290);
      if (v3 <= 0x3F)
      {
        sub_1BD0FA9D0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD1F21A8(uint64_t a1)
{
  if (!qword_1EBD3D2A8)
  {
    type metadata accessor for FrequencySelectionModel(255);
    sub_1BD1F3FB0(&qword_1EBD3D2B0, type metadata accessor for FrequencySelectionModel, &unk_1BE0E9FF8);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3D2A8);
    }
  }
}

void sub_1BD1F223C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD1F2290()
{
  result = qword_1EBD43100;
  if (!qword_1EBD43100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43100);
  }

  return result;
}

uint64_t sub_1BD1F22F8@<X0>(void *a1@<X8>)
{
  v92 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2C0, &qword_1BE0C1010);
  MEMORY[0x1EEE9AC00](v97);
  v3 = v81 - v2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2C8, &unk_1BE0C1018);
  MEMORY[0x1EEE9AC00](v95);
  v5 = v81 - v4;
  v96 = sub_1BE04EB64();
  v6 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v91 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FrequencySelectionRow(0);
  v9 = v8 - 8;
  v87 = *(v8 - 8);
  v10 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v88 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v86);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2D0, &qword_1BE0C1028);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v81 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2D8, &qword_1BE0C1030);
  v90 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v89 = v81 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2E0, &qword_1BE0C1038);
  MEMORY[0x1EEE9AC00](v94);
  if (*(v1 + *(v9 + 32)) == 1)
  {
    v81[1] = *(v1 + 8);
    v84 = v81 - v15;
    v85 = v16;
    type metadata accessor for FrequencySelectionModel(0);
    sub_1BD1F3FB0(&qword_1EBD3D2B0, type metadata accessor for FrequencySelectionModel, &unk_1BE0E9FF8);
    v83 = v6;
    v17 = sub_1BE04E964();
    KeyPath = swift_getKeyPath();
    sub_1BE04E974();
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    v82 = v5;
    *&v34 = MEMORY[0x1EEE9AC00](v33);
    v98 = v34;
    v99 = v35;
    sub_1BD1F2EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D318, &qword_1BE0C1080);
    sub_1BD1103C8();
    sub_1BD1F3FF8();
    sub_1BD1F404C();
    sub_1BE0517D4();
    v36 = sub_1BE051494();
    v37 = swift_getKeyPath();
    v38 = &v13[*(v11 + 36)];
    *v38 = v37;
    v38[1] = v36;
    v39 = swift_getKeyPath();
    v40 = swift_getKeyPath();
    sub_1BE04D8B4(&v100);
    v39, v41, v42, v43, v44, v45, v46, v47;
    v40, v48, v49, v50, v51, v52, v53, v54;
    v55 = v88;
    sub_1BD1F41CC(v1, v88);
    v56 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v57 = swift_allocObject();
    sub_1BD1F4230(v55, v57 + v56);
    v58 = sub_1BD1F3E70();
    v59 = sub_1BD1F3F54();
    v60 = v89;
    sub_1BE051064();
    v57, v61, v62, v63, v64, v65, v66, v67;
    sub_1BD054808(v13);
    v68 = v91;
    sub_1BE04EB54();
    v100 = v11;
    v101 = &type metadata for WrappedFrequency;
    v102 = v58;
    v103 = v59;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v70 = MEMORY[0x1E697C178];
    v71 = v84;
    v72 = v93;
    v73 = v96;
    sub_1BE050924();
    (*(v83 + 8))(v68, v73);
    (*(v90 + 8))(v60, v72);
    v74 = v85;
    v75 = v94;
    (*(v85 + 16))(v82, v71, v94);
    swift_storeEnumTagMultiPayload();
    v100 = v72;
    v101 = v73;
    v102 = OpaqueTypeConformance2;
    v103 = v70;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3D310, &qword_1EBD3D2C0, &qword_1BE0C1010, MEMORY[0x1E697BF80]);
    sub_1BE04F9A4();
    return (*(v74 + 8))(v71, v75);
  }

  else
  {
    *v3 = sub_1BE050194();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2E8, &qword_1BE0C1040);
    sub_1BD1F31D0(&v3[*(v77 + 44)]);
    sub_1BD0DE19C(v3, v5, &qword_1EBD3D2C0, &qword_1BE0C1010);
    swift_storeEnumTagMultiPayload();
    v78 = sub_1BD1F3E70();
    v79 = sub_1BD1F3F54();
    v100 = v11;
    v101 = &type metadata for WrappedFrequency;
    v102 = v78;
    v103 = v79;
    v80 = swift_getOpaqueTypeConformance2();
    v100 = v93;
    v101 = v96;
    v102 = v80;
    v103 = MEMORY[0x1E697C178];
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3D310, &qword_1EBD3D2C0, &qword_1BE0C1010, MEMORY[0x1E697BF80]);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v3, &qword_1EBD3D2C0, &qword_1BE0C1010);
  }
}

uint64_t sub_1BD1F2BC4(uint64_t a1)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D340, &qword_1BE0C10E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D338, &qword_1BE0C1088);
  sub_1BD0DE4F4(&qword_1EBD3D348, &qword_1EBD3D340, &qword_1BE0C10E0, MEMORY[0x1E69E6338]);
  sub_1BD1F40D0();
  sub_1BD1F4314();
  return sub_1BE0519D4();
}

uint64_t sub_1BD1F2CC8(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D358, &qword_1BE0C10E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = *a1;
  v7 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedString();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE052434();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v26 = v9;
  v27 = v11;
  sub_1BD0DDEBC();
  *v5 = sub_1BE0506C4();
  *(v5 + 1) = v12;
  v5[16] = v13 & 1;
  *(v5 + 3) = v14;
  *(v5 + 4) = v6;
  v5[40] = 1;
  sub_1BE052434();
  v16 = v15;
  v17 = sub_1BD1F3FF8();
  v26 = MEMORY[0x1E6981148];
  v27 = &type metadata for WrappedFrequency;
  v28 = MEMORY[0x1E6981138];
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v16, v18, v19, v20, v21, v22, v23, v24;
  return (*(v3 + 8))(v5, v2);
}

void sub_1BD1F2EA8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v3);
  v6 = PKPassKitBundle();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v2 + 8))(v5, v1);
    v69 = v8;
    v70 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = *(v0 + *(type metadata accessor for FrequencySelectionRow(0) + 28));
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE0511C4();
    }

    else
    {
      v20 = sub_1BE051464();
    }

    v21 = v20;
    v69 = v20;
    v22 = sub_1BE050574();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_1BD0DDF10(v11, v13, (v15 & 1), v27, v29, v30, v31, v32);
    v21, v33, v34, v35, v36, v37, v38, v39;
    v17, v40, v41, v42, v43, v44, v45, v46;
    v69 = v22;
    v70 = v24;
    v71 = v26 & 1;
    v72 = v28;
    sub_1BE052434();
    v48 = v47;
    sub_1BE050DE4();
    v48, v49, v50, v51, v52, v53, v54, v55;
    sub_1BD0DDF10(v22, v24, (v26 & 1), v56, v57, v58, v59, v60);
    v28, v61, v62, v63, v64, v65, v66, v67;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1F3108(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3 + *(type metadata accessor for FrequencySelectionRow(0) + 32);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    sub_1BE048964();
    v6 = PKPeerPaymentRecurringPaymentFrequencyToString();
    v7 = sub_1BE052434();
    v9 = v8;

    v4(v7, v9);
    v9, v10, v11, v12, v13, v14, v15, v16;

    sub_1BD0D4744(v4, v5, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1BD1F31D0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D360, &qword_1BE0C10F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D368, &qword_1BE0C10F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D370, &qword_1BE0C1100);
  sub_1BD1F3414(&v14[*(v15 + 44)]);
  *v8 = sub_1BE04F7B4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D378, &qword_1BE0C1108);
  sub_1BD1F38E0(&v8[*(v16 + 44)]);
  sub_1BD0DE19C(v14, v11, &qword_1EBD3D368, &qword_1BE0C10F8);
  sub_1BD0DE19C(v8, v5, &qword_1EBD3D360, &qword_1BE0C10F0);
  sub_1BD0DE19C(v11, a2, &qword_1EBD3D368, &qword_1BE0C10F8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D380, &qword_1BE0C1110);
  sub_1BD0DE19C(v5, a2 + *(v17 + 48), &qword_1EBD3D360, &qword_1BE0C10F0);
  sub_1BD0DE53C(v8, &qword_1EBD3D360, &qword_1BE0C10F0);
  sub_1BD0DE53C(v14, &qword_1EBD3D368, &qword_1BE0C10F8);
  sub_1BD0DE53C(v5, &qword_1EBD3D360, &qword_1BE0C10F0);
  return sub_1BD0DE53C(v11, &qword_1EBD3D368, &qword_1BE0C10F8);
}

uint64_t sub_1BD1F3414@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D388, &qword_1BE0C1118);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D390, &qword_1BE0C1120);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  sub_1BD1F2EA8();
  sub_1BD1F3728();
  sub_1BE051CF4();
  sub_1BE04EE54();
  sub_1BD0DE204(v3, v10, &qword_1EBD3D388, &qword_1BE0C1118);
  v20 = &v10[*(v5 + 44)];
  v21 = v34;
  *(v20 + 4) = v33;
  *(v20 + 5) = v21;
  *(v20 + 6) = v35;
  v22 = v30;
  *v20 = v29;
  *(v20 + 1) = v22;
  v23 = v32;
  *(v20 + 2) = v31;
  *(v20 + 3) = v23;
  sub_1BD0DE204(v10, v13, &qword_1EBD3D390, &qword_1BE0C1120);
  sub_1BD0DE19C(v19, v16, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v13, v7, &qword_1EBD3D390, &qword_1BE0C1120);
  v24 = v28;
  sub_1BD0DE19C(v16, v28, &qword_1EBD452C0, &qword_1BE0B7620);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3C0, &qword_1BE0C1148);
  sub_1BD0DE19C(v7, v24 + *(v25 + 48), &qword_1EBD3D390, &qword_1BE0C1120);
  sub_1BD0DE53C(v13, &qword_1EBD3D390, &qword_1BE0C1120);
  sub_1BD0DE53C(v19, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v7, &qword_1EBD3D390, &qword_1BE0C1120);
  return sub_1BD0DE53C(v16, &qword_1EBD452C0, &qword_1BE0B7620);
}

void sub_1BD1F3728()
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(&v72);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v72;
  v18 = type metadata accessor for FrequencySelectionRow(0);
  v72 = sub_1BD8FC944(v0 + *(v18 + 20), v17);
  v73 = v19;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1BE051494();
  v28 = sub_1BE050564();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v27, v29, v31, v33, v35, v36, v37, v38;
  sub_1BD0DDF10(v20, v22, (v24 & 1), v39, v40, v41, v42, v43);
  v26, v44, v45, v46, v47, v48, v49, v50;
  v72 = v28;
  v73 = v30;
  v74 = v32 & 1;
  v75 = v34;
  v76 = sub_1BD1F3E44;
  v77 = 0;
  sub_1BE052434();
  v52 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3B0, &qword_1BE0C1140);
  sub_1BD1F4368();
  sub_1BE050DE4();
  v52, v53, v54, v55, v56, v57, v58, v59;
  sub_1BD0DDF10(v28, v30, (v32 & 1), v60, v61, v62, v63, v64);
  v34, v65, v66, v67, v68, v69, v70, v71;
}

uint64_t sub_1BD1F38E0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D388, &qword_1BE0C1118);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D390, &qword_1BE0C1120);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D398, &qword_1BE0C1128);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3A0, &qword_1BE0C1130);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  sub_1BD1F2EA8();
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v17, v23, &qword_1EBD452C0, &qword_1BE0B7620);
  v27 = &v23[*(v19 + 44)];
  v28 = v62;
  *(v27 + 4) = v61;
  *(v27 + 5) = v28;
  *(v27 + 6) = v63;
  v29 = v58;
  *v27 = v57;
  *(v27 + 1) = v29;
  v30 = v60;
  *(v27 + 2) = v59;
  *(v27 + 3) = v30;
  sub_1BD0DE204(v23, v26, &qword_1EBD3D3A0, &qword_1BE0C1130);
  v31 = v53;
  sub_1BD1F3728();
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v31, v6, &qword_1EBD3D388, &qword_1BE0C1118);
  v32 = &v6[*(v4 + 44)];
  v33 = v69;
  *(v32 + 4) = v68;
  *(v32 + 5) = v33;
  *(v32 + 6) = v70;
  v34 = v65;
  *v32 = v64;
  *(v32 + 1) = v34;
  v35 = v67;
  *(v32 + 2) = v66;
  *(v32 + 3) = v35;
  v36 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1BD0DE204(v6, v12, &qword_1EBD3D390, &qword_1BE0C1120);
  v45 = &v12[*(v8 + 44)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = v54;
  sub_1BD0DE204(v12, v54, &qword_1EBD3D398, &qword_1BE0C1128);
  v47 = v52;
  sub_1BD0DE19C(v26, v52, &qword_1EBD3D3A0, &qword_1BE0C1130);
  v48 = v55;
  sub_1BD0DE19C(v46, v55, &qword_1EBD3D398, &qword_1BE0C1128);
  v49 = v56;
  sub_1BD0DE19C(v47, v56, &qword_1EBD3D3A0, &qword_1BE0C1130);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3A8, &qword_1BE0C1138);
  sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD3D398, &qword_1BE0C1128);
  sub_1BD0DE53C(v46, &qword_1EBD3D398, &qword_1BE0C1128);
  sub_1BD0DE53C(v26, &qword_1EBD3D3A0, &qword_1BE0C1130);
  sub_1BD0DE53C(v48, &qword_1EBD3D398, &qword_1BE0C1128);
  return sub_1BD0DE53C(v47, &qword_1EBD3D3A0, &qword_1BE0C1130);
}

unint64_t sub_1BD1F3E70()
{
  result = qword_1EBD3D2F0;
  if (!qword_1EBD3D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D2D0, &qword_1BE0C1028);
    sub_1BD0DE4F4(&qword_1EBD3D2F8, &qword_1EBD3D300, &unk_1BE0C1048, MEMORY[0x1E697D690]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D2F0);
  }

  return result;
}

unint64_t sub_1BD1F3F54()
{
  result = qword_1EBD3D308;
  if (!qword_1EBD3D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D308);
  }

  return result;
}

uint64_t sub_1BD1F3FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD1F3FF8()
{
  result = qword_1EBD3D320;
  if (!qword_1EBD3D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D320);
  }

  return result;
}

unint64_t sub_1BD1F404C()
{
  result = qword_1EBD3D328;
  if (!qword_1EBD3D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D318, &qword_1BE0C1080);
    sub_1BD1F40D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D328);
  }

  return result;
}

unint64_t sub_1BD1F40D0()
{
  result = qword_1EBD3D330;
  if (!qword_1EBD3D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D338, &qword_1BE0C1088);
    sub_1BD1F3FF8();
    swift_getOpaqueTypeConformance2();
    sub_1BD1F3FB0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D330);
  }

  return result;
}

uint64_t sub_1BD1F41CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrequencySelectionRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1F4230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrequencySelectionRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD1F4294(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for FrequencySelectionRow(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD1F3108(a1, a2, v6);
}

unint64_t sub_1BD1F4314()
{
  result = qword_1EBD3D350;
  if (!qword_1EBD3D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D350);
  }

  return result;
}

unint64_t sub_1BD1F4368()
{
  result = qword_1EBD3D3B8;
  if (!qword_1EBD3D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D3B0, &qword_1BE0C1140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D3B8);
  }

  return result;
}

unint64_t sub_1BD1F43EC()
{
  result = qword_1EBD3D3C8;
  if (!qword_1EBD3D3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3D3D0, qword_1BE0C1150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D2D8, &qword_1BE0C1030);
    sub_1BE04EB64();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D2D0, &qword_1BE0C1028);
    sub_1BD1F3E70();
    sub_1BD1F3F54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3D310, &qword_1EBD3D2C0, &qword_1BE0C1010, MEMORY[0x1E697BF80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D3C8);
  }

  return result;
}

uint64_t sub_1BD1F4558@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1BD1F4588(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1BE04CDA4();
  sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a5[4] = sub_1BE04EEC4();
  a5[5] = v14;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1BD0DE19C(v41, v40, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v41, &qword_1EBD51EC0, &qword_1BE0B7120);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5C0, &qword_1BE0C1440);
  v16 = sub_1BE04C614();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1BD0DE19C(v13, v10, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD3D520, &qword_1BE0C12E0);
  v17 = *(v15 + 108);
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v18 = a5 + *(v15 + 112);
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  type metadata accessor for ExternalAuthorizationModel(0);
  sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
  sub_1BE048964();
  *a5 = sub_1BE04E954();
  a5[1] = v19;
  sub_1BD0EE8CC(a1, (a5 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v20 = sub_1BE04E954();
  v22 = v21;
  a2, v21, v23, v24, v25, v26, v27, v28;
  a5[2] = v20;
  a5[3] = v22;
  a5[11] = 0;
  a5[12] = 0;
  v29 = v39;
  a5[13] = v38;
  a5[14] = v29;
  a5[15] = 0;
  a5[16] = 0;
  __swift_destroy_boxed_opaque_existential_0(a1, v30, v31, v32, v33, v34, v35, v36);
}

void sub_1BD1F48F4(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1BE04CDA4();
  sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a5 + 32) = sub_1BE04EEC4();
  *(a5 + 40) = v14;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1BD0DE19C(v41, v40, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v41, &qword_1EBD51EC0, &qword_1BE0B7120);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D620, &unk_1BE0C1470);
  v16 = sub_1BE04C614();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1BD0DE19C(v13, v10, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD3D520, &qword_1BE0C12E0);
  v17 = *(v15 + 108);
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v18 = a5 + *(v15 + 112);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  type metadata accessor for ExternalAuthorizationModel(0);
  sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
  sub_1BE048964();
  *a5 = sub_1BE04E954();
  *(a5 + 8) = v19;
  sub_1BD0EE8CC(a1, a5 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v20 = sub_1BE04E954();
  v22 = v21;
  a2, v21, v23, v24, v25, v26, v27, v28;
  *(a5 + 16) = v20;
  *(a5 + 24) = v22;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  v29 = v39;
  *(a5 + 120) = v38;
  *(a5 + 128) = v29;
  __swift_destroy_boxed_opaque_existential_0(a1, v30, v31, v32, v33, v34, v35, v36);
}

void sub_1BD1F4C64(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1BE04CDA4();
  sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a5 + 32) = sub_1BE04EEC4();
  *(a5 + 40) = v14;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1BD0DE19C(v41, v40, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v41, &qword_1EBD51EC0, &qword_1BE0B7120);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D600, &qword_1BE0C1460);
  v16 = sub_1BE04C614();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1BD0DE19C(v13, v10, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD3D520, &qword_1BE0C12E0);
  v17 = *(v15 + 108);
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v18 = a5 + *(v15 + 112);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  type metadata accessor for ExternalAuthorizationModel(0);
  sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
  sub_1BE048964();
  *a5 = sub_1BE04E954();
  *(a5 + 8) = v19;
  sub_1BD0EE8CC(a1, a5 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v20 = sub_1BE04E954();
  v22 = v21;
  a2, v21, v23, v24, v25, v26, v27, v28;
  *(a5 + 16) = v20;
  *(a5 + 24) = v22;
  v29 = v39;
  *(a5 + 88) = v38;
  *(a5 + 96) = v29;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  __swift_destroy_boxed_opaque_existential_0(a1, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_1BD1F4FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v268 = a2;
  v267 = a1;
  v274 = a4;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D630, &qword_1BE0BA348);
  MEMORY[0x1EEE9AC00](v232);
  v248 = &v228 - v5;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D638, &qword_1BE0C1480);
  MEMORY[0x1EEE9AC00](v247);
  v246 = &v228 - v6;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D620, &unk_1BE0C1470);
  MEMORY[0x1EEE9AC00](v231);
  v245 = &v228 - v7;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D640, &qword_1BE0C1488);
  MEMORY[0x1EEE9AC00](v251);
  v252 = &v228 - v8;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D600, &qword_1BE0C1460);
  MEMORY[0x1EEE9AC00](v242);
  v244 = &v228 - v9;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D648, &qword_1BE0C1490);
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v228 - v10;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5F0, &qword_1BE0C1458);
  MEMORY[0x1EEE9AC00](v237);
  v243 = (&v228 - v11);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D610, &qword_1BE0C1468);
  MEMORY[0x1EEE9AC00](v250);
  v230 = &v228 - v12;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5E0, &qword_1BE0C1450);
  MEMORY[0x1EEE9AC00](v249);
  v241 = &v228 - v13;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5C0, &qword_1BE0C1440);
  MEMORY[0x1EEE9AC00](v238);
  v229 = (&v228 - v14);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D650, &qword_1BE0C1498);
  MEMORY[0x1EEE9AC00](v234);
  v236 = &v228 - v15;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5B0, &qword_1BE0C1438);
  MEMORY[0x1EEE9AC00](v235);
  v17 = (&v228 - v16);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D658, &qword_1BE0C14A0);
  MEMORY[0x1EEE9AC00](v272);
  v273 = &v228 - v18;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D660, &qword_1BE0C14A8);
  MEMORY[0x1EEE9AC00](v262);
  v263 = &v228 - v19;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D590, &qword_1BE0C1428);
  MEMORY[0x1EEE9AC00](v258);
  v21 = (&v228 - v20);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D668, &unk_1BE0C14B0);
  MEMORY[0x1EEE9AC00](v254);
  v257 = &v228 - v22;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v265 = &v228 - v25;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D580, &qword_1BE0C1420);
  MEMORY[0x1EEE9AC00](v255);
  v27 = (&v228 - v26);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5A0, &qword_1BE0C1430);
  MEMORY[0x1EEE9AC00](v260);
  v233 = &v228 - v28;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D570, &qword_1BE0C1418);
  MEMORY[0x1EEE9AC00](v259);
  v256 = &v228 - v29;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5D0, &qword_1BE0C1448);
  MEMORY[0x1EEE9AC00](v271);
  v31 = &v228 - v30;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D560, &qword_1BE0C1410);
  MEMORY[0x1EEE9AC00](v269);
  v261 = &v228 - v32;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v33 = sub_1BE04C824();
  v270 = v34;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v35 = sub_1BE04C834();
  v275 = v36;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v37 = sub_1BE04C814();
  v38 = v37;
  v277 = v37;
  v278 = v39;
  v276 = v35;
  if (v35)
  {
    if (v33)
    {
      if (v37)
      {
        sub_1BD0EE8CC(v267, &v283);
        v40 = swift_allocObject();
        v267 = v40;
        v41 = v270;
        *(v40 + 16) = v33;
        *(v40 + 24) = v41;
        v42 = swift_allocObject();
        v44 = v275;
        v43 = v276;
        *(v42 + 16) = v276;
        *(v42 + 24) = v44;
        v45 = swift_allocObject();
        v46 = v278;
        *(v45 + 16) = v38;
        *(v45 + 24) = v46;
        sub_1BD0D44B8(v43, v44);
        sub_1BD0D44B8(v33, v41);
        sub_1BD0D44B8(v38, v46);
        sub_1BD0D44B8(v33, v41);
        sub_1BD0D44B8(v43, v44);
        sub_1BD0D44B8(v38, v46);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v27[4] = sub_1BE04EEC4();
        v27[5] = v47;
        v282 = 0;
        v280 = 0u;
        v281 = 0u;
        sub_1BD0DE19C(&v280, v279, &qword_1EBD51EC0, &qword_1BE0B7120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
        sub_1BE051694();
        sub_1BD0DE53C(&v280, &qword_1EBD51EC0, &qword_1BE0B7120);
        v253 = v33;
        v48 = v255;
        v49 = sub_1BE04C614();
        v50 = v265;
        (*(*(v49 - 8) + 56))(v265, 1, 1, v49);
        sub_1BD0DE19C(v50, v264, &qword_1EBD3D520, &qword_1BE0C12E0);
        sub_1BE051694();
        sub_1BD0DE53C(v50, &qword_1EBD3D520, &qword_1BE0C12E0);
        v51 = *(v48 + 108);
        *(v27 + v51) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
        swift_storeEnumTagMultiPayload();
        v52 = v27 + *(v48 + 112);
        *v52 = swift_getKeyPath();
        v52[8] = 0;
        type metadata accessor for ExternalAuthorizationModel(0);
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
        sub_1BE048964();
        *v27 = sub_1BE04E954();
        v27[1] = v53;
        sub_1BD0EE8CC(&v283, (v27 + 6));
        __swift_project_boxed_opaque_existential_1(&v283, v284);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel(0);
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
        v27[2] = sub_1BE04E954();
        v27[3] = v54;
        v55 = v267;
        v27[11] = sub_1BD2007A8;
        v27[12] = v55;
        v27[13] = sub_1BD2007A8;
        v27[14] = v42;
        v27[15] = sub_1BD2007A8;
        v27[16] = v45;
        __swift_destroy_boxed_opaque_existential_0(&v283, v54, v56, v57, v58, v59, v60, v61);
        v62 = &qword_1EBD3D580;
        v63 = &qword_1BE0C1420;
        sub_1BD0DE19C(v27, v257, &qword_1EBD3D580, &qword_1BE0C1420);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D578, &qword_1EBD3D580, &qword_1BE0C1420, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D588, &qword_1EBD3D590, &qword_1BE0C1428, &unk_1BE0BA140);
        v64 = v256;
        v33 = v253;
        sub_1BE04F9A4();
        sub_1BD0D4744(v277, v278, v65, v66, v67, v68, v69, v70);
        v71 = v27;
      }

      else
      {
        sub_1BD0EE8CC(v267, &v283);
        v134 = swift_allocObject();
        v41 = v270;
        *(v134 + 16) = v33;
        *(v134 + 24) = v41;
        v135 = swift_allocObject();
        v267 = v135;
        v137 = v275;
        v136 = v276;
        *(v135 + 16) = v276;
        *(v135 + 24) = v137;
        sub_1BD0D44B8(v136, v137);
        sub_1BD0D44B8(v33, v41);
        sub_1BD0D44B8(v33, v41);
        sub_1BD0D44B8(v136, v137);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v21[4] = sub_1BE04EEC4();
        v21[5] = v138;
        v282 = 0;
        v280 = 0u;
        v281 = 0u;
        sub_1BD0DE19C(&v280, v279, &qword_1EBD51EC0, &qword_1BE0B7120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
        sub_1BE051694();
        sub_1BD0DE53C(&v280, &qword_1EBD51EC0, &qword_1BE0B7120);
        v139 = v258;
        v140 = sub_1BE04C614();
        v141 = v265;
        (*(*(v140 - 8) + 56))(v265, 1, 1, v140);
        sub_1BD0DE19C(v141, v264, &qword_1EBD3D520, &qword_1BE0C12E0);
        sub_1BE051694();
        sub_1BD0DE53C(v141, &qword_1EBD3D520, &qword_1BE0C12E0);
        v142 = *(v139 + 108);
        *(v21 + v142) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
        swift_storeEnumTagMultiPayload();
        v143 = v21 + *(v139 + 112);
        *v143 = swift_getKeyPath();
        v143[8] = 0;
        type metadata accessor for ExternalAuthorizationModel(0);
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
        sub_1BE048964();
        *v21 = sub_1BE04E954();
        v21[1] = v144;
        sub_1BD0EE8CC(&v283, (v21 + 6));
        __swift_project_boxed_opaque_existential_1(&v283, v284);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel(0);
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
        v21[2] = sub_1BE04E954();
        v21[3] = v145;
        v21[11] = sub_1BD2007A8;
        v21[12] = v134;
        v146 = v267;
        v21[13] = sub_1BD2007A8;
        v21[14] = v146;
        v21[15] = 0;
        v21[16] = 0;
        __swift_destroy_boxed_opaque_existential_0(&v283, v145, v147, v148, v149, v150, v151, v152);
        v62 = &qword_1EBD3D590;
        v63 = &qword_1BE0C1428;
        sub_1BD0DE19C(v21, v257, &qword_1EBD3D590, &qword_1BE0C1428);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D578, &qword_1EBD3D580, &qword_1BE0C1420, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D588, &qword_1EBD3D590, &qword_1BE0C1428, &unk_1BE0BA140);
        v64 = v256;
        sub_1BE04F9A4();
        v71 = v21;
      }

      sub_1BD0DE53C(v71, v62, v63);
      v153 = &qword_1EBD3D570;
      v154 = &qword_1BE0C1418;
      sub_1BD0DE19C(v64, v263, &qword_1EBD3D570, &qword_1BE0C1418);
      swift_storeEnumTagMultiPayload();
      sub_1BD20036C();
      sub_1BD20044C();
      v155 = v261;
      sub_1BE04F9A4();
      sub_1BD0D4744(v33, v41, v156, v157, v158, v159, v160, v161);
    }

    else
    {
      if (v37)
      {
        sub_1BD0EE8CC(v267, &v283);
        v107 = swift_allocObject();
        v109 = v275;
        v108 = v276;
        *(v107 + 16) = v276;
        *(v107 + 24) = v109;
        v110 = swift_allocObject();
        v111 = v278;
        *(v110 + 16) = v38;
        *(v110 + 24) = v111;
        sub_1BD0D44B8(v108, v109);
        sub_1BD0D44B8(v38, v111);
        sub_1BD0D44B8(v108, v109);
        sub_1BD0D44B8(v38, v111);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v17[4] = sub_1BE04EEC4();
        v17[5] = v112;
        v282 = 0;
        v280 = 0u;
        v281 = 0u;
        sub_1BD0DE19C(&v280, v279, &qword_1EBD51EC0, &qword_1BE0B7120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
        sub_1BE051694();
        sub_1BD0DE53C(&v280, &qword_1EBD51EC0, &qword_1BE0B7120);
        v113 = v235;
        v114 = sub_1BE04C614();
        v115 = v265;
        (*(*(v114 - 8) + 56))(v265, 1, 1, v114);
        sub_1BD0DE19C(v115, v264, &qword_1EBD3D520, &qword_1BE0C12E0);
        sub_1BE051694();
        sub_1BD0DE53C(v115, &qword_1EBD3D520, &qword_1BE0C12E0);
        v116 = *(v113 + 108);
        *(v17 + v116) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
        swift_storeEnumTagMultiPayload();
        v117 = v17 + *(v113 + 112);
        *v117 = swift_getKeyPath();
        v117[8] = 0;
        type metadata accessor for ExternalAuthorizationModel(0);
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
        sub_1BE048964();
        *v17 = sub_1BE04E954();
        v17[1] = v118;
        sub_1BD0EE8CC(&v283, (v17 + 6));
        __swift_project_boxed_opaque_existential_1(&v283, v284);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel(0);
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
        v17[2] = sub_1BE04E954();
        v17[3] = v119;
        v17[11] = 0;
        v17[12] = 0;
        v17[13] = sub_1BD2007A8;
        v17[14] = v107;
        v17[15] = sub_1BD2007A8;
        v17[16] = v110;
        __swift_destroy_boxed_opaque_existential_0(&v283, v119, v120, v121, v122, v123, v124, v125);
        v126 = &qword_1EBD3D5B0;
        v127 = &qword_1BE0C1438;
        sub_1BD0DE19C(v17, v236, &qword_1EBD3D5B0, &qword_1BE0C1438);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5A8, &qword_1EBD3D5B0, &qword_1BE0C1438, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D5B8, &qword_1EBD3D5C0, &qword_1BE0C1440, &unk_1BE0BA140);
        v64 = v233;
        sub_1BE04F9A4();
        sub_1BD0D4744(v277, v278, v128, v129, v130, v131, v132, v133);
      }

      else
      {
        sub_1BD0EE8CC(v267, &v283);
        v181 = swift_allocObject();
        v183 = v275;
        v182 = v276;
        *(v181 + 16) = v276;
        *(v181 + 24) = v183;
        sub_1BD0D44B8(v182, v183);
        sub_1BD0D44B8(v182, v183);
        v184 = v268;
        sub_1BE048964();
        v17 = v229;
        sub_1BD1F4588(&v283, v184, sub_1BD2007A8, v181, v229);
        v126 = &qword_1EBD3D5C0;
        v127 = &qword_1BE0C1440;
        sub_1BD0DE19C(v17, v236, &qword_1EBD3D5C0, &qword_1BE0C1440);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5A8, &qword_1EBD3D5B0, &qword_1BE0C1438, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D5B8, &qword_1EBD3D5C0, &qword_1BE0C1440, &unk_1BE0BA140);
        v64 = v233;
        sub_1BE04F9A4();
      }

      sub_1BD0DE53C(v17, v126, v127);
      v41 = v270;
      v153 = &qword_1EBD3D5A0;
      v154 = &qword_1BE0C1430;
      sub_1BD0DE19C(v64, v263, &qword_1EBD3D5A0, &qword_1BE0C1430);
      swift_storeEnumTagMultiPayload();
      sub_1BD20036C();
      sub_1BD20044C();
      v155 = v261;
      sub_1BE04F9A4();
    }

    sub_1BD0DE53C(v64, v153, v154);
    v185 = &qword_1EBD3D560;
    v186 = &qword_1BE0C1410;
    sub_1BD0DE19C(v155, v273, &qword_1EBD3D560, &qword_1BE0C1410);
    swift_storeEnumTagMultiPayload();
    sub_1BD2002E0();
    sub_1BD20052C();
    sub_1BE04F9A4();
    v188 = v275;
    v187 = v276;
    sub_1BD0D4744(v276, v275, v189, v190, v191, v192, v193, v194);
    sub_1BD0D4744(v277, v278, v195, v196, v197, v198, v199, v200);
    sub_1BD0D4744(v33, v41, v201, v202, v203, v204, v205, v206);
    sub_1BD0D4744(v187, v188, v207, v208, v209, v210, v211, v212);
    v213 = v155;
  }

  else
  {
    v72 = v244;
    v73 = v245;
    v74 = v248;
    v75 = v246;
    v76 = v243;
    v276 = v31;
    v253 = v33;
    if (v33)
    {
      if (v37)
      {
        sub_1BD0EE8CC(v267, &v283);
        v77 = swift_allocObject();
        v78 = v253;
        v79 = v270;
        *(v77 + 16) = v253;
        *(v77 + 24) = v79;
        v80 = swift_allocObject();
        v81 = v278;
        *(v80 + 16) = v38;
        *(v80 + 24) = v81;
        sub_1BD0D44B8(v78, v79);
        sub_1BD0D44B8(v38, v81);
        sub_1BD0D44B8(v78, v79);
        sub_1BD0D44B8(v38, v81);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v76[4] = sub_1BE04EEC4();
        v76[5] = v82;
        v282 = 0;
        v280 = 0u;
        v281 = 0u;
        sub_1BD0DE19C(&v280, v279, &qword_1EBD51EC0, &qword_1BE0B7120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
        sub_1BE051694();
        sub_1BD0DE53C(&v280, &qword_1EBD51EC0, &qword_1BE0B7120);
        v83 = v237;
        v84 = sub_1BE04C614();
        v85 = v265;
        (*(*(v84 - 8) + 56))(v265, 1, 1, v84);
        sub_1BD0DE19C(v85, v264, &qword_1EBD3D520, &qword_1BE0C12E0);
        sub_1BE051694();
        sub_1BD0DE53C(v85, &qword_1EBD3D520, &qword_1BE0C12E0);
        v86 = *(v83 + 108);
        *(v76 + v86) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
        swift_storeEnumTagMultiPayload();
        v87 = v76 + *(v83 + 112);
        *v87 = swift_getKeyPath();
        v87[8] = 0;
        type metadata accessor for ExternalAuthorizationModel(0);
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
        sub_1BE048964();
        *v76 = sub_1BE04E954();
        v76[1] = v88;
        sub_1BD0EE8CC(&v283, (v76 + 6));
        __swift_project_boxed_opaque_existential_1(&v283, v284);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel(0);
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
        v76[2] = sub_1BE04E954();
        v76[3] = v89;
        v76[11] = sub_1BD2007A8;
        v76[12] = v77;
        v76[13] = 0;
        v76[14] = 0;
        v76[15] = sub_1BD2007A8;
        v76[16] = v80;
        __swift_destroy_boxed_opaque_existential_0(&v283, v89, v90, v91, v92, v93, v94, v95);
        v96 = &qword_1EBD3D5F0;
        v97 = &qword_1BE0C1458;
        sub_1BD0DE19C(v76, v240, &qword_1EBD3D5F0, &qword_1BE0C1458);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5E8, &qword_1EBD3D5F0, &qword_1BE0C1458, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D5F8, &qword_1EBD3D600, &qword_1BE0C1460, &unk_1BE0BA140);
        v98 = v241;
        sub_1BE04F9A4();
        sub_1BD0D4744(v277, v278, v99, v100, v101, v102, v103, v104);
        v105 = v76;
        v106 = v253;
      }

      else
      {
        sub_1BD0EE8CC(v267, &v283);
        v169 = swift_allocObject();
        v106 = v253;
        v79 = v270;
        *(v169 + 16) = v253;
        *(v169 + 24) = v79;
        sub_1BD0D44B8(v106, v79);
        sub_1BD0D44B8(v106, v79);
        v170 = v268;
        sub_1BE048964();
        sub_1BD1F4C64(&v283, v170, sub_1BD2007A8, v169, v72);
        v96 = &qword_1EBD3D600;
        v97 = &qword_1BE0C1460;
        sub_1BD0DE19C(v72, v240, &qword_1EBD3D600, &qword_1BE0C1460);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5E8, &qword_1EBD3D5F0, &qword_1BE0C1458, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D5F8, &qword_1EBD3D600, &qword_1BE0C1460, &unk_1BE0BA140);
        v98 = v241;
        sub_1BE04F9A4();
        v105 = v72;
      }

      sub_1BD0DE53C(v105, v96, v97);
      v171 = &qword_1EBD3D5E0;
      v172 = &qword_1BE0C1450;
      sub_1BD0DE19C(v98, v252, &qword_1EBD3D5E0, &qword_1BE0C1450);
      swift_storeEnumTagMultiPayload();
      sub_1BD2005B8();
      sub_1BD200698();
      v173 = v276;
      sub_1BE04F9A4();
      sub_1BD0D4744(v106, v79, v174, v175, v176, v177, v178, v179);
      v180 = v98;
    }

    else
    {
      if (v37)
      {
        sub_1BD0EE8CC(v267, &v283);
        v162 = swift_allocObject();
        v163 = v278;
        *(v162 + 16) = v38;
        *(v162 + 24) = v163;
        sub_1BD0D44B8(v38, v163);
        v164 = v268;
        sub_1BE048964();
        sub_1BD1F48F4(&v283, v164, sub_1BD200778, v162, v73);
        v165 = &qword_1EBD3D620;
        v166 = &unk_1BE0C1470;
        sub_1BD0DE19C(v73, v75, &qword_1EBD3D620, &unk_1BE0C1470);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D618, &qword_1EBD3D620, &unk_1BE0C1470, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D628, &qword_1EBD3D630, &qword_1BE0BA348, &unk_1BE0BA140);
        v167 = v230;
        sub_1BE04F9A4();
        v168 = v73;
      }

      else
      {
        sub_1BD0EE8CC(v267, &v283);
        v214 = v268;
        sub_1BE048964();
        sub_1BD141854(&v283, v214, v74);
        v165 = &qword_1EBD3D630;
        v166 = &qword_1BE0BA348;
        sub_1BD0DE19C(v74, v75, &qword_1EBD3D630, &qword_1BE0BA348);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D618, &qword_1EBD3D620, &unk_1BE0C1470, &unk_1BE0BA140);
        sub_1BD0DE4F4(&qword_1EBD3D628, &qword_1EBD3D630, &qword_1BE0BA348, &unk_1BE0BA140);
        v167 = v230;
        sub_1BE04F9A4();
        v168 = v74;
      }

      sub_1BD0DE53C(v168, v165, v166);
      v79 = v270;
      v106 = v253;
      v171 = &qword_1EBD3D610;
      v172 = &qword_1BE0C1468;
      sub_1BD0DE19C(v167, v252, &qword_1EBD3D610, &qword_1BE0C1468);
      swift_storeEnumTagMultiPayload();
      sub_1BD2005B8();
      sub_1BD200698();
      v173 = v276;
      sub_1BE04F9A4();
      v180 = v167;
    }

    sub_1BD0DE53C(v180, v171, v172);
    v185 = &qword_1EBD3D5D0;
    v186 = &qword_1BE0C1448;
    sub_1BD0DE19C(v173, v273, &qword_1EBD3D5D0, &qword_1BE0C1448);
    swift_storeEnumTagMultiPayload();
    sub_1BD2002E0();
    sub_1BD20052C();
    sub_1BE04F9A4();
    sub_1BD0D4744(v277, v278, v215, v216, v217, v218, v219, v220);
    sub_1BD0D4744(v106, v79, v221, v222, v223, v224, v225, v226);
    v213 = v173;
  }

  return sub_1BD0DE53C(v213, v185, v186);
}