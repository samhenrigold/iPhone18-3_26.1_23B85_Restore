_OWORD *sub_1B8548E9C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B851F84C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1B8548F18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B851F84C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1B8548F84(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B851F84C(a3, (a4[7] + 32 * a1));
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

void (*sub_1B8548FEC(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B8549374(v5);
  v5[9] = sub_1B85490F0(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B8549090;
}

void sub_1B8549090(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B85490F0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B853573C(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B852CAA4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B852BEEC(v16, a3 & 1);
    v11 = sub_1B853573C(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for Name(0);
    result = sub_1B8566778();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1B8549238;
}

void sub_1B8549238(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if ((*a1)[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v14 = v2[1];
      v6[2] = v4;
      v15 = v14;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v10 = v2[3];
      v11 = *v2[2];
      sub_1B8549CC0(*(v11 + 48) + 8 * v10);
      sub_1B8548CD4(v10, v11);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v12 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v12;
    *(v6[7] + 8 * v5) = v3;
    v13 = v6[2];
    v9 = __OFADD__(v13, 1);
    v4 = v13 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1B8549374(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B854939C;
}

uint64_t sub_1B85493A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB80, &qword_1B8575638);
    v3 = sub_1B85663E8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1B85667D8();
      sub_1B8565D38();
      result = sub_1B8566808();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 == v9 && v14[1] == v8)
        {
          goto LABEL_3;
        }

        result = sub_1B8566758();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1B8549508(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1B8566358();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB70, &qword_1B8576950);
      result = sub_1B85663E8();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1B8566358();
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
  v32 = v5;
  v33 = v1 & 0xC000000000000001;
  v29 = v1 + 32;
  v30 = v1 & 0xFFFFFFFFFFFFFF8;
  v31 = v1;
  while (1)
  {
    if (v33)
    {
      result = MEMORY[0x1B8CBF6C0](v6, v1);
      v8 = result;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      goto LABEL_17;
    }

    if (v6 >= *(v30 + 16))
    {
      goto LABEL_36;
    }

    v8 = *(v29 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      break;
    }

LABEL_17:
    sub_1B85667D8();
    v10 = *(v8 + 16);
    sub_1B8565DA8();
    v11 = v10;
    sub_1B8565D38();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB78, &qword_1B8575630);
    sub_1B8565D08();
    result = sub_1B8566808();
    v12 = ~(-1 << *(v3 + 32));
    v13 = result & v12;
    v14 = (result & v12) >> 6;
    v15 = *(v7 + 8 * v14);
    v16 = 1 << (result & v12);
    if ((v16 & v15) != 0)
    {
      while (1)
      {
        v17 = *(*(v3 + 48) + 8 * v13);
        v18 = sub_1B8565DA8();
        v20 = v19;
        if (v18 == sub_1B8565DA8() && v20 == v21)
        {
          break;
        }

        v23 = sub_1B8566758();

        if (v23)
        {
          goto LABEL_28;
        }

LABEL_20:
        v13 = (v13 + 1) & v12;
        v14 = v13 >> 6;
        v15 = *(v7 + 8 * (v13 >> 6));
        v16 = 1 << v13;
        if ((v15 & (1 << v13)) == 0)
        {
          v1 = v31;
          goto LABEL_31;
        }
      }

LABEL_28:
      sub_1B8566308();
      v24 = *(v17 + 24);
      v25 = *(v8 + 24);

      v26 = MEMORY[0x1B8CBF550](v24, v25);

      if (v26)
      {

        v1 = v31;
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_31:
    *(v7 + 8 * v14) = v15 | v16;
    *(*(v3 + 48) + 8 * v13) = v8;
    v27 = *(v3 + 16);
    v9 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v9)
    {
      goto LABEL_35;
    }

    *(v3 + 16) = v28;
LABEL_10:
    if (v6 == v32)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t _sSo29WBSManagedFeatureAvailabilityC10SafariCoreE28shouldHideExtensionDiscoverySbvg_0()
{
  v0 = [objc_opt_self() sharedController];
  if ([v0 hasAnyExtensionManagement])
  {
    v1 = [v0 onlyAllowsManagedExtensions];

    if (v1)
    {
      return 1;
    }
  }

  else
  {
  }

  v2 = objc_opt_self();
  result = [v2 sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isAppInstallationAllowed];

    if (!v5)
    {
      return 1;
    }

    result = [v2 sharedConnection];
    if (result)
    {
      v6 = result;
      v7 = [result isUIAppInstallationAllowed];

      return v7 ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for WBSManagedFeatureAvailability()
{
  result = qword_1EBA8AB58;
  if (!qword_1EBA8AB58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8AB58);
  }

  return result;
}

unint64_t sub_1B8549A3C()
{
  result = qword_1EBA8AB68;
  if (!qword_1EBA8AB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8AB60, &unk_1B8576940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AB68);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1B8549CC0(uint64_t a1)
{
  type metadata accessor for Name(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8549D4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6775156;
    }

    else
    {
      v3 = 28786;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1986622064;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x657A69735F79656BLL;
    }

    else
    {
      v3 = 0x657079745F79656BLL;
    }

    v4 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 6775156;
    }

    else
    {
      v6 = 28786;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_32;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1986622064)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (a2 == 3)
    {
      if (v3 != 0x657A69735F79656BLL)
      {
        goto LABEL_32;
      }
    }

    else if (v3 != 0x657079745F79656BLL)
    {
LABEL_32:
      v7 = sub_1B8566758();
      goto LABEL_33;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_32;
  }

  v7 = 1;
LABEL_33:

  return v7 & 1;
}

uint64_t sub_1B8549EBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0xD000000000000011;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000017;
    if (v4 == 2)
    {
      v5 = 0xD00000000000001BLL;
      v6 = 0x80000001B858D450;
    }

    else
    {
      v6 = 0x80000001B858D470;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x616E5F74726F6873;
    }

    if (v4)
    {
      v6 = 0x80000001B858D430;
    }

    else
    {
      v6 = 0xEA0000000000656DLL;
    }
  }

  v7 = 0xD00000000000001BLL;
  v8 = 0x80000001B858D470;
  if (a2 == 2)
  {
    v8 = 0x80000001B858D450;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a2)
  {
    v2 = 0x80000001B858D430;
  }

  else
  {
    v3 = 0x616E5F74726F6873;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8566758();
  }

  return v11 & 1;
}

uint64_t sub_1B8549FE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000044496C61;
  v3 = 0x69746E6564657263;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F6C42656772616CLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000062;
    }

    else
    {
      v6 = 0x80000001B858D3E0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 25705;
    }

    else
    {
      v5 = 0x69746E6564657263;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xEC00000044496C61;
    }
  }

  v7 = 0x6F6C42656772616CLL;
  v8 = 0x80000001B858D3E0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000062;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 25705;
    v2 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8566758();
  }

  return v11 & 1;
}

uint64_t WBSKnownExtensionStorefront.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WBSKnownExtensionStorefront.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WBSKnownExtensionStorefront(0) + 20);
  v4 = sub_1B8565938();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WBSKnownExtensionStorefront(uint64_t a1)
{
  result = qword_1EBA8ABE8;
  if (!qword_1EBA8ABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WBSKnownExtensionStorefront.init(name:url:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for WBSKnownExtensionStorefront(0);
  v9 = *(v8 + 20);
  v10 = sub_1B8565938();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_1B854A2CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  if (v2 != 1)
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (*a2 != 1)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8566758();
  }

  return v11 & 1;
}

uint64_t sub_1B854A3C0()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B854A458(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B854A4DC()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

unint64_t sub_1B854A570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B854D404(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B854A5A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (v2 != 1)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B854A5F4()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1B854A644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B854D404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B854A678(uint64_t a1)
{
  v2 = sub_1B854A8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B854A6B4(uint64_t a1)
{
  v2 = sub_1B854A8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WBSKnownExtensionStorefront.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB88, &qword_1B8575640);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854A8D8();
  sub_1B8566828();
  v8[15] = 0;
  sub_1B85666E8();
  if (!v1)
  {
    type metadata accessor for WBSKnownExtensionStorefront(0);
    v8[14] = 1;
    sub_1B8565938();
    sub_1B854D884(&qword_1EBA8AB98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B8566708();
    v8[13] = 2;
    sub_1B85666F8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B854A8D8()
{
  result = qword_1EBA8AB90;
  if (!qword_1EBA8AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AB90);
  }

  return result;
}

uint64_t WBSKnownExtensionStorefront.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_1B8565938();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ABA0, &qword_1B8575648);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = v18 - v6;
  v8 = type metadata accessor for WBSKnownExtensionStorefront(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854A8D8();
  sub_1B8566818();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v8;
  v20 = a1;
  v12 = v23;
  v11 = v24;
  v28 = 0;
  *v10 = sub_1B8566698();
  v10[1] = v13;
  v18[2] = v13;
  v27 = 1;
  sub_1B854D884(&qword_1EBA8ABA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1B85666B8();
  (*(v22 + 32))(v10 + *(v19 + 20), v5, v11);
  v26 = 2;
  v18[1] = 0;
  v14 = sub_1B85666A8();
  v15 = v20;
  v16 = v14;
  (*(v12 + 8))(v7, v25);
  *(v10 + *(v19 + 24)) = v16;
  sub_1B854ACF4(v10, v21);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return sub_1B854AD58(v10);
}

uint64_t sub_1B854ACF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSKnownExtensionStorefront(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B854AD58(uint64_t a1)
{
  v2 = type metadata accessor for WBSKnownExtensionStorefront(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WBSKnownWebBrowser.shortName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WBSKnownWebBrowser.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WBSKnownWebBrowser.extensionsInstallPath.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall WBSKnownWebBrowser.init(shortName:bundleIdentifier:supportedStoreIdentifiers:extensionsInstallPath:)(SafariCore::WBSKnownWebBrowser *__return_ptr retstr, Swift::String shortName, Swift::String bundleIdentifier, Swift::OpaquePointer supportedStoreIdentifiers, Swift::String_optional extensionsInstallPath)
{
  retstr->shortName = shortName;
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->supportedStoreIdentifiers = supportedStoreIdentifiers;
  retstr->extensionsInstallPath = extensionsInstallPath;
}

uint64_t sub_1B854AE9C()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B854AF74(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B854B038()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

unint64_t sub_1B854B10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B854D3B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B854B13C(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x616E5F74726F6873;
  v4 = 0x80000001B858D450;
  v5 = 0xD00000000000001BLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000017;
    v4 = 0x80000001B858D470;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001B858D430;
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

unint64_t sub_1B854B1D0()
{
  v1 = 0x616E5F74726F6873;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_1B854B260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B854D3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B854B294(uint64_t a1)
{
  v2 = sub_1B854CAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B854B2D0(uint64_t a1)
{
  v2 = sub_1B854CAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WBSKnownWebBrowser.isFirstParty.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1 == 0xD000000000000010 && 0x80000001B858EA20 == v2;
  if (v3 || (sub_1B8566758() & 1) != 0 || v1 == 0xD000000000000021 && 0x80000001B858EA40 == v2)
  {
    return 1;
  }

  return sub_1B8566758();
}

uint64_t WBSKnownWebBrowser.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ABB0, &qword_1B8575650);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v14 = v1[3];
  v15 = v7;
  v8 = v1[4];
  v12[2] = v1[5];
  v13 = v8;
  v12[1] = v1[6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854CAD8();
  sub_1B8566828();
  v21 = 0;
  v9 = v16;
  sub_1B85666E8();
  if (!v9)
  {
    v11 = v13;
    v20 = 1;
    sub_1B85666E8();
    v17 = v11;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ABC0, &qword_1B8575658);
    sub_1B854CB2C(&qword_1EBA8ABC8, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1B8566708();
    v18 = 3;
    sub_1B85666C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t WBSKnownWebBrowser.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ABD0, &unk_1B8575660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854CAD8();
  sub_1B8566818();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = 0;
  v9 = sub_1B8566698();
  v26 = v10;
  v30 = 1;
  v11 = sub_1B8566698();
  v25 = v12;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ABC0, &qword_1B8575658);
  v29 = 2;
  sub_1B854CB2C(&qword_1EBA8ABD8, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  sub_1B85666B8();
  v23 = v27;
  v28 = 3;
  v13 = sub_1B8566678();
  v16 = v15;
  v17 = *(v6 + 8);
  v22 = v13;
  v17(v8, v5);
  v19 = v25;
  v18 = v26;
  *a2 = v9;
  a2[1] = v18;
  v20 = v23;
  a2[2] = v24;
  a2[3] = v19;
  v21 = v22;
  a2[4] = v20;
  a2[5] = v21;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B854B998(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AC68, &qword_1B8575BB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854D6C8();
  sub_1B8566828();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AC38, &qword_1B8575BA0);
  sub_1B854D7E8(&qword_1EBA8AC70, &qword_1EBA8AC78, &protocol conformance descriptor for WBSKnownExtensionStorefront, MEMORY[0x1E69E6300]);
  sub_1B8566708();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AC50, &qword_1B8575BA8);
    sub_1B854D71C(&qword_1EBA8AC80, sub_1B854D8CC, MEMORY[0x1E69E6300]);
    sub_1B8566708();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B854BBF0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1B854BC00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776F72625F626577;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x80000001B858D4C0;
  }

  else
  {
    v4 = 0xEC00000073726573;
  }

  if (*a2)
  {
    v5 = 0x776F72625F626577;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (*a2)
  {
    v6 = 0xEC00000073726573;
  }

  else
  {
    v6 = 0x80000001B858D4C0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8566758();
  }

  return v8 & 1;
}

uint64_t sub_1B854BCB4()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B854BD44(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B854BDC0()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B854BE4C@<X0>(char *a2@<X8>)
{
  v3 = sub_1B8566658();

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

void sub_1B854BEAC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001B858D4C0;
  v3 = 0xD000000000000015;
  if (*v1)
  {
    v3 = 0x776F72625F626577;
    v2 = 0xEC00000073726573;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1B854BEF8()
{
  if (*v0)
  {
    return 0x776F72625F626577;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1B854BF40@<X0>(char *a3@<X8>)
{
  v4 = sub_1B8566658();

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

uint64_t sub_1B854BFA4(uint64_t a1)
{
  v2 = sub_1B854D6C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B854BFE0(uint64_t a1)
{
  v2 = sub_1B854D6C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B854C01C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B854D450(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B854C064(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1B854C0FC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1B854C194(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_1B854C22C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t WBSKnownWebBrowserManager.__allocating_init(backingDataURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WBSKnownWebBrowserManager.init(backingDataURL:)(a1);
  return v2;
}

uint64_t WBSKnownWebBrowserManager.init(backingDataURL:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v3;
  v4 = sub_1B8565948();
  v6 = v5;
  sub_1B85657C8();
  swift_allocObject();
  sub_1B85657B8();
  sub_1B854CC00();
  sub_1B85657A8();
  v8 = sub_1B8565938();
  (*(*(v8 - 8) + 8))(a1, v8);

  sub_1B851D53C(v4, v6);
  swift_beginAccess();
  *(v1 + 16) = v10;

  swift_beginAccess();
  *(v1 + 24) = v9;

  return v1;
}

uint64_t WBSKnownWebBrowserManager.__allocating_init(knownWebBrowsers:knownExtensionStorefronts:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t WBSKnownWebBrowserManager.init(knownWebBrowsers:knownExtensionStorefronts:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1B854C62C(uint64_t a1)
{
  v3 = type metadata accessor for WBSKnownExtensionStorefront(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = *(a1 + 32);
  swift_beginAccess();
  v11 = *(v1 + 24);
  v12 = *(v11 + 16);

  v30 = v12;
  if (v12)
  {
    v14 = 0;
    v29 = v10;
    v15 = (v10 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    v27 = v7;
    v28 = v3;
    while (v14 < *(v11 + 16))
    {
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = *(v4 + 72);
      v19 = v14 + 1;
      sub_1B854ACF4(v11 + v17 + v18 * v14, v9);
      v20 = *(v29 + 16);
      v21 = v15;
      do
      {
        if (!v20)
        {
          result = sub_1B854AD58(v9);
          goto LABEL_4;
        }

        v22 = *v21++;
        --v20;
      }

      while (v22 != *&v9[*(v3 + 24)]);
      sub_1B854CC54(v9, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B8535D0C(0, *(v16 + 16) + 1, 1);
        v16 = v31;
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8535D0C((v24 > 1), v25 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v25 + 1;
      v26 = v16 + v17 + v25 * v18;
      v7 = v27;
      result = sub_1B854CC54(v27, v26);
      v3 = v28;
LABEL_4:
      v14 = v19;
      if (v19 == v30)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t sub_1B854C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = (v6 + 80);
  v8 = *(v6 + 16) + 1;
  while (1)
  {
    if (!--v8)
    {
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v9 = *(v7 - 6);
    v10 = *(v7 - 5);
    v12 = *(v7 - 4);
    v11 = *(v7 - 3);
    v14 = *(v7 - 2);
    v13 = *(v7 - 1);
    v15 = *v7;
    if (v12 == a1 && v11 == a2)
    {
      break;
    }

    v7 += 7;
    result = sub_1B8566758();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v12 = a1;
LABEL_11:
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 32) = v14;
  *(a3 + 40) = v13;
  *(a3 + 48) = v15;
}

uint64_t WBSKnownWebBrowserManager.deinit()
{

  return v0;
}

uint64_t WBSKnownWebBrowserManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _s10SafariCore18WBSKnownWebBrowserV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1B8566758()) && (v2 == v7 && v4 == v8 || (sub_1B8566758()) && (sub_1B854DEB4(v3, v10))
  {
    if (v6)
    {
      if (v11 && (v5 == v9 && v6 == v11 || (sub_1B8566758() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B854CAD8()
{
  result = qword_1EBA8ABB8;
  if (!qword_1EBA8ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ABB8);
  }

  return result;
}

uint64_t sub_1B854CB2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8ABC0, &qword_1B8575658);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B854CB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8A0, &qword_1B85747C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B854CC00()
{
  result = qword_1EBA8ABE0;
  if (!qword_1EBA8ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ABE0);
  }

  return result;
}

uint64_t sub_1B854CC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSKnownExtensionStorefront(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B854CCEC(uint64_t a1)
{
  result = sub_1B8565938();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_1B854CD8C(uint64_t a1, int a2)
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

uint64_t sub_1B854CDD4(uint64_t result, int a2, int a3)
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

uint64_t sub_1B854CFB4(uint64_t *a1, int a2)
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

uint64_t sub_1B854CFFC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WBSKnownExtensionStorefront.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WBSKnownExtensionStorefront.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B854D1AC()
{
  result = qword_1EBA8ABF8;
  if (!qword_1EBA8ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ABF8);
  }

  return result;
}

unint64_t sub_1B854D204()
{
  result = qword_1EBA8AC00;
  if (!qword_1EBA8AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC00);
  }

  return result;
}

unint64_t sub_1B854D25C()
{
  result = qword_1EBA8AC08;
  if (!qword_1EBA8AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC08);
  }

  return result;
}

unint64_t sub_1B854D2B4()
{
  result = qword_1EBA8AC10;
  if (!qword_1EBA8AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC10);
  }

  return result;
}

unint64_t sub_1B854D30C()
{
  result = qword_1EBA8AC18;
  if (!qword_1EBA8AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC18);
  }

  return result;
}

unint64_t sub_1B854D364()
{
  result = qword_1EBA8AC20;
  if (!qword_1EBA8AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC20);
  }

  return result;
}

unint64_t sub_1B854D3B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8566658();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B854D404(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8566658();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B854D450(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AC28, &qword_1B8575B98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854D6C8();
  sub_1B8566818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AC38, &qword_1B8575BA0);
  HIBYTE(v8) = 0;
  sub_1B854D7E8(&qword_1EBA8AC40, &qword_1EBA8AC48, &protocol conformance descriptor for WBSKnownExtensionStorefront, MEMORY[0x1E69E6330]);
  sub_1B85666B8();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AC50, &qword_1B8575BA8);
  HIBYTE(v8) = 1;
  sub_1B854D71C(&qword_1EBA8AC58, sub_1B854D794, MEMORY[0x1E69E6330]);
  sub_1B85666B8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B854D6C8()
{
  result = qword_1EBA8AC30;
  if (!qword_1EBA8AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC30);
  }

  return result;
}

uint64_t sub_1B854D71C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8AC50, &qword_1B8575BA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B854D794()
{
  result = qword_1EBA8AC60;
  if (!qword_1EBA8AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC60);
  }

  return result;
}

uint64_t sub_1B854D7E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8AC38, &qword_1B8575BA0);
    sub_1B854D884(a2, type metadata accessor for WBSKnownExtensionStorefront, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B854D884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B854D8CC()
{
  result = qword_1EBA8AC88;
  if (!qword_1EBA8AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC88);
  }

  return result;
}

unint64_t sub_1B854D934()
{
  result = qword_1EBA8AC90;
  if (!qword_1EBA8AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC90);
  }

  return result;
}

unint64_t sub_1B854D98C()
{
  result = qword_1EBA8AC98;
  if (!qword_1EBA8AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AC98);
  }

  return result;
}

unint64_t sub_1B854D9E4()
{
  result = qword_1EBA8ACA0;
  if (!qword_1EBA8ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACA0);
  }

  return result;
}

uint64_t WBSSavedAccount.StableID.encode()()
{
  v0 = sub_1B85657F8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B8565838();
  swift_allocObject();
  sub_1B8565828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ACA8, &qword_1B8575D00);
  *(swift_allocObject() + 16) = xmmword_1B85740F0;
  sub_1B85657D8();
  sub_1B85657E8();
  sub_1B854DC70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ACB8, &qword_1B8575D08);
  sub_1B854DCC8();
  sub_1B8566318();
  sub_1B8565808();
  sub_1B854DD2C();
  v1 = sub_1B8565818();

  return v1;
}

unint64_t sub_1B854DC70()
{
  result = qword_1EBA8ACB0;
  if (!qword_1EBA8ACB0)
  {
    sub_1B85657F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACB0);
  }

  return result;
}

unint64_t sub_1B854DCC8()
{
  result = qword_1EBA8ACC0;
  if (!qword_1EBA8ACC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8ACB8, &qword_1B8575D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACC0);
  }

  return result;
}

unint64_t sub_1B854DD2C()
{
  result = qword_1EBA8ACC8;
  if (!qword_1EBA8ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACC8);
  }

  return result;
}

uint64_t WBSSavedAccount.StableID.init(userName:sites:passkeyCredentialID:passkeyRelyingPartyID:groupID:clientID:userID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a5;
  v17 = *a4;
  *&v10 = *a6;
  v11 = *a8;
  v12 = a8[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(&v10 + 1) = a6[1];
  v15 = v10;
  v14 = *a7;
  swift_bridgeObjectRelease_n();
  *(a9 + 40) = v16;
  *(a9 + 24) = v17;
  swift_bridgeObjectRelease_n();
  *(a9 + 72) = v14;
  *(a9 + 56) = v15;

  *(a9 + 88) = v11;
  *(a9 + 96) = v12;
  return result;
}

uint64_t sub_1B854DE24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B8566758() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B854DEB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t WBSSavedAccount.StableID.userName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WBSSavedAccount.StableID.userName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WBSSavedAccount.StableID.sites.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t WBSSavedAccount.StableID.passkeyCredentialID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t WBSSavedAccount.StableID.passkeyCredentialID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t WBSSavedAccount.StableID.passkeyRelyingPartyID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t WBSSavedAccount.StableID.passkeyRelyingPartyID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t WBSSavedAccount.StableID.groupID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t WBSSavedAccount.StableID.groupID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t WBSSavedAccount.StableID.clientID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t WBSSavedAccount.StableID.clientID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

uint64_t WBSSavedAccount.StableID.userID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  a1[1] = v2;
}

uint64_t WBSSavedAccount.StableID.userID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  return result;
}

uint64_t static WBSSavedAccount.StableID.decode(from:)()
{
  sub_1B85657C8();
  swift_allocObject();
  sub_1B85657B8();
  sub_1B854F404();
  sub_1B85657A8();
}

uint64_t sub_1B854E264()
{
  v1 = *v0;
  v2 = 0x656D614E72657375;
  v3 = 0x4449746E65696C63;
  if (v1 != 5)
  {
    v3 = 0x444972657375;
  }

  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x444970756F7267;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7365746973;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B854E344@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8550440(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B854E378(uint64_t a1)
{
  v2 = sub_1B854FACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B854E3B4(uint64_t a1)
{
  v2 = sub_1B854FACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WBSSavedAccount.StableID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ACD8, &unk_1B8575D10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = v1[2];
  v32 = v1[3];
  v33 = v7;
  v8 = v1[4];
  v30 = v1[5];
  v31 = v8;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[9];
  v28 = v1[8];
  v29 = v9;
  v25 = v11;
  v12 = v1[11];
  v26 = v1[10];
  v27 = v10;
  v24 = v12;
  v13 = v1[12];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_0(v15, v14);
  sub_1B854FACC();
  sub_1B8566828();
  LOBYTE(v35) = 0;
  v18 = v34;
  sub_1B85666C8();
  if (v18)
  {
    return (*(v4 + 8))(v6, v17);
  }

  v20 = v31;
  v19 = v32;
  v21 = v30;
  v35 = v33;
  v37 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA8A700, &qword_1B8574550);
  sub_1B854FCC4(&qword_1EBA8ACE8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1B85666D8();
  v35 = v19;
  v36 = v20;
  v37 = 2;
  sub_1B854FB20();

  sub_1B85666D8();

  v35 = v21;
  v36 = v29;
  v37 = 3;
  sub_1B854FB74();

  sub_1B85666D8();

  v35 = v27;
  v36 = v28;
  v37 = 4;
  sub_1B854FBC8();

  sub_1B85666D8();

  v35 = v25;
  v36 = v26;
  v37 = 5;
  sub_1B854FC1C();

  sub_1B85666D8();

  v35 = v24;
  v36 = v13;
  v37 = 6;
  sub_1B854FC70();

  sub_1B85666D8();

  return (*(v4 + 8))(v6, v17);
}

uint64_t WBSSavedAccount.StableID.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[8];
  v6 = v1[10];
  v7 = v1[12];
  if (v1[1])
  {
    sub_1B85667F8();
    sub_1B8565D38();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_1B85667F8();
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  sub_1B85667F8();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_1B85667F8();
  MEMORY[0x1B8CBFA40](*(v2 + 16));
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = v2 + 40;
    do
    {

      sub_1B8565D38();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (v3)
  {
LABEL_7:
    sub_1B85667F8();
    sub_1B8565D38();
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_1B85667F8();
  if (v4)
  {
LABEL_8:
    sub_1B85667F8();
    sub_1B8565D38();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_1B85667F8();
  if (v5)
  {
LABEL_9:
    sub_1B85667F8();
    sub_1B8565D38();
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_19:
    sub_1B85667F8();
    if (v7)
    {
      goto LABEL_11;
    }

    return sub_1B85667F8();
  }

LABEL_18:
  sub_1B85667F8();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_10:
  sub_1B85667F8();
  sub_1B8565D38();
  if (!v7)
  {
    return sub_1B85667F8();
  }

LABEL_11:
  sub_1B85667F8();

  return sub_1B8565D38();
}

uint64_t WBSSavedAccount.StableID.hashValue.getter()
{
  sub_1B85667D8();
  WBSSavedAccount.StableID.hash(into:)(v1);
  return sub_1B8566808();
}

uint64_t WBSSavedAccount.StableID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AD18, &qword_1B8575D20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v9);
  sub_1B854FACC();
  sub_1B8566818();
  if (v2)
  {
    v36 = v2;
    v39 = 0;
    v38 = 0;
    __swift_destroy_boxed_opaque_existential_0(v37);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v38;
    v60 = 0;
    v61 = 0;
    v59 = v39;
  }

  else
  {
    LOBYTE(v49) = 0;
    v35 = sub_1B8566678();
    v34 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA8A700, &qword_1B8574550);
    LOBYTE(v40) = 1;
    sub_1B854FCC4(&qword_1EBA8AD20, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1B8566688();
    v33 = v49;
    LOBYTE(v40) = 2;
    sub_1B854FD30();
    sub_1B8566688();
    v13 = v49;
    v12 = v50;

    LOBYTE(v40) = 3;
    sub_1B854FD84();
    sub_1B8566688();
    *(&v31 + 1) = v49;
    v32 = v50;

    LOBYTE(v40) = 4;
    sub_1B854FDD8();
    sub_1B8566688();
    v30 = v13;
    *&v31 = v12;
    v15 = v49;
    v14 = v50;

    LOBYTE(v40) = 5;
    sub_1B854FE2C();
    sub_1B8566688();
    v29 = v15;
    v28 = a2;
    v38 = v49;
    v39 = v50;

    v62 = 6;
    sub_1B854FE80();
    sub_1B8566688();
    v36 = 0;
    (*(v6 + 8))(v8, v5);
    v16 = v47;
    v17 = v48;

    *&v40 = v35;
    v18 = v34;
    *(&v40 + 1) = v34;
    *&v41 = v33;
    v19 = v30;
    *(&v41 + 1) = v30;
    v20 = v31;
    v42 = v31;
    v21 = *(&v31 + 1);
    v22 = v32;
    *&v43 = v32;
    v23 = v29;
    *(&v43 + 1) = v29;
    *&v44 = v14;
    *(&v44 + 1) = v38;
    *&v45 = v39;
    *(&v45 + 1) = v16;
    v46 = v17;
    v24 = v28;
    *(v28 + 96) = v17;
    v25 = v45;
    v24[4] = v44;
    v24[5] = v25;
    v26 = v41;
    *v24 = v40;
    v24[1] = v26;
    v27 = v43;
    v24[2] = v42;
    v24[3] = v27;
    sub_1B854FED4(&v40, &v49);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v49 = v35;
    v50 = v18;
    v51 = v33;
    v52 = v19;
    v53 = v20;
    v54 = v21;
    v55 = v22;
    v56 = v23;
    v57 = v14;
    v58 = v38;
    v59 = v39;
    v60 = v16;
    v61 = v17;
  }

  return sub_1B853BAE0(&v49);
}

uint64_t sub_1B854F190()
{
  sub_1B85667D8();
  WBSSavedAccount.StableID.hash(into:)(v1);
  return sub_1B8566808();
}

uint64_t sub_1B854F1D4()
{
  sub_1B85667D8();
  WBSSavedAccount.StableID.hash(into:)(v1);
  return sub_1B8566808();
}

unint64_t sub_1B854F404()
{
  result = qword_1EBA8ACD0;
  if (!qword_1EBA8ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACD0);
  }

  return result;
}

uint64_t WBSSavedAccount.SIWAUserID.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WBSSavedAccount.SIWAUserID.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WBSSavedAccount.SIWAUserID.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B854F668()
{
  sub_1B85667D8();
  sub_1B8565D38();
  return sub_1B8566808();
}

uint64_t sub_1B854F6B4()
{
  sub_1B85667D8();
  sub_1B8565D38();
  return sub_1B8566808();
}

uint64_t sub_1B854F7AC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8566758();
  }
}

BOOL _sSo15WBSSavedAccountC10SafariCoreE8StableIDV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  v16 = a2[7];
  v15 = a2[8];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v48 = a1[10];
    v49 = a1[8];
    v46 = a1[7];
    v47 = a2[10];
    v42 = a2[9];
    v43 = a1[9];
    v40 = a2[11];
    v41 = a1[11];
    v44 = a2[12];
    v45 = a1[12];
    if (*a1 != *a2 || v3 != v9)
    {
      v38 = a1[4];
      v39 = a2[4];
      v17 = a1[3];
      v18 = a2[5];
      v19 = a2[6];
      v20 = a1[6];
      v21 = a1[5];
      v22 = a2[7];
      v23 = a2[8];
      v24 = a2[3];
      v25 = sub_1B8566758();
      v11 = v24;
      v15 = v23;
      v16 = v22;
      v7 = v21;
      v8 = v20;
      v13 = v19;
      v14 = v18;
      v6 = v17;
      v5 = v38;
      v12 = v39;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v48 = a1[10];
    v49 = a1[8];
    v46 = a1[7];
    v47 = a2[10];
    v42 = a2[9];
    v43 = a1[9];
    v40 = a2[11];
    v41 = a1[11];
    v44 = a2[12];
    v45 = a1[12];
    if (v9)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v10)
    {
      return 0;
    }

    v26 = v4;
    v27 = v10;
    v28 = v15;
    v29 = v11;
    v30 = sub_1B854DE24(v26, v27);
    v11 = v29;
    v15 = v28;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v12)
    {
      return 0;
    }

    if (v6 != v11 || v5 != v12)
    {
      v31 = v15;
      v32 = sub_1B8566758();
      v15 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v12)
    {
      return 0;
    }

    v33 = v15;

    v15 = v33;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    if (v7 != v14 || v8 != v13)
    {
      v34 = v15;
      v35 = sub_1B8566758();
      v15 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v13)
    {
      return 0;
    }

    v36 = v15;

    v15 = v36;
  }

  if (v49)
  {
    if (!v15 || (v46 != v16 || v49 != v15) && (sub_1B8566758() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }
  }

  if (v48)
  {
    if (!v47 || (v43 != v42 || v48 != v47) && (sub_1B8566758() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v47)
    {
      return 0;
    }
  }

  if (v45)
  {
    return v44 && (v41 == v40 && v45 == v44 || (sub_1B8566758() & 1) != 0);
  }

  if (v44)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1B854FACC()
{
  result = qword_1EBA8ACE0;
  if (!qword_1EBA8ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACE0);
  }

  return result;
}

unint64_t sub_1B854FB20()
{
  result = qword_1EBA8ACF0;
  if (!qword_1EBA8ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACF0);
  }

  return result;
}

unint64_t sub_1B854FB74()
{
  result = qword_1EBA8ACF8;
  if (!qword_1EBA8ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ACF8);
  }

  return result;
}

unint64_t sub_1B854FBC8()
{
  result = qword_1EBA8AD00;
  if (!qword_1EBA8AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD00);
  }

  return result;
}

unint64_t sub_1B854FC1C()
{
  result = qword_1EBA8AD08;
  if (!qword_1EBA8AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD08);
  }

  return result;
}

unint64_t sub_1B854FC70()
{
  result = qword_1EBA8AD10;
  if (!qword_1EBA8AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD10);
  }

  return result;
}

uint64_t sub_1B854FCC4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA8A700, &qword_1B8574550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B854FD30()
{
  result = qword_1EBA8AD28;
  if (!qword_1EBA8AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD28);
  }

  return result;
}

unint64_t sub_1B854FD84()
{
  result = qword_1EBA8AD30;
  if (!qword_1EBA8AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD30);
  }

  return result;
}

unint64_t sub_1B854FDD8()
{
  result = qword_1EBA8AD38;
  if (!qword_1EBA8AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD38);
  }

  return result;
}

unint64_t sub_1B854FE2C()
{
  result = qword_1EBA8AD40;
  if (!qword_1EBA8AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD40);
  }

  return result;
}

unint64_t sub_1B854FE80()
{
  result = qword_1EBA8AD48;
  if (!qword_1EBA8AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD48);
  }

  return result;
}

unint64_t sub_1B854FF10()
{
  result = qword_1EBA8AD50;
  if (!qword_1EBA8AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD50);
  }

  return result;
}

unint64_t sub_1B854FF68()
{
  result = qword_1EBA8AD60;
  if (!qword_1EBA8AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD60);
  }

  return result;
}

unint64_t sub_1B854FFC0()
{
  result = qword_1EBA8AD68;
  if (!qword_1EBA8AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD68);
  }

  return result;
}

unint64_t sub_1B8550018()
{
  result = qword_1EBA8AD70;
  if (!qword_1EBA8AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD70);
  }

  return result;
}

unint64_t sub_1B8550070()
{
  result = qword_1EBA8AD78;
  if (!qword_1EBA8AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD78);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B85500F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_1B855014C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s8StableIDV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8StableIDV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B855033C()
{
  result = qword_1EBA8AD80;
  if (!qword_1EBA8AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD80);
  }

  return result;
}

unint64_t sub_1B8550394()
{
  result = qword_1EBA8AD88;
  if (!qword_1EBA8AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD88);
  }

  return result;
}

unint64_t sub_1B85503EC()
{
  result = qword_1EBA8AD90;
  if (!qword_1EBA8AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD90);
  }

  return result;
}

uint64_t sub_1B8550440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B8566758() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365746973 && a2 == 0xE500000000000000 || (sub_1B8566758() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B858DF00 == a2 || (sub_1B8566758() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B858EAE0 == a2 || (sub_1B8566758() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1B8566758() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_1B8566758() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B8566758();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1B855068C()
{
  result = qword_1EBA8AD98;
  if (!qword_1EBA8AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD98);
  }

  return result;
}

unint64_t sub_1B85506E0()
{
  result = qword_1EBA8ADA0;
  if (!qword_1EBA8ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADA0);
  }

  return result;
}

unint64_t sub_1B8550734()
{
  result = qword_1EBA8ADA8;
  if (!qword_1EBA8ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADA8);
  }

  return result;
}

unint64_t sub_1B8550788()
{
  result = qword_1EBA8ADB0;
  if (!qword_1EBA8ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADB0);
  }

  return result;
}

unint64_t sub_1B85507DC()
{
  result = qword_1EBA8ADB8;
  if (!qword_1EBA8ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADB8);
  }

  return result;
}

uint64_t WBSKeychainPasskey.Metadata.subscript.getter(_BYTE *a1)
{
  v2 = *v1;
  v3 = sub_1B8565D68();

  v4 = [objc_opt_self() cborWithUTF8String_];

  v5 = sub_1B8530A58(v4, v2);
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 string];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1B8565DA8();

  return v7;
}

{
  v2 = *v1;
  v3 = sub_1B8565D68();

  v4 = [objc_opt_self() cborWithUTF8String_];

  v5 = sub_1B8530A58(v4, v2);
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 data];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1B85659D8();

  return v7;
}

uint64_t WBSKeychainPasskey.Metadata.subscript.getter()
{
  v1 = *v0;
  v2 = sub_1B8565D68();
  v3 = [objc_opt_self() cborWithUTF8String_];

  v4 = sub_1B8530A58(v3, v1);
  if (!v4)
  {
    return 2;
  }

  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t WBSKeychainPasskey.Metadata.init(name:displayName:userHandle:largeBlob:prfCredRandomWithUV:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  *a9 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v24 = 0;
  WBSKeychainPasskey.Metadata.subscript.setter(a1, a2, &v24);
  v23 = 1;
  WBSKeychainPasskey.Metadata.subscript.setter(a3, a4, &v23);
  v22 = 1;
  sub_1B852CF28(a5, a6);
  WBSKeychainPasskey.Metadata.subscript.setter(a5, a6, &v22);
  v21 = 2;
  sub_1B852CF28(a7, a8);
  WBSKeychainPasskey.Metadata.subscript.setter(a7, a8, &v21);
  v20 = 3;
  WBSKeychainPasskey.Metadata.subscript.setter(a10, a11, &v20);
  sub_1B852608C(a7, a8);

  return sub_1B852608C(a5, a6);
}

id WBSKeychainPasskey.init(keychainDictionary:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v101 - v8;
  v10 = sub_1B8565A38();
  v11 = *(v10 - 8);
  v115 = v10;
  v116 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v101 - v15;
  v17 = type metadata accessor for WBSKeychainPasskey(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {
    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v28 = sub_1B8565B78();
    __swift_project_value_buffer(v28, qword_1ED985C68);
    v29 = sub_1B8565B48();
    v30 = sub_1B8566218();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B8447000, v29, v30, "Keychain passkey is missing atag.", v31, 2u);
      MEMORY[0x1B8CC1710](v31, -1, -1);
    }

    goto LABEL_35;
  }

  v111 = a2;
  v112 = v17;
  v22 = v119;
  v21 = v120;
  v23 = objc_opt_self();
  sub_1B852550C(v22, v21);
  v113 = v22;
  v114 = v21;
  v24 = sub_1B85659A8();
  v25 = [v23 decodeFromData_];

  if (!v25 || (v26 = [v25 dictionary], v25, !v26))
  {
    v33 = v113;
    v32 = v114;
    sub_1B851D53C(v113, v114);
    v17 = v112;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v34 = sub_1B8565B78();
    __swift_project_value_buffer(v34, qword_1ED985C68);
    v29 = sub_1B8565B48();
    v35 = sub_1B8566218();
    v36 = os_log_type_enabled(v29, v35);
    a2 = v111;
    if (!v36)
    {
      goto LABEL_33;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Could not parse keychain passkey's atag.";
LABEL_32:
    _os_log_impl(&dword_1B8447000, v29, v35, v38, v37, 2u);
    MEMORY[0x1B8CC1710](v37, -1, -1);
    goto LABEL_33;
  }

  sub_1B8543DA4();
  sub_1B8554900();
  v110 = sub_1B8565CC8();
  sub_1B851D53C(v113, v114);

  v27 = [a1 __swift_objectForKeyedSubscript_];
  v17 = v112;
  if (v27)
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  a2 = v111;
  if (!*(&v122 + 1))
  {

    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
LABEL_28:
    v33 = v113;
    v32 = v114;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v40 = sub_1B8565B78();
    __swift_project_value_buffer(v40, qword_1ED985C68);
    v29 = sub_1B8565B48();
    v35 = sub_1B8566218();
    if (!os_log_type_enabled(v29, v35))
    {
      goto LABEL_33;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Keychain passkey is missing labl.";
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v107 = v119;
  v109 = v120;
  result = [objc_opt_self() isCredentialExchangeEnabled];
  if (!result)
  {
    if ([a1 __swift_objectForKeyedSubscript_])
    {
      sub_1B85662E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v123 = v121;
    v124 = v122;
    if (*(&v122 + 1))
    {
      if (swift_dynamicCast())
      {
        v44 = v120;
        v108 = v119;
        goto LABEL_61;
      }
    }

    else
    {
      sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    }

    v45 = 0;
    v44 = 0xF000000000000000;
    v33 = v113;
    v32 = v114;
    goto LABEL_65;
  }

  if (!*MEMORY[0x1E697AC38])
  {
    __break(1u);
    goto LABEL_135;
  }

  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  if (*(&v122 + 1))
  {
    if (swift_dynamicCast())
    {
      v46 = v117;
      v44 = v118;
      goto LABEL_60;
    }
  }

  else
  {
    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
  }

  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {
    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    v108 = 0;
    v44 = 0xF000000000000000;
    goto LABEL_64;
  }

  v47 = swift_dynamicCast();
  v46 = v119;
  if (v47)
  {
    v44 = v120;
  }

  else
  {
    v44 = 0xF000000000000000;
  }

  if (!v47)
  {
    v46 = 0;
  }

LABEL_60:
  v108 = v46;
  if (v44 >> 60 == 15)
  {
LABEL_64:

    v33 = v113;
    v32 = v114;
    v45 = v108;
LABEL_65:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v48 = sub_1B8565B78();
    __swift_project_value_buffer(v48, qword_1ED985C68);
    v29 = sub_1B8565B48();
    v49 = sub_1B8566218();
    if (os_log_type_enabled(v29, v49))
    {
      v50 = v44;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B8447000, v29, v49, "Keychain passkey is missing alis/klbl.", v51, 2u);
      MEMORY[0x1B8CC1710](v51, -1, -1);
      sub_1B852608C(v45, v50);
      v41 = v33;
      v42 = v114;
      goto LABEL_34;
    }

    sub_1B852608C(v45, v44);
LABEL_33:
    v41 = v33;
    v42 = v32;
LABEL_34:
    sub_1B851D53C(v41, v42);
LABEL_35:

LABEL_36:
    v43 = 1;
    return (*(v18 + 56))(a2, v43, 1, v17);
  }

LABEL_61:
  v106 = v44;
  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v52 = v116;
  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {

    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    (*(v52 + 56))(v9, 1, 1, v115);
    goto LABEL_75;
  }

  v53 = v115;
  v54 = swift_dynamicCast();
  v55 = *(v52 + 56);
  v105 = v52 + 56;
  v104 = v55;
  v55(v9, v54 ^ 1u, 1, v53);
  v103 = *(v52 + 48);
  if (v103(v9, 1, v53) == 1)
  {

LABEL_75:
    sub_1B8456588(v9, &qword_1EBA8A7A0, &unk_1B85764D0);
    a2 = v111;
    v17 = v112;
    v57 = v113;
    v56 = v114;
    v58 = v108;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v59 = sub_1B8565B78();
    __swift_project_value_buffer(v59, qword_1ED985C68);
    v29 = sub_1B8565B48();
    v60 = sub_1B8566218();
    if (os_log_type_enabled(v29, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1B8447000, v29, v60, "Keychain passkey is missing mdat.", v61, 2u);
      MEMORY[0x1B8CC1710](v61, -1, -1);
    }

    sub_1B851D53C(v57, v56);
    v41 = v58;
    v42 = v106;
    goto LABEL_34;
  }

  v102 = *(v52 + 32);
  v102(v16, v9, v53);
  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {

    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    v104(v7, 1, 1, v53);
    goto LABEL_87;
  }

  v62 = swift_dynamicCast();
  v104(v7, v62 ^ 1u, 1, v53);
  if (v103(v7, 1, v53) == 1)
  {

LABEL_87:
    a2 = v111;
    v17 = v112;
    sub_1B8456588(v7, &qword_1EBA8A7A0, &unk_1B85764D0);
    v63 = v113;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v64 = sub_1B8565B78();
    __swift_project_value_buffer(v64, qword_1ED985C68);
    v65 = sub_1B8565B48();
    v66 = sub_1B8566218();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v108;
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1B8447000, v65, v66, "Keychain passkey is missing cdat.", v69, 2u);
      MEMORY[0x1B8CC1710](v69, -1, -1);
      sub_1B851D53C(v68, v106);

      sub_1B851D53C(v63, v114);
    }

    else
    {
      sub_1B851D53C(v63, v114);
      sub_1B851D53C(v68, v106);
    }

    (*(v116 + 8))(v16, v115);
    goto LABEL_36;
  }

  v102(v14, v7, v53);
  v70 = [a1 __swift_objectForKeyedSubscript_];
  a2 = v111;
  v17 = v112;
  if (v70)
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v71 = v108;
  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {

    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
LABEL_102:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v73 = sub_1B8565B78();
    __swift_project_value_buffer(v73, qword_1ED985C68);
    v74 = sub_1B8565B48();
    v75 = sub_1B8566218();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_118;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Keychain passkey is missing sync.";
    goto LABEL_117;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_102;
  }

  v72 = v119;
  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v123 = v121;
  v124 = v122;
  if (!*(&v122 + 1))
  {

    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
LABEL_113:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v80 = sub_1B8565B78();
    __swift_project_value_buffer(v80, qword_1ED985C68);
    v74 = sub_1B8565B48();
    v75 = sub_1B8566218();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_118;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Keychain passkey is missing access group.";
LABEL_117:
    _os_log_impl(&dword_1B8447000, v74, v75, v77, v76, 2u);
    MEMORY[0x1B8CC1710](v76, -1, -1);
LABEL_118:
    sub_1B851D53C(v71, v106);

    sub_1B851D53C(v113, v114);
    v81 = v115;
    v82 = *(v116 + 8);
    v82(v14, v115);
    v82(v16, v81);
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_113;
  }

  LODWORD(v108) = v72;
  v78 = v119;
  v79 = v120;
  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_1B85662E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0u;
    v122 = 0u;
  }

  v83 = v116;
  v84 = v107;
  v123 = v121;
  v124 = v122;
  v105 = v79;
  if (*(&v122 + 1))
  {
    v85 = swift_dynamicCast();
    v86 = v119;
    v87 = v120;
    if (!v85)
    {
      v86 = 0;
      v87 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    v86 = 0;
    v87 = 0xF000000000000000;
  }

  *v20 = v86;
  v20[1] = v87;
  v88 = v109;
  v20[2] = v110;
  v20[3] = v84;
  v20[4] = v88;
  v20[5] = v71;
  v20[6] = v106;
  v89 = v112;
  v90 = *(v83 + 16);
  v91 = v115;
  v90(v20 + v112[8], v16, v115);
  result = (v90)(v20 + v89[9], v14, v91);
  *(v20 + v89[10]) = v108;
  v92 = (v20 + v89[12]);
  v93 = v105;
  *v92 = v78;
  v92[1] = v93;
  if (*MEMORY[0x1E697AE90])
  {
    if ([a1 __swift_objectForKeyedSubscript_])
    {
      sub_1B85662E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v123 = v121;
    v124 = v122;
    if (*(&v122 + 1))
    {
      if (swift_dynamicCast())
      {
        v94 = v119;
        v95 = v120;
LABEL_133:

        sub_1B851D53C(v113, v114);
        a2 = v111;
        v17 = v112;
        v97 = *(v116 + 8);
        v98 = v14;
        v99 = v115;
        v97(v98, v115);
        v97(v16, v99);
        v100 = (v20 + *(v17 + 44));
        *v100 = v94;
        v100[1] = v95;
        sub_1B8554958(v20, a2);
        v43 = 0;
        return (*(v18 + 56))(a2, v43, 1, v17);
      }
    }

    else
    {
      sub_1B8456588(&v123, &qword_1EBA8A6F8, &qword_1B8574548);
    }

    v94 = sub_1B8565DA8();
    v95 = v96;
    goto LABEL_133;
  }

LABEL_135:
  __break(1u);
  return result;
}

void WBSKeychainPasskey.Metadata.subscript.setter(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    v13 = sub_1B8565D68();

    v6 = [objc_opt_self() cborWithUTF8String_];

    goto LABEL_11;
  }

  v4 = sub_1B8565D68();

  v5 = objc_opt_self();
  v6 = [v5 cborWithUTF8String_];

  v7 = sub_1B8565D68();

  v8 = [v5 cborWithUTF8String_];

  if (!v8)
  {
LABEL_11:
    v14 = sub_1B8525C44(v6);

    return;
  }

  v9 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1B8554184(v8, v6, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
    return;
  }

  if (v9 < 0)
  {
    v10 = *v3;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v11 = sub_1B8566358();
  if (!__OFADD__(v11, 1))
  {
    *v3 = sub_1B8553CCC(v10, v11 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t WBSKeychainPasskey.Metadata.toCBOR()()
{
  sub_1B8543DA4();
  sub_1B8554900();
  v0 = sub_1B8565CB8();
  v1 = [objc_opt_self() cborWithDictionary_];

  return sub_1B8565958();
}

void WBSKeychainPasskey.Metadata.subscript.setter(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_1B8565D68();
  v5 = objc_opt_self();
  v6 = [v5 cborWithUTF8String_];

  if (v3 == 2 || (v7 = [v5 cborWithInteger_]) == 0)
  {
    v13 = sub_1B8525C44(v6);
  }

  else
  {
    v8 = v7;
    v9 = *v1;
    if ((*v1 & 0xC000000000000001) == 0)
    {
LABEL_9:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v1;
      sub_1B8554184(v8, v6, isUniquelyReferenced_nonNull_native);

      *v1 = v14;
      return;
    }

    if (v9 < 0)
    {
      v10 = *v1;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_1B8566358();
    if (!__OFADD__(v11, 1))
    {
      *v1 = sub_1B8553CCC(v10, v11 + 1);
      goto LABEL_9;
    }

    __break(1u);
  }
}

uint64_t WBSKeychainPasskey.persistentRef.getter()
{
  v1 = *v0;
  sub_1B852CF28(*v0, *(v0 + 8));
  return v1;
}

uint64_t WBSKeychainPasskey.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t WBSKeychainPasskey.relyingPartyIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WBSKeychainPasskey.credentialID.getter()
{
  v1 = *(v0 + 40);
  sub_1B852550C(v1, *(v0 + 48));
  return v1;
}

uint64_t WBSKeychainPasskey.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WBSKeychainPasskey(0) + 32);
  v4 = sub_1B8565A38();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WBSKeychainPasskey.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WBSKeychainPasskey(0) + 36);
  v4 = sub_1B8565A38();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WBSKeychainPasskey.group.getter()
{
  v1 = *(v0 + *(type metadata accessor for WBSKeychainPasskey(0) + 44));

  return v1;
}

uint64_t WBSKeychainPasskey.accessGroup.getter()
{
  v1 = *(v0 + *(type metadata accessor for WBSKeychainPasskey(0) + 48));

  return v1;
}

uint64_t WBSKeychainPasskey.init(persistentRef:metadata:relyingPartyIdentifier:credentialID:lastModifiedDate:creationDate:isSynchronizable:group:accessGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a3;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = v17;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  v18 = type metadata accessor for WBSKeychainPasskey(0);
  v19 = v18[8];
  v20 = sub_1B8565A38();
  v21 = *(*(v20 - 8) + 32);
  v21(&a9[v19], a8, v20);
  result = (v21)(&a9[v18[9]], a10, v20);
  a9[v18[10]] = a11;
  v23 = &a9[v18[11]];
  *v23 = a12;
  *(v23 + 1) = a13;
  v24 = &a9[v18[12]];
  *v24 = a14;
  *(v24 + 1) = a15;
  return result;
}

uint64_t WBSKeychainPasskey.Metadata.BoolKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B8566658();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B85528A8()
{
  sub_1B85667D8();
  sub_1B8565D38();
  return sub_1B8566808();
}

uint64_t sub_1B855291C()
{
  sub_1B85667D8();
  sub_1B8565D38();
  return sub_1B8566808();
}

uint64_t sub_1B8552970@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B8566658();

  *a2 = v3 != 0;
  return result;
}

SafariCore::WBSKeychainPasskey::Metadata::DataKeys_optional __swiftcall WBSKeychainPasskey.Metadata.DataKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8566658();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WBSKeychainPasskey.Metadata.DataKeys.rawValue.getter()
{
  v1 = 0x69746E6564657263;
  v2 = 0x6F6C42656772616CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1B8552ACC()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B8552B94(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B8552C48()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

void sub_1B8552D18(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000044496C61;
  v3 = 0x69746E6564657263;
  v4 = 0xE900000000000062;
  v5 = 0x6F6C42656772616CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001B858D3E0;
  }

  if (*v1)
  {
    v3 = 25705;
    v2 = 0xE200000000000000;
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

uint64_t WBSKeychainPasskey.Metadata.DateKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E6F697461657263;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1B8552DF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F697461657263;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001B858D400;
  }

  else
  {
    v4 = 0xEC00000065746144;
  }

  if (*a2)
  {
    v5 = 0x6E6F697461657263;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xEC00000065746144;
  }

  else
  {
    v6 = 0x80000001B858D400;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8566758();
  }

  return v8 & 1;
}

uint64_t sub_1B8552EA4()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B8552F34(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B8552FB0()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

void sub_1B8553048(unint64_t *a1@<X8>)
{
  v2 = 0x80000001B858D400;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6E6F697461657263;
    v2 = 0xEC00000065746144;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1B85530A0@<X0>(char *a4@<X8>)
{
  v5 = sub_1B8566658();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t WBSKeychainPasskey.Metadata.StringKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0x4E79616C70736964;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B855313C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4E79616C70736964;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000656D61;
  }

  if (*a2)
  {
    v5 = 0x4E79616C70736964;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xEB00000000656D61;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8566758();
  }

  return v8 & 1;
}

uint64_t sub_1B85531E4()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B8553268(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B85532D8()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B8553364@<X0>(char *a3@<X8>)
{
  v4 = sub_1B8566658();

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

void sub_1B85533C0(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x4E79616C70736964;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000656D61;
  }

  *a1 = v2;
  a1[1] = v3;
}

void WBSKeychainPasskey.Metadata.subscript.setter(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (a2 >> 60 == 15)
  {
    v4 = sub_1B8565D68();

    v5 = [objc_opt_self() cborWithUTF8String_];

    v17 = sub_1B8525C44(v5);
  }

  else
  {
    sub_1B852550C(a1, a2);
    v8 = sub_1B8565D68();

    v9 = objc_opt_self();
    v10 = [v9 cborWithUTF8String_];

    sub_1B852550C(a1, a2);
    v11 = sub_1B85659A8();
    v12 = [v9 cborWithData_];

    sub_1B852608C(a1, a2);
    if (v12)
    {
      v13 = *v3;
      if ((*v3 & 0xC000000000000001) != 0)
      {
        if (v13 < 0)
        {
          v14 = *v3;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFFFFFFFF8;
        }

        v15 = sub_1B8566358();
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          return;
        }

        *v3 = sub_1B8553CCC(v14, v15 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      sub_1B8554184(v12, v10, isUniquelyReferenced_nonNull_native);
      sub_1B852608C(a1, a2);
      sub_1B852608C(a1, a2);

      *v3 = v18;
      return;
    }

    v17 = sub_1B8525C44(v10);
    sub_1B852608C(a1, a2);
    sub_1B852608C(a1, a2);
  }
}

void sub_1B85536F0(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1B8565D68();
  v5 = [objc_opt_self() cborWithUTF8String_];

  v6 = sub_1B8530A58(v5, v3);
  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
}

void (*WBSKeychainPasskey.Metadata.subscript.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = sub_1B8565D68();
  v5 = [objc_opt_self() cborWithUTF8String_];

  v6 = sub_1B8530A58(v5, v3);
  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 2;
  }

  *(a1 + 8) = v7;
  return sub_1B8553884;
}

void (*WBSKeychainPasskey.Metadata.subscript.modify(uint64_t a1, char *a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  v4 = *a2;
  *(a1 + 24) = *a2;
  v8 = *v2;
  v7 = v4;
  *a1 = WBSKeychainPasskey.Metadata.subscript.getter(&v7);
  *(a1 + 8) = v5;
  return sub_1B8553918;
}

{
  *(a1 + 16) = v2;
  v4 = *a2;
  *(a1 + 24) = *a2;
  v8 = *v2;
  v7 = v4;
  *a1 = WBSKeychainPasskey.Metadata.subscript.getter(&v7);
  *(a1 + 8) = v5;
  return sub_1B8553A20;
}

void sub_1B8553918(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *(a1 + 24);
    sub_1B852CF28(v2, v3);
    WBSKeychainPasskey.Metadata.subscript.setter(v2, v3, &v4);

    sub_1B852608C(v2, v3);
  }

  else
  {
    v5 = *(a1 + 24);
    WBSKeychainPasskey.Metadata.subscript.setter(v2, v3, &v5);
  }
}

void sub_1B8553A20(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (a2)
  {
    v4 = *(a1 + 24);

    WBSKeychainPasskey.Metadata.subscript.setter(v3, v2, &v4);
  }

  else
  {
    v5 = *(a1 + 24);
    WBSKeychainPasskey.Metadata.subscript.setter(v3, v2, &v5);
  }
}

void sub_1B8553AB4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x1EEE6A970](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_1B8554530(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_1B8535584(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_1B8543DA4();
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_1B8566288();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

uint64_t sub_1B8553CCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A838, &qword_1B8574890);
    v2 = sub_1B8566628();
    v19 = v2;
    sub_1B8566558();
    v3 = sub_1B8566598();
    if (v3)
    {
      v4 = v3;
      sub_1B8543DA4();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1B852B714(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1B8566278();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1B8566598();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

_OWORD *sub_1B8553EE8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B85355C8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B852C1B4();
      goto LABEL_7;
    }

    sub_1B852B1A4(v13, a3 & 1);
    v19 = sub_1B85355C8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B852D3B8(a2, v21);
      return sub_1B8548E9C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1B8566778();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1B851F84C(a1, v17);
}

_OWORD *sub_1B8554034(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B853560C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B852C358();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B852B45C(v16, a4 & 1);
    v11 = sub_1B853560C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B8566778();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1B851F84C(a1, v22);
  }

  else
  {
    sub_1B8548F18(v11, a2, a3, a1, v21);
  }
}

void sub_1B8554184(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B8535584(a2);
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
      sub_1B852C4FC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B852B714(v13, a3 & 1);
    v8 = sub_1B8535584(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1B8543DA4();
      sub_1B8566778();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_1B8457AC8(v8, a2, a1, v18);

    v21 = a2;
  }
}

_OWORD *sub_1B85542B8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B8535684(a2);
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
      sub_1B852C65C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B852B97C(v13, a3 & 1);
    v8 = sub_1B8535684(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1B8566778();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1B851F84C(a1, v19);
  }

  else
  {
    sub_1B8548F84(v8, a2, a1, v18);

    return a2;
  }
}

id sub_1B85543F8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B853573C(a2);
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
      sub_1B852CAA4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B852BEEC(v13, a3 & 1);
    v8 = sub_1B853573C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Name(0);
      result = sub_1B8566778();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1B8457AC8(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1B8554530(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1B8566358())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_1B8566578();

      if (!v16)
      {

        return;
      }

      sub_1B8543DA4();
      swift_dynamicCast();
      v17 = sub_1B8566288();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t _s10SafariCore18WBSKeychainPasskeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_1B852CF28(*a1, v4);
      sub_1B852CF28(v7, v6);
      sub_1B852608C(v5, v4);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v6 >> 60 == 15)
  {
LABEL_5:
    sub_1B852CF28(*a1, v4);
    sub_1B852CF28(v7, v6);
    sub_1B852608C(v5, v4);
    sub_1B852608C(v7, v6);
    return 0;
  }

  sub_1B852CF28(*a1, v4);
  sub_1B852CF28(v7, v6);
  v8 = sub_1B8543E8C(v5, v4, v7, v6);
  sub_1B852608C(v7, v6);
  sub_1B852608C(v5, v4);
  if (!v8)
  {
    return 0;
  }

LABEL_7:
  v9 = a1[2];
  v10 = a2[2];

  sub_1B8553AB4(v9, v10);
  v12 = v11;

  if ((v12 & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1B8566758() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8543E8C(a1[5], a1[6], a2[5], a2[6]))
  {
    return 0;
  }

  v13 = type metadata accessor for WBSKeychainPasskey(0);
  if ((sub_1B8565A08() & 1) == 0 || (sub_1B8565A08() & 1) == 0 || *(a1 + v13[10]) != *(a2 + v13[10]))
  {
    return 0;
  }

  v15 = v13[11];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (sub_1B8566758() & 1) == 0)
  {
    return 0;
  }

  v19 = v13[12];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if (v20 == *v22 && v21 == v22[1])
  {
    return 1;
  }

  return sub_1B8566758();
}

unint64_t sub_1B8554900()
{
  result = qword_1ED9856C0;
  if (!qword_1ED9856C0)
  {
    sub_1B8543DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9856C0);
  }

  return result;
}

uint64_t sub_1B8554958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSKeychainPasskey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B85549C0()
{
  result = qword_1EBA8ADC0;
  if (!qword_1EBA8ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADC0);
  }

  return result;
}

unint64_t sub_1B8554A18()
{
  result = qword_1EBA8ADC8;
  if (!qword_1EBA8ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADC8);
  }

  return result;
}

unint64_t sub_1B8554A70()
{
  result = qword_1EBA8ADD0;
  if (!qword_1EBA8ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADD0);
  }

  return result;
}

unint64_t sub_1B8554AC8()
{
  result = qword_1EBA8ADD8;
  if (!qword_1EBA8ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8ADD8);
  }

  return result;
}

uint64_t sub_1B8554B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B8554B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WBSKeychainPasskey.Metadata.BoolKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WBSKeychainPasskey.Metadata.BoolKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t WBSWebsitePasskeyAvailabilityManager.__allocating_init(websiteMetadataStore:websitePasskeyEndpointsService:batchSize:refreshInterval:)(uint64_t a1, __int128 *a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_1B853B534(a2, v8 + 24);
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  return v8;
}

uint64_t WBSWebsitePasskeyAvailabilityManager.init(websiteMetadataStore:websitePasskeyEndpointsService:batchSize:refreshInterval:)(uint64_t a1, __int128 *a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a1;
  sub_1B853B534(a2, v4 + 24);
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return v4;
}

uint64_t sub_1B8554DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8554DE4, 0, 0);
}

uint64_t sub_1B8554DE4()
{
  v20 = v0;
  if ([objc_opt_self() isNetworkFetchingForPasswordsEnabled])
  {
    v1 = v0[2];
    v19 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8566358())
    {
      v3 = 0;
      v18 = v0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = (v0[2] + 32);
      v0 = &selRef__updateSearchEnginePreference_;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x1B8CBF6C0](v3, v18[2]);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_23;
          }

          v7 = *(v6 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v7 hasValidWebsite])
        {
          sub_1B85664C8();
          sub_1B85664F8();
          sub_1B8566508();
          v1 = &v19;
          sub_1B85664D8();
        }

        else
        {
        }

        ++v3;
        if (v9 == i)
        {
          v0 = v18;
          v16 = v19;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v0[6] = v16;
    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    *(v17 + 1) = sub_1B85550B0;

    return sub_1B85564F0(v16);
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8565B78();
    __swift_project_value_buffer(v10, qword_1ED985C68);
    v11 = sub_1B8565B48();
    v12 = sub_1B85661F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B8447000, v11, v12, "Skip fetching passkey availability as network fetching for passwords is not enabled.", v13, 2u);
      MEMORY[0x1B8CC1710](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B85550B0(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B85551D0, 0, 0);
}

void *sub_1B85551D0()
{
  result = v0[8];
  v2 = v0[3];
  v3 = result[2];
  v0[9] = v3;
  if (v3)
  {
    v0[10] = 0;
    if (result[2])
    {
      v4 = result[4];
      v0[11] = v4;
      v5 = result[5];
      v0[12] = v5;

      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_1B8555308;

      return sub_1B8555560(v4, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    if (v2)
    {
      (v0[3])(0, 0xE000000000000000, 0, 0);
    }

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1B8555308(void *a1)
{

  return MEMORY[0x1EEE6DFA0](sub_1B855540C, 0, 0);
}

uint64_t sub_1B855540C()
{
  v1 = v0[3];
  if (v1)
  {
    v1(v0[11], v0[12], v0[10] + 1, v0[9]);
  }

  v2 = v0[9];
  v3 = v0[10];

  if (v3 + 1 == v2)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v6 = v0[10] + 1;
    v0[10] = v6;
    v7 = v0[8];
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = v7 + 16 * v6;
      v9 = *(v8 + 32);
      v0[11] = v9;
      v10 = *(v8 + 40);
      v0[12] = v10;

      v11 = swift_task_alloc();
      v0[13] = v11;
      *v11 = v0;
      v11[1] = sub_1B8555308;

      return sub_1B8555560(v9, v10);
    }
  }

  return result;
}

uint64_t sub_1B8555560(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = sub_1B8565A38();
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8555668, 0, 0);
}

uint64_t sub_1B8555668()
{
  v1 = *(v0[47] + 16);
  v0[53] = v1;
  v2 = sub_1B8565D68();
  v0[54] = v2;
  v0[2] = v0;
  v0[7] = v0 + 43;
  v0[3] = sub_1B85557A8;
  v3 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADE0, &qword_1B85768B8);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B855642C;
  v0[21] = &block_descriptor_3;
  v0[22] = v3;
  [v1 metadataForDomain:v2 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B85557A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8555888, 0, 0);
}

uint64_t sub_1B8555888()
{
  v1 = v0[54];
  if (v0[43])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();

    if (v2)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v2 = [objc_allocWithZone(WBSPasswordManagerWebsiteMetadataEntry) init];
LABEL_6:
  v0[55] = v2;
  v3 = v0[47];
  v4 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_0(v3 + 3, v4);
  v10 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_1B8555A1C;
  v8 = v0[45];
  v7 = v0[46];

  return v10(v8, v7, v4, v5);
}

uint64_t sub_1B8555A1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v4 = sub_1B85560F4;
  }

  else
  {
    v4 = sub_1B8555B30;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8555B30()
{
  v35 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 416);
  [*(v0 + 440) setSupportsPasskeys_];
  v3 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  swift_beginAccess();
  sub_1B854109C(v1 + v3, v2);
  v4 = sub_1B8565938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v2, 1, v4);
  v8 = 0;
  if (v7 != 1)
  {
    v9 = *(v0 + 416);
    v8 = sub_1B85658F8();
    (*(v5 + 8))(v9, v4);
  }

  v10 = *(v0 + 456);
  v11 = *(v0 + 408);
  [*(v0 + 440) setEnrollPasskeyURL_];

  v12 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  swift_beginAccess();
  sub_1B854109C(v10 + v12, v11);
  v13 = 0;
  if (v6(v11, 1, v4) != 1)
  {
    v14 = *(v0 + 408);
    v13 = sub_1B85658F8();
    (*(v5 + 8))(v14, v4);
  }

  [*(v0 + 440) setManagePasskeyURL_];

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8565B78();
  __swift_project_value_buffer(v15, qword_1ED985C68);

  v16 = sub_1B8565B48();
  v17 = sub_1B85661F8();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 456);
  if (v18)
  {
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = 136642819;
    *(v22 + 4) = sub_1B8525560(v21, v20, &v34);
    _os_log_impl(&dword_1B8447000, v16, v17, "Successfully fetched passkey availability for %{sensitive}s.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1B8CC1710](v23, -1, -1);
    MEMORY[0x1B8CC1710](v22, -1, -1);
  }

  v24 = *(v0 + 440);
  v33 = *(v0 + 424);
  v26 = *(v0 + 392);
  v25 = *(v0 + 400);
  v27 = *(v0 + 384);
  sub_1B8565A28();
  v28 = sub_1B85659F8();
  (*(v26 + 8))(v25, v27);
  [v24 setPasskeyEndpointsDateLastRefreshed_];

  v29 = v24;
  v30 = sub_1B8565D68();
  *(v0 + 472) = v30;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 480;
  *(v0 + 88) = sub_1B8555F80;
  v31 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADE8, &qword_1B85768C0);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1B8556494;
  *(v0 + 232) = &block_descriptor_5;
  *(v0 + 240) = v31;
  [v33 saveMetadataEntry:v29 forDomain:v30 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1B8555F80()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8556060, 0, 0);
}

uint64_t sub_1B8556060()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 8);
  v3 = *(v0 + 440);

  return v2(v3);
}

uint64_t sub_1B85560F4()
{
  v25 = v0;
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = v0[58];
  v2 = sub_1B8565B78();
  __swift_project_value_buffer(v2, qword_1ED985C68);

  v3 = v1;
  v4 = sub_1B8565B48();
  v5 = sub_1B8566218();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[58];
  if (v6)
  {
    v9 = v0[45];
    v8 = v0[46];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136643075;
    *(v10 + 4) = sub_1B8525560(v9, v8, &v24);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v12 = Error.loggerDescription()();
    v13 = sub_1B8525560(v12._countAndFlagsBits, v12._object, &v24);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_1B8447000, v4, v5, "Failed to check passkey availability for %{sensitive}s. Error: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC1710](v11, -1, -1);
    MEMORY[0x1B8CC1710](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[55];
  v23 = v0[53];
  v16 = v0[49];
  v15 = v0[50];
  v17 = v0[48];
  sub_1B8565A28();
  v18 = sub_1B85659F8();
  (*(v16 + 8))(v15, v17);
  [v14 setPasskeyEndpointsDateLastRefreshed_];

  v19 = v14;
  v20 = sub_1B8565D68();
  v0[59] = v20;
  v0[10] = v0;
  v0[15] = v0 + 60;
  v0[11] = sub_1B8555F80;
  v21 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADE8, &qword_1B85768C0);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1B8556494;
  v0[29] = &block_descriptor_5;
  v0[30] = v21;
  [v23 saveMetadataEntry:v19 forDomain:v20 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B855642C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1B8556494(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1B85564F0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_1B8565A38();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B85565C8, 0, 0);
}

uint64_t sub_1B85565C8()
{
  v37 = v0;
  v1 = v0[24];
  sub_1B8565A28();
  v0[22] = MEMORY[0x1E69E7CD0];
  v35 = v0 + 22;
  if (v1 >> 62)
  {
LABEL_36:
    v33 = sub_1B8566358();
    v0[31] = v33;
    if (v33)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[31] = v2;
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = &selRef_hash;
      do
      {
        v5 = v0[24];
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CBF6C0](v3);
        }

        else
        {
          if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v6 = *(v5 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = __OFADD__(v3++, 1);
        v0[32] = v6;
        v0[33] = v3;
        if (v8)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v9 = v0[22];
        if (*(v9 + 16) >= *(v0[25] + 64))
        {

          break;
        }

        v10 = [v6 v4[9]];
        v0[34] = v10;
        if (v10)
        {
          v11 = v10;
          v12 = sub_1B8565DA8();
          v0[35] = v12;
          v0[36] = v13;
          if (!*(v9 + 16) || (v14 = v12, v15 = v13, sub_1B85667D8(), sub_1B8565D38(), v16 = sub_1B8566808(), v17 = -1 << *(v9 + 32), v18 = v16 & ~v17, ((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
          {
LABEL_23:
            v22 = *(v0[25] + 16);
            v0[2] = v0;
            v0[7] = v0 + 23;
            v0[3] = sub_1B8556A08;
            v23 = swift_continuation_init();
            v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADE0, &qword_1B85768B8);
            v0[10] = MEMORY[0x1E69E9820];
            v0[11] = 1107296256;
            v0[12] = sub_1B855642C;
            v0[13] = &block_descriptor_9;
            v0[14] = v23;
            [v22 metadataForDomain:v11 completionHandler:v0 + 10];

            return MEMORY[0x1EEE6DEC8](v0 + 2);
          }

          v19 = ~v17;
          while (1)
          {
            v20 = (*(v9 + 48) + 16 * v18);
            v21 = *v20 == v14 && v20[1] == v15;
            if (v21 || (sub_1B8566758() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v4 = &selRef_hash;
        }
      }

      while (v3 != v0[31]);
    }
  }

  v24 = *v35;
  v25 = *(*v35 + 16);
  if (!v25)
  {
    goto LABEL_30;
  }

  v26 = sub_1B85570AC(*(*v35 + 16), 0);
  v27 = sub_1B8559B08(&v36, v26 + 4, v25, v24);
  sub_1B852D3B0(v36);
  if (v27 != v25)
  {
    __break(1u);
LABEL_30:

    v26 = MEMORY[0x1E69E7CC0];
  }

  v36 = v26;

  sub_1B8558F2C(&v36);
  v28 = v0[30];
  v29 = v0[27];
  v30 = v0[26];

  (*(v29 + 8))(v28, v30);
  v31 = v36;

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_1B8556A08()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8556AE8, 0, 0);
}

uint64_t sub_1B8556AE8()
{
  v47 = v0;
  v1 = (v0 + 22);
  v2 = v0[34];
  if (!v0[23])
  {

    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();

  if (!v3 || (v4 = [v3 passkeyEndpointsDateLastRefreshed]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v14 = v0[32];
    sub_1B8557490(v0 + 18, v0[35], v0[36]);

    goto LABEL_9;
  }

  v5 = v0[29];
  v6 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v4;
  sub_1B8565A18();

  (*(v6 + 32))(v5, v7, v8);
  sub_1B85659E8();
  v12 = v0[32];
  if (*(v9 + 72) <= v11)
  {
    v43 = v0[29];
    v44 = v0[26];
    v45 = v0[27];
    v1 = (v0 + 22);
    sub_1B8557490(v0 + 20, v0[35], v0[36]);

    swift_unknownObjectRelease();

    v13 = (*(v45 + 8))(v43, v44);
  }

  else
  {
    (*(v0[27] + 8))(v0[29], v0[26]);
    swift_unknownObjectRelease();

    v1 = (v0 + 22);
  }

LABEL_9:
  v15 = v0[33];
  if (v15 == v0[31])
  {
LABEL_10:
    v16 = *v1;
    v17 = *(*v1 + 16);
    if (v17)
    {
      v1 = sub_1B85570AC(*(*v1 + 16), 0);
      v15 = sub_1B8559B08(&v46, v1 + 4, v17, v16);
      v13 = sub_1B852D3B0(v46);
      if (v15 != v17)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {

      v1 = MEMORY[0x1E69E7CC0];
    }

    v46 = v1;

    sub_1B8558F2C(&v46);
    v37 = v0[30];
    v38 = v0[27];
    v39 = v0[26];

    (*(v38 + 8))(v37, v39);
    v40 = v46;

    v41 = v0[1];

    return v41(v40);
  }

LABEL_13:
  v18 = &selRef_hash;
  while (1)
  {
    v19 = v0[24];
    if ((v19 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8CBF6C0](v15);
    }

    else
    {
      if (v15 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v13 = *(v19 + 8 * v15 + 32);
    }

    v20 = v13;
    v21 = __OFADD__(v15++, 1);
    v0[32] = v13;
    v0[33] = v15;
    if (v21)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v13);
    }

    v22 = v0[22];
    if (*(v22 + 16) >= *(v0[25] + 64))
    {

      goto LABEL_10;
    }

    v23 = [v13 v18[9]];
    v0[34] = v23;
    if (v23)
    {
      break;
    }

LABEL_15:

    if (v15 == v0[31])
    {
      goto LABEL_10;
    }
  }

  v24 = v23;
  v25 = sub_1B8565DA8();
  v0[35] = v25;
  v0[36] = v26;
  if (*(v22 + 16))
  {
    v27 = v25;
    v28 = v26;
    sub_1B85667D8();
    sub_1B8565D38();
    v29 = sub_1B8566808();
    v30 = -1 << *(v22 + 32);
    v31 = v29 & ~v30;
    if ((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      while (1)
      {
        v33 = (*(v22 + 48) + 16 * v31);
        v34 = *v33 == v27 && v33[1] == v28;
        if (v34 || (sub_1B8566758() & 1) != 0)
        {
          break;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v1 = (v0 + 22);
      v18 = &selRef_hash;
      goto LABEL_15;
    }
  }

LABEL_33:
  v35 = *(v0[25] + 16);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1B8556A08;
  v36 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADE0, &qword_1B85768B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B855642C;
  v0[13] = &block_descriptor_9;
  v0[14] = v36;
  [v35 metadataForDomain:v24 completionHandler:v0 + 10];
  v13 = v0 + 2;

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t WBSWebsitePasskeyAvailabilityManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void *sub_1B85570AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A880, &qword_1B8574790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1B8557130(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    sub_1B85667D8();
    v10 = *(a2 + 16);
    sub_1B8565DA8();
    v11 = v10;
    sub_1B8565D38();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB78, &qword_1B8575630);
    sub_1B8565D08();
    v12 = sub_1B8566808();
    v13 = -1 << *(v6 + 32);
    v14 = v12 & ~v13;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
LABEL_20:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v3;

      sub_1B8557E34(v27, v14, isUniquelyReferenced_nonNull_native);
      *v3 = v33;
      *a1 = a2;
      return 1;
    }

    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v6 + 48) + 8 * v14);
      v17 = sub_1B8565DA8();
      v19 = v18;
      if (v17 == sub_1B8565DA8() && v19 == v20)
      {
      }

      else
      {
        v22 = sub_1B8566758();

        if ((v22 & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      sub_1B8566308();
      v23 = *(v16 + 24);
      v24 = *(a2 + 24);

      v25 = MEMORY[0x1B8CBF550](v23, v24);

      if (v25)
      {

        *a1 = *(*(v6 + 48) + 8 * v14);

        return 0;
      }

LABEL_10:
      v14 = (v14 + 1) & v15;
      if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_1B8566368();

  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB60, &unk_1B8576940);
    swift_dynamicCast();
    result = 0;
    *a1 = v32;
    return result;
  }

  result = sub_1B8566358();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v28 = sub_1B85577C0(v7, result + 1);
  v29 = *(v28 + 16);
  if (*(v28 + 24) <= v29)
  {
    sub_1B85578E0(v29 + 1);
  }

  sub_1B8557D28(v30, v28);

  *v3 = v28;
  *a1 = a2;
  return 1;
}

uint64_t sub_1B8557490(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B85667D8();
  sub_1B8565D38();
  v8 = sub_1B8566808();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B8566758() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B85580D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B85575E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF0, &qword_1B8576958);
    v2 = sub_1B85663D8();
    v15 = v2;
    sub_1B8566348();
    if (sub_1B8566378())
    {
      sub_1B8453958();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B8453D18(v9 + 1);
        }

        v2 = v15;
        result = sub_1B8566278();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1B8566378());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B85577C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB70, &qword_1B8576950);
    v2 = sub_1B85663D8();
    v6 = v2;
    sub_1B8566348();
    while (sub_1B8566378())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB60, &unk_1B8576940);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1B85578E0(v3 + 1);
        v2 = v6;
      }

      sub_1B8557D28(v5, v2);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B85578E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB70, &qword_1B8576950);
  result = sub_1B85663C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1B8557D28(*(*(v3 + 48) + 8 * (v12 | (v6 << 6))), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B8557A44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF8, &qword_1B8576960);
  result = sub_1B85663C8();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B85667D8();
      sub_1B8565D38();
      result = sub_1B8566808();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B8557CA4(uint64_t a1, uint64_t a2)
{
  sub_1B8566278();
  result = sub_1B8566338();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1B8557D28(uint64_t a1, uint64_t a2)
{
  sub_1B85667D8();
  v4 = *(a1 + 16);
  sub_1B8565DA8();
  v5 = v4;
  sub_1B8565D38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB78, &qword_1B8575630);
  sub_1B8565D08();
  sub_1B8566808();
  result = sub_1B8566338();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B8557E34(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_1B85578E0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B85583A4();
      goto LABEL_21;
    }

    sub_1B8558650(v7 + 1);
  }

  v9 = *v3;
  sub_1B85667D8();
  v10 = *(v6 + 16);
  sub_1B8565DA8();
  v11 = v10;
  sub_1B8565D38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB78, &qword_1B8575630);
  sub_1B8565D08();
  result = sub_1B8566808();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_1B8565DA8();
      v17 = v16;
      if (v15 == sub_1B8565DA8() && v17 == v18)
      {
      }

      else
      {
        v20 = sub_1B8566758();

        if ((v20 & 1) == 0)
        {

          goto LABEL_11;
        }
      }

      sub_1B8566308();
      v21 = *(v14 + 24);
      v22 = *(v6 + 24);

      v23 = MEMORY[0x1B8CBF550](v21, v22);

      if (v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB60, &unk_1B8576940);
        result = sub_1B8566768();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = v6;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }

  return result;
}

uint64_t sub_1B85580D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B8557A44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B85584F4();
      goto LABEL_16;
    }

    sub_1B855877C(v8 + 1);
  }

  v10 = *v4;
  sub_1B85667D8();
  sub_1B8565D38();
  result = sub_1B8566808();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B8566758();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B8566768();
  __break(1u);
  return result;
}

id sub_1B8558254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF0, &qword_1B8576958);
  v2 = *v0;
  v3 = sub_1B85663B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B85583A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB70, &qword_1B8576950);
  v2 = *v0;
  v3 = sub_1B85663B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B85584F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF8, &qword_1B8576960);
  v2 = *v0;
  v3 = sub_1B85663B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B8558650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB70, &qword_1B8576950);
  result = sub_1B85663C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1B8557D28(v13, v5))
    {
      v9 &= v9 - 1;
LABEL_11:
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v6);
      ++v11;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B855877C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF8, &qword_1B8576960);
  result = sub_1B85663C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B85667D8();

      sub_1B8565D38();
      result = sub_1B8566808();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_1B85589DC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A798, &qword_1B85746C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A818, &qword_1B8576980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8558B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A880, &qword_1B8574790);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B8558C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B8558D50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1B8558F2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B855A12C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B8558F98(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B8558F98(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8566718();
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
        v5 = sub_1B8566058();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B8559160(v7, v8, a1, v4);
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
    return sub_1B8559090(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8559090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1B8566758(), (result & 1) == 0))
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

uint64_t sub_1B8559160(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1B85599F0(v8);
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
        sub_1B855973C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_1B8566758();
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
            result = sub_1B8566758();
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
      result = sub_1B8535374(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B8535374((v39 > 1), v40 + 1, 1, v8);
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
        sub_1B855973C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B85599F0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B8559964(v44);
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
    if (v37 || (result = sub_1B8566758(), (result & 1) == 0))
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

uint64_t sub_1B855973C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1B8566758() & 1) != 0)
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
      if (!v21 && (sub_1B8566758() & 1) != 0)
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

uint64_t sub_1B8559964(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B85599F0(v3);
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

char *sub_1B8559A04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A918, &qword_1B8574C20);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B8559B08(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of WBSWebsitePasskeyAvailabilityManager.beginFetchingWebsitePasskeyAvailability(for:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B851F31C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WBSWebsitePasskeyAvailabilityManager.checkPasskeyAvailability(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B855A150;

  return v8(a1, a2);
}

uint64_t dispatch thunk of WBSWebsitePasskeyAvailabilityManager.websitesToCheckPasskeyAvailability(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B855A030;

  return v6(a1);
}

uint64_t sub_1B855A030(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id WBSOngoingSharingGroupProvider.cachedGroup(withID:)()
{
  v1 = sub_1B8565D68();
  v2 = [v0 cachedGroupWithID_];

  return v2;
}

WBSSpotlightDonationEntityCorrelator __swiftcall WBSSpotlightDonationEntityCorrelator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for WBSSpotlightDonationEntityCorrelator()
{
  result = qword_1EBA8AE08;
  if (!qword_1EBA8AE08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8AE08);
  }

  return result;
}

unint64_t sub_1B855A52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A870, &qword_1B85748D0);
    v3 = sub_1B8566638();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B855A8EC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B853560C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B851F84C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B855A63C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 attributeSet];
  v5 = [v4 title];

  if (v5)
  {
    sub_1B8565DA8();

    v6 = [a1 attributeSet];
    sub_1B855A52C(MEMORY[0x1E69E7CC0]);
    sub_1B8566258();
  }
}

void sub_1B855A77C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 attributeSet];
  v5 = [v4 title];

  if (v5)
  {
    sub_1B8565DA8();

    v6 = [a1 attributeSet];
    v7 = [a1 uniqueIdentifier];
    sub_1B8565DA8();

    sub_1B855A52C(MEMORY[0x1E69E7CC0]);
    sub_1B8566258();
  }
}

uint64_t sub_1B855A8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A868, &qword_1B8574760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UUID.data.getter()
{
  v0 = sub_1B8565DF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8565A48();
  sub_1B8565DE8();
  v4 = sub_1B8565DB8();
  v6 = v5;

  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 != 15)
  {
    return v4;
  }

  __break(1u);
  return result;
}

void WBSAXShouldShowAnimatedImageControls_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean soft_AXSReduceMotionAutoplayAnimatedImagesEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSAccessibilityUtilities.m" lineNumber:12 description:{@"%s", dlerror()}];

  __break(1u);
}

void WBSReportThreadLocationAndSleep_cold_1(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2[0] = 67109120;
  v2[1] = getpid();
  _os_log_error_impl(&dword_1B8447000, v1, OS_LOG_TYPE_ERROR, "Sleeping thread for debugger; attach to process (PID: %d) to unsleep the thread.", v2, 8u);
}

void WBSWriteExactAmountOfBytesToFileDescriptor_cold_1(void *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *__error();
  v5[0] = 67109376;
  v5[1] = a2;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to write bytes to file descriptor %d: %{errno}i", v5, 0xEu);
}

void _WBSLocalizedStringWithCurrentUserLocale_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *LocalizedKeyWithCurrentUserLocaleForBundle(CFBundleRef, NSString *__strong, NSString * _Nullable __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"WBSLocalizableStrings.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"formatKey"}];
}

void _WBSLocalizedStringWithCurrentUserLocale_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *LocalizedKeyWithCurrentUserLocaleForBundle(CFBundleRef, NSString *__strong, NSString * _Nullable __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"WBSLocalizableStrings.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];
}

void WBSHTTPProtocolFromSecAttrProtocolValue_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void WBSHTTPProtocolFromSecAttrProtocolValue_cold_2(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() unsignedIntValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 8u);
}

uint64_t WBSAllowedCreditCardNumberSeparatorCharacters_cold_1(uint64_t *a1)
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" -"];
  *a1 = result;
  qword_1ED985AE0 = result;
  _MergedGlobals_0 = 1;
  return result;
}

void createLexiconWithLocale(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ LXLexiconRef: %{public}@", buf, 0x16u);
}

void passwordMatchesFormatOfGenerationStyle()
{
  dispatch_once(&regexForMoreTypablePassword(void)::onceToken, &__block_literal_global_150);
}

{
  dispatch_once(&regexForClassicPassword(void)::onceToken, &__block_literal_global_47);
}

void ___ZL23regexForClassicPasswordv_block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Error creating password matching regex: %{public}@", buf, 0xCu);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  std::vector<char>::push_back[abi:sn200100](a1 + 6, &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = a1[5] + 1;
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
  while (2)
  {
    while (2)
    {
      v2 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) + 1;
      result = 4;
      v4 = "invalid string: missing closing quote";
      switch(v2)
      {
        case 0:
          goto LABEL_82;
        case 1:
          v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
          goto LABEL_82;
        case 2:
          v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
          goto LABEL_82;
        case 3:
          v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
          goto LABEL_82;
        case 4:
          v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
          goto LABEL_82;
        case 5:
          v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
          goto LABEL_82;
        case 6:
          v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
          goto LABEL_82;
        case 7:
          v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
          goto LABEL_82;
        case 8:
          v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
          goto LABEL_82;
        case 9:
          v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
          goto LABEL_82;
        case 10:
          v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
          goto LABEL_82;
        case 11:
          v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_82;
        case 12:
          v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
          goto LABEL_82;
        case 13:
          v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
          goto LABEL_82;
        case 14:
          v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
          goto LABEL_82;
        case 15:
          v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
          goto LABEL_82;
        case 16:
          v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
          goto LABEL_82;
        case 17:
          v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
          goto LABEL_82;
        case 18:
          v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
          goto LABEL_82;
        case 19:
          v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
          goto LABEL_82;
        case 20:
          v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
          goto LABEL_82;
        case 21:
          v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
          goto LABEL_82;
        case 22:
          v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
          goto LABEL_82;
        case 23:
          v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
          goto LABEL_82;
        case 24:
          v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
          goto LABEL_82;
        case 25:
          v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
          goto LABEL_82;
        case 26:
          v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
          goto LABEL_82;
        case 27:
          v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
          goto LABEL_82;
        case 28:
          v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
          goto LABEL_82;
        case 29:
          v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
          goto LABEL_82;
        case 30:
          v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
          goto LABEL_82;
        case 31:
          v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
          goto LABEL_82;
        case 32:
          v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
          goto LABEL_82;
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
          v8 = *(a1 + 16);
          goto LABEL_7;
        case 35:
          return result;
        case 93:
          v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
          v4 = "invalid string: forbidden character after backslash";
          if (!v12 & v11)
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_82;
            }

            goto LABEL_7;
          }

          break;
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
          *&v16 = 0xBF00000080;
          v5 = a1;
          v6 = 2;
          goto LABEL_14;
        case 225:
          v7 = xmmword_1B8573FC0;
          goto LABEL_5;
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 239:
        case 240:
          v7 = xmmword_1B8573FB0;
          goto LABEL_5;
        case 238:
          v7 = xmmword_1B8573FA0;
LABEL_5:
          v16 = v7;
          v5 = a1;
          v6 = 4;
          goto LABEL_14;
        case 241:
          v17 = 0xBF00000080;
          v9 = &xmmword_1B8573FF0;
          goto LABEL_13;
        case 242:
        case 243:
        case 244:
          v17 = 0xBF00000080;
          v9 = &xmmword_1B8574008;
          goto LABEL_13;
        case 245:
          v17 = 0xBF00000080;
          v9 = &xmmword_1B8574020;
LABEL_13:
          v16 = *v9;
          v5 = a1;
          v6 = 6;
LABEL_14:
          if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(v5, &v16, v6) & 1) == 0)
          {
            return 14;
          }

          continue;
        default:
          v4 = "invalid string: ill-formed UTF-8 byte";
          goto LABEL_82;
      }

      break;
    }

    switch(v10)
    {
      case 'n':
        LOBYTE(v8) = 10;
        goto LABEL_7;
      case 'o':
      case 'p':
      case 'q':
      case 's':
        goto LABEL_82;
      case 'r':
        LOBYTE(v8) = 13;
        goto LABEL_7;
      case 't':
        LOBYTE(v8) = 9;
        goto LABEL_7;
      case 'u':
        codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_84;
        }

        v14 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_82;
          }

          if (codepoint > 127)
          {
            if (codepoint <= 0x7FF)
            {
              std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
              goto LABEL_39;
            }

            if (!HIWORD(codepoint))
            {
              std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
              goto LABEL_38;
            }

LABEL_37:
            std::string::push_back((a1 + 72), (v14 >> 18) | 0xF0);
            std::string::push_back((a1 + 72), (v14 >> 12) & 0x3F | 0x80);
LABEL_38:
            std::string::push_back((a1 + 72), (v14 >> 6) & 0x3F | 0x80);
LABEL_39:
            LOBYTE(v8) = v14 & 0x3F | 0x80;
            goto LABEL_7;
          }

          LOBYTE(v8) = codepoint;
LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 117)
        {
LABEL_85:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_82;
        }

        v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1);
        if (v15 != -1)
        {
          if (v15 >> 10 != 55)
          {
            goto LABEL_85;
          }

          v14 = v15 + (v14 << 10) - 56613888;
          goto LABEL_37;
        }

LABEL_84:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_82:
        *(a1 + 96) = v4;
        return 14;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(uint64_t a1)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v8 = xmmword_1B8573FD0;
  while (1)
  {
    v4 = *(&v8 + v3);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v5 = *(a1 + 16);
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v2 = ((v6 << v4) + v2);
    v3 += 4;
    if (v3 == 16)
    {
      return v2;
    }
  }

  if ((v5 - 65) <= 5)
  {
    v6 = v5 - 55;
    goto LABEL_7;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(nlohmann::detail::input_stream_adapter *this)
{
  *(this + 24) = vaddq_s64(*(this + 24), vdupq_n_s64(1uLL));
  if (*(this + 20) == 1)
  {
    *(this + 20) = 0;
    result = *(this + 4);
  }

  else
  {
    result = nlohmann::detail::input_stream_adapter::get_character(this);
    *(this + 4) = result;
  }

  if (result != -1)
  {
    v4 = result;
    std::vector<char>::push_back[abi:sn200100](this + 6, &v4);
    result = *(this + 4);
    if (result == 10)
    {
      v3 = *(this + 5) + 1;
      *(this + 4) = 0;
      *(this + 5) = v3;
    }
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
  while (2)
  {
    while (2)
    {
      v2 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) + 1;
      result = 4;
      v4 = "invalid string: missing closing quote";
      switch(v2)
      {
        case 0:
          goto LABEL_82;
        case 1:
          v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
          goto LABEL_82;
        case 2:
          v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
          goto LABEL_82;
        case 3:
          v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
          goto LABEL_82;
        case 4:
          v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
          goto LABEL_82;
        case 5:
          v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
          goto LABEL_82;
        case 6:
          v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
          goto LABEL_82;
        case 7:
          v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
          goto LABEL_82;
        case 8:
          v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
          goto LABEL_82;
        case 9:
          v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
          goto LABEL_82;
        case 10:
          v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
          goto LABEL_82;
        case 11:
          v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_82;
        case 12:
          v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
          goto LABEL_82;
        case 13:
          v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
          goto LABEL_82;
        case 14:
          v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
          goto LABEL_82;
        case 15:
          v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
          goto LABEL_82;
        case 16:
          v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
          goto LABEL_82;
        case 17:
          v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
          goto LABEL_82;
        case 18:
          v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
          goto LABEL_82;
        case 19:
          v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
          goto LABEL_82;
        case 20:
          v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
          goto LABEL_82;
        case 21:
          v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
          goto LABEL_82;
        case 22:
          v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
          goto LABEL_82;
        case 23:
          v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
          goto LABEL_82;
        case 24:
          v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
          goto LABEL_82;
        case 25:
          v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
          goto LABEL_82;
        case 26:
          v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
          goto LABEL_82;
        case 27:
          v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
          goto LABEL_82;
        case 28:
          v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
          goto LABEL_82;
        case 29:
          v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
          goto LABEL_82;
        case 30:
          v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
          goto LABEL_82;
        case 31:
          v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
          goto LABEL_82;
        case 32:
          v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
          goto LABEL_82;
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
          v8 = *(a1 + 16);
          goto LABEL_7;
        case 35:
          return result;
        case 93:
          v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
          v4 = "invalid string: forbidden character after backslash";
          if (!v12 & v11)
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_82;
            }

            goto LABEL_7;
          }

          break;
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
          *&v16 = 0xBF00000080;
          v5 = a1;
          v6 = 2;
          goto LABEL_14;
        case 225:
          v7 = xmmword_1B8573FC0;
          goto LABEL_5;
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 239:
        case 240:
          v7 = xmmword_1B8573FB0;
          goto LABEL_5;
        case 238:
          v7 = xmmword_1B8573FA0;
LABEL_5:
          v16 = v7;
          v5 = a1;
          v6 = 4;
          goto LABEL_14;
        case 241:
          v17 = 0xBF00000080;
          v9 = &xmmword_1B8573FF0;
          goto LABEL_13;
        case 242:
        case 243:
        case 244:
          v17 = 0xBF00000080;
          v9 = &xmmword_1B8574008;
          goto LABEL_13;
        case 245:
          v17 = 0xBF00000080;
          v9 = &xmmword_1B8574020;
LABEL_13:
          v16 = *v9;
          v5 = a1;
          v6 = 6;
LABEL_14:
          if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(v5, &v16, v6) & 1) == 0)
          {
            return 14;
          }

          continue;
        default:
          v4 = "invalid string: ill-formed UTF-8 byte";
          goto LABEL_82;
      }

      break;
    }

    switch(v10)
    {
      case 'n':
        LOBYTE(v8) = 10;
        goto LABEL_7;
      case 'o':
      case 'p':
      case 'q':
      case 's':
        goto LABEL_82;
      case 'r':
        LOBYTE(v8) = 13;
        goto LABEL_7;
      case 't':
        LOBYTE(v8) = 9;
        goto LABEL_7;
      case 'u':
        codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_84;
        }

        v14 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_82;
          }

          if (codepoint > 127)
          {
            if (codepoint <= 0x7FF)
            {
              std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
              goto LABEL_39;
            }

            if (!HIWORD(codepoint))
            {
              std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
              goto LABEL_38;
            }

LABEL_37:
            std::string::push_back((a1 + 72), (v14 >> 18) | 0xF0);
            std::string::push_back((a1 + 72), (v14 >> 12) & 0x3F | 0x80);
LABEL_38:
            std::string::push_back((a1 + 72), (v14 >> 6) & 0x3F | 0x80);
LABEL_39:
            LOBYTE(v8) = v14 & 0x3F | 0x80;
            goto LABEL_7;
          }

          LOBYTE(v8) = codepoint;
LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) != 117)
        {
LABEL_85:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_82;
        }

        v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(a1);
        if (v15 != -1)
        {
          if (v15 >> 10 != 55)
          {
            goto LABEL_85;
          }

          v14 = v15 + (v14 << 10) - 56613888;
          goto LABEL_37;
        }

LABEL_84:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_82:
        *(a1 + 96) = v4;
        return 14;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(nlohmann::detail::input_stream_adapter *this)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v8 = xmmword_1B8573FD0;
  while (1)
  {
    v4 = *(&v8 + v3);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this);
    v5 = *(this + 4);
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v2 = ((v6 << v4) + v2);
    v3 += 4;
    if (v3 == 16)
    {
      return v2;
    }
  }

  if ((v5 - 65) <= 5)
  {
    v6 = v5 - 55;
    goto LABEL_7;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(int a1, std::string::value_type *a2, std::string *a3)
{
  OUTLINED_FUNCTION_0_8(a1, a2, a3);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(v4);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(v4 + 3, *v3);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(v4);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(int a1, std::string::value_type *a2, std::string *a3)
{
  OUTLINED_FUNCTION_0_8(a1, a2, a3);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(v4);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(v4 + 3, *v3);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(v4);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void getAAAccountClassPrimary_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAAAccountClassPrimary(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrimaryAppleAccountObserver.m" lineNumber:11 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getACMonitoredAccountStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getACMonitoredAccountStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrimaryAppleAccountObserver.m" lineNumber:14 description:{@"Unable to find class %s", "ACMonitoredAccountStore"}];

  __break(1u);
}

void AccountsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccountsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSPrimaryAppleAccountObserver.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getAAAccountClassPrimarySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleAccountLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSPrimaryAppleAccountObserver.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void WBSSetUpAccessToAppDataContainerWithIdentifier_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Error executing container query: %s", &v2, 0xCu);
}

void __getDSArchiveServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDSArchiveServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSBrowsingDataImportService.m" lineNumber:29 description:{@"Unable to find class %s", "DSArchiveService"}];

  __break(1u);
}

void __getDSArchiveServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DesktopServicesPrivLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSBrowsingDataImportService.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t std::istream::~istream()
{
  return MEMORY[0x1EEE63DF8]();
}

{
  return MEMORY[0x1EEE63E00]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}