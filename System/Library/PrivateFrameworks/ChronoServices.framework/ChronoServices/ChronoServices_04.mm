unint64_t sub_195F5C774(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_195FA0E58() + 1) & ~v6;
    v37 = v5;
    while (1)
    {
      v10 = (*(a2 + 48) + 32 * v7);
      v11 = v9;
      v13 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      sub_195FA1398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v17 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v18 = v15 ? v14 : 0;
      *(inited + 32) = v18;
      *(inited + 40) = v15;
      *(inited + 48) = v13;
      *(inited + 56) = v12;

      sub_195EB6308(v17, &v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_195FAC070;
      v20 = sub_195EB5F80();
      v21 = sub_195EB6074(v20);
      v23 = v22;

      *(v19 + 32) = v21;
      *(v19 + 40) = v23;

      sub_195EB6214(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
      sub_195FA0828();

      v9 = v11;

      sub_195FA0958();

      result = sub_195FA13E8();
      v25 = result & v8;
      if (v4 >= v11)
      {
        break;
      }

      if (v25 < v11)
      {
        goto LABEL_13;
      }

LABEL_14:
      v26 = *(a2 + 48);
      v27 = (v26 + 32 * v4);
      v28 = (v26 + 32 * v7);
      if (v4 != v7 || v27 >= v28 + 2)
      {
        v29 = v28[1];
        *v27 = *v28;
        v27[1] = v29;
      }

      v30 = *(a2 + 56);
      v31 = *(*(a3(0) - 8) + 72);
      v32 = v31 * v4;
      result = v30 + v31 * v4;
      if (v31 * v4 >= (v31 * v7) && result < v30 + v31 * v7 + v31)
      {
        v4 = v7;
        v5 = v37;
        if (v32 != v31 * v7)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v4 = v7;
        }

        goto LABEL_5;
      }

      result = swift_arrayInitWithTakeFrontToBack();
      v4 = v7;
LABEL_4:
      v5 = v37;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v25 < v11)
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v4 < v25)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_195F5CADC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_195F59CBC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_195F5E410();
      v8 = v16;
      goto LABEL_8;
    }

    sub_195F5A800(v13, a3 & 1);
    v8 = sub_195F59CBC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_195FA1338();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_195F2E09C(a1, v19);
  }

  else
  {
    sub_195F5DA68(v8, a2, a1, v18);

    return a2;
  }
}

id sub_195F5CC1C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_195F59D70(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_195F5AAE0(v13, a3 & 1);
      v8 = sub_195F59D70(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for CHSExtensionIdentity();
        result = sub_195FA1338();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_195F5E590();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_195F5CD88(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_195F59E04(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_195F5AD64(v15, a4 & 1);
      v10 = sub_195F59E04(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818);
        sub_195FA1338();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_195F5E6F4();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2 & 1;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = v20[7] + 16 * v10;
  *v23 = a1;
  *(v23 + 8) = a2 & 1;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  v26 = a3;
}

uint64_t sub_195F5CF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_195EC7CCC(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_195F5AFE8(v20, a6 & 1);
      v15 = sub_195EC7CCC(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_195FA1338();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_195F5E868();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25[7] + 24 * v15);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_195F5D0C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_195EC7CCC(a2, a3);
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
      sub_195F5B2C0(v16, a4 & 1, &qword_1EAEEE100, &unk_195FAF028);
      v11 = sub_195EC7CCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_195FA1338();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_195F5ECC8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
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

uint64_t sub_195F5D27C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_195F59EE8(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_195F5B588(v18, a3 & 1, a4, a5);
      v13 = sub_195F59EE8(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        type metadata accessor for ControlSessionKey();
        result = sub_195FA1338();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_195F5EF94(a4, a5);
      v13 = v21;
    }
  }

  v23 = *v8;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  *(v23[6] + 8 * v13) = a2;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

void sub_195F5D400(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_195EC7CCC(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_195F5B858(v22, a7 & 1);
      v17 = sub_195EC7CCC(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_195FA1338();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_195F5F0E8();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    v33 = *(v28 + 16);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v27[6] + 16 * v17);
  *v29 = a5;
  v29[1] = a6;
  v30 = v27[7] + 32 * v17;
  *v30 = a1;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4 & 1;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

uint64_t sub_195F5D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_195F59F90(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
      return sub_195F5FF10(a1, v23 + *(*(updated - 8) + 72) * v16, type metadata accessor for IconStore.FileVersionUpdateMigration);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_195F5F284(type metadata accessor for IconStore.FileVersionUpdateMigration, &unk_1EAEEE0D8, &qword_195FAEFF8, type metadata accessor for IconStore.FileVersionUpdateMigration);
    goto LABEL_7;
  }

  sub_195F5BB30(v19, a6 & 1, type metadata accessor for IconStore.FileVersionUpdateMigration, &unk_1EAEEE0D8, &qword_195FAEFF8, type metadata accessor for IconStore.FileVersionUpdateMigration);
  v26 = sub_195F59F90(a2, a3, a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA00, &qword_195FAF000);
    result = sub_195FA1338();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_195F5DAD0(v16, a2, a3, a4, a5, a1, v22, type metadata accessor for IconStore.FileVersionUpdateMigration, type metadata accessor for IconStore.FileVersionUpdateMigration);
}

uint64_t sub_195F5D818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_195F59F90(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for IconStore.FileRenameMigration(0);
      return sub_195F5FF10(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for IconStore.FileRenameMigration);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_195F5F284(type metadata accessor for IconStore.FileRenameMigration, &qword_1EAEEE0D0, &qword_195FAEFF0, type metadata accessor for IconStore.FileRenameMigration);
    goto LABEL_7;
  }

  sub_195F5BB30(v19, a6 & 1, type metadata accessor for IconStore.FileRenameMigration, &qword_1EAEEE0D0, &qword_195FAEFF0, type metadata accessor for IconStore.FileRenameMigration);
  v26 = sub_195F59F90(a2, a3, a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA00, &qword_195FAF000);
    result = sub_195FA1338();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_195F5DAD0(v16, a2, a3, a4, a5, a1, v22, type metadata accessor for IconStore.FileRenameMigration, type metadata accessor for IconStore.FileRenameMigration);
}

_OWORD *sub_195F5DA68(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_195F2E09C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_195F5DAD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a7[6] + 32 * a1);
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v13 = a7[7];
  v14 = a8(0);
  result = sub_195F5FE40(a6, v13 + *(*(v14 - 8) + 72) * a1, a9);
  v16 = a7[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v18;
  }

  return result;
}

unint64_t sub_195F5DB80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_195EC6848(&qword_1EAEEBB68, type metadata accessor for CFString, &unk_195FAB318);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_195FA0568();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_195F5DC8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CHSExtensionIdentity();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_195FA0D88();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_195F5DD50(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_195EB4B30(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_195FA0D88();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_195F5DE1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_195FA08B8();
      v8 = v7;
      if (v6 == sub_195FA08B8() && v8 == v9)
      {
        break;
      }

      v11 = sub_195FA12B8();

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

unint64_t sub_195F5DF20(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    swift_beginAccess();
    swift_beginAccess();
    do
    {
      v14 = *(*(v6 + 48) + 8 * v5);
      swift_beginAccess();
      v15 = v14[2] == a1[2] && v14[3] == a1[3];
      if (v15 || (sub_195FA12B8() & 1) != 0)
      {
        sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0);
        swift_beginAccess();
        v9 = v14[4];
        v10 = a1[4];

        v11 = v9;
        v12 = v10;
        v13 = sub_195FA0D88();

        if (v13)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_195F5E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v39 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v38 = ~v6;
    if (a4)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }

    v40 = v8;
    while (1)
    {
      v9 = (*(v44 + 48) + 32 * v7);
      v11 = *v9;
      v10 = v9[1];
      v13 = v9[2];
      v12 = v9[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v15 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v16 = v12 ? v13 : 0;
      *(inited + 32) = v16;
      *(inited + 40) = v12;
      *(inited + 48) = v11;
      *(inited + 56) = v10;

      sub_195EB6308(v15, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_195FAC070;
      v18 = sub_195EB5F80();
      v19 = sub_195EB6074(v18);
      v21 = v20;

      *(v17 + 32) = v19;
      *(v17 + 40) = v21;

      sub_195EB6214(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
      v23 = sub_195FA0828();
      v25 = v24;

      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_195FAC280;
      *(v26 + 32) = v40;
      *(v26 + 40) = a4;
      *(v26 + 48) = a1;
      *(v26 + 56) = a2;

      sub_195EB6308(v26, v45);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_195FAC070;
      v28 = sub_195EB5F80();
      v29 = sub_195EB6074(v28);
      v31 = v30;

      *(v27 + 32) = v29;
      *(v27 + 40) = v31;

      sub_195EB6214(v32);
      v33 = sub_195FA0828();
      v35 = v34;

      if (v23 == v33 && v25 == v35)
      {
        break;
      }

      v36 = sub_195FA12B8();

      if ((v36 & 1) == 0)
      {
        v7 = (v7 + 1) & v38;
        if ((*(v39 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v7;
    }
  }

  return v7;
}

id sub_195F5E410()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE110, &qword_195FAF040);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_195EBDAFC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_195F2E09C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_195F5E590()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C8, &unk_195FAEFE0);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

id sub_195F5E6F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED630, &qword_195FAC388);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        v22 = v20;
        result = v18;
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

void *sub_195F5E868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0F0, &unk_195FAF010);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

id sub_195F5EA00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C0, &unk_195FAEFD0);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

id sub_195F5EB5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0F8, &qword_195FAF020);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_195F5ECC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE100, &unk_195FAF028);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_195F5EE38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0B8, &qword_195FAEFC8);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_195F5EF94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_195FA1088();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_195F5F0E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0E8, &qword_195FAF008);
  v2 = *v0;
  v3 = sub_195FA1088();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
        v28 = v25;
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

void *sub_195F5F284(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v44 = a4;
  v7 = v4;
  v8 = a1(0);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_195FA1088();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v39 = v7;
    v40 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v40, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v45 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v10;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 32 * v25;
        v27 = (*(v10 + 48) + 32 * v25);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v31 = v27[3];
        v32 = v42;
        v33 = *(v43 + 72) * v25;
        v34 = *(v10 + 56) + v33;
        v35 = v44;
        sub_195F5FEA8(v34, v42, v44);
        v36 = v45;
        v37 = (*(v45 + 48) + v26);
        *v37 = v28;
        v37[1] = v29;
        v37[2] = v30;
        v37[3] = v31;
        v38 = v35;
        v10 = v41;
        sub_195F5FE40(v32, *(v36 + 56) + v33, v38);

        v20 = v46;
      }

      while (v46);
    }

    v23 = v16;
    v12 = v45;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v39;
        goto LABEL_21;
      }

      v24 = *(v40 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v46 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

uint64_t sub_195F5F4EC(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a5;
  v41 = a4;
  v40 = sub_195FA0788();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = a6;
  v48[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a6 - 8) + 16))();
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  os_unfair_lock_assert_owner(*(off_1EAEEBF60 + 2));
  v14 = (*(a7 + 8))(a6, a7);
  v16 = v15;
  sub_195EC97E0(v48, v47);
  v17 = swift_allocObject();
  sub_195EB9104(v47, v17 + 16);
  v18 = type metadata accessor for StateCaptureItem();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_title];
  *v20 = v14;
  v20[1] = v16;
  v21 = &v19[OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_identifier];
  v42 = a2;
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v19[OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler];
  *v22 = sub_195F5FF78;
  v22[1] = v17;
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  if (v41)
  {

    v23 = sub_195FA0D08();
  }

  else
  {
    v24 = v40;
    (*(v11 + 104))(v13, *MEMORY[0x1E69E7FA0], v40);

    v23 = sub_195FA0D48();
    (*(v11 + 8))(v13, v24);
  }

  sub_195EC9868(sub_195F5FF78, v17, v14, v16, v23, v45);

  v25 = &v19[OBJC_IVAR____TtC14ChronoServices16StateCaptureItem__invalidatable];
  v26 = v45[1];
  *v25 = v45[0];
  *(v25 + 1) = v26;
  *(v25 + 4) = v46;
  v44.receiver = v19;
  v44.super_class = v18;
  v27 = objc_msgSendSuper2(&v44, sel_init);

  if (qword_1EAEEBEC8 != -1)
  {
    swift_once();
  }

  v28 = sub_195FA0678();
  __swift_project_value_buffer(v28, qword_1EAEF72D0);

  v29 = sub_195FA0658();
  v30 = sub_195FA0CC8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v47[0] = v32;
    *v31 = 136446466;
    v33 = sub_195EBD554(v14, v16, v47);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2082;
    v34 = v42;
    *(v31 + 14) = sub_195EBD554(v42, a3, v47);
    _os_log_impl(&dword_195EB2000, v29, v30, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v32, -1, -1);
    MEMORY[0x19A8C5B70](v31, -1, -1);
  }

  else
  {

    v34 = v42;
  }

  v35 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  v36 = v43;
  swift_beginAccess();

  v37 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v45[0] = *(v36 + v35);
  *(v36 + v35) = 0x8000000000000000;
  sub_195ECA3B0(v37, v34, a3, isUniquelyReferenced_nonNull_native);

  *(v36 + v35) = *&v45[0];
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

uint64_t sub_195F5FE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_195F5FEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_195F5FF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t DeviceScopedIdentity<>.hostIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *DeviceScopedIdentity<>.init(hostIdentifier:deviceID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t DeviceScopedIdentity<>.powerlogHostIdentity.getter()
{
  if (v0[3])
  {
    MEMORY[0x19A8C3F70](*v0, v0[1]);
    return 0x2D65746F6D6552;
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

id static CHSWidgetMetrics.mock()()
{
  v0 = objc_allocWithZone(CHSWidgetMetrics);

  return [v0 initWithSize:10.0 cornerRadius:{10.0, 5.0}];
}

uint64_t CHSControlDescriptorsPredicate.includeRemote.getter()
{
  v1 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CHSControlDescriptorsPredicate.includeRemote.setter(char a1)
{
  v3 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CHSControlDescriptorsPredicate.includeOnlyRemoteEligible.getter()
{
  v1 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CHSControlDescriptorsPredicate.includeOnlyRemoteEligible.setter(char a1)
{
  v3 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

CHSControlDescriptorsPredicate __swiftcall CHSControlDescriptorsPredicate.init(includingVisible:hidden:)(Swift::Bool includingVisible, Swift::Bool hidden)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v4 initIncludingVisible:includingVisible hidden:hidden];
  result.includeHidden = v5;
  result.includeVisible = BYTE1(v5);
  result.includeRemote = BYTE2(v5);
  result.includeOnlyRemoteEligible = HIBYTE(v5);
  return result;
}

id CHSControlDescriptorsPredicate.init(includingVisible:hidden:)(char a1, char a2)
{
  *(v2 + OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote) = 0;
  *(v2 + OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible) = 0;
  *(v2 + OBJC_IVAR___CHSControlDescriptorsPredicate_includeVisible) = a1;
  *(v2 + OBJC_IVAR___CHSControlDescriptorsPredicate_includeHidden) = a2;
  v4.super_class = CHSControlDescriptorsPredicate;
  return objc_msgSendSuper2(&v4, sel_init);
}

id CHSControlDescriptorsPredicate.init(includingVisible:hidden:extensionIdentities:)(char a1, char a2)
{

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initIncludingVisible:a1 & 1 hidden:a2 & 1];
}

id CHSControlDescriptorsPredicate.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for CHSControlDescriptorsPredicate();
  *a1 = v3;

  return v3;
}

uint64_t CHSControlDescriptorsPredicate.hash.getter()
{
  sub_195FA13F8();
  [v0 includeHidden];
  sub_195FA13B8();
  [v0 includeVisible];
  sub_195FA13B8();
  [v0 includeRemote];
  sub_195FA13B8();
  return sub_195FA13D8();
}

CHSControlDescriptorsPredicate __swiftcall CHSControlDescriptorsPredicate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.includeHidden = v1;
  result.includeVisible = BYTE1(v1);
  result.includeRemote = BYTE2(v1);
  result.includeOnlyRemoteEligible = HIBYTE(v1);
  return result;
}

uint64_t static CHSControlDescriptorsPredicate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEEE120 = a1;
  return result;
}

CHSControlDescriptorsPredicate_optional __swiftcall CHSControlDescriptorsPredicate.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  result.value.super.isa = v2;
  *&result.value.includeHidden = v3;
  result.is_nil = v4;
  return result;
}

_BYTE *CHSControlDescriptorsPredicate.init(coder:)(void *a1)
{
  v2 = sub_195EBC9F0(a1);

  return v2;
}

uint64_t IconInfo.containerIdentity.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t IconInfo.version.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 IconInfo.init(containerIdentity:version:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1->n128_u64[1];
  a4->n128_u64[0] = a1->n128_u64[0];
  a4->n128_u64[1] = v4;
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

uint64_t IconInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  v10 = sub_195F60D0C(v1, v2, v3, v4);
  MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x19A8C3F70](v7, v8);

  return v10;
}

uint64_t IconInfo.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  sub_195F37930(*v1, v1[1], v1[2], v1[3]);
  sub_195FA0958();

  if (!v2)
  {
    return sub_195FA13B8();
  }

  sub_195FA13B8();

  return sub_195FA0958();
}

uint64_t IconInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  sub_195FA1398();
  sub_195F37930(v1, v2, v3, v4);
  sub_195FA0958();

  sub_195FA13B8();
  if (v5)
  {
    sub_195FA0958();
  }

  return sub_195FA13E8();
}

uint64_t sub_195F60A38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  sub_195FA1398();
  sub_195F37930(v1, v2, v3, v4);
  sub_195FA0958();

  sub_195FA13B8();
  if (v5)
  {
    sub_195FA0958();
  }

  return sub_195FA13E8();
}

uint64_t sub_195F60AF4(uint64_t a1)
{
  v2 = v1[5];
  sub_195F37930(*v1, v1[1], v1[2], v1[3]);
  sub_195FA0958();

  if (!v2)
  {
    return sub_195FA13B8();
  }

  sub_195FA13B8();

  return sub_195FA0958();
}

uint64_t sub_195F60B94(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  sub_195FA1398();
  sub_195F37930(v2, v3, v4, v5);
  sub_195FA0958();

  sub_195FA13B8();
  if (v6)
  {
    sub_195FA0958();
  }

  return sub_195FA13E8();
}

uint64_t sub_195F60C4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  v10 = sub_195F60D0C(v1, v2, v3, v4);
  MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x19A8C3F70](v7, v8);

  return v10;
}

uint64_t sub_195F60D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_195FAC280;
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 32) = v10;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_195EB6308(v9, &v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v11 = sub_195FA0828();
  swift_bridgeObjectRelease_n();
  return v11;
}

BOOL _s14ChronoServices8IconInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = sub_195F37930(*a1, a1[1], a1[2], a1[3]);
  v12 = v11;
  if (v10 == sub_195F37930(v4, v5, v6, v7) && v12 == v13)
  {

    if (v2)
    {
      return v8 && (v3 == v9 && v2 == v8 || (sub_195FA12B8() & 1) != 0);
    }
  }

  else
  {
    v15 = sub_195FA12B8();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }

    if (v2)
    {
      return v8 && (v3 == v9 && v2 == v8 || (sub_195FA12B8() & 1) != 0);
    }
  }

  return !v8;
}

unint64_t sub_195F60F24()
{
  result = qword_1EAEEE1A8;
  if (!qword_1EAEEE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE1A8);
  }

  return result;
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

uint64_t sub_195F60F8C(uint64_t a1, int a2)
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

uint64_t sub_195F60FD4(uint64_t result, int a2, int a3)
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

id sub_195F61030(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_195FA0398();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_195FA0478();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_195FA0328();

    swift_willThrow();
    v9 = sub_195FA0478();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.sha256()()
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = sub_195FA04E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195F61834();
  v12 = *(v7 + 16);
  v11 = (v7 + 16);
  v12(v9, v0, v6);
  v13 = v10;
  v14 = sub_195F61030(v9);
  if (v1)
  {
    goto LABEL_3;
  }

  v15 = v14;
  v58 = v5;
  v56 = v3;
  v57 = v2;
  v59 = swift_slowAlloc();
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v16 = objc_autoreleasePoolPush();
  v19 = sub_195FA0C68();
  v21 = v20;
  v22 = 0;
  v23 = 0xF000000000000000;
  v60 = v15;
  while (1)
  {
    v25 = v22;
    v26 = v23;
    v22 = v19;
    v23 = v21;
    sub_195EC5A34(v25, v26);
    if (v21 >> 60 == 15)
    {
      break;
    }

    v27 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v27 != 2)
      {
        *(&data + 6) = 0;
        *&data = 0;
        CC_SHA256_Update(&c, &data, 0);
        sub_195EC5A34(v19, v21);
        break;
      }

      v34 = *(v19 + 16);

      v35 = sub_195FA01D8();
      if (v35)
      {
        v36 = sub_195FA0208();
        if (__OFSUB__(v34, v36))
        {
          goto LABEL_39;
        }

        v35 += v34 - v36;
      }

      sub_195FA01F8();
      v38 = *(v22 + 16);
      v37 = *(v22 + 24);
      v39 = v37 - v38;
      if (__OFSUB__(v37, v38))
      {
        goto LABEL_34;
      }

      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v39))
      {
        goto LABEL_38;
      }

      CC_SHA256_Update(&c, v35, v39);
      sub_195EC5A34(v22, v21);
      objc_autoreleasePoolPop(v16);
      v29 = *(v22 + 16);
      v30 = *(v22 + 24);
    }

    else
    {
      v62 = v21;
      v28 = HIDWORD(v19);
      if (!v27)
      {
        *&data = v19;
        v23 = v62;
        BYTE8(data) = v62;
        BYTE9(data) = BYTE1(v21);
        BYTE10(data) = BYTE2(v21);
        BYTE11(data) = BYTE3(v21);
        BYTE12(data) = BYTE4(v21);
        BYTE13(data) = BYTE5(v21);
        CC_SHA256_Update(&c, &data, BYTE6(v21));
        sub_195EC5A34(v19, v23);
        objc_autoreleasePoolPop(v16);
        if ((v21 & 0xFF000000000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      }

      v29 = v19;
      v30 = v19 >> 32;
      if (v19 >> 32 < v19)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v31 = sub_195FA01D8();
      if (v31)
      {
        v32 = sub_195FA0208();
        if (__OFSUB__(v29, v32))
        {
          goto LABEL_40;
        }

        v31 += v29 - v32;
      }

      sub_195FA01F8();
      v33 = v28 - v22;
      if (__OFSUB__(v28, v22))
      {
        goto LABEL_35;
      }

      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      CC_SHA256_Update(&c, v31, v33);
      v23 = v62;
      sub_195EC5A34(v22, v62);
      objc_autoreleasePoolPop(v16);
    }

    if (v29 == v30)
    {
      goto LABEL_28;
    }

LABEL_5:
    v16 = objc_autoreleasePoolPush();
    v19 = sub_195FA0C68();
    v21 = v24;
  }

  objc_autoreleasePoolPop(v16);
LABEL_28:
  v40 = v59;
  CC_SHA256_Final(v59, &c);
  v41 = sub_195F61A38(v40, 0x20uLL);
  v43 = v42;
  *&data = 0;
  *(&data + 1) = 0xE000000000000000;
  v62 = v23;
  sub_195EC08E4(v41, v42);
  v55 = v41;
  v54 = v43;
  sub_195FA04F8();
  sub_195F61AE8();
  sub_195FA0DE8();
  if (v66)
  {
    v44 = v57;
    v45 = v58;
  }

  else
  {
    v61 = xmmword_195FAC070;
    v46 = MEMORY[0x1E69E7508];
    v47 = MEMORY[0x1E69E7558];
    v44 = v57;
    v45 = v58;
    do
    {
      v48 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1C0, &qword_195FAF750);
      v49 = swift_allocObject();
      *(v49 + 16) = v61;
      *(v49 + 56) = v46;
      *(v49 + 64) = v47;
      *(v49 + 32) = v48;
      v50 = sub_195FA08C8();
      MEMORY[0x19A8C3F70](v50);

      sub_195FA0DE8();
    }

    while ((v66 & 1) == 0);
  }

  sub_195EC5A34(v22, v62);
  sub_195EC0890(v55, v54);
  (*(v56 + 8))(v45, v44);
  v11 = *(&data + 1);
  v13 = data;
  MEMORY[0x19A8C5B70](v59, -1, -1);
  v51 = v60;
  sub_195F61880(v60);

LABEL_3:
  v17 = v13;
  v18 = v11;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

unint64_t sub_195F61834()
{
  result = qword_1EAEEE1B0;
  if (!qword_1EAEEE1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEE1B0);
  }

  return result;
}

void sub_195F61880(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v6[0];
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v6[0];
    v5 = sub_195FA0328();

    swift_willThrow();
  }
}

unint64_t sub_195F61960(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F61980(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

unint64_t sub_195F61A38(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_195F61980(a1, &a1[a2]);
  }

  sub_195FA0218();
  swift_allocObject();
  sub_195FA01C8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_195FA04A8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_195F61AE8()
{
  result = qword_1EAEEE1B8;
  if (!qword_1EAEEE1B8)
  {
    sub_195FA04E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE1B8);
  }

  return result;
}

uint64_t sub_195F61B40(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_195F61BA0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_195F61BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_195F61C40(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_195F61C98()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_195F61CDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id sub_195F61D74()
{
  swift_beginAccess();
  v1 = [*(v0 + 32) control];

  return v1;
}

uint64_t ControlSessionKey.loggingIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__CFString *ControlSessionKey.__allocating_init(identifier:identity:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_195F62B28(a1, a2, a3);

  return v6;
}

__CFString *ControlSessionKey.init(identifier:identity:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_195F62B28(a1, a2, a3);

  return v4;
}

void sub_195F61E88(uint64_t a1)
{
  swift_beginAccess();

  sub_195FA0958();

  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_195FA0D98();
}

__CFString *sub_195F61F20()
{
  v1 = v0;
  sub_195FA0F38();

  swift_beginAccess();
  result = NSStringFromCHSControlContentType([*(v0 + 32) contentType]);
  if (result)
  {
    v3 = result;
    v4 = sub_195FA08B8();
    v6 = v5;

    MEMORY[0x19A8C3F70](v4, v6);

    MEMORY[0x19A8C3F70](2112093, 0xE300000000000000);
    swift_beginAccess();
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    MEMORY[0x19A8C3F70](v7, v8);

    MEMORY[0x19A8C3F70](0x69746E656469202CLL, 0xEB000000003D7974);
    v9 = [*(v1 + 32) control];
    v10 = [v9 _loggingIdentifier];

    v11 = sub_195FA08B8();
    v13 = v12;

    MEMORY[0x19A8C3F70](v11, v13);

    MEMORY[0x19A8C3F70](62, 0xE100000000000000);
    return 0xD000000000000013;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_195F620D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x797469746E656469;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x797469746E656469;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_195FA12B8();
  }

  return v8 & 1;
}

uint64_t sub_195F62180()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F62208(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F6227C(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F62300@<X0>(char *a2@<X8>)
{
  v3 = sub_195FA10D8();

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

void sub_195F62360(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x797469746E656469;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_195F623A4()
{
  if (*v0)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_195F623E4@<X0>(char *a3@<X8>)
{
  v4 = sub_195FA10D8();

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

uint64_t sub_195F62448(uint64_t a1)
{
  v2 = sub_195F62EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F62484(uint64_t a1)
{
  v2 = sub_195F62EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F624D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1C8, &qword_195FAF1C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F62EC0();
  sub_195FA1468();
  swift_beginAccess();
  v12[0] = 0;

  sub_195FA11F8();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    swift_beginAccess();
    v11 = *(v3 + 32);
    v10[7] = 1;
    type metadata accessor for CHSControlInstanceIdentity(0);
    sub_195F6328C(&unk_1EAEEBD00, 255, type metadata accessor for CHSControlInstanceIdentity, &protocol conformance descriptor for CHSControlInstanceIdentity);
    sub_195FA1238();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ControlSessionKey.deinit()
{

  return v0;
}

uint64_t ControlSessionKey.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F6276C()
{
  sub_195FA1398();
  swift_beginAccess();
  sub_195FA0958();
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_195FA0D98();

  return sub_195FA13E8();
}

__CFString *sub_195F627F0@<X0>(__CFString **a1@<X8>, void *a2@<X0>)
{
  result = sub_195F62C70(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_195F62840()
{
  v1 = *v0;
  sub_195FA1398();
  swift_beginAccess();
  sub_195FA0958();
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_195FA0D98();

  return sub_195FA13E8();
}

void sub_195F628C8(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();

  sub_195FA0958();

  swift_beginAccess();
  v3 = *(v2 + 32);
  sub_195FA0D98();
}

uint64_t sub_195F62960(uint64_t a1)
{
  sub_195FA1398();
  v2 = *v1;
  swift_beginAccess();

  sub_195FA0958();

  swift_beginAccess();
  v3 = *(v2 + 32);
  sub_195FA0D98();

  return sub_195FA13E8();
}

uint64_t _s14ChronoServices17ControlSessionKeyC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (v7 = 0, (sub_195FA12B8() & 1) != 0))
  {
    sub_195F632D4();
    swift_beginAccess();
    v8 = a1[4];
    swift_beginAccess();
    v9 = a2[4];
    v10 = v8;
    v11 = v9;
    v7 = sub_195FA0D88();
  }

  return v7 & 1;
}

__CFString *sub_195F62B28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = a3;

  MEMORY[0x19A8C3F70](45, 0xE100000000000000);
  v6 = [v5 control];
  v7 = [v6 _loggingIdentifier];

  v8 = sub_195FA08B8();
  v10 = v9;

  MEMORY[0x19A8C3F70](v8, v10);

  MEMORY[0x19A8C3F70](8237, 0xE200000000000000);
  result = NSStringFromCHSControlContentType([v5 contentType]);
  if (result)
  {
    v12 = result;
    v13 = sub_195FA08B8();
    v15 = v14;

    MEMORY[0x19A8C3F70](v13, v15);

    MEMORY[0x19A8C3F70](41, 0xE100000000000000);
    v4[5] = a1;
    v4[6] = a2;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_195F62C70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1D8, &qword_195FAF458);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F62EC0();
  sub_195FA1448();
  if (!v1)
  {
    v15 = 0;
    v8 = sub_195FA1138();
    v10 = v9;
    type metadata accessor for CHSControlInstanceIdentity(0);
    v14 = 1;
    sub_195F6328C(&qword_1EAEEBAF0, 255, type metadata accessor for CHSControlInstanceIdentity, &protocol conformance descriptor for CHSControlInstanceIdentity);
    sub_195FA1178();
    v12 = v13[1];
    type metadata accessor for ControlSessionKey();
    swift_allocObject();
    v7 = sub_195F62B28(v8, v10, v12);

    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_195F62EC0()
{
  result = qword_1EAEEBF48;
  if (!qword_1EAEEBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF48);
  }

  return result;
}

unint64_t sub_195F63188()
{
  result = qword_1EAEEE1D0;
  if (!qword_1EAEEE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE1D0);
  }

  return result;
}

unint64_t sub_195F631E0()
{
  result = qword_1EAEEBF38;
  if (!qword_1EAEEBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF38);
  }

  return result;
}

unint64_t sub_195F63238()
{
  result = qword_1EAEEBF40;
  if (!qword_1EAEEBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF40);
  }

  return result;
}

uint64_t sub_195F6328C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F632D4()
{
  result = qword_1EAEEBE10;
  if (!qword_1EAEEBE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEBE10);
  }

  return result;
}

uint64_t static AppIntent.isLauncher.getter(uint64_t a1, uint64_t a2)
{
  if (swift_conformsToProtocol2() && a1 || (sub_195FA00D8() & 1) != 0 || sub_195F6341C(a1, a2) || sub_195F63828(a1, a2))
  {
    return 1;
  }

  return sub_195F638B8();
}

BOOL static AppIntent.isCameraCapture.getter(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

BOOL sub_195F6341C(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA0158();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_195FA0168();
  v20 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v19 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v21 = &v19 - v12;
  sub_195FA00E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1E0, &qword_195FAF470);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_195FADCC0;
  sub_195FA0148();
  sub_195FA0118();
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_195FA0128();
  sub_195FA0118();
  v14(v5, v2);
  sub_195FA0138();
  sub_195FA0118();
  v14(v5, v2);
  v22 = v13;
  sub_195F64124(&qword_1EAEEC480, MEMORY[0x1E6959F50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1E8, &qword_195FAF478);
  sub_195F640C0();
  v15 = v19;
  sub_195FA0E38();
  sub_195F64124(&qword_1EAEEC488, MEMORY[0x1E6959F48]);
  sub_195FA0A78();
  sub_195F64124(&qword_1EAEEC478, MEMORY[0x1E6959F58]);
  v16 = v21;
  sub_195FA1498();
  sub_195FA0E18();
  v17 = *(v20 + 8);
  v17(v15, v6);
  v17(v11, v6);
  sub_195FA0E28();
  sub_195F64124(&qword_1EAEEC490, MEMORY[0x1E6959F40]);
  LOBYTE(v13) = sub_195FA0868();
  v17(v11, v6);
  v17(v16, v6);
  return (v13 & 1) == 0;
}

BOOL sub_195F63828(uint64_t a1, uint64_t a2)
{
  v3 = swift_conformsToProtocol2();
  result = 0;
  if (v3)
  {
    if (v2)
    {
      swift_getAssociatedTypeWitness();
      return swift_dynamicCastMetatype() != 0;
    }
  }

  return result;
}

uint64_t sub_195F638B8()
{
  v0 = sub_195FA00F8();
  v1 = [v0 outputFlags];

  return v1 & 1;
}

uint64_t CHSIntentReference.appIntent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a1;
  v5[7] = a3;
  return MEMORY[0x1EEE6DFA0](sub_195F63ACC, 0, 0);
}

uint64_t sub_195F63ACC()
{
  v1 = [*(v0 + 72) intent];
  v2 = [v1 _asMigratedAppIntent];
  *(v0 + 80) = v2;

  if (v2)
  {
    v3 = [v2 linkAction];
    *(v0 + 88) = v3;
    if (v3)
    {
      v4 = v3;
      *(v0 + 40) = sub_195EB4B30(0, &unk_1EAEEBE18, 0x1E69AC640);
      *(v0 + 16) = v4;
      v5 = v4;
      v6 = swift_task_alloc();
      *(v0 + 96) = v6;
      *v6 = v0;
      v6[1] = sub_195F63D30;
      v7 = *(v0 + 48);

      return MEMORY[0x1EEDB2DA8](v7, v0 + 16);
    }
  }

  if (qword_1EAEED018 != -1)
  {
    swift_once();
  }

  v8 = sub_195FA0678();
  __swift_project_value_buffer(v8, qword_1EAEF7360);
  v9 = sub_195FA0658();
  v10 = sub_195FA0CA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_195EB2000, v9, v10, "Error: Unable to get LNAction from intent", v11, 2u);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);

  (*(*(v12 - 8) + 56))(v13, 1, 1, v12);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_195F63D30()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_195F63EEC;
  }

  else
  {
    v2 = sub_195F63E44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F63E44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_195F63EEC()
{
  v1 = *(v0 + 88);

  if (qword_1EAEED018 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v3 = sub_195FA0678();
  __swift_project_value_buffer(v3, qword_1EAEF7360);
  v4 = v2;
  v5 = sub_195FA0658();
  v6 = sub_195FA0CA8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_195EB2000, v5, v6, "Error getting AppIntent from LNAction: %{public}@", v9, 0xCu);
    sub_195F27EBC(v10);
    MEMORY[0x19A8C5B70](v10, -1, -1);
    MEMORY[0x19A8C5B70](v9, -1, -1);
  }

  else
  {
  }

  (*(*(*(v0 + 56) - 8) + 56))(*(v0 + 48), 1, 1);
  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_195F640C0()
{
  result = qword_1EAEEC470;
  if (!qword_1EAEEC470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEE1E8, &qword_195FAF478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC470);
  }

  return result;
}

uint64_t sub_195F64124(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_195FA0168();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195F641C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_195FA12B8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_195F64238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_195F641C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_195F64270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F28E1C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_195F642A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_195F642FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *RelevanceCache.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = sub_195F2DC58(MEMORY[0x1E69E7CC0]);
  v5[3] = v6;
  v5[4] = 0;
  v5[5] = a1;
  v5[6] = a2;
  sub_195F65098();
  if (v2)
  {
  }

  return v5;
}

uint64_t CacheFile.filename.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CacheFile.filename.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CacheFile.size.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      return BYTE6(v3);
    }

    v9 = __OFSUB__(HIDWORD(v2), v2);
    v10 = HIDWORD(v2) - v2;
    if (!v9)
    {
      return v10;
    }

    goto LABEL_11;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v8 = v2 + 16;
  v6 = *(v2 + 16);
  v7 = *(v8 + 8);
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t CacheFile.relevances.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1F0, &qword_195FAF650);
  *(a1 + 32) = sub_195EB5F38(&qword_1EAEEE1F8, &qword_1EAEEE1F0, &qword_195FAF650, MEMORY[0x1E69E6340]);
  return sub_195F6E73C(a1);
}

uint64_t sub_195F64558()
{
  v0 = sub_195FA0678();
  __swift_allocate_value_buffer(v0, qword_1EAEF72B0);
  __swift_project_value_buffer(v0, qword_1EAEF72B0);
  return sub_195FA0668();
}

uint64_t sub_195F645DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_195F6463C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_195F64688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *RelevanceCache.init(_:)(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2[2] = sub_195F2DC58(MEMORY[0x1E69E7CC0]);
  v2[3] = v6;
  v2[4] = 0;
  v2[5] = a1;
  v2[6] = a2;
  sub_195F65098();
  if (v3)
  {
  }

  return v2;
}

uint64_t sub_195F64798()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  for (i = v1 + 48; ; i += 24)
  {
    v5 = *(*i + 40);
    v6 = *(*i + 48);
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v10 = v5 + 16;
        v8 = *(v5 + 16);
        v9 = *(v10 + 8);
        v11 = __OFSUB__(v9, v8);
        v5 = v9 - v8;
        if (v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else if (v7)
    {
      v11 = __OFSUB__(HIDWORD(v5), v5);
      LODWORD(v5) = HIDWORD(v5) - v5;
      if (v11)
      {
        goto LABEL_19;
      }

      v5 = v5;
    }

    else
    {
      v5 = BYTE6(v6);
    }

    v11 = __OFADD__(result, v5);
    result += v5;
    if (v11)
    {
      break;
    }

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_195F64828()
{
  v2 = sub_195F66B04();
  if (!v0)
  {
    v4 = v2;
    v5 = v3;
    type metadata accessor for RelevanceCacheTransaction();
    v1 = swift_allocObject();

    sub_195F67130(v6, v4, v5, 0x8000);
  }

  return v1;
}

void sub_195F648A4(void (*a1)(uint64_t))
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_195F66B04();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    type metadata accessor for RelevanceCacheTransaction();
    v8 = swift_allocObject();

    sub_195F67130(v9, v6, v7, 0x8000);
    a1(v8);
    if ((*(v8 + 48) & 1) == 0)
    {

      sub_195F35074();

      v10 = *(v8 + 32);
      v11 = *(v8 + 40);

      sub_195F66DF0(v10, v11);

      sub_195F65098();
      sub_195F6616C();

      *(v8 + 48) = 1;
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_195F64A38()
{
  v2 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  swift_beginAccess();
  v4 = &selRef_appendString_counterpart_;
  for (i = &off_1E7455000; ; i = &off_1E7455000)
  {
    v6 = [v3 v4[107]];

    v7 = sub_195FA0888();

    v21 = 0;
    v8 = [v6 i[278]];

    v9 = v21;
    if (!v8)
    {
      v19 = v21;
LABEL_12:
      sub_195FA0328();

      swift_willThrow();
      return;
    }

    v20 = v3;
    v10 = sub_195FA0B38();
    v11 = v9;

    v21 = v10;

    sub_195F67494(&v21);
    if (v2)
    {

      __break(1u);
      return;
    }

    v12 = v21;
    v13 = *(v21 + 2);
    if (v13)
    {
      break;
    }

LABEL_9:

    sub_195F65098();
    v2 = 0;

    v3 = v20;
    v18 = *(v10 + 16);

    v4 = &selRef_appendString_counterpart_;
    if (!v18)
    {
      *(v0 + 32) = 0;
      return;
    }
  }

  v14 = &v21[16 * v13 + 24];
  while (v13 <= *(v12 + 2))
  {

    v15 = sub_195FA0888();

    v21 = 0;
    v16 = [v6 removeItemAtPath:v15 error:&v21];

    v17 = v21;
    if (!v16)
    {
      v19 = v17;

      goto LABEL_12;
    }

    v14 -= 16;
    if (!--v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_195F64CAC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = sub_195F59E04(a1);
    if (v5)
    {
      v6 = *(v3 + 56) + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *v6;

      result = v7;
      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_195F64D4C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

uint64_t sub_195F64D94()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(v1 + 56) + ((v8 << 10) | (16 * v9));
      if ((*(v10 + 8) & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v12 = *v10;
    MEMORY[0x19A8C40E0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_195FA0B58();
    }

    result = sub_195FA0B78();
    v2 = v13;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(v1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_195F64F08()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 56) + ((v8 << 10) | (16 * v10));
    if ((*(v11 + 8) & 1) == 0)
    {
      result = [*v11 key];
      if (result)
      {
        MEMORY[0x19A8C40E0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_195FA0B58();
        }

        result = sub_195FA0B78();
        v2 = v13;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v12 = sub_195F39834(v2);

      return v12;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_195F65098()
{
  v2 = v1;
  v3 = v0;
  v139[3] = *MEMORY[0x1E69E9840];
  v124 = sub_195FA0358();
  v4 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v122 = &v115 - v7;
  v127 = sub_195FA0478();
  v8 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAEEBD70 != -1)
  {
LABEL_87:
    swift_once();
  }

  v10 = sub_195FA0678();
  v11 = __swift_project_value_buffer(v10, qword_1EAEF72B0);

  v125 = v11;
  v12 = sub_195FA0658();
  v13 = sub_195FA0CC8();

  v14 = os_log_type_enabled(v12, v13);
  v128 = v3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v139[0] = v16;
    *v15 = 136446210;
    swift_beginAccess();
    v17 = v3[5];
    v18 = v3[6];

    v19 = sub_195EBD554(v17, v18, v139);

    *(v15 + 4) = v19;
    v3 = v128;
    _os_log_impl(&dword_195EB2000, v12, v13, "Scanning for cache updates in %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v116 = [objc_opt_self() defaultManager];
  v20 = v3[3];
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v133 = v8;
    v134 = v2;
    v135 = v4;
    v139[0] = MEMORY[0x1E69E7CC0];

    sub_195F3921C(0, v21, 0);
    v22 = v139[0];
    v132 = v20;
    v23 = (v20 + 48);
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      v3 = *v23;
      v139[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      swift_bridgeObjectRetain_n();

      if (v27 >= v26 >> 1)
      {
        sub_195F3921C((v26 > 1), v27 + 1, 1);
        v22 = v139[0];
      }

      *(v22 + 16) = v27 + 1;
      v28 = (v22 + 40 * v27);
      v28[4] = v24;
      v28[5] = v25;
      v28[6] = v24;
      v28[7] = v25;
      v28[8] = v3;
      v23 += 3;
      --v21;
    }

    while (v21);

    v2 = v134;
    v4 = v135;
    v8 = v133;
  }

  v29 = v128;
  if (*(v22 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0F0, &unk_195FAF010);
    v30 = sub_195FA10B8();
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC8];
  }

  v139[0] = v30;

  sub_195F67FE8(v31, 1, v139);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    goto LABEL_89;
  }

  v32 = v139[0];
  swift_beginAccess();
  v121 = (v8 + 56);
  v120 = *MEMORY[0x1E6968F70];
  v119 = (v4 + 104);
  v118 = (v8 + 8);
  v33 = &off_1E7455000;
  *&v34 = 136446210;
  v117 = v34;
  v35 = MEMORY[0x1E69E7CC0];
  while (2)
  {

    v36 = sub_195FA0888();

    v137 = 0;
    v37 = [v116 v33[278]];

    v38 = v137;
    if (!v37)
    {
      v98 = v137;

      sub_195FA0328();

LABEL_83:
      swift_willThrow();

      goto LABEL_81;
    }

    v39 = sub_195FA0B38();
    v40 = v38;

    v137 = v39;

    sub_195F67494(&v137);
    v133 = 0;

    v41 = v137;
    v129 = *(v137 + 2);
    if (v129)
    {
      v3 = 0;
      v4 = v137 + 40;
      v132 = MEMORY[0x1E69E7CC0];
      v130 = v137;
      while (1)
      {
        if (v3 >= *(v41 + 2))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v134 = v35;
        v42 = *(v4 - 1);
        v2 = *v4;
        v43 = v29[6];
        v137 = v29[5];
        v138 = v43;

        MEMORY[0x19A8C3F70](47, 0xE100000000000000);

        MEMORY[0x19A8C3F70](v42, v2);

        v8 = v138;
        v135 = v137;
        if (sub_195FA0A18())
        {
          break;
        }

        v35 = v134;
LABEL_19:
        v41 = v130;
LABEL_20:
        v3 = (v3 + 1);
        v4 += 16;
        if (v129 == v3)
        {
          goto LABEL_64;
        }
      }

      if (sub_195FA0968() < 0)
      {
        goto LABEL_85;
      }

      sub_195FA0988();
      v44 = sub_195FA0A68();
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v131 = v32;
      if ((v44 ^ v46) >> 14)
      {
        v51 = v133;
        v52 = sub_195F68DB4(v44, v46, v48, v50, 10);
        v133 = v51;
        if ((v53 & 0x100) == 0)
        {
          v2 = v52;
          v54 = v53;

          if (v54)
          {
            v29 = v128;
            v32 = v131;
            if (!*(v131 + 2))
            {
LABEL_44:

              v69 = sub_195FA0658();
              v70 = sub_195FA0CC8();

              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v137 = v72;
                *v71 = v117;
                *(v71 + 4) = sub_195EBD554(v135, v8, &v137);
                _os_log_impl(&dword_195EB2000, v69, v70, "Discovered new cache file: %{public}s", v71, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v72);
                MEMORY[0x19A8C5B70](v72, -1, -1);
                MEMORY[0x19A8C5B70](v71, -1, -1);
              }

              v35 = v134;
              (*v121)(v122, 1, 1, v127);
              (*v119)(v123, v120, v124);

              sub_195FA0458();
              v73 = v133;
              v74 = sub_195FA0498();
              if (v73)
              {
                v133 = v73;
                v29 = v128;
                (*v118)(v126, v127);

                v89 = v135;
                v90 = sub_195FA0888();
                v91 = [v116 fileExistsAtPath_];

                v92 = v133;
                if (v91)
                {

                  goto LABEL_83;
                }

                v93 = sub_195FA0658();
                v2 = sub_195FA0CC8();

                if (os_log_type_enabled(v93, v2))
                {
                  v94 = swift_slowAlloc();
                  v95 = swift_slowAlloc();
                  v137 = v95;
                  *v94 = v117;
                  v96 = sub_195EBD554(v89, v8, &v137);

                  *(v94 + 4) = v96;
                  _os_log_impl(&dword_195EB2000, v93, v2, "Need to retry. File deleted before we could read it: %{public}s", v94, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v95);
                  v97 = v95;
                  v35 = v134;
                  MEMORY[0x19A8C5B70](v97, -1, -1);
                  MEMORY[0x19A8C5B70](v94, -1, -1);
                }

                else
                {
                }

                v33 = &off_1E7455000;
                continue;
              }

              v76 = v74;
              v77 = v75;
              type metadata accessor for RelevanceCacheReader();
              swift_allocObject();
              v78 = sub_195F6E604(v76, v77);
              v79 = *v118;
              v133 = 0;
              v2 = v78;
              v79(v126, v127);
              swift_bridgeObjectRetain_n();
              swift_retain_n();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v137 = v32;
              sub_195F5CF1C(v135, v8, v2, v135, v8, isUniquelyReferenced_nonNull_native);

              v32 = v137;

              v81 = swift_isUniquelyReferenced_nonNull_native();
              v29 = v128;
              if ((v81 & 1) == 0)
              {
                v132 = sub_195F38CC0(0, *(v132 + 2) + 1, 1, v132);
              }

              v83 = *(v132 + 2);
              v82 = *(v132 + 3);
              if (v83 >= v82 >> 1)
              {
                v132 = sub_195F38CC0((v82 > 1), v83 + 1, 1, v132);
              }

              v84 = v132;
              *(v132 + 2) = v83 + 1;
              v85 = &v84[24 * v83];
              *(v85 + 4) = v135;
              *(v85 + 5) = v8;
              *(v85 + 6) = v2;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_195F38CC0(0, *(v35 + 2) + 1, 1, v35);
              }

              v87 = *(v35 + 2);
              v86 = *(v35 + 3);
              if (v87 >= v86 >> 1)
              {
                v35 = sub_195F38CC0((v86 > 1), v87 + 1, 1, v35);
              }

              *(v35 + 2) = v87 + 1;
              v88 = &v35[24 * v87];
              *(v88 + 4) = v135;
              *(v88 + 5) = v8;
              *(v88 + 6) = v2;
              goto LABEL_19;
            }

LABEL_38:
            v58 = sub_195EC7CCC(v135, v8);
            if (v59)
            {
              v60 = v58;

              v61 = (*(v32 + 7) + 24 * v60);
              v63 = *v61;
              v62 = v61[1];
              v2 = v61[2];

              v64 = v132;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = sub_195F38CC0(0, *(v64 + 2) + 1, 1, v64);
              }

              v41 = v130;
              v66 = *(v64 + 2);
              v65 = *(v64 + 3);
              v132 = v64;
              if (v66 >= v65 >> 1)
              {
                v8 = v130;
                v132 = sub_195F38CC0((v65 > 1), v66 + 1, 1, v132);
                v41 = v8;
              }

              v67 = v132;
              *(v132 + 2) = v66 + 1;
              v68 = &v67[24 * v66];
              *(v68 + 4) = v63;
              *(v68 + 5) = v62;
              *(v68 + 6) = v2;
              v32 = v131;
              v35 = v134;
              goto LABEL_20;
            }

            goto LABEL_44;
          }

          v29 = v128;
          v32 = v131;
LABEL_34:
          v57 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_86;
          }

          if (v29[4] > v57)
          {
            v57 = v29[4];
          }

          v29[4] = v57;
          if (!*(v32 + 2))
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }

        v2 = sub_195F683DC(v44, v46, v48, v50, 10);
        v56 = v55;

        v32 = v131;
        if ((v56 & 1) == 0)
        {
          v29 = v128;
          goto LABEL_34;
        }
      }

      else
      {
      }

      v29 = v128;
      if (!*(v32 + 2))
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }

    break;
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_64:

  if (!*(v29[3] + 16) || (, v99 = sub_195FA0888(), , v100 = [v116 fileExistsAtPath_], v99, !v100))
  {
    v107 = v132;
    v108 = *(v132 + 2);
    if (v108)
    {
      v137 = MEMORY[0x1E69E7CC0];
      sub_195FA0FC8();
      v109 = v107 + 48;
      do
      {
        v109 += 24;

        sub_195FA0FA8();
        sub_195FA0FD8();
        sub_195FA0FE8();
        sub_195FA0FB8();
        --v108;
      }

      while (v108);

      v110 = v137;
    }

    else
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    v111 = sub_195F69324(v110);

    swift_beginAccess();
    v29[2] = v111;

LABEL_78:
    v29[3] = v132;

    v112 = sub_195FA0658();
    v113 = sub_195FA0CC8();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_195EB2000, v112, v113, "Done scanning for cache changes", v114, 2u);
      MEMORY[0x19A8C5B70](v114, -1, -1);
    }

LABEL_81:
    return;
  }

  v101 = *(v35 + 2);
  v102 = MEMORY[0x1E69E7CC0];
  if (v101)
  {
    v137 = MEMORY[0x1E69E7CC0];
    sub_195FA0FC8();
    v103 = v35 + 48;
    do
    {
      v103 += 24;

      sub_195FA0FA8();
      sub_195FA0FD8();
      sub_195FA0FE8();
      sub_195FA0FB8();
      --v101;
    }

    while (v101);
    v102 = v137;
  }

  v104 = sub_195F69324(v102);

  swift_beginAccess();
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v29[2];
  v29[2] = 0x8000000000000000;
  v106 = v133;
  sub_195F694EC(v104, sub_195F68D6C, 0, v105, &v136);
  v3 = v106;
  if (!v106)
  {

    v29[2] = v136;

    swift_endAccess();
    goto LABEL_78;
  }

LABEL_89:

  v29[2] = v136;

  __break(1u);
}

void sub_195F6616C()
{
  v8 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  v9 = *(*(v0 + 24) + 16);
  if (!v9)
  {
    return;
  }

  v11 = *(v10 + 16);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v9 > *(v10 + 16))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v14 = &v9[-1].isa + 7;
  v15 = *(v10 + 32 + 24 * (v9 - 1) + 16);
  v16 = *(v15 + 40);
  v17 = *(v15 + 48);
  v18 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v18)
    {
      v5 = BYTE6(v17);
      goto LABEL_12;
    }

    if (!__OFSUB__(HIDWORD(v16), v16))
    {
      v5 = HIDWORD(v16) - v16;
      goto LABEL_12;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v18 == 3)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  v5 = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_12:
  if (v18 <= 1)
  {
    if (!v18)
    {
      v16 = BYTE6(v17);
      goto LABEL_20;
    }

    v12 = __OFSUB__(HIDWORD(v16), v16);
    LODWORD(v16) = HIDWORD(v16) - v16;
    if (!v12)
    {
      v16 = v16;
      goto LABEL_20;
    }

LABEL_71:
    __break(1u);
LABEL_72:

    if (v7)
    {
      return;
    }

    goto LABEL_73;
  }

  if (v18 == 3)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v23 = v16 + 16;
  v21 = *(v16 + 16);
  v22 = *(v23 + 8);
  v12 = __OFSUB__(v22, v21);
  v16 = v22 - v21;
  if (v12)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_20:
  if ((v16 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_21:
  v7 = v5 < 4 * v16;
  if (v5 >= 4 * v16)
  {
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  if (v5 >= 4 * v16)
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  if (v9 == 1)
  {
LABEL_59:
    v3 = v1;

    v4 = 0x1EAEEB000uLL;
    if (v5 < 419430401)
    {
      goto LABEL_66;
    }

    if (qword_1EAEEBD70 != -1)
    {
      swift_once();
    }

    v35 = sub_195FA0678();
    __swift_project_value_buffer(v35, qword_1EAEF72B0);
    v9 = sub_195FA0658();
    v36 = sub_195FA0CA8();
    if (os_log_type_enabled(v9, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      *(v37 + 4) = v5;
      *(v37 + 12) = 2050;
      *(v37 + 14) = 419430400;
      _os_log_impl(&dword_195EB2000, v9, v36, "Cache size (%{public}ld bytes) exceeds maximum recommended size of (%{public}ld bytes). Mmap is likely to fail soon.", v37, 0x16u);
      v38 = v37;
      v4 = 0x1EAEEB000;
      MEMORY[0x19A8C5B70](v38, -1, -1);

      if (v7)
      {
        return;
      }

      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v24 = v10 + 24 * v9;
  while (1)
  {
    v12 = __OFSUB__(v13--, 1);
    if (v12)
    {
      goto LABEL_56;
    }

    if (v14 > *(v10 + 16))
    {
      goto LABEL_57;
    }

    v25 = *(*v24 + 40);
    v27 = *(*v24 + 48);
    v28 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v28 == 2)
      {
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        v12 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v12)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else if (v28)
    {
      LODWORD(v29) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_69;
      }

      v29 = v29;
    }

    else
    {
      v29 = BYTE6(v27);
    }

    v12 = __OFADD__(v5, v29);
    v5 += v29;
    if (v12)
    {
      break;
    }

    if (v28 <= 1)
    {
      if (v28)
      {
        v12 = __OFSUB__(HIDWORD(v25), v25);
        LODWORD(v25) = HIDWORD(v25) - v25;
        if (v12)
        {
          goto LABEL_71;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v27);
      }

LABEL_30:
      if ((v25 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_58;
      }

      goto LABEL_31;
    }

    if (v28 == 2)
    {
      v34 = v25 + 16;
      v32 = *(v25 + 16);
      v33 = *(v34 + 8);
      v12 = __OFSUB__(v33, v32);
      v25 = v33 - v32;
      if (v12)
      {
        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v25 = 0;
LABEL_31:
    v26 = v5 < 4 * v25;
    if (!v26)
    {
      v2 = v5;
      v6 = v13;
    }

    v7 &= v26;
    v24 -= 24;
    if (!--v14)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_66:
  if ((v7 & 1) == 0)
  {
LABEL_73:
    v39 = *(*(v8 + 24) + 16);
    if (*(v4 + 3440) != -1)
    {
      swift_once();
    }

    v40 = sub_195FA0678();
    __swift_project_value_buffer(v40, qword_1EAEF72B0);
    v41 = sub_195FA0658();
    v42 = sub_195FA0CC8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134349568;
      *(v43 + 4) = v6;
      *(v43 + 12) = 2050;
      *(v43 + 14) = v39 - 1;
      *(v43 + 22) = 2050;
      *(v43 + 24) = v2;
      _os_log_impl(&dword_195EB2000, v41, v42, "Repacking cache files %{public}ld through %{public}ld. Expecting packed size of %{public}ld bytes.", v43, 0x20u);
      MEMORY[0x19A8C5B70](v43, -1, -1);
    }

    v44 = v3;
    v45 = sub_195F66B04();
    if (v3)
    {
      return;
    }

    v81 = v8;
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v47 = v45;
      v48 = v46;
      v49 = *MEMORY[0x1E696A388];
      v50 = objc_allocWithZone(MEMORY[0x1E698C1E0]);

      v51 = v49;
      v82 = 0;
      v78 = v47;
      v52 = sub_195F69C14(v47, v48, v51, v2);

      type metadata accessor for RelevanceCacheWriter();
      swift_initStackObject();
      sub_195F32FA0(v52);
      v53 = *(v81 + 24);
      v39 = *(v53 + 16);
      if (v39 >= v6)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          v80 = v48;
          if (v39 != v6)
          {
            swift_bridgeObjectRetain_n();
            v54 = v39 - 1;
            v55 = -v6;
            v56 = v53 + 24 * v39 + 24;
            while (v54 >= v6 && v54 < v39)
            {
              v44 = v6 == 0;

              sub_195F330F0(v57, v6 == 0);

              --v54;
              v56 -= 24;
              if (v54 - v6 == -1)
              {

                goto LABEL_89;
              }
            }

            __break(1u);
LABEL_92:
            sub_195F66DF0(v78, v55);
            v58 = v44;
            if (!v44)
            {

              v79 = [objc_opt_self() defaultManager];
              if (v39 != v6)
              {
                v59 =  + 24 * v6 + 48;
                while (1)
                {
                  v83 = v58;
                  if (v6 >= v39)
                  {
                    __break(1u);
                  }

                  v62 = *(v59 - 16);
                  v61 = *(v59 - 8);
                  swift_bridgeObjectRetain_n();
                  swift_retain_n();
                  v63 = sub_195FA0658();
                  v64 = sub_195FA0CC8();

                  if (os_log_type_enabled(v63, v64))
                  {
                    v65 = swift_slowAlloc();
                    v77 = v63;
                    v66 = swift_slowAlloc();
                    v84[0] = v66;
                    *v65 = 136446210;

                    v67 = sub_195EBD554(v62, v61, v84);

                    *(v65 + 4) = v67;
                    _os_log_impl(&dword_195EB2000, v77, v64, "Deleting stale cache file: %{public}s", v65, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v66);
                    MEMORY[0x19A8C5B70](v66, -1, -1);
                    MEMORY[0x19A8C5B70](v65, -1, -1);
                  }

                  else
                  {
                  }

                  v68 = sub_195FA0888();
                  v84[0] = 0;
                  v69 = [v79 removeItemAtPath:v68 error:v84];

                  if (v69)
                  {
                    v60 = v84[0];

                    v58 = v83;
                  }

                  else
                  {
                    v70 = v84[0];
                    v71 = sub_195FA0328();

                    v72 = v71;
                    swift_willThrow();
                    v73 = sub_195FA0888();
                    LODWORD(v71) = [v79 fileExistsAtPath_];

                    if (v71)
                    {

                      swift_willThrow();

                      return;
                    }

                    v58 = 0;
                  }

                  ++v6;
                  v59 += 24;
                  if (v39 == v6)
                  {

                    break;
                  }
                }
              }

              v74 = sub_195FA0658();
              v75 = sub_195FA0CC8();
              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                *v76 = 0;
                _os_log_impl(&dword_195EB2000, v74, v75, "Done repacking", v76, 2u);
                MEMORY[0x19A8C5B70](v76, -1, -1);
              }

              sub_195F65098();

              return;
            }

LABEL_90:

            return;
          }

LABEL_112:

LABEL_89:
          v44 = v82;
          sub_195F35074();
          v55 = v80;
          if (v82)
          {
            goto LABEL_90;
          }

          goto LABEL_92;
        }

LABEL_111:
        __break(1u);
        goto LABEL_112;
      }
    }

    __break(1u);
    goto LABEL_111;
  }
}

id sub_195F66B04()
{
  v21[4] = *MEMORY[0x1E69E9840];
  v0 = sub_195FA0478();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21[-1] - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-1] - v8;
  swift_beginAccess();

  sub_195FA0388();

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_195FA0398();
  v21[0] = 0;
  v12 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:v21];

  v13 = v21[0];
  if (v12)
  {
    sub_195FA0428();
    v14 = v13;

    v15 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v16 = [v15 globallyUniqueString];

    sub_195FA08B8();
    sub_195FA03E8();

    v17 = sub_195FA0448();
    v18 = *(v1 + 8);
    v18(v4, v0);
    v18(v7, v0);
    v18(v9, v0);
  }

  else
  {
    v17 = v21[0];
    sub_195FA0328();

    swift_willThrow();
    (*(v1 + 8))(v9, v0);
  }

  return v17;
}

void sub_195F66DF0(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  v3 = v2[4];
  for (i = v2; ; i[4] = v3)
  {
    v4 = v2[6];
    v24 = v2[5];
    v25 = v4;

    MEMORY[0x19A8C3F70](47, 0xE100000000000000);
    v5 = v24;
    v6 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE1C0, &qword_195FAF750);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_195FAC070;
    *(v7 + 56) = MEMORY[0x1E69E7360];
    *(v7 + 64) = MEMORY[0x1E69E73D8];
    *(v7 + 32) = v3;
    v8 = sub_195FA08C8();
    v10 = v9;
    v24 = v5;
    v25 = v6;

    MEMORY[0x19A8C3F70](v8, v10);

    v11 = sub_195FA0888();
    v12 = sub_195FA0888();
    v24 = 0;
    v13 = [v23 moveItemAtPath:v11 toPath:v12 error:&v24];

    if (v13)
    {
      v21 = v24;

      return;
    }

    v14 = v24;
    v15 = sub_195FA0328();

    swift_willThrow();
    v16 = sub_195FA0888();
    v17 = [v23 fileExistsAtPath_];

    if (!v17)
    {
      break;
    }

    v18 = sub_195FA0888();

    v19 = [v23 fileExistsAtPath_];

    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    v2 = i;
    v20 = i[4];
    v3 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }
  }

LABEL_9:
  swift_willThrow();
}

uint64_t RelevanceCache.deinit()
{

  return v0;
}

uint64_t RelevanceCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F67130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v6 + 48) = 0;
  *(v6 + 24) = a1;
  v10 = *MEMORY[0x1E696A388];
  objc_allocWithZone(MEMORY[0x1E698C1E0]);

  v11 = v10;
  v12 = sub_195F69C14(a2, a3, v11, a4);
  if (v5)
  {

    type metadata accessor for RelevanceCacheTransaction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v12;

    type metadata accessor for RelevanceCacheWriter();
    swift_allocObject();
    v14 = sub_195F32FA0(v13);

    *(v6 + 16) = v14;
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
  }

  return v6;
}

void sub_195F6726C(void *a1, char a2)
{
  if (*(v2 + 48) == 1)
  {
    sub_195F36864();
    swift_allocError();
    *v6 = xmmword_195FAF640;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = a1;
    v8 = a2 & 1;

    v4 = a1;
    sub_195F3371C(&v7);

    v5 = v7;
  }
}

uint64_t sub_195F6733C()
{
  if ((*(v0 + 48) & 1) == 0)
  {

    sub_195F35074();

    if (!v1)
    {
      v3 = *(v0 + 32);
      v4 = *(v0 + 40);

      sub_195F66DF0(v3, v4);

      sub_195F65098();
      sub_195F6616C();

      *(v0 + 48) = 1;
    }
  }

  return result;
}

uint64_t RelevanceCacheTransaction.deinit()
{

  return v0;
}

uint64_t RelevanceCacheTransaction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F67494(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_195F68E80(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_195F67500(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_195F67500(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_195FA1278();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_195FA0B68();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_195F676C8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_195F675F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_195F675F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_195FA12B8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_195F676C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_195F67F58(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_195F67CA4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_195FA12B8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_195FA12B8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_195F38DE0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_195F38DE0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_195F67CA4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_195F67F58(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_195F67ECC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_195FA12B8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_195F67CA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_195FA12B8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_195FA12B8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_195F67ECC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_195F67F58(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_195F67F6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_195FA0A08();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x19A8C3FA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_195F67FE8(void *a1, char a2, void *a3)
{
  v3 = a1;
  v48 = a1[2];
  if (!v48)
  {
    goto LABEL_24;
  }

  v6 = a1[7];
  v5 = a1[8];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[4];

  if (!v8)
  {
    goto LABEL_24;
  }

  v47 = v3;
  v10 = *a3;
  v12 = sub_195EC7CCC(v9, v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if (a2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_195F5E868();
      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_195F5AFE8(v15, a2 & 1);
  v17 = sub_195EC7CCC(v9, v8);
  if ((v16 & 1) == (v18 & 1))
  {
    v12 = v17;
    if ((v16 & 1) == 0)
    {
LABEL_13:
      v21 = *a3;
      *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
      v22 = (v21[6] + 16 * v12);
      *v22 = v9;
      v22[1] = v8;
      v23 = (v21[7] + 24 * v12);
      *v23 = v7;
      v23[1] = v6;
      v23[2] = v5;
      v24 = v21[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v21[2] = v26;
      if (v48 != 1)
      {
        v27 = v3 + 13;
        v28 = 1;
        while (v28 < v3[2])
        {
          v30 = *(v27 - 1);
          v29 = *v27;
          v32 = *(v27 - 3);
          v31 = *(v27 - 2);
          v33 = *(v27 - 4);

          if (!v32)
          {
            goto LABEL_24;
          }

          v34 = *a3;
          v35 = sub_195EC7CCC(v33, v32);
          v37 = v34[2];
          v38 = (v36 & 1) == 0;
          v25 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v25)
          {
            goto LABEL_26;
          }

          v40 = v36;
          if (v34[3] < v39)
          {
            sub_195F5AFE8(v39, 1);
            v35 = sub_195EC7CCC(v33, v32);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_10;
          }

          v42 = *a3;
          *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v43 = (v42[6] + 16 * v35);
          *v43 = v33;
          v43[1] = v32;
          v44 = (v42[7] + 24 * v35);
          *v44 = v31;
          v44[1] = v30;
          v44[2] = v29;
          v45 = v42[2];
          v25 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v25)
          {
            goto LABEL_27;
          }

          ++v28;
          v42[2] = v46;
          v27 += 5;
          v3 = v47;
          if (v48 == v28)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDDA0, &unk_195FACFF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_195FA1338();
  __break(1u);
LABEL_29:
  sub_195FA0F38();
  MEMORY[0x19A8C3F70](0xD00000000000001BLL, 0x8000000195FC1F30);
  sub_195FA1008();
  MEMORY[0x19A8C3F70](39, 0xE100000000000000);
  sub_195FA1058();
  __break(1u);
}

unsigned __int8 *sub_195F683DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_195F69B74();

  result = sub_195FA0A58();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_195F68974(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_195FA0F98();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_195F68974(uint64_t a1, unint64_t a2)
{
  v2 = sub_195FA0A68();
  v6 = sub_195F689F4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_195F689F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_195FA0DD8();
    if (!v9 || (v10 = v9, v11 = sub_195EBD844(v9, 0), v12 = sub_195F68B4C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_195FA0948();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_195FA0948();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_195FA0F98();
LABEL_4:

  return sub_195FA0948();
}

unint64_t sub_195F68B4C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_195F67F6C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_195FA09F8();
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
          result = sub_195FA0F98();
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

    result = sub_195F67F6C(v12, a6, a7);
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

    result = sub_195FA09C8();
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

id sub_195F68D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v6 = *a1;
  v2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = v3;

  return v6;
}

uint64_t sub_195F68DB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_195FA0F98();
  }

  result = sub_195F68EB8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_195F68EB8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_195F67F6C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_195FA09E8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_195F67F6C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_195F67F6C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_195FA09E8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

char *sub_195F69324(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v15)
  {
    v18 = a1;
    v19 = a1 & 0xC000000000000001;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = MEMORY[0x1E69E7CC8];
    while (!__OFSUB__(i--, 1))
    {
      if (v19)
      {
        MEMORY[0x19A8C4520](i, v18);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (i >= *(v17 + 16))
        {
          goto LABEL_23;
        }
      }

      sub_195F6E73C(&v20);
      v4 = *(v20 + 2);
      if (v4)
      {
        v5 = v20 + 40;
        do
        {
          v8 = *(v5 - 1);
          v9 = *v5;
          v10 = v8;
          v11 = v10;
          if (v9)
          {
            v12 = v10;
          }

          else
          {
            v12 = [v10 key];
          }

          v13 = v12;
          if (*(v2 + 2) && (sub_195F59E04(v12), (v14 & 1) != 0))
          {
          }

          else
          {
            v6 = v11;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = v2;
            sub_195F5CD88(v8, v9, v13, isUniquelyReferenced_nonNull_native);

            v2 = v20;
          }

          v5 += 16;
          --v4;
        }

        while (v4);
      }

      if (!i)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v15 = a1;
    i = sub_195FA0E88();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_195F694EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v41 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  while (1)
  {
    v14 = v8;
    v15 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = *(a1 + 56) + 16 * v17;
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v46 = v18;
    v47 = v20;
    v48 = v19;
    v21 = v20;
    v22 = v18;
    a2(v49, &v46);
    v23 = v47;

    v24 = v49[0];
    if (!v49[0])
    {
LABEL_22:
      sub_195EB9E70(a1);
    }

    v25 = v49[1];
    v26 = v50;
    v27 = *v51;
    v28 = sub_195F59E04(v49[0]);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        v45 = v28;
        sub_195F5E6F4();
        v28 = v45;
      }
    }

    else
    {
      sub_195F5AD64(v33, a4 & 1);
      v28 = sub_195F59E04(v24);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }
    }

    v44 = (v14 - 1) & v14;
    v36 = *v51;
    if (v34)
    {
      v11 = v28;

      v12 = v36[7] + 16 * v11;
      v13 = *v12;
      *v12 = v25;
      *(v12 + 8) = v26;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + 8 * v28) = v24;
      v37 = v36[7] + 16 * v28;
      *v37 = v25;
      *(v37 + 8) = v26;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v36[2] = v39;
    }

    a4 = 1;
    v10 = v15;
    v8 = v44;
  }

  v16 = v10;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_22;
    }

    v14 = *(v41 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_195F69BC8();
  result = sub_195FA1338();
  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_195F69794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_195F697DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_195F69B74()
{
  result = qword_1EAEEE210;
  if (!qword_1EAEEE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE210);
  }

  return result;
}

unint64_t sub_195F69BC8()
{
  result = qword_1EAEEBD40;
  if (!qword_1EAEEBD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEBD40);
  }

  return result;
}

id sub_195F69C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = sub_195FA0888();

  v12[0] = 0;
  v8 = [v4 initWithFileAtPath:v7 protection:a3 capacity:a4 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_195FA0328();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_195F69CF8()
{
  v0 = sub_195FA0678();
  __swift_allocate_value_buffer(v0, qword_1EAEEE218);
  __swift_project_value_buffer(v0, qword_1EAEEE218);
  return sub_195FA0668();
}

uint64_t CHSControlInstanceIdentity.hostIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSControlInstanceIdentity_hostIdentifier);

  return v1;
}

id sub_195F69EC8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_195FA0888();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t CHSControlInstanceIdentity.configurationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSControlInstanceIdentity_configurationIdentifier);

  return v1;
}

id CHSControlInstanceIdentity.init(control:contentType:hostIdentifier:configurationIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    v9 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_195FA0888();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_195FA0888();

LABEL_6:
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2 hostIdentifier:v9 configurationIdentifier:v10];

  return v11;
}

id CHSControlInstanceIdentity.init(control:contentType:hostIdentifier:configurationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + OBJC_IVAR___CHSControlInstanceIdentity_control) = a1;
  *(v6 + OBJC_IVAR___CHSControlInstanceIdentity_contentType) = a2;
  v7 = (v6 + OBJC_IVAR___CHSControlInstanceIdentity_hostIdentifier);
  *v7 = a3;
  v7[1] = a4;
  v8 = (v6 + OBJC_IVAR___CHSControlInstanceIdentity_configurationIdentifier);
  *v8 = a5;
  v8[1] = a6;
  v10.super_class = CHSControlInstanceIdentity;
  return objc_msgSendSuper2(&v10, sel_init);
}

id CHSControlInstanceIdentity.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CHSControlInstanceIdentity.hash.getter()
{
  v1 = v0;
  sub_195FA13F8();
  v2 = [v0 control];
  sub_195FA0D98();

  MEMORY[0x19A8C4970]([v1 contentType]);
  v3 = [v1 hostIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_195FA08B8();

    sub_195FA13B8();
    sub_195FA0958();
  }

  else
  {
    sub_195FA13B8();
  }

  v5 = [v1 configurationIdentifier];
  if (v5)
  {
    v6 = v5;
    sub_195FA08B8();

    sub_195FA13B8();
    sub_195FA0958();
  }

  else
  {
    sub_195FA13B8();
  }

  return sub_195FA13D8();
}

uint64_t CHSControlInstanceIdentity.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v33);
  if (v34)
  {
    type metadata accessor for CHSControlInstanceIdentity(v2);
    if (swift_dynamicCast())
    {
      if (v32 == v1)
      {
        goto LABEL_35;
      }

      sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0);
      v3 = v1;
      v4 = [v1 control];
      v5 = [v32 control];
      v6 = sub_195FA0D88();

      if (v6)
      {
        v7 = v3;
        v8 = [v3 contentType];
        if (v8 == [v32 contentType])
        {
          v9 = [v3 hostIdentifier];
          if (v9)
          {
            v10 = v9;
            v11 = sub_195FA08B8();
            v13 = v12;
          }

          else
          {
            v11 = 0;
            v13 = 0;
          }

          v14 = [v32 hostIdentifier];
          if (!v14)
          {
            if (v13)
            {
              goto LABEL_17;
            }

            goto LABEL_21;
          }

          v15 = v14;
          v16 = sub_195FA08B8();
          v18 = v17;

          if (v13)
          {
            if (!v18)
            {
              goto LABEL_17;
            }

            if (v11 == v16 && v13 == v18)
            {

              goto LABEL_21;
            }

            v19 = sub_195FA12B8();

            if (v19)
            {
LABEL_21:
              v20 = [v7 configurationIdentifier];
              if (v20)
              {
                v21 = v20;
                v22 = sub_195FA08B8();
                v24 = v23;
              }

              else
              {
                v22 = 0;
                v24 = 0;
              }

              v27 = [v32 configurationIdentifier];
              if (v27)
              {
                v28 = v27;
                v29 = sub_195FA08B8();
                v31 = v30;

                if (!v24)
                {

                  if (!v31)
                  {
                    v25 = 1;
                    return v25 & 1;
                  }

                  goto LABEL_24;
                }

                if (v31)
                {
                  if (v22 != v29 || v24 != v31)
                  {
                    v25 = sub_195FA12B8();

                    return v25 & 1;
                  }

                  goto LABEL_35;
                }

                goto LABEL_17;
              }

              if (v24)
              {
LABEL_17:

                goto LABEL_24;
              }

LABEL_35:

              v25 = 1;
              return v25 & 1;
            }
          }

          else
          {
            if (!v18)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_195EB7914(v33);
  }

LABEL_24:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_195F6A7C0()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F6A89C(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F6A964(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

unint64_t sub_195F6AA3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_195F6B418(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_195F6AA6C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6F72746E6F63;
  v4 = 0x8000000195FBF990;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x6E65644974736F68;
    v4 = 0xEE00726569666974;
  }

  if (*v1)
  {
    v3 = 0x54746E65746E6F63;
    v2 = 0xEB00000000657079;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_195F6AB04()
{
  v1 = 0x6C6F72746E6F63;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x6E65644974736F68;
  }

  if (*v0)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_195F6AB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_195F6B418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195F6ABC0(uint64_t a1)
{
  v2 = sub_195F6B2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F6ABFC(uint64_t a1)
{
  v2 = sub_195F6B2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *CHSControlInstanceIdentity.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE270, &qword_195FAF758);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F6B2AC();
  sub_195FA1448();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
    v26 = 0;
    sub_195F3089C(&qword_1EAEEC318, &protocol conformance descriptor for CHSControlIdentity);
    sub_195FA1178();
    v8 = v27;
    v25 = 2;
    v9 = sub_195FA1108();
    v11 = v10;
    v22 = v9;
    v24 = 3;
    v20 = sub_195FA1108();
    v21 = v12;
    v23 = 1;
    v19 = sub_195FA1198();
    if (v21)
    {
      v20 = sub_195FA0888();
    }

    else
    {
      v20 = 0;
    }

    if (v11)
    {
      v14 = sub_195FA0888();
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = v20;
    v17 = v14;
    v7 = [v15 initWithControl:v8 contentType:v19 hostIdentifier:v20 configurationIdentifier:v14];

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t CHSControlInstanceIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE278, &unk_195FAF760);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F6B2AC();
  sub_195FA1468();
  v9 = [v3 control];
  v16 = v9;
  v15[7] = 0;
  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  sub_195F3089C(&qword_1EAEEBE78, &protocol conformance descriptor for CHSControlIdentity);
  sub_195FA1238();

  if (!v2)
  {
    v11 = [v3 configurationIdentifier];
    if (v11)
    {
      v12 = v11;
      sub_195FA08B8();

      v15[4] = 2;
      sub_195FA11F8();
    }

    v13 = [v3 hostIdentifier];
    if (v13)
    {
      v14 = v13;
      sub_195FA08B8();

      v15[5] = 3;
      sub_195FA11F8();
    }

    [v3 contentType];
    v15[6] = 1;
    sub_195FA1258();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_195F6B248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = CHSControlInstanceIdentity.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_195F6B2AC()
{
  result = qword_1EAEEBE58;
  if (!qword_1EAEEBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBE58);
  }

  return result;
}

unint64_t sub_195F6B314()
{
  result = qword_1EAEEE280;
  if (!qword_1EAEEE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE280);
  }

  return result;
}

unint64_t sub_195F6B36C()
{
  result = qword_1EAEEBE48;
  if (!qword_1EAEEBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBE48);
  }

  return result;
}

unint64_t sub_195F6B3C4()
{
  result = qword_1EAEEBE50;
  if (!qword_1EAEEBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBE50);
  }

  return result;
}

unint64_t sub_195F6B418(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA10D8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t _sSo18CHSWidgetExtensionC14ChronoServicesE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v3 = [a1 extensionBundleIdentifier];
  v4 = sub_195FA08B8();
  v6 = v5;

  v7 = [a2 extensionBundleIdentifier];
  v8 = sub_195FA08B8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_195FA12B8();
  }

  return v12 & 1;
}

unint64_t sub_195F6B53C()
{
  result = qword_1EAEEE288;
  if (!qword_1EAEEE288)
  {
    sub_195F6B594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE288);
  }

  return result;
}

unint64_t sub_195F6B594()
{
  result = qword_1EAEEC4B8;
  if (!qword_1EAEEC4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC4B8);
  }

  return result;
}

uint64_t sub_195F6B618(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_195F6E0A8(&qword_1EAEEBCD0, MEMORY[0x1E6968FC0]);
  v33 = a2;
  v11 = sub_195FA0818();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_195F6E0A8(&qword_1EAEEBCC8, MEMORY[0x1E6968FC8]);
      v21 = sub_195FA0868();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_195F6C8D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_195F6B8D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_195FA1398();
  v56 = a2;
  v58 = a3;
  sub_195F37930(a2, a3, a4, a5);
  sub_195FA0958();

  v11 = sub_195FA13E8();
  v55 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  v53 = v10 + 56;
  v57 = a5;
  v50 = a4;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v52 = ~v12;
    if (a5)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0;
    }

    v54 = v14;
    while (1)
    {
      v15 = (*(v55 + 48) + 32 * v13);
      v17 = *v15;
      v16 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v21 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v22 = v18 ? v19 : 0;
      *(inited + 32) = v22;
      *(inited + 40) = v18;
      *(inited + 48) = v17;
      *(inited + 56) = v16;

      sub_195EB6308(v21, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_195FAC070;
      v24 = sub_195EB5F80();
      v25 = sub_195EB6074(v24);
      v27 = v26;

      *(v23 + 32) = v25;
      *(v23 + 40) = v27;

      sub_195EB6214(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      v29 = sub_195FA0828();
      v31 = v30;

      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_195FAC280;
      *(v32 + 32) = v54;
      *(v32 + 40) = v57;
      *(v32 + 48) = v56;
      *(v32 + 56) = v58;

      sub_195EB6308(v32, v59);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_195FAC070;
      v34 = sub_195EB5F80();
      v35 = sub_195EB6074(v34);
      v37 = v36;

      *(v33 + 32) = v35;
      *(v33 + 40) = v37;

      sub_195EB6214(v38);
      v39 = sub_195FA0828();
      v41 = v40;

      if (v29 == v39 && v31 == v41)
      {
        break;
      }

      v42 = sub_195FA12B8();

      if (v42)
      {
        goto LABEL_15;
      }

      v13 = (v13 + 1) & v52;
      if (((*(v53 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:

    v45 = (*(v55 + 48) + 32 * v13);
    v46 = v45[1];
    v48 = v45[2];
    v47 = v45[3];
    *a1 = *v45;
    a1[1] = v46;
    a1[2] = v48;
    a1[3] = v47;

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = *v49;

    sub_195F6CB54(v56, v58, v50, v57, v13, isUniquelyReferenced_nonNull_native);
    *v49 = v59[0];
    *a1 = v56;
    a1[1] = v58;
    a1[2] = v50;
    a1[3] = v57;
    return 1;
  }
}

uint64_t sub_195F6BD20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_195FA0EE8();
    v23 = v10;
    sub_195FA0E78();
    if (sub_195FA0EA8())
    {
      sub_195EB4B30(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_195F6BF20(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_195FA0D78();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_195FA0EA8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_195F6BF20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_195FA0ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_195FA0D78();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_195F6C140(uint64_t a1)
{
  v2 = v1;
  v36 = sub_195FA0478();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE310, &qword_195FAF9A8);
  result = sub_195FA0ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_195F6E0A8(&qword_1EAEEBCD0, MEMORY[0x1E6968FC0]);
      result = sub_195FA0818();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_195F6C488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE308, &qword_195FAF9A0);
  result = sub_195FA0ED8();
  v5 = result;
  if (*(v3 + 16))
  {
    v40 = v2;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v41 = v3;
    v42 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v45 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      sub_195FA1398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v24 = inited;
      *(inited + 16) = xmmword_195FAC280;
      if (v21)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      *(inited + 32) = v25;
      *(inited + 40) = v21;
      v44 = v19;
      *(inited + 48) = v19;
      *(inited + 56) = v20;

      v43 = v20;

      sub_195EB6308(v24, &v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_195FAC070;
      v27 = sub_195EB5F80();
      v28 = sub_195EB6074(v27);
      v30 = v29;

      *(v26 + 32) = v28;
      *(v26 + 40) = v30;

      sub_195EB6214(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      sub_195FA0828();

      sub_195FA0958();

      result = sub_195FA13E8();
      v5 = v42;
      v32 = -1 << *(v42 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v42 + 48) + 32 * v13);
      *v14 = v44;
      v14[1] = v43;
      v14[2] = v22;
      v14[3] = v21;
      ++*(v42 + 16);
      v3 = v41;
      v10 = v45;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v45 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v3 + 32);
    if (v39 >= 64)
    {
      bzero(v7, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v39;
    }

    v2 = v40;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_195F6C854(uint64_t a1, uint64_t a2)
{
  sub_195FA0D78();
  result = sub_195FA0E68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_195F6C8D8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_195F6C140(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_195F6D218();
      goto LABEL_12;
    }

    sub_195F6DA00(v10 + 1);
  }

  v12 = *v3;
  sub_195F6E0A8(&qword_1EAEEBCD0, MEMORY[0x1E6968FC0]);
  v13 = sub_195FA0818();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_195F6E0A8(&qword_1EAEEBCC8, MEMORY[0x1E6968FC8]);
      v21 = sub_195FA0868();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_195FA1328();
  __break(1u);
  return result;
}

uint64_t sub_195F6CB54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v55 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a6 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a6)
  {
    sub_195F6C488(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_195F6D450();
      goto LABEL_20;
    }

    sub_195F6DD08(v10 + 1);
  }

  v12 = *v6;
  sub_195FA1398();
  sub_195F37930(v55, a2, a3, a4);
  sub_195FA0958();

  result = sub_195FA13E8();
  v52 = v12 + 56;
  v53 = v12;
  v13 = -1 << *(v12 + 32);
  a5 = result & ~v13;
  if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v51 = ~v13;
    if (a4)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    v50 = v14;
    do
    {
      v15 = (*(v53 + 48) + 32 * a5);
      v16 = *v15;
      v17 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v21 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v22 = v18 ? v19 : 0;
      *(inited + 32) = v22;
      *(inited + 40) = v18;
      *(inited + 48) = v16;
      *(inited + 56) = v17;

      sub_195EB6308(v21, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_195FAC070;
      v24 = sub_195EB5F80();
      v25 = sub_195EB6074(v24);
      v27 = v26;

      *(v23 + 32) = v25;
      *(v23 + 40) = v27;

      sub_195EB6214(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      v29 = sub_195FA0828();
      v31 = v30;

      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_195FAC280;
      *(v32 + 32) = v50;
      *(v32 + 40) = a4;
      *(v32 + 48) = v55;
      *(v32 + 56) = a2;

      sub_195EB6308(v32, v57);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_195FAC070;
      v34 = sub_195EB5F80();
      v35 = sub_195EB6074(v34);
      v37 = v36;

      *(v33 + 32) = v35;
      *(v33 + 40) = v37;

      sub_195EB6214(v38);
      v39 = sub_195FA0828();
      v41 = v40;

      if (v29 == v39 && v31 == v41)
      {
        goto LABEL_23;
      }

      v42 = sub_195FA12B8();

      if (v42)
      {
        goto LABEL_24;
      }

      a5 = (a5 + 1) & v51;
    }

    while (((*(v52 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_20:
  v43 = *v48;
  *(*v48 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v44 = (*(v43 + 48) + 32 * a5);
  *v44 = v55;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = a4;
  v45 = *(v43 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    *(v43 + 16) = v47;
    return result;
  }

  __break(1u);
LABEL_23:

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA00, &qword_195FAF000);
  result = sub_195FA1328();
  __break(1u);
  return result;
}