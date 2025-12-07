void sub_1B600C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v18 = a3;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(v18 + 48) + 24 * (__clz(__rbit64(v7)) | (v10 << 6)));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v17[0] = v12;
      v17[1] = v13;
      v17[2] = v14;
      sub_2BB90(v12, v13, v14);
      v15 = a1(v17);
      if (v3)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_12;
      }

      v7 &= v7 - 1;
      sub_2BBCC(v12, v13, v14);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_2BBCC(v12, v13, v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
LABEL_12:

        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1B6194(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_808B0(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_9ACFC(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_12E1C(v20, &qword_DF5020, &qword_B028A8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1B62F4(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_9ACA0(*(v4 + 56) + 40 * v13, &v21);
    v19 = v22;
    v20 = v21;
    v17 = v23;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v18 = v1[5];
      *&v21 = v16;
      *(&v21 + 1) = v15;
      v23 = v19;
      v22 = v20;
      v24 = v17;
      v18(&v21);
      sub_12E1C(&v21, &qword_DF4F88, &unk_B027F0);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1B6440(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = [a1 results];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 firstItem];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v10 = [v7 innermostModelObject];
        (a3)();
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_1CE268();
  v8 = swift_allocError();
  *v9 = 2;
  a3(v8, 1);
}

double sub_1B6578@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, char a3@<W0>)
{
  v5 = sub_1B6630(a3);
  if (*(a1 + 16) && (v7 = sub_2EBF88(v5, v6), (v8 & 1) != 0))
  {
    sub_9ACA0(*(a1 + 56) + 40 * v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

NSString sub_1B65F8()
{
  result = sub_AB9260();
  qword_E71170 = result;
  return result;
}

uint64_t sub_1B6630(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0x73746C75736572;
      break;
    case 2:
      result = 0x6C75736552706F74;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 1635018093;
      break;
    case 6:
      result = 0x7363697274656DLL;
      break;
    case 7:
      result = 0x726564726FLL;
      break;
    case 8:
      result = 1635017060;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x6554686372616573;
      break;
    case 11:
      result = 0x5479616C70736964;
      break;
    case 12:
      result = 0x656372756F736572;
      break;
    case 13:
      result = 1684957547;
      break;
    case 14:
      result = 0x746E65746E6F63;
      break;
    case 15:
      result = 0x7365706F6373;
      break;
    case 16:
      result = 0x737463656A626FLL;
      break;
    case 17:
      result = 0x73636972796CLL;
      break;
    case 18:
      result = 0x7374657070696E73;
      break;
    case 19:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B68C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CEC30(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B68F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6630(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B6920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v39 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v39 - v11;
  v13 = type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_1D3018(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
  sub_AB5110();
  v14 = *v5;
  if ((*(v5 + 40) & 1) == 0)
  {
    v18 = v14[2];
    if (!v18)
    {
      return (*(v39 + 32))(v40, v12, v10);
    }

    v19._rawValue = &off_CF0790;
    sub_AB50D0(v19);
    v20 = (v14 + 4);
    v42 = xmmword_AF4EC0;
    while (1)
    {
      sub_9ACA0(v20, v47);
      v25.isa = sub_ABACE0().isa;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v21 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8C8, &qword_AF8F00);
        v22 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = v42;
        *(v23 + v22) = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v46[0] = 3;
        v24 = v25.isa;
        sub_AB5090();
      }

      else
      {

        sub_9ACA0(v47, v46);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_8085C(v47);
          goto LABEL_8;
        }

        v41 = v43;
        v27 = v44;
        v28 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8C8, &qword_AF8F00);
        v29 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
        v30 = swift_allocObject();
        v31 = v41;
        *(v30 + 16) = v42;
        v32 = v30 + v29;
        *v32 = v31;
        *(v32 + 16) = v27;
        *(v32 + 24) = v28;
        swift_storeEnumTagMultiPayload();
        v46[0] = 3;
        sub_AB5090();
      }

      sub_8085C(v47);

LABEL_8:
      v20 += 40;
      if (!--v18)
      {
        return (*(v39 + 32))(v40, v12, v10);
      }
    }
  }

  v15 = *(v5 + 8);
  if (a2)
  {
    v16 = a1;
    v17 = a2;
    *&v42 = a4;
  }

  else
  {
    if (!v14[2])
    {
      return (*(v39 + 32))(v40, v12, v10);
    }

    v16 = v14[4];
    v17 = v14[5];
    v33 = v14[7];

    *&v42 = v33;
  }

  v34 = *(v15 + 16);
  sub_1D3124(a1, a2, a3, a4);
  if (v34 && (sub_2EBF88(v16, v17), (v35 & 1) != 0))
  {
    v47[0] = &_swiftEmptySetSingleton;

    if (sub_1B5904(v36, v47)[2])
    {
      v37._rawValue = &off_CF07B8;
      sub_AB50D0(v37);
      v46[0] = 3;
      sub_AB5090();
    }
  }

  else
  {
  }

  return (*(v39 + 32))(v40, v12, v10);
}

void sub_1B6DE8()
{
  if (*(v0 + 40) == 1)
  {
  }
}

void *sub_1B6E3C()
{
  v1 = 16;
  if (*(v0 + 40))
  {
    v1 = 32;
  }

  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B6E88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_988E8(_swiftEmptyArrayStorage);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  if (a1[5])
  {
    v11 = a1[3];
    v12 = a1[4];

    v13 = swift_allocObject();
    v65 = v9;
    v66 = v8;
    v67 = v10;
    v68 = v11;
    v69 = v12;
    v13[2] = v9;
    v13[3] = v8;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(v14 + 32) = v13;

    sub_15F84(&v67, v63, &qword_DF4FC0, &qword_B02830);
    sub_15F84(&v65, v63, &qword_DF4FC8, &qword_B02838);
    sub_15F84(&v66, v63, &qword_DF4FD0, &unk_B02840);
    sub_15F84(&v68, v63, &unk_E00000, &qword_B05300);
    sub_15F84(&v69, v63, &qword_DF4F78, &qword_B027D8);
    v15 = sub_1D34C0;
    v16 = v10;
LABEL_28:
    sub_15F84(v3 + 40, v63, &qword_DF4F58, &unk_B0EB60);
    v50 = *v64;
    if (*v64)
    {
      v51 = *&v64[8];
      __swift_project_boxed_opaque_existential_1(v63, *v64);
      v52 = *(v51 + 16);

      v53 = v52(v50, v51);
      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {

      sub_12E1C(v63, &qword_DF4F58, &unk_B0EB60);
      v53 = [objc_opt_self() emptyPropertySet];
    }

    sub_1CDA30(v16, v53, v15, v14);
  }

  v59 = a1[1];
  v60 = a2;
  v61 = a1[2];
  v62 = v3;
  v56 = v7;
  v17 = sub_97100(_swiftEmptyArrayStorage);
  v57 = swift_allocObject();
  *(v57 + 16) = v9;
  v18 = *(v9 + 16);

  v58 = v9;
  if (v18)
  {
    v19 = v9;
    v20 = 0;
    v21 = v19 + 32;
    v55 = v21;
    while (2)
    {
      v22 = v21 + 40 * v20;
      v23 = v20;
      while (1)
      {
        if (v23 >= v18)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_33;
        }

        *v63 = v23;
        sub_9ACA0(v22, &v63[8]);
        if (!*&v64[8])
        {
          goto LABEL_23;
        }

        v24 = *v63;
        *v63 = *&v63[8];
        *&v63[16] = *v64;
        *v64 = *&v64[8];
        v25.isa = sub_ABACE0().isa;
        sub_8085C(v63);
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          break;
        }

        ++v23;
        v22 += 40;
        if (v20 == v18)
        {
          goto LABEL_23;
        }
      }

      v27 = [v26 originalIdentifierSet];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v63 = v17;
      v30 = sub_2EC474(v27);
      v31 = v17[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_35;
      }

      if (v17[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v29;
          sub_3312A0();
          v29 = v42;
        }

        v35 = v27;
        v17 = *v63;
        if ((v29 & 1) == 0)
        {
LABEL_16:
          v17[(v30 >> 6) + 8] |= 1 << v30;
          *(v17[6] + 8 * v30) = v35;
          *(v17[7] + 8 * v30) = v24;

          v39 = v17[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_36;
          }

          v17[2] = v41;
LABEL_22:
          v21 = v55;
          if (v20 != v18)
          {
            continue;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v34 = v29;
        sub_327954(v33, isUniquelyReferenced_nonNull_native);
        v35 = v27;
        v36 = sub_2EC474(v27);
        if ((v34 & 1) != (v37 & 1))
        {
          goto LABEL_37;
        }

        v30 = v36;
        v38 = v34;
        v17 = *v63;
        if ((v38 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      break;
    }

    *(v17[7] + 8 * v30) = v24;

    goto LABEL_22;
  }

LABEL_23:
  v43 = v17[2];
  if (!v43)
  {
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v44 = sub_133030();
  v45 = sub_1311F0(v63, v44 + 4, v43, v17);
  v46 = *v63;
  swift_bridgeObjectRetain_n();
  sub_2BB88(v46);
  if (v45 == v43)
  {

LABEL_27:
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *v63 = v56;
    sub_93E20(v44, 0x73746E6968, 0xE500000000000000, v47);
    v16 = *v63;
    v14 = swift_allocObject();
    *(v14 + 16) = v60;
    *(v14 + 24) = a3;
    *(v14 + 32) = v17;
    *(v14 + 40) = v57;
    *(v14 + 48) = v58;
    *(v14 + 56) = v59;
    *(v14 + 64) = v61;
    v48 = *(a1 + 1);
    *(v14 + 72) = *a1;
    *(v14 + 88) = v48;
    *(v14 + 97) = *(a1 + 25);
    v49 = v61;

    sub_1D3578(a1, v63);
    v15 = sub_1D3540;
    v3 = v62;
    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

id sub_1B7474(void *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  result = [a1 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result allItems];

  v16 = sub_AB9760();
  v18 = sub_12DBC0(v16, v17);

  if (v18)
  {
    v52 = a3;
    v56 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v18 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v20 = 0;
      v59 = v18;
      v60 = v18 & 0xC000000000000001;
      v55 = v18 + 32;
      v58 = i;
      while (1)
      {
LABEL_8:
        if (v60)
        {
          v21 = sub_361248(v20, v18);
        }

        else
        {
          if (v20 >= *(v56 + 16))
          {
            goto LABEL_35;
          }

          v21 = *(v55 + 8 * v20);
        }

        v22 = v21;
        v23 = __OFADD__(v20, 1);
        v24 = v20 + 1;
        if (v23)
        {
          goto LABEL_34;
        }

        v61 = v24;
        v25 = 1 << *(a5 + 32);
        v26 = v25 < 64 ? ~(-1 << v25) : -1;
        v27 = v26 & *(a5 + 64);
        v28 = (v25 + 63) >> 6;

        v29 = 0;
        if (!v27)
        {
          break;
        }

        while (1)
        {
          v30 = v29;
LABEL_21:
          v31 = (v30 << 9) | (8 * __clz(__rbit64(v27)));
          v32 = *(*(a5 + 56) + v31);
          v33 = *(*(a5 + 48) + v31);
          v18 = [v22 originalIdentifierSet];
          v34 = [v18 intersectsSet:v33];

          if (v34)
          {
            break;
          }

          v27 &= v27 - 1;

          v29 = v30;
          if (!v27)
          {
            goto LABEL_18;
          }
        }

        sub_13C80(0, &qword_DE8028, MPModelGenericObject_ptr);
        sub_1D3604(&qword_DF4FE0, &qword_DE8028, MPModelGenericObject_ptr);
        v35 = v22;
        sub_ABAD10();
        swift_beginAccess();
        v36 = *(a6 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a6 + 16) = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_284554(v36);
          *(a6 + 16) = v36;
        }

        i = v58;
        v18 = v59;
        v20 = v61;
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v32 >= *(v36 + 2))
        {
          goto LABEL_37;
        }

        sub_9AD68(&v62, &v36[40 * v32 + 32]);
        *(a6 + 16) = v36;
        swift_endAccess();

        if (v61 == v58)
        {
          goto LABEL_39;
        }
      }

LABEL_18:
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          i = v58;
          v18 = v59;
          v20 = v61;
          if (v61 == v58)
          {
            goto LABEL_39;
          }

          goto LABEL_8;
        }

        v27 = *(a5 + 64 + 8 * v30);
        ++v29;
        if (v27)
        {
          goto LABEL_21;
        }
      }

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
      ;
    }

LABEL_39:
    swift_beginAccess();
    v40 = *(a6 + 16);
    v41 = 16;
    if (*(a10 + 40))
    {
      v41 = 32;
    }

    v42 = *(a10 + v41);
    v43 = v42;

    if (i)
    {
      type metadata accessor for BindingRequestResponseInvalidation();
      v44 = MPModelResponseDidInvalidateNotification;
      UIScreen.Dimensions.size.getter();
      *&v64 = &type metadata for NotificationTrigger;
      *(&v64 + 1) = &protocol witness table for NotificationTrigger;
      v62 = v45;
      *&v63 = v46;
      v47 = v44;
      v48 = a1;
      v49 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v62);
      v50 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }

    v62 = v40;
    *&v63 = a8;
    v64 = 0uLL;
    *(&v63 + 1) = v42;
    v65 = 0;

    v51 = v43;
    v52(&v62, v49, v50);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_30:
    sub_1D35B0();
    v38 = swift_allocError();
    *v39 = a2;
    *(v39 + 8) = 3;
    v62 = v38;
    v63 = 0u;
    v64 = 0u;
    v65 = 256;
    swift_errorRetain();
    a3(&v62, 0, 0);
  }
}

void sub_1B79EC(void *a1, uint64_t a2, void (*a3)(void ***, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (a1)
  {
    v9 = [a1 results];
    if (v9)
    {
      v10 = v9;
      v39 = sub_98A34(_swiftEmptyArrayStorage);
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = &v39;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1D4554;
      *(v12 + 24) = v11;
      *(&v37 + 1) = sub_1D3664;
      v38 = v12;
      aBlock = _NSConcreteStackBlock;
      *&v36 = 1107296256;
      *(&v36 + 1) = sub_1B7EB0;
      *&v37 = &block_descriptor_105;
      v13 = _Block_copy(&aBlock);
      v14 = v10;

      [v14 enumerateSectionsUsingBlock:v13];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
        v15 = v39;
        swift_beginAccess();
        a5[3] = v15;

        if (qword_DE6970 == -1)
        {
LABEL_5:
          v33 = v14;
          swift_beginAccess();
          v16 = qword_DF4BE0;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34[0] = a5[5];
          a5[5] = 0x8000000000000000;
          sub_1D2D68(v16, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, v34);

          v18 = v34[0];
          a5[5] = v34[0];
          swift_endAccess();
          swift_beginAccess();
          v19 = a5[2];
          v20 = a5[3];
          v21 = a5[4];
          v22 = a5[6];
          aBlock = v19;
          *&v36 = v20;
          *(&v36 + 1) = v21;
          *&v37 = v18;
          *(&v37 + 1) = v22;
          LOWORD(v38) = 1;
          type metadata accessor for BindingRequestResponseInvalidation();
          v23 = MPModelResponseDidInvalidateNotification;
          UIScreen.Dimensions.size.getter();
          v34[3] = &type metadata for NotificationTrigger;
          v34[4] = &protocol witness table for NotificationTrigger;
          v34[0] = v24;
          v34[1] = v25;
          v26 = v22;
          v27 = v23;
          v28 = a1;

          v29 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(v34);
          v30 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
          a3(&aBlock, v29, v30);

          return;
        }
      }

      swift_once();
      goto LABEL_5;
    }
  }

  sub_1D35B0();
  v31 = swift_allocError();
  *v32 = a2;
  *(v32 + 8) = 3;
  aBlock = v31;
  v36 = 0u;
  v37 = 0u;
  LOWORD(v38) = 256;
  swift_errorRetain();
  a3(&aBlock, 0, 0);
}

uint64_t sub_1B7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_1B7F1C(id *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v275 = a2;
  v276 = a3;
  v6 = sub_AB7C10();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7C50();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB7C20();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v273 = a1;
  v18 = *a1;
  if (!v18)
  {
    memset(aBlock, 0, sizeof(aBlock));
    goto LABEL_8;
  }

  v270 = v17;
  sub_1B6578(v18, aBlock, 1);
  if (!*&aBlock[24])
  {
LABEL_8:
    sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_9;
  }

  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000, &qword_B05300);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1D35B0();
    v27 = swift_allocError();
    *v28 = 1;
    *(v28 + 8) = 1;
    *aBlock = v27;
    memset(&aBlock[8], 0, 32);
    LOWORD(v281) = 256;
    (v275)(aBlock, 0, 0);

    return;
  }

  v256 = v15;
  v257 = v14;
  v258 = v13;
  v259 = v11;
  v260 = v9;
  countAndFlagsBits = v277._countAndFlagsBits;
  v20 = _swiftEmptyArrayStorage;
  v268 = sub_988E8(_swiftEmptyArrayStorage);
  v21 = swift_allocObject();
  v22 = sub_1CE69C(v18);
  v267 = v21;
  *(v21 + 16) = v22;
  v266 = (v21 + 16);
  v272 = sub_AB92A0();
  v274 = v23;
  v25 = v273[1];
  v24 = v273[2];
  v26 = *(v273 + 24);
  v269 = v4;
  if (!(v26 >> 6))
  {
    sub_1B6578(countAndFlagsBits, aBlock, 0);
    if (*&aBlock[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0, &unk_B02850);
      if (swift_dynamicCast())
      {
        LODWORD(v255) = v26;
        v29 = v277._countAndFlagsBits;
        v30 = swift_allocObject();
        *(v30 + 16) = _swiftEmptyArrayStorage;
        v31 = *(v29 + 16);
        v254 = v24;
        v253 = v25;
        v264 = v29;
        if (!v31)
        {
          v270 = _swiftEmptyArrayStorage;
LABEL_188:

          v274 = v30;
          v157 = *(v30 + 16);
          v158 = _swiftEmptyArrayStorage;
          v277._countAndFlagsBits = _swiftEmptyArrayStorage;
          v159 = *(v157 + 16);
          if (v159)
          {
            v160 = v157 + 32;

            v161 = v275;
            do
            {
              sub_9ACA0(v160, aBlock);
              v162.isa = sub_ABACE0().isa;
              sub_8085C(aBlock);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                sub_AB9730();
                if (*(&dword_10 + (v277._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v277._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_AB97A0();
                }

                sub_AB97F0();
                v158 = v277._countAndFlagsBits;
              }

              else
              {
              }

              v160 += 40;
              --v159;
            }

            while (v159);
          }

          else
          {
            v161 = v275;
          }

          v4 = v269;
          sub_1BA808(v270, v266);

          v163 = v268;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *aBlock = v163;
          sub_93E20(v158, 0x73746E6968, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
          v268 = *aBlock;
          v165 = v273;
          v277._countAndFlagsBits = v273[4];
          v112 = swift_allocObject();
          *(v112 + 2) = v161;
          v166 = v274;
          *(v112 + 3) = v276;
          *(v112 + 4) = v166;
          *(v112 + 5) = v267;
          v167 = *(v165 + 1);
          *(v112 + 3) = *v165;
          *(v112 + 4) = v167;
          *(v112 + 10) = v165[4];

          sub_1D2B24(v253, v254, v255);
          sub_15F84(&v277, aBlock, &qword_DF4F78, &qword_B027D8);

          v168 = sub_1D36A8;
LABEL_285:
          v242 = v168;
          goto LABEL_286;
        }

        v32 = v29 + 32;
        v270 = _swiftEmptyArrayStorage;
        v33 = &type metadata for AnyHashable;
        v34 = &type metadata for String;
        while (1)
        {
          v38 = *v32;
          if (!*(*v32 + 16))
          {
            goto LABEL_23;
          }

          v39 = sub_2EBF88(1684957547, 0xE400000000000000);
          if ((v40 & 1) == 0)
          {
            goto LABEL_55;
          }

          sub_9ACA0(*(v38 + 56) + 40 * v39, aBlock);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_55;
          }

          v41 = v34;
          v42._rawValue = &off_CF0888;
          v43 = sub_ABB140(v42, v277);

          if (v43)
          {
            if (v43 == 1)
            {
              if (!*(v38 + 16))
              {
                goto LABEL_55;
              }

              v44 = sub_2EBF88(0x746E65746E6F63, 0xE700000000000000);
              if ((v45 & 1) == 0)
              {
                goto LABEL_55;
              }

              sub_9ACA0(*(v38 + 56) + 40 * v44, aBlock);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_55;
              }

              if (!*(v277._countAndFlagsBits + 16) || (v263 = v277._countAndFlagsBits, v46 = sub_2EBF88(v272, v274), (v47 & 1) == 0))
              {

LABEL_55:

                goto LABEL_23;
              }

              sub_9ACA0(v263[7] + 40 * v46, aBlock);
              v48.isa = sub_ABACE0().isa;
              sub_8085C(aBlock);
              objc_opt_self();
              v49 = swift_dynamicCastObjCClass();
              if (!v49)
              {

                goto LABEL_23;
              }

              v277._countAndFlagsBits = v49;
              v261 = sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
              sub_1D3604(&qword_DF4FF8, &unk_DE8180, MPIdentifierSet_ptr);
              v262 = v48.isa;
              sub_ABAD10();
              v50 = *(v30 + 16);
              v51 = swift_isUniquelyReferenced_nonNull_native();
              *(v30 + 16) = v50;
              v52 = v33;
              if ((v51 & 1) == 0)
              {
                v50 = sub_6B8AC(0, *(v50 + 2) + 1, 1, v50);
                *(v30 + 16) = v50;
              }

              v54 = *(v50 + 2);
              v53 = *(v50 + 3);
              v55 = v54 + 1;
              if (v54 >= v53 >> 1)
              {
                v261 = v54 + 1;
                v77 = sub_6B8AC((v53 > 1), v54 + 1, 1, v50);
                v55 = v261;
                v50 = v77;
              }

              *(v50 + 2) = v55;
              v56 = &v50[40 * v54];
              v57 = *aBlock;
              v58 = *&aBlock[16];
              *(v56 + 8) = *&aBlock[32];
              *(v56 + 2) = v57;
              *(v56 + 3) = v58;
              *(v30 + 16) = v50;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v270 = sub_6BA14(0, v270[2] + 1, 1, v270);
              }

              v60 = v270[2];
              v59 = v270[3];
              if (v60 >= v59 >> 1)
              {
                v270 = sub_6BA14((v59 > 1), v60 + 1, 1, v270);
              }

              v61 = v270;
              v270[2] = v60 + 1;
              v61[v60 + 4] = v263;
              goto LABEL_57;
            }
          }

          else if (*(v38 + 16))
          {
            v62 = sub_2EBF88(0x6554686372616573, 0xEA00000000006D72);
            if (v63)
            {
              sub_9ACA0(*(v38 + 56) + 40 * v62, aBlock);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_55;
              }

              v52 = v33;
              object = v277._object;
              if (*(v38 + 16) && (v263 = v277._countAndFlagsBits, v65 = sub_2EBF88(0x5479616C70736964, 0xEB000000006D7265), (v66 & 1) != 0) && (sub_9ACA0(*(v38 + 56) + 40 * v65, aBlock), (swift_dynamicCast() & 1) != 0))
              {
                v67 = v277._countAndFlagsBits;
                v68 = v277._object;
                v277._countAndFlagsBits = v263;
                v277._object = object;
                v278 = v67;
                v279 = v68;
                sub_1D36AC();
                sub_ABAD10();
                v69 = *(v30 + 16);
                v70 = swift_isUniquelyReferenced_nonNull_native();
                *(v30 + 16) = v69;
                if ((v70 & 1) == 0)
                {
                  v69 = sub_6B8AC(0, *(v69 + 2) + 1, 1, v69);
                  *(v30 + 16) = v69;
                }

                v72 = *(v69 + 2);
                v71 = *(v69 + 3);
                v73 = (v72 + 1);
                if (v72 >= v71 >> 1)
                {
                  v263 = (v72 + 1);
                  v78 = sub_6B8AC((v71 > 1), v72 + 1, 1, v69);
                  v73 = v263;
                  v69 = v78;
                }

                *(v69 + 2) = v73;
                v74 = &v69[40 * v72];
                v75 = *aBlock;
                v76 = *&aBlock[16];
                *(v74 + 8) = *&aBlock[32];
                *(v74 + 2) = v75;
                *(v74 + 3) = v76;
                *(v30 + 16) = v69;
              }

              else
              {
              }

LABEL_57:

              v33 = v52;
              goto LABEL_22;
            }
          }

LABEL_22:
          v34 = v41;
LABEL_23:
          v32 += 8;
          if (!--v31)
          {
            goto LABEL_188;
          }
        }
      }
    }

    else
    {

      sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
    }

    sub_1D35B0();
    v117 = swift_allocError();
    *v118 = 0;
    *(v118 + 8) = 1;
    *aBlock = v117;
    memset(&aBlock[8], 0, 32);
    LOWORD(v281) = 256;
    (v275)(aBlock, 0, 0);

    return;
  }

  if (v26 >> 6 == 1)
  {

    return;
  }

  v253 = v25;
  v254 = v24;
  v248 = v10;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v35 = CompoundRequestResponseInvalidation.__allocating_init()();
  v282 = &_swiftEmptySetSingleton;
  sub_1B6578(v18, aBlock, 5);
  v250 = v6;
  v249 = v7;
  if (!*&aBlock[24])
  {
    sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
LABEL_62:
    memset(aBlock, 0, sizeof(aBlock));
    sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
    v37 = 0;
    memset(aBlock, 0, sizeof(aBlock));
LABEL_63:
    sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_64;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  v36 = v277._countAndFlagsBits;
  if (!v277._countAndFlagsBits)
  {
    goto LABEL_62;
  }

  sub_1B6578(v36, aBlock, 1);

  if (*&aBlock[24])
  {
    if (swift_dynamicCast())
    {
      v37 = v277._countAndFlagsBits;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
    v37 = 0;
  }

  sub_1B6578(v36, aBlock, 6);

  if (!*&aBlock[24])
  {
    goto LABEL_63;
  }

  if (swift_dynamicCast())
  {
    sub_1D3700(&qword_DF4F90, &unk_E00000, &qword_B05300);
    sub_ABAD10();
    sub_2E58C4(aBlock, 0x7363697274656DLL, 0xE700000000000000);
  }

LABEL_64:
  v265 = countAndFlagsBits;
  v251 = v35;
  LODWORD(v255) = v26;
  if (!v37)
  {
    memset(aBlock, 0, sizeof(aBlock));
    goto LABEL_132;
  }

  sub_1B6578(v37, aBlock, 7);

  if (!*&aBlock[24])
  {
LABEL_132:
    sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_133;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_133:
    v81 = _swiftEmptyArrayStorage;
LABEL_134:
    v111 = v273;
    v283 = v273[4];
    v112 = swift_allocObject();
    v113 = v276;
    *(v112 + 2) = v275;
    *(v112 + 3) = v113;
    v114 = v268;
    *(v112 + 4) = v81;
    *(v112 + 5) = v114;
    *(v112 + 6) = v267;
    v115 = *(v111 + 1);
    *(v112 + 56) = *v111;
    *(v112 + 72) = v115;
    *(v112 + 11) = v111[4];
    *(v112 + 12) = v35;
    if (*(v81 + 2))
    {
      v6 = v255;
      if (v255)
      {
        v116 = sub_ABB3C0();

        sub_1D2B24(v253, v254, v6);
        sub_15F84(&v283, aBlock, &qword_DF4F78, &qword_B027D8);

        if ((v116 & 1) == 0)
        {

LABEL_139:

LABEL_284:
          v168 = sub_1D3690;
          goto LABEL_285;
        }
      }

      else
      {

        sub_1D2B24(v253, v254, v6);
        sub_15F84(&v283, aBlock, &qword_DF4F78, &qword_B027D8);
      }

      v262 = v112;
      v276 = v81;
      v119 = *(v81 + 2);
      if (v119)
      {
        v120 = 0;
        v264 = (v276 + 32);
        v261 = v119;
        while (1)
        {
          if (v120 >= *(v276 + 16))
          {
            goto LABEL_305;
          }

          if (!*(countAndFlagsBits + 16))
          {
            goto LABEL_208;
          }

          v121 = &v264[4 * v120];
          v122 = *v121;
          v6 = v121[1];
          v123 = v121[3];

          v124 = sub_2EBF88(v122, v6);
          if ((v125 & 1) == 0)
          {
            break;
          }

          sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v124, aBlock);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v275 = v123;
          v35 = v277._countAndFlagsBits;
          if (!*(v277._countAndFlagsBits + 16) || (v126 = sub_2EBF88(1635017060, 0xE400000000000000), (v127 & 1) == 0))
          {

            goto LABEL_208;
          }

          sub_9ACA0(*(v35 + 56) + 40 * v126, aBlock);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0, &unk_B02850);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_207;
          }

          v128 = *(v277._countAndFlagsBits + 16);
          v273 = v277._countAndFlagsBits;
          if (v128)
          {
            v129 = v277._countAndFlagsBits + 32;
            do
            {
              v131 = *v129;
              if (*(*v129 + 16))
              {

                v132 = sub_2EBF88(v272, v274);
                if (v133)
                {
                  sub_9ACA0(*(v131 + 56) + 40 * v132, aBlock);
                  v134.isa = sub_ABACE0().isa;
                  sub_8085C(aBlock);
                  objc_opt_self();
                  v135 = swift_dynamicCastObjCClass();
                  if (v135 && *(v131 + 16) && (v136 = v135, v137 = sub_2EBF88(1701869940, 0xE400000000000000), (v138 & 1) != 0) && (sub_9ACA0(*(v131 + 56) + 40 * v137, aBlock), (swift_dynamicCast() & 1) != 0))
                  {
                    v139 = v277._countAndFlagsBits;
                    v140 = v277._object;
                    v141 = v134.isa;
                    v142 = sub_1CF1DC(v139, v140);
                    v4 = v269;
                    v263 = v141;
                    v255 = v142;
                    switch(v142)
                    {
                      case 1:
                        v143 = &qword_DE8E90;
                        v144 = MPModelAlbum_ptr;
                        goto LABEL_179;
                      case 2:
                        v143 = &qword_DE8E78;
                        v144 = MPModelArtist_ptr;
                        goto LABEL_179;
                      case 4:
                      case 9:
                      case 12:
                        v143 = &unk_DE8EB0;
                        v144 = MPModelSong_ptr;
                        goto LABEL_179;
                      case 5:
                        v143 = &unk_E087D0;
                        v144 = MPModelRadioStation_ptr;
                        goto LABEL_179;
                      case 8:
                      case 10:
                        v143 = &unk_DE9C00;
                        v144 = MPModelTVEpisode_ptr;
                        goto LABEL_179;
                      case 11:
                        v143 = &unk_DE8EC0;
                        v144 = MPModelTVShow_ptr;
                        goto LABEL_179;
                      case 13:
                        v143 = &unk_DF1280;
                        v144 = MPModelRecordLabel_ptr;
                        goto LABEL_179;
                      case 14:
                        v143 = &qword_DED7C0;
                        v144 = MPModelSocialPerson_ptr;
                        goto LABEL_179;
                      case 15:
                        v143 = &unk_DE8EA0;
                        v144 = MPModelPlaylist_ptr;
                        goto LABEL_179;
                      case 16:

                        break;
                      default:
                        v143 = &unk_E04570;
                        v144 = MPModelCurator_ptr;
LABEL_179:
                        v145 = sub_13C80(0, v143, v144);
                        sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
                        v146 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
                        sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
                        v147 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v145, v146, 0, v136);
                        if (v148)
                        {
                          v149 = v148;
                          v150 = v147;
                          v151 = v266;
                          swift_beginAccess();
                          v152 = *v151;
                          if (*(v152 + 16) && (v153 = sub_2EBF88(v150, v149), (v154 & 1) != 0))
                          {
                            sub_9ACA0(*(v152 + 56) + 40 * v153, aBlock);
                          }

                          else
                          {
                            memset(aBlock, 0, sizeof(aBlock));
                          }

                          v4 = v269;
                          swift_endAccess();

                          if (*&aBlock[24])
                          {
                            v130 = v263;

                            sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
                            goto LABEL_158;
                          }

                          sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
                          sub_1B38C(aBlock, v136, v255);

                          v155 = *aBlock;
                        }

                        else
                        {

                          v156 = v263;

                          v4 = v269;
                        }

                        break;
                    }
                  }

                  else
                  {
                  }
                }

                else
                {
LABEL_158:
                }
              }

              v129 += 8;
              --v128;
            }

            while (v128);

            v20 = _swiftEmptyArrayStorage;
            v119 = v261;
          }

          else
          {
          }

          ++v120;

          countAndFlagsBits = v265;
          if (v120 == v119)
          {
            goto LABEL_208;
          }
        }

LABEL_207:
      }

LABEL_208:

      v6 = v282;
      v112 = v262;
      if (v282[2])
      {
        v4 = type metadata accessor for UnfairLock();
        swift_allocObject();
        countAndFlagsBits = UnfairLock.init()();
        v35 = dispatch_group_create();
        type metadata accessor for BindingRequestResponseInvalidation();
        if (qword_DE6958 != -1)
        {
          goto LABEL_307;
        }

        goto LABEL_210;
      }

      goto LABEL_284;
    }

    sub_1D2B24(v253, v254, v255);
    sub_15F84(&v283, aBlock, &qword_DF4F78, &qword_B027D8);

    goto LABEL_139;
  }

  v79 = v277._countAndFlagsBits;
  v264 = *(v277._countAndFlagsBits + 16);
  if (!v264)
  {

    goto LABEL_133;
  }

  v80 = 0;
  v263 = (v277._countAndFlagsBits + 32);
  v81 = _swiftEmptyArrayStorage;
  v262 = v18;
  v261 = v277._countAndFlagsBits;
  while (1)
  {
    if (v80 >= *(v79 + 16))
    {
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    v82 = &v263[2 * v80];
    v35 = *v82;
    v6 = v82[1];
    v83 = *(countAndFlagsBits + 16);

    if (!v83 || (v84 = sub_2EBF88(v35, v6), (v85 & 1) == 0) || (sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v84, aBlock), (swift_dynamicCast() & 1) == 0))
    {
      v86 = 0;
LABEL_78:
      v89 = 1;
      goto LABEL_79;
    }

    v86 = v277._countAndFlagsBits;
    if (!v277._countAndFlagsBits)
    {
      goto LABEL_78;
    }

    if (!*(v277._countAndFlagsBits + 16))
    {
      v89 = 0;
LABEL_79:
      memset(aBlock, 0, sizeof(aBlock));
LABEL_80:
      sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
LABEL_81:

      v90 = v35;
      v91 = v6;
      goto LABEL_82;
    }

    v87 = sub_2EBF88(1701667182, 0xE400000000000000);
    if (v88)
    {
      sub_9ACA0(*(v86 + 56) + 40 * v87, aBlock);
    }

    else
    {
      memset(aBlock, 0, sizeof(aBlock));
    }

    if (!*&aBlock[24])
    {
      v89 = 0;
      goto LABEL_80;
    }

    v89 = 0;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_81;
    }

    v90 = v277._countAndFlagsBits;
    v91 = v277._object;
LABEL_82:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_6B9F8(0, *(v81 + 2) + 1, 1, v81);
    }

    v93 = *(v81 + 2);
    v92 = *(v81 + 3);
    v94 = v81;
    if (v93 >= v92 >> 1)
    {
      v94 = sub_6B9F8((v92 > 1), v93 + 1, 1, v81);
    }

    *(v94 + 2) = v93 + 1;
    v95 = &v94[32 * v93];
    *(v95 + 4) = v35;
    *(v95 + 5) = v6;
    *(v95 + 6) = v90;
    *(v95 + 7) = v91;
    if (v89)
    {
      memset(aBlock, 0, sizeof(aBlock));
      countAndFlagsBits = v265;
      v4 = v269;
      v20 = _swiftEmptyArrayStorage;
LABEL_96:
      sub_12E1C(aBlock, &qword_DF2BD0, &unk_AFDC00);
      v98 = 0;
      goto LABEL_97;
    }

    countAndFlagsBits = v265;
    v20 = _swiftEmptyArrayStorage;
    if (*(v86 + 16) && (v96 = sub_2EBF88(1635017060, 0xE400000000000000), (v97 & 1) != 0))
    {
      sub_9ACA0(*(v86 + 56) + 40 * v96, aBlock);
    }

    else
    {
      memset(aBlock, 0, sizeof(aBlock));
    }

    v4 = v269;

    if (!*&aBlock[24])
    {
      goto LABEL_96;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0, &unk_B02850);
    v98 = swift_dynamicCast() ? v277._countAndFlagsBits : 0;
LABEL_97:
    sub_1BA808(v98, v266);

    if (*(countAndFlagsBits + 16))
    {
      v99 = sub_2EBF88(v35, v6);
      if (v100)
      {
        break;
      }
    }

    v81 = v94;
LABEL_120:
    v79 = v261;
LABEL_121:
    if (++v80 == v264)
    {

      v35 = v251;
      goto LABEL_134;
    }
  }

  sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v99, aBlock);
  v81 = v94;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_119:

    goto LABEL_120;
  }

  v101 = v277._countAndFlagsBits;
  if (!*(v277._countAndFlagsBits + 16) || (v102 = sub_2EBF88(1635017060, 0xE400000000000000), (v103 & 1) == 0) || (sub_9ACA0(*(v101 + 56) + 40 * v102, aBlock), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0, &unk_B02850), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_119;
  }

  v20 = v277._countAndFlagsBits;
  v277._countAndFlagsBits = _swiftEmptyArrayStorage;
  countAndFlagsBits = *(v20 + 16);
  v246[1] = v101;
  if (!countAndFlagsBits)
  {
    v247 = _swiftEmptyArrayStorage;
LABEL_130:
    v109 = v268;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    *aBlock = v109;
    sub_93E20(v247, v35, v6, v110);

    v268 = *aBlock;
    v4 = v269;
    v79 = v261;
    v20 = _swiftEmptyArrayStorage;
    countAndFlagsBits = v265;
    goto LABEL_121;
  }

  v4 = 0;
  v252 = v20 + 32;
  v246[0] = countAndFlagsBits - 1;
  v247 = _swiftEmptyArrayStorage;
LABEL_105:
  v104 = v4;
  while (v104 < *(v20 + 16))
  {
    v4 = *(v252 + 8 * v104);
    if (*(v4 + 16))
    {

      v105 = sub_2EBF88(v272, v274);
      if (v106)
      {
        sub_9ACA0(*(v4 + 56) + 40 * v105, aBlock);
        v107.isa = sub_ABACE0().isa;
        sub_8085C(aBlock);
        objc_opt_self();
        v108 = swift_dynamicCastObjCClass();

        if (v108)
        {
          sub_AB9730();
          if (*(&dword_10 + (v277._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v277._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          v4 = v104 + 1;
          sub_AB97F0();
          v247 = v277._countAndFlagsBits;
          v81 = v94;
          if (v246[0] != v104)
          {
            goto LABEL_105;
          }

          goto LABEL_130;
        }

        v81 = v94;
      }

      else
      {
      }
    }

    if (countAndFlagsBits == ++v104)
    {
      goto LABEL_130;
    }
  }

LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  swift_once();
LABEL_210:
  v169 = qword_E71170;
  UIScreen.Dimensions.size.getter();
  *&aBlock[24] = &type metadata for NotificationTrigger;
  *&aBlock[32] = &protocol witness table for NotificationTrigger;
  *aBlock = v170;
  *&aBlock[8] = v171;
  v172 = v169;
  v173 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(aBlock);
  v174 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v173, v174);

  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v175 = sub_AB4BC0();
  __swift_project_value_buffer(v175, static Logger.search);

  v176 = sub_AB4BA0();
  v177 = sub_AB9F10();

  v178 = os_log_type_enabled(v176, v177);
  v272 = countAndFlagsBits;
  v255 = v35;
  v254 = v4;
  if (v178)
  {
    countAndFlagsBits = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *aBlock = v35;
    *countAndFlagsBits = 136446210;
    v277._countAndFlagsBits = *(v6 + 16);
    v179 = sub_ABB330();
    v4 = sub_425E68(v179, v180, aBlock);

    *(countAndFlagsBits + 4) = v4;
    _os_log_impl(&dword_0, v176, v177, "CatalogSearchSource: Need to fetch %{public}s lookup items", countAndFlagsBits, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v181 = sub_1BB590(v6);

  v182 = v181[8];
  v263 = v181 + 8;
  v183 = 1 << *(v181 + 32);
  v184 = -1;
  if (v183 < 64)
  {
    v184 = ~(-1 << v183);
  }

  v185 = (v184 & v182);
  v261 = (v183 + 63) >> 6;
  v264 = v181;

  v186 = 0;
  v6 = v20;
  while (1)
  {
    v275 = v6;
    if (!v185)
    {
      break;
    }

LABEL_223:
    v188 = *(v264[7] + ((v186 << 9) | (8 * __clz(__rbit64(v185)))));
    v276 = *(v188 + 16);
    v271 = v186;
    if (v276)
    {
      v189 = 0;
      v190 = 0;
      while (1)
      {
        v35 = v189 + 1;
        if (__OFADD__(v189, 1))
        {
          goto LABEL_291;
        }

        v191 = __OFADD__(v190, 50);
        v190 += 50;
        if (v191)
        {
          v190 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v189;
        if (v190 >= v276)
        {
          goto LABEL_231;
        }
      }
    }

    v35 = 0;
LABEL_231:
    *aBlock = v20;
    v274 = v188;

    sub_6D700(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      goto LABEL_306;
    }

    v192 = *aBlock;
    v266 = v185;
    if (v35)
    {
      v20 = 0;
      v193 = v274;
      v4 = *(v274 + 16);
      v273 = (v274 + 32);
      while (v20 < v276)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30, &qword_AF9130);
        v194 = swift_allocObject();
        if (v20 == 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_293;
        }

        countAndFlagsBits = v20 + 50;
        *(v194 + 32) = v20 + 50;
        *(v194 + 40) = v4;
        if (v4 >= v20 + 50)
        {
          v195 = v20 + 50;
        }

        else
        {
          v195 = v4;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v195 < v20)
        {
          goto LABEL_294;
        }

        v196 = *(v193 + 16);
        if (v196 < v20 || v196 < v195)
        {
          goto LABEL_295;
        }

        *aBlock = v192;
        v197 = v193;
        v199 = *(v192 + 16);
        v198 = *(v192 + 24);

        if (v199 >= v198 >> 1)
        {
          sub_6D700((v198 > 1), v199 + 1, 1);
          v192 = *aBlock;
        }

        *(v192 + 16) = v199 + 1;
        v200 = (v192 + 32 * v199);
        v201 = v273;
        v200[4] = v197;
        v200[5] = v201;
        v200[6] = v20;
        v200[7] = (2 * v195) | 1;
        v20 += 50;
        --v35;
        v193 = v197;
        v6 = v275;
        if (!v35)
        {
          goto LABEL_247;
        }
      }

LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    countAndFlagsBits = 0;
    v193 = v274;
LABEL_247:
    if (countAndFlagsBits < v276)
    {
      v35 = v193 + 32;
      v4 = countAndFlagsBits;
      while (1)
      {
        v202 = v4 + 50;
        v203 = __OFADD__(v4, 50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30, &qword_AF9130);
        v204 = swift_allocObject();
        if (v203)
        {
          goto LABEL_296;
        }

        *(v204 + 32) = v202;
        v205 = *(v193 + 16);
        *(v204 + 40) = v205;
        if (v205 >= v202)
        {
          v20 = v4 + 50;
        }

        else
        {
          v20 = v205;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v20 < v4)
        {
          goto LABEL_297;
        }

        if (countAndFlagsBits < 0)
        {
          goto LABEL_298;
        }

        v206 = *(v193 + 16);
        if (v206 < v4 || v206 < v20)
        {
          goto LABEL_299;
        }

        if (v202 < 0)
        {
          goto LABEL_300;
        }

        *aBlock = v192;
        v207 = v193;
        v209 = *(v192 + 16);
        v208 = *(v192 + 24);
        v210 = v209 + 1;

        if (v209 >= v208 >> 1)
        {
          sub_6D700((v208 > 1), v209 + 1, 1);
          v192 = *aBlock;
        }

        *(v192 + 16) = v210;
        v211 = (v192 + 32 * v209);
        v211[4] = v207;
        v211[5] = v35;
        v211[6] = v4;
        v211[7] = (2 * v20) | 1;
        v4 += 50;
        v193 = v207;
        v6 = v275;
        if (v202 >= v276)
        {
          goto LABEL_266;
        }
      }
    }

    v210 = *(v192 + 16);
    if (v210)
    {
LABEL_266:
      v20 = 0;
      v212 = 0;
      while (v212 < *(v192 + 16))
      {
        v214 = *(v192 + v20 + 32);
        v35 = *(v192 + v20 + 40);
        countAndFlagsBits = *(v192 + v20 + 48);
        v4 = *(v192 + v20 + 56);
        v215 = *(v6 + 16);
        swift_unknownObjectRetain();
        v216 = swift_isUniquelyReferenced_nonNull_native();
        if (v212 >= v215)
        {
          if ((v216 & 1) == 0)
          {
            v6 = sub_6B8C8(0, v215 + 1, 1, v6);
          }

          v217 = v6;
          v218 = *(v6 + 16);
          v219 = v217;
          v220 = v217[3];
          if (v218 >= v220 >> 1)
          {
            v219 = sub_6B8C8((v220 > 1), v218 + 1, 1, v219);
          }

          v219[2] = v218 + 1;
          v213 = &v219[4 * v218];
          v6 = v219;
          v213[4] = v214;
          v213[5] = v35;
          v213[6] = countAndFlagsBits;
          v213[7] = v4;
        }

        else
        {
          if ((v216 & 1) == 0)
          {
            v6 = sub_284568(v6);
          }

          if (v212 >= *(v6 + 16))
          {
            goto LABEL_301;
          }

          sub_1CEF98(v214, v35, countAndFlagsBits, v4);
          swift_unknownObjectRelease();
        }

        ++v212;
        v20 += 32;
        if (v210 == v212)
        {
          goto LABEL_217;
        }
      }

      __break(1u);
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

LABEL_217:
    v185 = ((v266 - 1) & v266);

    v20 = _swiftEmptyArrayStorage;
    v186 = v271;
  }

  while (1)
  {
    v187 = v186 + 1;
    if (__OFADD__(v186, 1))
    {
      goto LABEL_302;
    }

    if (v187 >= v261)
    {
      break;
    }

    v185 = v263[v187];
    ++v186;
    if (v185)
    {
      v186 = v187;
      v20 = _swiftEmptyArrayStorage;
      goto LABEL_223;
    }
  }

  v221 = *(v6 + 16);
  v222 = v255;
  if (v221)
  {
    v276 = sub_13C80(0, &qword_DF4F60, ICMusicKitRequestContext_ptr);
    v223 = (v275 + 56);
    do
    {
      v224 = *(v223 - 2);
      v225 = *(v223 - 1);
      v226 = *v223;
      swift_unknownObjectRetain();
      dispatch_group_enter(v222);
      sub_2F3BB4(v224, v225, v226);
      v228 = v227;
      _s7CatalogV15EndpointRequestCMa();
      v229 = swift_allocObject();
      swift_allocObject();
      *(v229 + 16) = UnfairLock.init()();
      *(v229 + 24) = 0;
      *(v229 + 32) = static ICMusicKitRequestContext.music.getter();
      *(v229 + 40) = 0;
      v230 = swift_allocObject();
      v231 = v272;
      *(v230 + 16) = v222;
      *(v230 + 24) = v231;
      v232 = v222;

      BagProvider.shared.unsafeMutableAddressor();
      v233 = swift_allocObject();
      *(v233 + 16) = v229;
      *(v233 + 24) = sub_1D3698;
      *(v233 + 32) = v230;
      *(v233 + 40) = v228;
      *(v233 + 48) = 0;
      *(v233 + 56) = 64;

      BagProvider.getBag(completion:)(sub_1D4530, v233);
      swift_unknownObjectRelease();

      v223 += 4;
      --v221;
    }

    while (v221);
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v234 = v256;
  v235 = v270;
  v236 = v257;
  (*(v256 + 104))(v270, enum case for DispatchQoS.QoSClass.userInteractive(_:), v257);
  v237 = sub_ABA190();
  (*(v234 + 8))(v235, v236);
  *&aBlock[32] = sub_1BBC34;
  v281 = 0;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1B5EB4;
  *&aBlock[24] = &block_descriptor_119;
  v238 = _Block_copy(aBlock);
  v239 = v258;
  sub_AB7C30();
  v277._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  v240 = v260;
  v241 = v250;
  sub_ABABB0();
  sub_ABA0F0();

  (*(v249 + 8))(v240, v241);
  (*(v259 + 8))(v239, v248);
  _Block_release(v238);

  v242 = sub_1D3690;
  v4 = v269;
  v112 = v262;
LABEL_286:
  sub_15F84(v4 + 40, aBlock, &qword_DF4F58, &unk_B0EB60);
  v243 = *&aBlock[24];
  if (*&aBlock[24])
  {
    v244 = *&aBlock[32];
    __swift_project_boxed_opaque_existential_1(aBlock, *&aBlock[24]);
    v245 = (*(v244 + 16))(v243, v244);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    sub_12E1C(aBlock, &qword_DF4F58, &unk_B0EB60);
    v245 = [objc_opt_self() emptyPropertySet];
  }

  sub_1CDA30(v268, v245, v242, v112);
}

void sub_1BA808(uint64_t a1, unint64_t *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v4 = (a1 + 32);
      do
      {
        v5 = *v4;
        if (!*(*v4 + 16))
        {
          goto LABEL_5;
        }

        v6 = sub_2EBF88(1635018093, 0xE400000000000000);
        if (v7)
        {
          sub_9ACA0(*(v5 + 56) + 40 * v6, &v21);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000, &qword_B05300);
          if (swift_dynamicCast())
          {
            if (!*(v5 + 16))
            {
              goto LABEL_22;
            }

            v8 = sub_2EBF88(25705, 0xE200000000000000);
            if ((v9 & 1) == 0)
            {
              goto LABEL_22;
            }

            sub_9ACA0(*(v5 + 56) + 40 * v8, &v21);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_22;
            }

            if (v19[2])
            {
              v18 = v19;
              v10 = sub_2EBF88(0x7374657070696E73, 0xE800000000000000);
              if (v11)
              {
                sub_9ACA0(v19[7] + 40 * v10, &v21);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0, &unk_B02850);
                if (swift_dynamicCast())
                {
                  if (!v19[2] || (v12 = v19[4], !*(v12 + 16)))
                  {
                    v23 = 0;
                    v21 = 0u;
                    v22 = 0u;
LABEL_24:

                    sub_12E1C(&v21, &qword_DF2BD0, &unk_AFDC00);

                    goto LABEL_4;
                  }

                  v13 = sub_2EBF88(1954047348, 0xE400000000000000);
                  if (v14)
                  {
                    sub_9ACA0(*(v12 + 56) + 40 * v13, &v21);
                  }

                  else
                  {
                    v23 = 0;
                    v21 = 0u;
                    v22 = 0u;
                  }

                  if (!*(&v22 + 1))
                  {
                    goto LABEL_24;
                  }

                  if (swift_dynamicCast())
                  {
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_AF4EC0;
                    *(inited + 32) = 0x73636972796CLL;
                    v17 = inited + 32;
                    *(inited + 40) = 0xE600000000000000;
                    *(inited + 48) = v19;
                    *(inited + 56) = v20;
                    sub_96B2C(inited);
                    swift_setDeallocating();
                    sub_12E1C(v17, &qword_DEE730, &qword_AFCCA0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590, &unk_B02860);
                    sub_1D3700(&qword_DF5008, &unk_DEE590, &unk_B02860);
                    sub_ABAD10();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v19 = *a2;
                    sub_93C90(&v21, v18, v20, isUniquelyReferenced_nonNull_native);

                    *a2 = v19;
                    goto LABEL_5;
                  }
                }

                else
                {
                }

LABEL_22:

                goto LABEL_4;
              }
            }
          }
        }

LABEL_4:

LABEL_5:
        ++v4;
        --v2;
      }

      while (v2);
    }
  }
}

id sub_1BAC2C(void *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_27;
  }

  result = [a1 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result allItems];

  v16 = sub_AB9760();
  v18 = sub_12DBC0(v16, v17);

  if (v18)
  {
    v54 = v18;
    v51 = a3;
    v49 = a1;
    v50 = a7;
    v52 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v18 >> 62)
    {
      goto LABEL_34;
    }

    v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
LABEL_6:
      swift_beginAccess();
      v20 = 0;
      v55 = a5;
      v53 = v19;
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v21 = sub_361248(v20, v54);
        }

        else
        {
          if (v20 >= *(v52 + 16))
          {
            goto LABEL_32;
          }

          v21 = *(v54 + 32 + 8 * v20);
        }

        v22 = v21;
        if (__OFADD__(v20++, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v24 = *(a5 + 16);
        v25 = *(v24 + 16);
        if (v25)
        {
          break;
        }

LABEL_8:
        if (v20 == v19)
        {
          goto LABEL_35;
        }
      }

      a5 = 0;
      v26 = 32;
      while (1)
      {
        if (a5 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        sub_9ACA0(v24 + v26, &v56);
        v27.isa = sub_ABACE0().isa;
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = v28;
          v30 = [v22 originalIdentifierSet];
          LOBYTE(v29) = [v30 intersectsSet:v29];
          sub_8085C(&v56);

          if (v29)
          {

            sub_13C80(0, &qword_DE8028, MPModelGenericObject_ptr);
            sub_1D3604(&qword_DF4FE0, &qword_DE8028, MPModelGenericObject_ptr);
            v31 = v22;
            sub_ABAD10();
            swift_beginAccess();
            v32 = *(v55 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v55 + 16) = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v32 = sub_284554(v32);
              *(v55 + 16) = v32;
            }

            if (a5 < *(v32 + 2))
            {
              sub_9AD68(&v56, &v32[v26]);
              a5 = v55;
              *(v55 + 16) = v32;
              swift_endAccess();

LABEL_26:
              v19 = v53;
              goto LABEL_8;
            }

LABEL_33:
            __break(1u);
LABEL_34:
            v19 = sub_ABB060();
            if (!v19)
            {
              break;
            }

            goto LABEL_6;
          }
        }

        else
        {

          sub_8085C(&v56);
        }

        ++a5;
        v26 += 40;
        if (v25 == a5)
        {

          a5 = v55;
          goto LABEL_26;
        }
      }
    }

LABEL_35:
    swift_beginAccess();
    v36 = *(a5 + 16);
    swift_beginAccess();
    v37 = *(a6 + 16);
    v38 = v19;
    v39 = *(v50 + 32);
    v40 = v39;

    if (v38)
    {
      type metadata accessor for BindingRequestResponseInvalidation();
      v41 = MPModelResponseDidInvalidateNotification;
      UIScreen.Dimensions.size.getter();
      *&v58 = &type metadata for NotificationTrigger;
      *(&v58 + 1) = &protocol witness table for NotificationTrigger;
      v56 = v42;
      *&v57 = v43;
      v44 = v41;
      v45 = v49;
      v46 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v56);
      v47 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
    }

    else
    {
      v47 = 0;
      v46 = 0;
    }

    v56 = v36;
    *&v57 = v37;
    v58 = 0uLL;
    *(&v57 + 1) = v39;
    v59 = 0;

    v48 = v40;
    v51(&v56, v46, v47);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_27:
    sub_1D35B0();
    v34 = swift_allocError();
    *v35 = a2;
    *(v35 + 8) = 3;
    v56 = v34;
    v57 = 0u;
    v58 = 0u;
    v59 = 256;
    swift_errorRetain();
    a3(&v56, 0, 0);
  }
}

void sub_1BB188(id a1, uint64_t a2, void (*a3)(void ***, uint64_t, uint64_t, __n128), uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && (v15 = [a1 results]) != 0)
  {
    v16 = v15;
    v29 = a3;
    v34 = sub_98A34(_swiftEmptyArrayStorage);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &v34;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1D37BC;
    *(v18 + 24) = v17;
    *(&v32 + 1) = sub_1D4558;
    v33 = v18;
    aBlock = _NSConcreteStackBlock;
    *&v31 = 1107296256;
    *(&v31 + 1) = sub_1B7EB0;
    *&v32 = &block_descriptor_134_0;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    [v20 enumerateSectionsUsingBlock:v19];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v22 = v34;
      swift_beginAccess();
      v23 = *(a7 + 16);
      v24 = *(a8 + 32);
      aBlock = a5;
      *&v31 = v22;
      *(&v31 + 1) = a6;
      *&v32 = v23;
      *(&v32 + 1) = v24;
      LOWORD(v33) = 1;
      v25 = sub_1D3018(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
      v26 = v24;

      (v29)(&aBlock, a9, v25);
    }
  }

  else
  {
    sub_1D35B0();
    v27 = swift_allocError();
    *v28 = a2;
    *(v28 + 8) = 3;
    aBlock = v27;
    v31 = 0u;
    v32 = 0u;
    LOWORD(v33) = 256;
    swift_errorRetain();
    (a3)(&aBlock, 0, 0);
  }
}

double sub_1BB4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v7 = [a4 itemsInSectionAtIndex:a2];
    v8 = sub_AB9760();
    v10 = sub_12DBC0(v8, v9);
    if (v10)
    {
      v11 = v10;

      return sub_2E599C(v11, v12, v13);
    }

    else
    {
    }
  }

  return result;
}

void *sub_1BB590(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = *(v1 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v6))));
    v10 = *(v9 + 8);
    v34 = *v9;
    v12 = sub_2EC880(v10);
    v13 = _swiftEmptyDictionarySingleton[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_23;
    }

    v16 = v11;
    if (_swiftEmptyDictionarySingleton[3] < v15)
    {
      sub_32AC08(v15, 1);
      v17 = sub_2EC880(v10);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_25;
      }

      v12 = v17;
    }

    v6 &= v6 - 1;
    if (v16)
    {
      v19 = _swiftEmptyDictionarySingleton[7];
      v20 = *(v19 + 8 * v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v12) = v20;
      v32 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_6B8EC(0, *(v20 + 2) + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v30 = sub_6B8EC((v22 > 1), v23 + 1, 1, v20);
        v24 = v23 + 1;
        v20 = v30;
        *(v32 + 8 * v12) = v30;
      }

      *(v20 + 2) = v24;
      v25 = &v20[16 * v23];
      v1 = a1;
      *(v25 + 4) = v34;
      v25[40] = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12B0, &unk_B02870);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_AF4EC0;
      *(v26 + 32) = v34;
      *(v26 + 40) = v10;
      _swiftEmptyDictionarySingleton[(v12 >> 6) + 8] |= 1 << v12;
      *(_swiftEmptyDictionarySingleton[6] + v12) = v10;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v12) = v26;
      v27 = _swiftEmptyDictionarySingleton[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_24;
      }

      _swiftEmptyDictionarySingleton[2] = v29;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_1BB818(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  if (v5 != 1)
  {
    v6 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    v22 = v5;
    v10 = *(a1 + 3);
    v23 = *(a1 + 1);
    v24 = v10;
    if (!a2)
    {
      __chkstk_darwin();

      sub_1D2B24(v6, v7, v8);
      v20 = v9;
      UnfairLock.locked<A>(_:)(sub_1D3768);
      v25 = v22;
      sub_12E1C(&v25, &qword_DF4F70, &qword_B027D0);
      v26 = v23;
      v27 = v24;
      sub_1D2D1C(&v26);
      v28 = *(&v24 + 1);
      sub_12E1C(&v28, &qword_DF4F78, &qword_B027D8);
      goto LABEL_9;
    }

    v25 = v5;

    sub_1D2B24(v6, v7, v8);
    v11 = v9;
    sub_12E1C(&v25, &qword_DF4F70, &qword_B027D0);
    v26 = v23;
    v27 = v24;
    sub_1D2D1C(&v26);
    v28 = *(&v24 + 1);
    sub_12E1C(&v28, &qword_DF4F78, &qword_B027D8);
  }

  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, static Logger.search);
  swift_errorRetain();
  v13 = sub_AB4BA0();
  v14 = sub_AB9F30();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
    v17 = sub_AB9350();
    v19 = sub_425E68(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v13, v14, "CatalogSearchSource: Failed to fetch lookup items. Error=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

LABEL_9:
  dispatch_group_leave(a3);
}

uint64_t sub_1BBB1C(uint64_t *a1)
{
  if (qword_DE6970 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = sub_1CE69C(*a1);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = qword_DF4BE0;
  qword_DF4BE0 = 0x8000000000000000;
  sub_1D2D68(v2, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, &v6);

  if (v1)
  {

    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    qword_DF4BE0 = v6;
    return swift_endAccess();
  }

  return result;
}

void sub_1BBC34()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_DE6958 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_E71170 object:0];
}

void sub_1BBCD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v94 = a3;
  v93 = a2;
  v95 = a4;
  v91 = sub_AB7C10();
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v88 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_AB7C50();
  v87 = *(v89 - 8);
  __chkstk_darwin();
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_AB7C20();
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v83 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompoundRequestResponseInvalidation();
  v10 = CompoundRequestResponseInvalidation.__allocating_init()();
  type metadata accessor for BindingRequestResponseInvalidation();
  v11 = MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 sharedRestrictionsMonitor];
  UIScreen.Dimensions.size.getter();
  *(&v107 + 1) = &type metadata for NotificationTrigger;
  *&v108 = &protocol witness table for NotificationTrigger;
  *&v106 = v15;
  *(&v106 + 1) = v16;
  v17 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v106);
  v18 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v17, v18);

  v19 = *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter();
  *(&v107 + 1) = &type metadata for NotificationTrigger;
  *&v108 = &protocol witness table for NotificationTrigger;
  *&v106 = v20;
  *(&v106 + 1) = v21;

  v22 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v106);
  CompoundRequestResponseInvalidation.append(_:)(v22, v18);

  v23 = *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter();
  *(&v107 + 1) = &type metadata for NotificationTrigger;
  *&v108 = &protocol witness table for NotificationTrigger;
  v24 = v10;
  *&v106 = v25;
  *(&v106 + 1) = v26;
  v27 = v23;

  v28 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v106);
  CompoundRequestResponseInvalidation.append(_:)(v28, v18);

  if (a1 && (*(a1 + 16) == *v5 && *(a1 + 24) == *(v5 + 8) || (sub_ABB3C0() & 1) != 0) && *(a1 + 32) == *(v5 + 16))
  {
    sub_13C80(0, &qword_DFA720, NSObject_ptr);

    if (sub_ABA790())
    {
      RequestResponse.Revision.content.getter(&aBlock);
      v29 = BYTE8(v103);
      if (BYTE8(v103) != 255)
      {
        v30 = v103;
        v31 = *(&v102 + 1);
        v32 = v102;
        v33 = *(&aBlock + 1);
        v34 = aBlock;
        v106 = aBlock;
        v107 = v102;
        *&v108 = v103;
        BYTE8(v108) = BYTE8(v103) & 1;
        sub_1B6E88(&v106, v93, v94);

        v35 = v95;
        *(v95 + 32) = 0;
        *v35 = 0u;
        v35[1] = 0u;
        sub_1D339C(v34, v33, v32, v31, v30, v29);

        return;
      }
    }
  }

  v36 = _s7CatalogV15EndpointRequestCMa();
  v37 = swift_allocObject();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v37 + 16) = UnfairLock.init()();
  *(v37 + 24) = 0;
  sub_13C80(0, &qword_DF4F60, ICMusicKitRequestContext_ptr);
  *(v37 + 32) = static ICMusicKitRequestContext.music.getter();
  *(v37 + 40) = 0;
  if (*(v5 + 16))
  {
    swift_allocObject();
    v38 = UnfairLock.init()();
    v39 = dispatch_group_create();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_98A48(_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA908, &qword_AF8F48);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_AF4EC0;
    v92 = v41;
    *(v41 + 32) = 0;
    if (qword_DE6970 != -1)
    {
      swift_once();
    }

    v42 = sub_988FC(_swiftEmptyArrayStorage);
    swift_beginAccess();
    qword_DF4BE0 = v42;

    sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
    v43 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v43)
    {
      v44 = v40;

      static ApplicationCapabilities.shared.getter(&v106);
      v45 = v108;

      sub_70C54(&v106);
      v46 = sub_472A84(3, v45);

      if (v46)
      {
        v48 = *(v92 + 2);
        v47 = *(v92 + 3);
        v49 = v39;
        if (v48 >= v47 >> 1)
        {
          v92 = sub_6BA38((v47 > 1), v48 + 1, 1, v92);
        }

        v50 = v38;
        v51 = v92;
        *(v92 + 2) = v48 + 1;
        v51[v48 + 32] = 1;
      }

      else
      {
        v49 = v39;
        v50 = v38;
      }
    }

    else
    {
      v49 = v39;
      v50 = v38;
      v44 = v40;
    }

    v97 = v44;
    v98 = v37;
    v82 = v36;
    v59 = *(v92 + 2);
    v99 = v24;
    if (v59)
    {
      v60 = v5;
      v61 = *(v5 + 8);
      v96 = *v5;
      v62 = v92 + 32;
      do
      {
        v63 = *v62++;
        dispatch_group_enter(v49);
        sub_1D3210(v60, &aBlock);
        v64 = swift_allocObject();
        v65 = aBlock;
        *(v64 + 40) = v102;
        v66 = v104;
        *(v64 + 56) = v103;
        *(v64 + 72) = v66;
        *(v64 + 88) = v105;
        *(v64 + 16) = v49;
        *(v64 + 24) = v65;
        *(v64 + 104) = v50;
        *(v64 + 112) = v24;
        *(v64 + 120) = v97;

        v67 = v49;

        BagProvider.shared.unsafeMutableAddressor();
        v68 = swift_allocObject();
        *(v68 + 16) = v98;
        *(v68 + 24) = sub_1D32B8;
        v69 = v96;
        *(v68 + 32) = v64;
        *(v68 + 40) = v69;
        *(v68 + 48) = v61;
        *(v68 + 56) = v63 | 0x80;

        BagProvider.getBag(completion:)(sub_1D4530, v68);

        v24 = v99;

        --v59;
      }

      while (v59);
    }

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v70 = v84;
    v71 = v83;
    v72 = v85;
    (*(v84 + 104))(v83, enum case for DispatchQoS.QoSClass.userInteractive(_:), v85);
    v96 = sub_ABA190();
    (*(v70 + 8))(v71, v72);
    v73 = swift_allocObject();
    v74 = v97;
    v73[2] = v92;
    v73[3] = v74;
    v75 = v94;
    v73[4] = v93;
    v73[5] = v75;
    v73[6] = v24;
    *&v103 = sub_1D331C;
    *(&v103 + 1) = v73;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v102 = sub_1B5EB4;
    *(&v102 + 1) = &block_descriptor_77;
    v76 = _Block_copy(&aBlock);

    v77 = v86;
    sub_AB7C30();
    v100 = _swiftEmptyArrayStorage;
    sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    v78 = v88;
    v79 = v91;
    sub_ABABB0();
    v80 = v96;
    sub_ABA0F0();

    (*(v90 + 8))(v78, v79);
    (*(v87 + 8))(v77, v89);
    _Block_release(v76);

    v58 = v95;
    v36 = v82;
    v37 = v98;
  }

  else
  {
    v52 = *v5;
    v53 = *(v5 + 8);
    sub_1D3210(v5, &v106);
    v54 = swift_allocObject();
    *(v54 + 16) = v93;
    *(v54 + 24) = v94;
    *(v54 + 32) = v10;
    v55 = v106;
    *(v54 + 56) = v107;
    v56 = v109;
    *(v54 + 72) = v108;
    *(v54 + 88) = v56;
    *(v54 + 104) = v110;
    *(v54 + 40) = v55;

    BagProvider.shared.unsafeMutableAddressor();
    v57 = swift_allocObject();
    *(v57 + 16) = v37;
    *(v57 + 24) = sub_1D338C;
    *(v57 + 32) = v54;
    *(v57 + 40) = v52;
    *(v57 + 48) = v53;
    *(v57 + 56) = 0;

    BagProvider.getBag(completion:)(sub_1D4530, v57);

    v58 = v95;
  }

  v58[3] = v36;
  v58[4] = &off_D00038;

  *v58 = v37;
}

uint64_t sub_1BC97C(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (v10 != &dword_0 + 1)
  {
    v11 = a1 + 1;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[3];
    v15 = a1[4];
    v23 = v10;
    v16 = *(a1 + 3);
    v24 = *(a1 + 1);
    v25 = v16;
    if (!a2)
    {

      sub_1D2B24(v12, v13, v14);
      v22 = v15;
      sub_1B7F1C(&v23, a3, a4);
      v29 = v23;
      sub_12E1C(&v29, &qword_DF4F70, &qword_B027D0);
      *v30 = v24;
      v30[16] = v25;
      sub_1D2D1C(v30);
      *&v27 = *(&v25 + 1);
      return sub_12E1C(&v27, &qword_DF4F78, &qword_B027D8);
    }

    v26 = v10;

    sub_1D2B24(v12, v13, v14);
    v17 = v15;
    sub_12E1C(&v26, &qword_DF4F70, &qword_B027D0);
    v27 = *v11;
    v28 = *(v11 + 16);
    sub_1D2D1C(&v27);
    v29 = *(&v25 + 1);
    sub_12E1C(&v29, &qword_DF4F78, &qword_B027D8);
  }

  sub_1D35B0();
  v18 = swift_allocError();
  *v19 = a2;
  *(v19 + 8) = 2;
  *v30 = v18;
  *&v30[8] = 0u;
  v31 = 0u;
  v32 = 256;
  v20 = sub_1D3018(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
  swift_errorRetain();
  (a3)(v30, a5, v20);
}

void sub_1BCBA0(uint64_t *a1, int a2, dispatch_group_t group, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  if (*a1 == 1)
  {

    dispatch_group_leave(group);
  }

  else
  {
    v12 = a1[4];
    v14 = a1[1];
    v13 = a1[2];
    v32 = *a1;
    v33 = *(a1 + 1);
    v34 = *(a1 + 3);
    v15 = *(a1 + 24);

    sub_1D2B24(v14, v13, v15);
    v16 = qword_DE6D48;
    v17 = v12;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, static Logger.search);
    v35 = v8;
    v36 = v33;
    v37 = v34;
    v38[0] = *(&v34 + 1);
    sub_15F84(&v35, &v30, &qword_DF4F70, &qword_B027D0);
    sub_1D2CE4(&v36, &v30);
    sub_15F84(v38, &v30, &qword_DF4F78, &qword_B027D8);
    v19 = sub_AB4BA0();
    v20 = sub_AB9F10();
    sub_12E1C(&v35, &qword_DF4F70, &qword_B027D0);
    sub_1D2D1C(&v36);
    sub_12E1C(v38, &qword_DF4F78, &qword_B027D8);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136446210;
      v30 = v36;
      v31 = v37;
      sub_1D2CE4(&v36, v28);
      v23 = sub_AB9350();
      v25 = sub_425E68(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "CatalogSearchSource: getting response for endpoint %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    sub_15F84(&v35, &v30, &qword_DF4F70, &qword_B027D0);
    sub_1D2CE4(&v36, &v30);
    sub_15F84(v38, &v30, &qword_DF4F78, &qword_B027D8);
    v26 = group;

    sub_1CF904(&v32, a4, v26, a5, a6, a7, &v32);

    sub_12E1C(&v35, &qword_DF4F70, &qword_B027D0);
    sub_1D2D1C(&v36);
    sub_12E1C(v38, &qword_DF4F78, &qword_B027D8);
    sub_12E1C(&v35, &qword_DF4F70, &qword_B027D0);
    sub_1D2D1C(&v36);
    sub_12E1C(v38, &qword_DF4F78, &qword_B027D8);
  }
}

uint64_t sub_1BCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = *a4;
  v19 = *(a4 + 8);
  v10 = *(a4 + 24);
  v18 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = *(a4 + 40);
  if (a1)
  {
    v14 = swift_unknownObjectRetain();
    CompoundRequestResponseInvalidation.append(_:)(v14, a2);
    swift_unknownObjectRelease();
  }

  if (*(a4 + 41))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *&v20 = v9;
    *(&v20 + 1) = v19;
    v21 = v18;
    v22 = v10;
    v23 = v11;
    v24 = v12 & 1;
    v16 = *(a6 + 24);
    if (v16 >> 6)
    {
      if (v16 >> 6 == 1)
      {
        LOBYTE(v16) = *(a6 + 16);
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    swift_beginAccess();
    sub_9AE20(v9, v19, v18, v10, v11, v12 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a5;
    *a5 = 0x8000000000000000;
    sub_93E78(&v20, v16 & 1, isUniquelyReferenced_nonNull_native);
    *a5 = v25;
    return swift_endAccess();
  }
}

void sub_1BD0B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_98A34(_swiftEmptyArrayStorage);
  v10 = sub_988E8(_swiftEmptyArrayStorage);
  v11 = sub_988FC(_swiftEmptyArrayStorage);
  v79 = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  v62 = v12;
  if (!v12)
  {
    goto LABEL_33;
  }

  v56 = a3;
  v13 = 0;
  v60 = 0;
  v72 = a1 + 32;
  v14 = v62;
  v61 = a2;
  do
  {
    v73 = v13;
    v15 = *(v72 + v13);
    swift_beginAccess();
    v16 = *(a2 + 16);
    if (!*(v16 + 16) || (v17 = sub_2EC908(v15), (v18 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_4;
    }

    v70 = v15;
    v19 = *(v16 + 56) + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (*(v19 + 40) != 1)
    {
      v42 = v22;

      swift_endAccess();

      goto LABEL_4;
    }

    v65 = v10;
    v66 = v9;
    v24 = *(v19 + 24);
    v23 = *(v19 + 32);
    v25 = v22;
    swift_endAccess();
    v26 = v20[2];
    v67 = v24;
    v68 = v25;
    v64 = v23;
    sub_9AE20(v20, v21, v25, v24, v23, 1);

    v69 = v20;
    if (v26)
    {
      v27 = 0;
      v74 = v79;
      v28 = v20 + 7;
      v71 = _swiftEmptyArrayStorage;
      v63 = v11;
      v75 = v26;
      v76 = v21;
      v59 = v20 + 7;
      do
      {
        v29 = &v28[4 * v27];
        while (1)
        {
          if (v27 >= v26)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            return;
          }

          if (__OFADD__(v27, 1))
          {
            goto LABEL_35;
          }

          v77 = v27 + 1;
          v30 = *(v29 - 1);
          v31 = *v29;
          v32 = *(v29 - 3);
          v33 = *(v29 - 2);
          v80 = v32;
          v81 = v33;
          v82 = v30;
          v83 = v31;
          __chkstk_darwin();
          v55[2] = &v80;

          v34 = v74;

          v35 = sub_1B3C54(sub_1D37D8, v55, v34);

          if ((v35 & 1) == 0)
          {
            break;
          }

          ++v27;
          v29 += 4;
          v26 = v75;
          v21 = v76;
          if (v77 == v75)
          {
            v11 = v63;
            a2 = v61;
            goto LABEL_24;
          }
        }

        v36 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_6D720(0, v36[2] + 1, 1);
          v36 = v78;
        }

        v11 = v63;
        a2 = v61;
        v39 = v36[2];
        v38 = v36[3];
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          sub_6D720((v38 > 1), v39 + 1, 1);
          v40 = v39 + 1;
          v36 = v78;
        }

        v36[2] = v40;
        v71 = v36;
        v41 = &v36[4 * v39];
        v41[4] = v32;
        v41[5] = v33;
        v41[6] = v30;
        v41[7] = v31;
        v26 = v75;
        v21 = v76;
        v27 = v77;
        v28 = v59;
      }

      while (v77 != v75);
    }

    else
    {
      v71 = _swiftEmptyArrayStorage;
    }

LABEL_24:

    sub_19780(v71);

    v43 = v66;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v43;
    sub_1CB8FC(v21, sub_1D452C, 0, v44, &v80, sub_32ABF4, sub_19874, sub_333040);
    v9 = v80;
    v45 = v68;

    v46 = v65;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v46;
    sub_1CB8FC(v45, sub_1D452C, 0, v47, &v80, sub_32ABE0, sub_1988C, sub_33302C);
    v10 = v80;
    v48 = v67;

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v11;
    sub_1D2D68(v48, sub_1CB8B0, 0, v49, &v80);

    v11 = v80;
    if ((v70 & 1) == 0)
    {

      v14 = v62;
LABEL_28:
      v51 = v64;
      if (v64)
      {
        v52 = v64;

        v60 = v51;
      }

      else
      {
      }

      goto LABEL_31;
    }

    v50 = sub_ABB3C0();

    v14 = v62;
    if (v50)
    {
      goto LABEL_28;
    }

    v51 = v64;
LABEL_31:

LABEL_4:
    v13 = v73 + 1;
  }

  while ((v73 + 1) != v14);
  v8 = v79;
  a3 = v56;
  v12 = v60;
LABEL_33:
  v80 = v8;
  v81 = v9;
  v82 = v10;
  v83 = v11;
  v84 = v12;
  v53 = v12;
  v85 = 1;
  v54 = sub_1D3018(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
  a3(&v80, v57, v54);
}

__n128 sub_1BD740@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a6;
  v8 = *(a6 + 16);
  *(a7 + 40) = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 56) = v8;
  *(a7 + 72) = *(a6 + 32);
  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

void MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double sub_1BD87C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1BBCD4(a1, sub_1D31CC, v8, a4);

  return result;
}

double sub_1BD950(uint64_t a1)
{
  v8 = a1;
  v9 = 0xEF73746C75736552;
  strcpy(&v7, " hashedText: ");
  HIWORD(v7._object) = -4864;
  sub_36A48();
  sub_ABAAD0();
  v10._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v10);

  sub_AB94A0(v7);

  strcpy(&v7, " variant: ");
  BYTE3(v7._object) = 0;
  HIDWORD(v7._object) = -369098752;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010, &unk_B02880);
  v11._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v11);

  sub_AB94A0(v7);

  strcpy(&v7, " library: ");
  BYTE3(v7._object) = 0;
  HIDWORD(v7._object) = -369098752;
  v2 = [*(v1 + 24) description];
  v3 = sub_AB92A0();
  v5 = v4;

  v12._countAndFlagsBits = v3;
  v12._object = v5;
  sub_AB94A0(v12);

  sub_AB94A0(v7);

  sub_ABAD90(21);
  v13._object = 0x8000000000B563A0;
  v13._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v13);
  type metadata accessor for MPMediaLibraryFilteringOptions(0);
  sub_ABAF70();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_AB94A0(v14);

  return result;
}

uint64_t sub_1BDB88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  return sub_ABA790() & 1;
}

Swift::Int sub_1BDC1C()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_1BDC98(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_ABA7A0();
  sub_1BDE98(v2);
  sub_AB93F0();

  return result;
}

Swift::Int sub_1BDD04(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(v2);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BDD7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if (sub_ABA790())
  {
    v4 = sub_1BDE98(v2);
    v6 = v5;
    if (v4 == sub_1BDE98(v3) && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_ABB3C0();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *sub_1BDE48()
{
  result = sub_12260(&off_CF08D8);
  qword_E71178 = result;
  return result;
}

void *sub_1BDE70()
{
  result = sub_12260(&off_CF0908);
  qword_E71180 = result;
  return result;
}

uint64_t sub_1BDE98(char a1)
{
  result = 0x6974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x73747369747261;
      break;
    case 3:
      result = 0x73726F7461727563;
      break;
    case 4:
      result = 0x73676E6F73;
      break;
    case 5:
      result = 0x736E6F6974617473;
      break;
    case 6:
      result = 0x75632D656C707061;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x6F6D2D636973756DLL;
      break;
    case 9:
      result = 0x69762D636973756DLL;
      break;
    case 10:
      result = 0x6F736970652D7674;
      break;
    case 11:
      result = 0x73776F68732D7674;
      break;
    case 12:
      result = 0x646564616F6C7075;
      break;
    case 13:
      result = 0x6C2D64726F636572;
      break;
    case 14:
      result = 0x702D6C6169636F73;
      break;
    case 15:
      result = 0x7473696C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE0E8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

Swift::Int sub_1BE194(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_ABB5C0();
  a3(v5);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_1BE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_AB93F0();

  return result;
}

Swift::Int sub_1BE288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_ABB5C0();
  a4(v6);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BE2F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF1DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BE320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BDE98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1BE34C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D2800(a1);

  *a2 = v4;
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BE478()
{
  if (*v0 == 7368564 && v0[1] == 0xE300000000000000)
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

uint64_t sub_1BE4B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6169636F73;
  }

  else
  {
    v3 = 0x676F6C61746163;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6169636F73;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_1BE554()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_1BE5D4(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_1BE640(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_1BE6BC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF0930;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1BE71C(uint64_t *a1@<X8>)
{
  v2 = 0x676F6C61746163;
  if (*v1)
  {
    v2 = 0x6C6169636F73;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BE758(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6169726F74696465;
    v6 = 1684107369;
    if (a1 != 2)
    {
      v6 = 0x656E6F687069;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736F747561;
    v2 = 0x7542726576726573;
    if (a1 != 7)
    {
      v2 = 102;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676948636972796CLL;
    if (a1 != 4)
    {
      v3 = 7364973;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BE878(uint64_t a1, char a2)
{
  if (!a1)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_14;
  }

  v4 = "suggestionsTermsLimit";
  if (a2)
  {
    v4 = "suggestionsTopResultsLimit";
  }

  if (!*(a1 + 16) || ((a2 & 1) == 0 ? (v5 = 0xD000000000000015) : (v5 = 0xD00000000000001ALL), v6 = sub_2EBF88(v5, (v4 - 32) | 0x8000000000000000), (v7 & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;

    goto LABEL_14;
  }

  sub_9ACA0(*(a1 + 56) + 40 * v6, &v10);

  if (!*(&v11 + 1))
  {
LABEL_14:
    sub_12E1C(&v10, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

LABEL_15:
  if (a2)
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

double sub_1BE990@<D0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v48 = a5;
  v46 = a2;
  v47 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v10 = &v40 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 dictionaryForBagKey:{ICURLBagKeyMusicCommon, v13}];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = sub_AB8FF0();

  sub_16A8C4(v18);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = sub_AB92A0();
  if (!*(v20 + 16) || (v23 = sub_2EBF88(v21, v22), (v24 & 1) == 0))
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;

    goto LABEL_11;
  }

  sub_9ACA0(*(v20 + 56) + 40 * v23, &v50);

  if (!*(&v51 + 1))
  {
LABEL_11:
    sub_12E1C(&v50, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000, &qword_B05300);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

LABEL_13:
    (*(v12 + 56))(a6, 1, 1, v11);
    return result;
  }

  countAndFlagsBits = v49._countAndFlagsBits;
  v45 = v48 >> 6;
  if (v48 >> 6)
  {
    if (v48 >> 6 == 1)
    {
      v26 = v47;
    }

    else
    {
      v26 = v48;
    }

    if (v26)
    {
      v29 = 0x746C7561666564;
    }

    else
    {
      v29 = 0x686372616573;
    }

    v28 = 0xE700000000000000;
    if ((v26 & 1) == 0)
    {
      v28 = 0xE600000000000000;
    }
  }

  else
  {
    v28 = 0xEB0000000073746ELL;
    v29 = 0x6948686372616573;
  }

  if (*(v49._countAndFlagsBits + 16))
  {
    v30 = sub_2EBF88(v29, v28);
    if (v31)
    {
      sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v30, &v50);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  if (!*(&v51 + 1))
  {
    sub_12E1C(&v50, &qword_DF2BD0, &unk_AFDC00);
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    goto LABEL_12;
  }

  v44 = v49;
  v32 = [a1 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v32)
  {

    goto LABEL_12;
  }

  v42 = countAndFlagsBits;
  v33 = v32;
  v41 = sub_AB92A0();
  v43 = v34;

  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  sub_ABAD90(19);

  *&v50 = 0x2F2F3A7370747468;
  *(&v50 + 1) = 0xE800000000000000;
  sub_AB94A0(v44);
  v53._countAndFlagsBits = 791770671;
  v53._object = 0xE400000000000000;
  sub_AB94A0(v53);
  if (v45)
  {
    v35 = v47;
    if (v45 != 1)
    {
      v35 = v48;
    }

    v36._countAndFlagsBits = 0x676F6C61746163;
    if (v35)
    {
      v36._countAndFlagsBits = 0x6C6169636F73;
      v37 = 0xE600000000000000;
    }

    else
    {
      v37 = 0xE700000000000000;
    }
  }

  else
  {
    v37 = 0xE700000000000000;
    v36._countAndFlagsBits = 0x676F6C61746163;
  }

  v36._object = v37;
  sub_AB94A0(v36);

  v54._countAndFlagsBits = 47;
  v54._object = 0xE100000000000000;
  sub_AB94A0(v54);
  v55._countAndFlagsBits = v41;
  v55._object = v43;
  sub_AB94A0(v55);
  sub_AB3180();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DF2AE0, &qword_AFC930);

    goto LABEL_12;
  }

  (*(v12 + 32))(v15, v10, v11);
  v38._countAndFlagsBits = sub_1BEF9C(a3, v47, v48);
  if (v38._object)
  {
    sub_AB3100(v38);
  }

  v39 = sub_1BF074(a1, v46, a3, v47, v48);
  URL.parametrize(_:)(v39, a6);
  (*(v12 + 8))(v15, v11);
  (*(v12 + 56))(a6, 0, 1, v11);

  return result;
}

uint64_t sub_1BEF9C(uint64_t a1, char a2, unsigned __int8 a3)
{
  if (!(a3 >> 6))
  {
    return 0xD000000000000012;
  }

  if (a3 >> 6 != 1)
  {
    return 0x686372616573;
  }

  if (a2)
  {

    return 0x702D6C6169636F73;
  }

  v4 = sub_ABB3C0();

  if (v4)
  {
    return 0x702D6C6169636F73;
  }

  return 0;
}

uint64_t sub_1BF074(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_96B2C(&off_CF0A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730, &qword_AFCCA0);
  swift_arrayDestroy();
  v189 = v9;
  sub_1C0B50(a1, &v189, a3, a4, a5);
  v175 = a5;
  v174 = a4;
  v176 = a3;
  v172 = a5 >> 6;
  if (!(a5 >> 6))
  {
    v180 = a1;
    sub_1D2B24(a3, a4, a5);
    v16 = v189;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_92078(a3, a4, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v189 = v16;
    *&v187 = _swiftEmptyArrayStorage;
    sub_6D5A0(0, 2, 0);
    v15 = 0x6C75736552706F74;
    v32 = _swiftEmptyArrayStorage;
    v10 = 0x736D726574;
    a5 = 0xEA00000000007374;
    a1 = 0xE500000000000000;
    a3 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    v33 = v17 >> 1;
    v14 = a3 + 1;
    if (v17 >> 1 > a3)
    {
LABEL_30:
      v32[2] = v14;
      v34 = &v32[2 * a3];
      v34[4] = v10;
      v34[5] = a1;
      v35 = v15;
      *&v187 = v32;
      if (v33 <= v14)
      {
        sub_6D5A0((v17 > 1), a3 + 2, 1);
        v32 = v187;
      }

      v32[2] = a3 + 2;
      v36 = &v32[2 * v14];
      v36[4] = v35;
      v36[5] = a5;
      *&v187 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
      sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
      v37 = sub_AB9140();
      v39 = v38;

      v40 = swift_isUniquelyReferenced_nonNull_native();
      *&v187 = v16;
      sub_92078(v37, v39, 0x73646E696BLL, 0xE500000000000000, v40);
      v189 = v187;
LABEL_115:
      a5 = v175;
      a4 = v174;
      a3 = v176;
LABEL_116:
      a1 = v180;
      goto LABEL_117;
    }

LABEL_220:
    v168 = v15;
    sub_6D5A0((v17 > 1), v14, 1);
    v15 = v168;
    v32 = v187;
    v17 = *(v187 + 24);
    v33 = v17 >> 1;
    goto LABEL_30;
  }

  if (a5 >> 6 == 1)
  {
    v180 = a1;
    if ((a4 & 1) == 0)
    {
      v177 = sub_98C80(_swiftEmptyArrayStorage);
      v169 = sub_1C1344(a3, a4, a5);
      v16 = a3 + 56;
      v43 = 1 << *(a3 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(a3 + 56);
      v14 = (v43 + 63) >> 6;

      v10 = 0;
LABEL_39:
      if (v45)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_212;
        }

        if (v17 >= v14)
        {
          break;
        }

        v45 = *(v16 + 8 * v17);
        ++v10;
        if (v45)
        {
          v10 = v17;
LABEL_44:
          v46 = __clz(__rbit64(v45));
          v45 &= v45 - 1;
          v47 = *(v176 + 48) + ((v10 << 10) | (16 * v46));
          v48 = *v47;
          v182 = *(v47 + 8);
          switch(*(v47 + 8))
          {
            case 1:
              v49 = &qword_DE8E90;
              v50 = MPModelAlbum_ptr;
              break;
            case 2:
              v49 = &qword_DE8E78;
              v50 = MPModelArtist_ptr;
              break;
            case 4:
            case 9:
            case 0xC:
              v49 = &unk_DE8EB0;
              v50 = MPModelSong_ptr;
              break;
            case 5:
              v49 = &unk_E087D0;
              v50 = MPModelRadioStation_ptr;
              break;
            case 8:
            case 0xA:
              v49 = &unk_DE9C00;
              v50 = MPModelTVEpisode_ptr;
              break;
            case 0xB:
              v49 = &unk_DE8EC0;
              v50 = MPModelTVShow_ptr;
              break;
            case 0xD:
              v49 = &unk_DF1280;
              v50 = MPModelRecordLabel_ptr;
              break;
            case 0xE:
              v49 = &qword_DED7C0;
              v50 = MPModelSocialPerson_ptr;
              break;
            case 0xF:
              v49 = &unk_DE8EA0;
              v50 = MPModelPlaylist_ptr;
              break;
            default:
              v49 = &unk_E04570;
              v50 = MPModelCurator_ptr;
              break;
          }

          v51 = sub_13C80(0, v49, v50);
          sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
          v52 = v48;
          a5 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
          sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
          a3 = v52;
          a1 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v51, a5, 0, a3);
          v54 = v53;

          if (!v54)
          {
            goto LABEL_38;
          }

          a5 = v182;
          if ((sub_4734C0(v182, v169) & 1) == 0)
          {

LABEL_38:

            goto LABEL_39;
          }

          if (*(v177 + 16) && (v55 = sub_2EC880(v182), (v56 & 1) != 0))
          {
            v57 = *(*(v177 + 56) + 8 * v55);
          }

          else
          {
            v57 = _swiftEmptyArrayStorage;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_6B0F0(0, *(v57 + 2) + 1, 1, v57);
          }

          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v171 = v57;
          if (v59 >= v58 >> 1)
          {
            v171 = sub_6B0F0((v58 > 1), v59 + 1, 1, v57);
          }

          *(v171 + 2) = v59 + 1;
          v60 = &v171[16 * v59];
          *(v60 + 4) = a1;
          *(v60 + 5) = v54;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          *&v187 = v177;
          v62 = sub_2EC880(v182);
          v64 = *(v177 + 16);
          v65 = (v63 & 1) == 0;
          v66 = __OFADD__(v64, v65);
          v67 = v64 + v65;
          if (v66)
          {
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            sub_ABB4C0();
            __break(1u);
LABEL_224:
            sub_ABB4C0();
            __break(1u);
            JUMPOUT(0x1C0A10);
          }

          a1 = v63;
          if (*(v177 + 24) >= v67)
          {
            if ((v61 & 1) == 0)
            {
              v72 = v62;
              sub_333340();
              v62 = v72;
            }
          }

          else
          {
            sub_32B408(v67, v61);
            v62 = sub_2EC880(v182);
            if ((a1 & 1) != (v68 & 1))
            {
              goto LABEL_224;
            }
          }

          v69 = v187;
          v177 = v187;
          if (a1)
          {
            *(*(v187 + 56) + 8 * v62) = v171;
          }

          else
          {
            *(v187 + 8 * (v62 >> 6) + 64) |= 1 << v62;
            *(v69[6] + v62) = v182;
            *(v69[7] + 8 * v62) = v171;

            v70 = v69[2];
            v66 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v66)
            {
              goto LABEL_222;
            }

            v69[2] = v71;
          }

          goto LABEL_39;
        }
      }

      a3 = 0;
      v16 = v177;
      v78 = v177 + 64;
      v79 = 1 << *(v177 + 32);
      v80 = -1;
      v15 = -1 << v79;
      if (v79 < 64)
      {
        v80 = ~v15;
      }

      v14 = v80 & *(v177 + 64);
      a5 = v189;
      v81 = (v79 + 63) >> 6;
      v170 = v81;
LABEL_81:
      if (v14)
      {
        goto LABEL_86;
      }

      while (1)
      {
        v17 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_213;
        }

        if (v17 >= v81)
        {
          break;
        }

        v14 = *(v78 + 8 * v17);
        ++a3;
        if (v14)
        {
          a3 = v17;
LABEL_86:
          v83 = *(*(v16 + 48) + (__clz(__rbit64(v14)) | (a3 << 6)));
          v14 &= v14 - 1;
          *&v187 = 1534289001;
          *(&v187 + 1) = 0xE400000000000000;
          v84 = 0xE800000000000000;
          v85 = 0x73726F7461727563;
          switch(v83)
          {
            case 1:
              v84 = 0xE600000000000000;
              v85 = 0x736D75626C61;
              break;
            case 2:
              v84 = 0xE700000000000000;
              v85 = 0x73747369747261;
              break;
            case 3:
              break;
            case 4:
              v84 = 0xE500000000000000;
              v85 = 0x73676E6F73;
              break;
            case 5:
              v85 = 0x736E6F6974617473;
              break;
            case 6:
              v85 = 0x75632D656C707061;
              v84 = 0xEE0073726F746172;
              break;
            case 7:
              v85 = 0x6169726F74696465;
              v84 = 0xEF736D6574692D6CLL;
              break;
            case 8:
              v85 = 0x6F6D2D636973756DLL;
              v86 = 1936025974;
              goto LABEL_102;
            case 9:
              v85 = 0x69762D636973756DLL;
              v86 = 1936680292;
LABEL_102:
              v84 = (v86 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
              break;
            case 10:
              v85 = 0x6F736970652D7674;
              v84 = 0xEB00000000736564;
              break;
            case 11:
              v85 = 0x73776F68732D7674;
              break;
            case 12:
              v85 = 0x646564616F6C7075;
              v84 = 0xEF736F656469762DLL;
              break;
            case 13:
              v85 = 0x6C2D64726F636572;
              v84 = 0xED0000736C656261;
              break;
            case 14:
              v85 = 0x702D6C6169636F73;
              v84 = 0xEF73656C69666F72;
              break;
            case 15:
              v84 = 0xE900000000000073;
              v85 = 0x7473696C79616C70;
              break;
            default:
              v84 = 0xEA00000000007365;
              v85 = 0x6974697669746361;
              break;
          }

          v190._countAndFlagsBits = v85;
          v190._object = v84;
          sub_AB94A0(v190);

          v191._countAndFlagsBits = 93;
          v191._object = 0xE100000000000000;
          sub_AB94A0(v191);
          v87 = *(&v187 + 1);
          v16 = v187;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
          sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
          v10 = sub_AB9140();
          v89 = v88;
          v90 = a5;
          a5 = swift_isUniquelyReferenced_nonNull_native();
          *&v187 = v90;
          a1 = sub_2EBF88(v16, *(&v187 + 1));
          v17 = *(v90 + 16);
          v92 = (v91 & 1) == 0;
          v93 = v17 + v92;
          if (__OFADD__(v17, v92))
          {
            goto LABEL_218;
          }

          v94 = v91;
          if (*(v90 + 24) >= v93)
          {
            if (a5)
            {
              if ((v91 & 1) == 0)
              {
                goto LABEL_110;
              }
            }

            else
            {
              sub_330E18();
              if ((v94 & 1) == 0)
              {
                goto LABEL_110;
              }
            }

LABEL_79:

            a5 = v187;
            v82 = (*(v187 + 56) + 16 * a1);
            *v82 = v10;
            v82[1] = v89;

            goto LABEL_80;
          }

          sub_32714C(v93, a5);
          v95 = sub_2EBF88(v16, *(&v187 + 1));
          if ((v94 & 1) != (v96 & 1))
          {
            goto LABEL_223;
          }

          a1 = v95;
          if (v94)
          {
            goto LABEL_79;
          }

LABEL_110:
          a5 = v187;
          *(v187 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          v97 = (*(a5 + 48) + 16 * a1);
          *v97 = v16;
          v97[1] = v87;
          v98 = (*(a5 + 56) + 16 * a1);
          *v98 = v10;
          v98[1] = v89;
          v99 = *(a5 + 16);
          v66 = __OFADD__(v99, 1);
          v17 = v99 + 1;
          if (v66)
          {
            goto LABEL_219;
          }

          *(a5 + 16) = v17;
LABEL_80:

          v189 = a5;
          v16 = v177;
          v81 = v170;
          v78 = v177 + 64;
          goto LABEL_81;
        }
      }

      goto LABEL_115;
    }

    v10 = a3 + 56;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 56);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    v181 = _swiftEmptyArrayStorage;
    while (1)
    {
      v17 = v16;
      if (!v13)
      {
        break;
      }

LABEL_11:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = *(v176 + 48) + ((v16 << 10) | (16 * v18));
      v20 = *v19;
      switch(*(v19 + 8))
      {
        case 1:
          v21 = &qword_DE8E90;
          v22 = MPModelAlbum_ptr;
          break;
        case 2:
          v21 = &qword_DE8E78;
          v22 = MPModelArtist_ptr;
          break;
        case 4:
        case 9:
        case 0xC:
          v21 = &unk_DE8EB0;
          v22 = MPModelSong_ptr;
          break;
        case 5:
          v21 = &unk_E087D0;
          v22 = MPModelRadioStation_ptr;
          break;
        case 8:
        case 0xA:
          v21 = &unk_DE9C00;
          v22 = MPModelTVEpisode_ptr;
          break;
        case 0xB:
          v21 = &unk_DE8EC0;
          v22 = MPModelTVShow_ptr;
          break;
        case 0xD:
          v21 = &unk_DF1280;
          v22 = MPModelRecordLabel_ptr;
          break;
        case 0xE:
          v21 = &qword_DED7C0;
          v22 = MPModelSocialPerson_ptr;
          break;
        case 0xF:
          v21 = &unk_DE8EA0;
          v22 = MPModelPlaylist_ptr;
          break;
        default:
          v21 = &unk_E04570;
          v22 = MPModelCurator_ptr;
          break;
      }

      v23 = sub_13C80(0, v21, v22);
      a1 = sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
      v24 = v20;
      a5 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v25 = v24;
      v26 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v23, a5, 0, v25);
      a3 = v27;

      if (a3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_6B0F0(0, *(v181 + 2) + 1, 1, v181);
        }

        v29 = *(v181 + 2);
        v28 = *(v181 + 3);
        a1 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v181 = sub_6B0F0((v28 > 1), v29 + 1, 1, v181);
        }

        *(v181 + 2) = a1;
        v30 = &v181[16 * v29];
        *(v30 + 4) = v26;
        *(v30 + 5) = a3;
      }

      else
      {
      }
    }

    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        a3 = v176;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
        sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
        v73 = sub_AB9140();
        v75 = v74;

        v76 = v189;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        *&v187 = v76;
        sub_92078(v73, v75, 7562345, 0xE300000000000000, v77);
        v189 = v76;
        a5 = v175;
        a4 = v174;
        goto LABEL_116;
      }

      v13 = *(v10 + 8 * v16);
      ++v17;
      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  sub_1D2B24(a3, a4, a5);
  v41 = v189;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *&v187 = v41;
  sub_92078(a3, a4, 1836213620, 0xE400000000000000, v42);
  v189 = v41;
LABEL_117:
  ICURLBag.subscript.getter(&v187);
  if (v188)
  {
    if (swift_dynamicCast())
    {
      a1 = v186;
      v100 = v189;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v187 = v100;
      sub_92078(v185, v186, 108, 0xE100000000000000, v101);
      v189 = v187;
    }
  }

  else
  {
    sub_12E1C(&v187, &unk_DE8E40, &unk_AF8050);
  }

  v102 = sub_1C1524(a3, a4, a5);
  if (v103)
  {
    sub_2E4D4C(v102, v103, 0x7365707974, 0xE500000000000000);
  }

  v104 = sub_1C1644(a3, a4, a5);
  if (v105)
  {
    sub_2E4D4C(v104, v105, 1752459639, 0xE400000000000000);
  }

  v106 = sub_1C19C0(a3, a4, a5);
  v17 = 0;
  v107 = v106 + 64;
  v178 = v106 + 64;
  v180 = v106;
  v108 = 1 << *(v106 + 32);
  v15 = -1;
  if (v108 < 64)
  {
    v15 = ~(-1 << v108);
  }

  v16 = v15 & *(v106 + 64);
  v109 = v189;
  v10 = (v108 + 63) >> 6;
  while (v16)
  {
    v14 = v17;
LABEL_135:
    v112 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v113 = v112 | (v14 << 6);
    v114 = *(*(v180 + 48) + v113);
    v115 = (*(v180 + 56) + 16 * v113);
    v116 = v115[1];
    v183 = *v115;
    v117 = 0xE700000000000000;
    *&v187 = 0x5B646E65747865;
    *(&v187 + 1) = 0xE700000000000000;
    a1 = 0x73747369747261;
    switch(v114)
    {
      case 1:
        v117 = 0xE600000000000000;
        a1 = 0x736D75626C61;
        break;
      case 2:
        break;
      case 3:
        v117 = 0xE800000000000000;
        a1 = 0x73726F7461727563;
        break;
      case 4:
        v117 = 0xE500000000000000;
        a1 = 0x73676E6F73;
        break;
      case 5:
        v117 = 0xE800000000000000;
        a1 = 0x736E6F6974617473;
        break;
      case 6:
        a1 = 0x75632D656C707061;
        v117 = 0xEE0073726F746172;
        break;
      case 7:
        a1 = 0x6169726F74696465;
        v117 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        a1 = 0x6F6D2D636973756DLL;
        v118 = 1936025974;
        goto LABEL_151;
      case 9:
        a1 = 0x69762D636973756DLL;
        v118 = 1936680292;
LABEL_151:
        v117 = (v118 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        break;
      case 10:
        a1 = 0x6F736970652D7674;
        v117 = 0xEB00000000736564;
        break;
      case 11:
        v117 = 0xE800000000000000;
        a1 = 0x73776F68732D7674;
        break;
      case 12:
        a1 = 0x646564616F6C7075;
        v117 = 0xEF736F656469762DLL;
        break;
      case 13:
        a1 = 0x6C2D64726F636572;
        v117 = 0xED0000736C656261;
        break;
      case 14:
        a1 = 0x702D6C6169636F73;
        v117 = 0xEF73656C69666F72;
        break;
      case 15:
        v117 = 0xE900000000000073;
        a1 = 0x7473696C79616C70;
        break;
      default:
        v117 = 0xEA00000000007365;
        a1 = 0x6974697669746361;
        break;
    }

    a5 = v116;

    v192._countAndFlagsBits = a1;
    v192._object = v117;
    sub_AB94A0(v192);

    v193._countAndFlagsBits = 93;
    v193._object = 0xE100000000000000;
    sub_AB94A0(v193);
    v119 = *(&v187 + 1);
    a3 = v187;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    *&v187 = v109;
    v121 = sub_2EBF88(a3, v119);
    v123 = v109[2];
    v124 = (v122 & 1) == 0;
    v66 = __OFADD__(v123, v124);
    v17 = v123 + v124;
    if (v66)
    {
      goto LABEL_214;
    }

    a1 = v122;
    if (v109[3] < v17)
    {
      sub_32714C(v17, v120);
      v121 = sub_2EBF88(a3, v119);
      if ((a1 & 1) != (v125 & 1))
      {
        goto LABEL_223;
      }

LABEL_157:
      if (a1)
      {
        goto LABEL_128;
      }

      goto LABEL_158;
    }

    if (v120)
    {
      goto LABEL_157;
    }

    v129 = v121;
    sub_330E18();
    v121 = v129;
    if (a1)
    {
LABEL_128:
      v110 = v121;

      v109 = v187;
      v111 = (*(v187 + 56) + 16 * v110);
      *v111 = v183;
      v111[1] = a5;

      goto LABEL_129;
    }

LABEL_158:
    v109 = v187;
    *(v187 + 8 * (v121 >> 6) + 64) |= 1 << v121;
    v126 = (v109[6] + 16 * v121);
    *v126 = a3;
    v126[1] = v119;
    v127 = (v109[7] + 16 * v121);
    *v127 = v183;
    v127[1] = a5;
    v128 = v109[2];
    v66 = __OFADD__(v128, 1);
    v17 = v128 + 1;
    if (v66)
    {
      goto LABEL_216;
    }

    v109[2] = v17;
LABEL_129:
    v17 = v14;
    v107 = v178;
  }

  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    if (v14 >= v10)
    {
      break;
    }

    v16 = *(v107 + 8 * v14);
    ++v17;
    if (v16)
    {
      goto LABEL_135;
    }
  }

  v189 = v109;

  v130 = sub_1C17A8(v176, v174, v175);
  v17 = 0;
  a3 = v130 + 64;
  v131 = 1 << *(v130 + 32);
  v15 = -1;
  if (v131 < 64)
  {
    v15 = ~(-1 << v131);
  }

  v16 = v15 & *(v130 + 64);
  v132 = (v131 + 63) >> 6;
  v179 = v132;
  v180 = v130;
  while (2)
  {
    if (v16)
    {
      v135 = v17;
LABEL_172:
      v136 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v137 = v136 | (v135 << 6);
      v138 = *(*(v180 + 48) + v137);
      v139 = (*(v180 + 56) + 16 * v137);
      v141 = *v139;
      v140 = v139[1];
      v142 = 0xE700000000000000;
      *&v187 = 0x5B6574616C6572;
      *(&v187 + 1) = 0xE700000000000000;
      v184 = v141;
      a1 = 0x73747369747261;
      switch(v138)
      {
        case 1:
          v142 = 0xE600000000000000;
          a1 = 0x736D75626C61;
          break;
        case 2:
          break;
        case 3:
          v142 = 0xE800000000000000;
          a1 = 0x73726F7461727563;
          break;
        case 4:
          v142 = 0xE500000000000000;
          a1 = 0x73676E6F73;
          break;
        case 5:
          v142 = 0xE800000000000000;
          a1 = 0x736E6F6974617473;
          break;
        case 6:
          a1 = 0x75632D656C707061;
          v142 = 0xEE0073726F746172;
          break;
        case 7:
          a1 = 0x6169726F74696465;
          v142 = 0xEF736D6574692D6CLL;
          break;
        case 8:
          a1 = 0x6F6D2D636973756DLL;
          v143 = 1936025974;
          goto LABEL_188;
        case 9:
          a1 = 0x69762D636973756DLL;
          v143 = 1936680292;
LABEL_188:
          v142 = (v143 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
          break;
        case 10:
          a1 = 0x6F736970652D7674;
          v142 = 0xEB00000000736564;
          break;
        case 11:
          v142 = 0xE800000000000000;
          a1 = 0x73776F68732D7674;
          break;
        case 12:
          a1 = 0x646564616F6C7075;
          v142 = 0xEF736F656469762DLL;
          break;
        case 13:
          a1 = 0x6C2D64726F636572;
          v142 = 0xED0000736C656261;
          break;
        case 14:
          a1 = 0x702D6C6169636F73;
          v142 = 0xEF73656C69666F72;
          break;
        case 15:
          v142 = 0xE900000000000073;
          a1 = 0x7473696C79616C70;
          break;
        default:
          v142 = 0xEA00000000007365;
          a1 = 0x6974697669746361;
          break;
      }

      v10 = v140;

      v194._countAndFlagsBits = a1;
      v194._object = v142;
      sub_AB94A0(v194);

      v195._countAndFlagsBits = 93;
      v195._object = 0xE100000000000000;
      sub_AB94A0(v195);
      a5 = *(&v187 + 1);
      v14 = v187;
      v144 = swift_isUniquelyReferenced_nonNull_native();
      *&v187 = v109;
      v145 = sub_2EBF88(v14, a5);
      v147 = v109[2];
      v148 = (v146 & 1) == 0;
      v66 = __OFADD__(v147, v148);
      v17 = v147 + v148;
      if (v66)
      {
        goto LABEL_215;
      }

      a1 = v146;
      if (v109[3] >= v17)
      {
        if (v144)
        {
          goto LABEL_194;
        }

        v154 = v145;
        sub_330E18();
        v145 = v154;
        v150 = v184;
        if (a1)
        {
          goto LABEL_165;
        }

LABEL_195:
        v109 = v187;
        *(v187 + 8 * (v145 >> 6) + 64) |= 1 << v145;
        v151 = (v109[6] + 16 * v145);
        *v151 = v14;
        v151[1] = a5;
        v152 = (v109[7] + 16 * v145);
        *v152 = v150;
        v152[1] = v10;
        v153 = v109[2];
        v66 = __OFADD__(v153, 1);
        v17 = v153 + 1;
        if (v66)
        {
          goto LABEL_217;
        }

        v109[2] = v17;
      }

      else
      {
        sub_32714C(v17, v144);
        v145 = sub_2EBF88(v14, a5);
        if ((a1 & 1) != (v149 & 1))
        {
          goto LABEL_223;
        }

LABEL_194:
        v150 = v184;
        if ((a1 & 1) == 0)
        {
          goto LABEL_195;
        }

LABEL_165:
        v133 = v145;

        v109 = v187;
        v134 = (*(v187 + 56) + 16 * v133);
        *v134 = v150;
        v134[1] = v10;
      }

      v17 = v135;
      v132 = v179;
      continue;
    }

    break;
  }

  while (1)
  {
    v135 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_210;
    }

    if (v135 >= v132)
    {
      break;
    }

    v16 = *(a3 + 8 * v135);
    ++v17;
    if (v16)
    {
      goto LABEL_172;
    }
  }

  v189 = v109;

  if (v172 == 2)
  {
    if (v175)
    {
      v155 = sub_ABB3C0();

      if ((v155 & 1) == 0)
      {
        goto LABEL_205;
      }
    }

    else
    {
    }

    *&v187 = 50;
    v156 = sub_ABB330();
    v158 = v157;
    v159 = swift_isUniquelyReferenced_nonNull_native();
    *&v187 = v109;
    sub_92078(v156, v158, 0x694C657372617073, 0xEB0000000074696DLL, v159);
    v109 = v187;
    v189 = v187;
  }

LABEL_205:
  v160 = [a2 deviceInfo];
  v161 = [v160 isIPad];

  if (v161)
  {
    v162 = 2;
  }

  else
  {
    v162 = 3;
  }

  v163 = sub_1BE758(v162);
  v165 = v164;
  v166 = swift_isUniquelyReferenced_nonNull_native();
  *&v187 = v109;
  sub_92078(v163, v165, 0x6D726F6674616C70, 0xE800000000000000, v166);
  return v187;
}

void sub_1C0B50(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = [a1 dictionaryForBagKey:{ICURLBagKeyMusicCommon, a4}];
  if (!v7 || (v8 = v7, v9 = sub_AB8FF0(), v8, sub_16A8C4(v9), v11 = v10, , !v11))
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    goto LABEL_11;
  }

  if (!*(v11 + 16) || (v12 = sub_2EBF88(0x686372616573, 0xE600000000000000), (v13 & 1) == 0))
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;

    goto LABEL_11;
  }

  sub_9ACA0(*(v11 + 56) + 40 * v12, &v65);

  if (!*(&v66 + 1))
  {
LABEL_11:
    sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
    v14 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000, &qword_B05300);
  if (swift_dynamicCast())
  {
    v14 = v64;
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
  v15 = a5 >> 6;
  if (v15 == 2)
  {
    if (a5)
    {
      if (v14)
      {
        if (*(v14 + 16) && (v16 = sub_2EBF88(0xD000000000000012, 0x8000000000B562B0), (v17 & 1) != 0))
        {
          sub_9ACA0(*(v14 + 56) + 40 * v16, &v65);
        }

        else
        {
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
        }

        if (*(&v66 + 1))
        {
          if (swift_dynamicCast())
          {
            v47 = v64;
LABEL_81:
            *&v65 = v47;
            v59 = sub_ABB330();
            v61 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v65 = *a2;
            sub_92078(v59, v61, 0x74696D696CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
            *a2 = v65;
            return;
          }

LABEL_80:
          v47 = 25;
          goto LABEL_81;
        }
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
      goto LABEL_80;
    }

    if (!v14)
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
      v47 = 0;
      v67 = 0;
      v48 = 1;
      v65 = 0u;
      v66 = 0u;
      goto LABEL_77;
    }

    if (*(v14 + 16))
    {

      v45 = sub_2EBF88(0x4C73746C75736572, 0xEC00000074696D69);
      if (v46)
      {
        sub_9ACA0(*(v14 + 56) + 40 * v45, &v65);
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      if (*(&v66 + 1))
      {
        v49 = swift_dynamicCast();
        if (v49)
        {
          v47 = v64;
        }

        else
        {
          v47 = 0;
        }

        v48 = v49 ^ 1;
LABEL_59:
        if (*(v14 + 16))
        {

          v50 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B562F0);
          if (v51)
          {
            sub_9ACA0(*(v14 + 56) + 40 * v50, &v65);
          }

          else
          {
            v67 = 0;
            v65 = 0u;
            v66 = 0u;
          }

          if (*(&v66 + 1))
          {
            if (swift_dynamicCast() && (v64 & 1) == 0)
            {

              if ((v48 & 1) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_80;
            }

LABEL_70:
            if (*(v14 + 16) && (v52 = sub_2EBF88(0xD000000000000012, 0x8000000000B562D0), (v53 & 1) != 0))
            {
              sub_9ACA0(*(v14 + 56) + 40 * v52, &v65);
            }

            else
            {
              v67 = 0;
              v65 = 0u;
              v66 = 0u;
            }

            if (*(&v66 + 1))
            {
              if (swift_dynamicCast())
              {
                v54 = v64;
                goto LABEL_79;
              }

LABEL_78:
              v54 = 1;
LABEL_79:
              *&v65 = v54;
              v55 = sub_ABB330();
              v57 = v56;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              *&v65 = *a2;
              sub_92078(v55, v57, 0x6F43657372617073, 0xEB00000000746E75, v58);
              *a2 = v65;
              if (!v48)
              {
                goto LABEL_81;
              }

              goto LABEL_80;
            }

LABEL_77:
            sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
            goto LABEL_78;
          }
        }

        else
        {
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
        }

        sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
        goto LABEL_70;
      }
    }

    else
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
    v47 = 0;
    v48 = 1;
    goto LABEL_59;
  }

  if (v15 == 1)
  {
LABEL_14:

    return;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v63 = v18;
    v21 = *(&off_CF0980 + v19 + 32);
    strcpy(&v65, "limit[results:");
    HIBYTE(v65) = -18;
    v22._countAndFlagsBits = v21 ? 0x6C75736552706F74 : 0x736D726574;
    v23 = (v21 ? 0xEA00000000007374 : 0xE500000000000000);
    v22._object = v23;
    sub_AB94A0(v22);

    v68._countAndFlagsBits = 93;
    v68._object = 0xE100000000000000;
    sub_AB94A0(v68);
    v24 = v65;
    v25 = v14;
    *&v65 = sub_1BE878(v14, v21);
    v26 = sub_ABB330();
    v28 = v27;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = a2;
    *&v65 = *a2;
    v31 = v65;
    v33 = sub_2EBF88(v24, *(&v24 + 1));
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if (v29)
      {
        v40 = v65;
        if (v32)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_330E18();
        v40 = v65;
        if (v37)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_32714C(v36, v29);
      v38 = sub_2EBF88(v24, *(&v24 + 1));
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_84;
      }

      v33 = v38;
      v40 = v65;
      if (v37)
      {
LABEL_21:
        v20 = (v40[7] + 16 * v33);
        *v20 = v26;
        v20[1] = v28;

        goto LABEL_22;
      }
    }

    v40[(v33 >> 6) + 8] |= 1 << v33;
    *(v40[6] + 16 * v33) = v24;
    v41 = (v40[7] + 16 * v33);
    *v41 = v26;
    v41[1] = v28;
    v42 = v40[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_83;
    }

    v40[2] = v44;
LABEL_22:
    a2 = v30;
    *v30 = v40;
    v18 = 1;
    v19 = 1;
    v14 = v25;
    if (v63)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  sub_ABB4C0();
  __break(1u);
}

void *sub_1C1344(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = &_swiftEmptySetSingleton;
  if (!(a3 >> 6))
  {
    goto LABEL_8;
  }

  if (a3 >> 6 != 1)
  {
    if (a3)
    {
      if (qword_DE6968 != -1)
      {
        swift_once();
      }

      v3 = qword_E71180;
LABEL_11:
      v10 = v3;

      goto LABEL_12;
    }

LABEL_8:
    if (qword_DE6960 != -1)
    {
      swift_once();
    }

    v3 = qword_E71178;
    goto LABEL_11;
  }

  sub_1B5DCC(a1);
  v3 = &_swiftEmptySetSingleton;
LABEL_12:
  v4 = [objc_opt_self() sharedRestrictionsMonitor];
  v5 = [v4 allowsMusicVideos];

  if ((v5 & 1) == 0 && *(v3 + 2))
  {
    sub_2EF560(9);
    sub_2EF560(12);
    v3 = v10;
  }

  static ApplicationCapabilities.shared.getter(v11);
  v6 = v11[4];

  sub_70C54(v11);
  v7 = sub_472A84(4, v6);

  if ((v7 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F80, &unk_B027E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 5;
    if (*(v3 + 2))
    {
      sub_2EF560(5);

      return v10;
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1C1524(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0;
  if ((a3 & 0xC0) != 0x40)
  {
    v5 = sub_1C1344(a1, a2, a3);
    v6 = sub_1B5174(v5);

    v8 = v6;

    sub_1CBBDC(&v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
    sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
    v7 = sub_AB9140();

    return v7;
  }

  return result;
}

uint64_t sub_1C1644(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) != 0x80)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  strcpy((v4 + 32), "serverBubbles");
  *(v4 + 46) = -4864;
  if ((a3 & 1) == 0)
  {
    v5 = sub_6B0F0(&dword_0 + 1, 2, 1, v4);
    *(v5 + 2) = 2;
    *(v5 + 6) = 0x676948636972796CLL;
    *(v5 + 7) = 0xEF73746867696C68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
  sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
  v6 = sub_AB9140();

  return v6;
}

unint64_t sub_1C17A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_98B88(_swiftEmptyArrayStorage);
  v7 = sub_1C1344(a1, a2, a3);
  if (sub_4734C0(1, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0x73747369747261, 0xE700000000000000, 1, isUniquelyReferenced_nonNull_native);
  }

  if (sub_4734C0(9, v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
    sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
    v9 = sub_AB9140();
    v11 = v10;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(v9, v11, 9, v12);
  }

  if (sub_4734C0(4, v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
    sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
    v13 = sub_AB9140();
    v15 = v14;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(v13, v15, 4, v16);
  }

  return v6;
}

unint64_t sub_1C19C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_98B88(_swiftEmptyArrayStorage);
  v7 = sub_1C1344(a1, a2, a3);
  if (sub_4734C0(1, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0x6169726F74696465, 0xEE006F656469566CLL, 1, isUniquelyReferenced_nonNull_native);
  }

  if (sub_4734C0(15, v7))
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0x6169726F74696465, 0xEE006F656469566CLL, 15, v9);
  }

  if (sub_4734C0(4, v7))
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0xD000000000000011, 0x8000000000B56290, 4, v10);
  }

  return v6;
}

void sub_1C1B14(void *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v40 = a7;
  v38 = a5;
  v39 = a6;
  v36 = a1;
  v10 = sub_AB2A90();
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin();
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v13 = &v33 - v12;
  v14 = sub_AB31C0();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v33 - v18;
  UnfairLock.locked<A>(_:)(sub_1D2C30);
  if (v41)
  {
    v41 = 1;
    sub_1D2C90();
    v42 = 0u;
    v43 = 0u;
    v20 = swift_allocError();
    *v21 = 1;
    a3(&v41, v20);
  }

  else
  {
    v33 = a4;
    v22 = *(a2 + 32);
    v23 = sub_1BE990(v36, v22, v38, v39, v40, v13);
    if ((*(v15 + 48))(v13, 1, v14, v23) == 1)
    {
      sub_12E1C(v13, &unk_DF2AE0, &qword_AFC930);
    }

    else
    {
      (*(v15 + 32))(v19, v13, v14);
      (*(v15 + 16))(v17, v19, v14);
      sub_AB2A50();
      sub_AB2A20();
      v24 = objc_allocWithZone(ICMusicKitURLRequest);
      v25 = sub_AB2A30();
      v26 = [v24 initWithURLRequest:v25 requestContext:v22];

      sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
      v27 = static ICURLSessionManager.musicSession.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = a3;
      v30 = v38;
      v29 = v39;
      *(v28 + 24) = v33;
      *(v28 + 32) = v30;
      *(v28 + 40) = v29;
      v31 = v40;
      *(v28 + 48) = v40;

      sub_1D2B24(v30, v29, v31);
      ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v26, sub_1D2C80, v28);
      (*(v34 + 8))(v37, v35);
      (*(v15 + 8))(v19, v14);

      v32 = *(a2 + 24);
      *(a2 + 24) = v26;
    }
  }
}

void sub_1C1F30(void *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v8 = a7;
    v11 = a1;
    sub_1D2B24(a5, a6, v8);
    sub_1CE32C(v11, a5, a6, v8, v19);
    v12 = *&v19[16];
    v13 = v20;
    v14 = v21;

    v25 = *v19;
    v23 = *&v19[8];
    v24 = v20;
    v22 = v14;
    *v26 = *v19;
    *&v26[16] = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    sub_15F84(&v25, v18, &qword_DF4F70, &qword_B027D0);
    sub_1D2CE4(&v23, v18);
    sub_15F84(&v22, v18, &qword_DF4F78, &qword_B027D8);
    a3(v26, 0);
    sub_12E1C(&v25, &qword_DF4F70, &qword_B027D0);
    sub_1D2D1C(&v23);
    sub_12E1C(&v22, &qword_DF4F78, &qword_B027D8);
    sub_12E1C(&v25, &qword_DF4F70, &qword_B027D0);
    sub_1D2D1C(&v23);
    sub_12E1C(&v22, &qword_DF4F78, &qword_B027D8);
  }

  else
  {
    *v26 = 1;
    sub_1D2C90();
    *&v26[8] = 0u;
    v27 = 0u;
    v16 = swift_allocError();
    *v17 = a2;
    swift_errorRetain();
    a3(v26, v16);
  }
}

void sub_1C212C(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
      v3 = v2;
      v4 = static ICURLSessionManager.musicSession.getter();
      [v4 cancelRequest:v3];
    }
  }
}

uint64_t sub_1C21B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2220(uint64_t a1, int a2)
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

uint64_t sub_1C2268(uint64_t result, int a2, int a3)
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

unint64_t sub_1C22BC()
{
  result = qword_DF4CE0;
  if (!qword_DF4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4CE0);
  }

  return result;
}

unint64_t sub_1C2314()
{
  result = qword_DF4CE8;
  if (!qword_DF4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4CE8);
  }

  return result;
}

double sub_1C23C4@<D0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v141 = a1;
  v140 = a3;
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v134 = *(v9 - 8);
  __chkstk_darwin();
  v133 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_AB7C20();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F50, &qword_B027C8);
  __chkstk_darwin();
  v142 = &v126 - v12;
  v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0) - 8);
  __chkstk_darwin();
  v145 = (&v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v15 = (&v126 - v14);
  __chkstk_darwin();
  v147 = &v126 - v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_98CA8(_swiftEmptyArrayStorage);
  v18 = *v3;
  v148 = swift_allocObject();
  v19 = *(v3 + 8);
  v138 = v5;
  v137 = v6;
  v136 = v9;
  v135 = v8;
  if (v19)
  {
    v20 = v19;
    v21 = v19;
  }

  else
  {
    v21 = sub_988FC(_swiftEmptyArrayStorage);
    v20 = 0;
  }

  v22 = v148;
  *(v148 + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F30, &unk_B027A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x70756B6F6F6CLL;
  *(inited + 40) = 0xE600000000000000;
  v144 = v20;

  sub_1B5624(v18);
  v126 = 0;
  *(inited + 48) = v24;
  v139 = sub_988E8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF4F38, &unk_B027B8);
  v25 = swift_allocObject();
  v25[2] = v141;
  v25[3] = a2;
  v25[4] = v18;
  v25[5] = v17;
  v141 = v25;
  v25[6] = v22;
  v150 = v18;
  v143 = v17;
  if (v19)
  {
    v129 = v3;
    v26 = 1 << *(v18 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v18 + 56);
    v29 = (v26 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v30 = 0;
    v31 = &unk_DFEEE0;
    v32 = &qword_AF7AF0;
    if (v28)
    {
      while (1)
      {
        v33 = v30;
LABEL_12:
        v34 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v35 = v147;
        sub_15F84(*(v18 + 48) + *(v146 + 72) * (v34 | (v33 << 6)), v147, &unk_DFEEE0, &qword_AF7AF0);
        sub_2B8DC(v35, v15);
        switch(*(v15 + 8))
        {
          case 1:
            v36 = &qword_DE8E90;
            v37 = MPModelAlbum_ptr;
            break;
          case 2:
            v36 = &qword_DE8E78;
            v37 = MPModelArtist_ptr;
            break;
          case 4:
          case 9:
          case 0xC:
            v36 = &unk_DE8EB0;
            v37 = MPModelSong_ptr;
            break;
          case 5:
            v36 = &unk_E087D0;
            v37 = MPModelRadioStation_ptr;
            break;
          case 8:
          case 0xA:
            v36 = &unk_DE9C00;
            v37 = MPModelTVEpisode_ptr;
            break;
          case 0xB:
            v36 = &unk_DE8EC0;
            v37 = MPModelTVShow_ptr;
            break;
          case 0xD:
            v36 = &unk_DF1280;
            v37 = MPModelRecordLabel_ptr;
            break;
          case 0xE:
            v36 = &qword_DED7C0;
            v37 = MPModelSocialPerson_ptr;
            break;
          case 0xF:
            v36 = &unk_DE8EA0;
            v37 = MPModelPlaylist_ptr;
            break;
          default:
            v36 = &unk_E04570;
            v37 = MPModelCurator_ptr;
            break;
        }

        v38 = sub_13C80(0, v36, v37);
        v39 = sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
        v40 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v41 = *v15;
        sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
        v42 = v38;
        v3 = v39;
        v43 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v42, v40, 0, v41);
        if (v44)
        {
          v3 = v144;
          if (v144[2].isa && (v45 = sub_2EBF88(v43, v44), (v46 & 1) != 0))
          {
            sub_9ACA0(*(v3 + 56) + 40 * v45, &aBlock);
          }

          else
          {
            v153 = 0;
            aBlock = 0u;
            v152 = 0u;
          }

          v32 = &qword_AF7AF0;

          if (!*(&v152 + 1))
          {
            v31 = &unk_DFEEE0;
            sub_12E1C(v15, &unk_DFEEE0, &qword_AF7AF0);
            p_aBlock = &aBlock;
            v49 = &qword_DF2BD0;
            v50 = &unk_AFDC00;
            goto LABEL_33;
          }

          sub_12E1C(&aBlock, &qword_DF2BD0, &unk_AFDC00);
          v3 = &v150;
          v47 = v142;
          sub_2F0214(v15, v142);
          sub_12E1C(v47, &qword_DF4F50, &qword_B027C8);
          p_aBlock = v15;
          v31 = &unk_DFEEE0;
          v49 = &unk_DFEEE0;
        }

        else
        {
          p_aBlock = v15;
          v31 = &unk_DFEEE0;
          v49 = &unk_DFEEE0;
          v32 = &qword_AF7AF0;
        }

        v50 = &qword_AF7AF0;
LABEL_33:
        sub_12E1C(p_aBlock, v49, v50);
        v30 = v33;
        if (!v28)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      if (v33 >= v29)
      {
        break;
      }

      v28 = *(v18 + 56 + 8 * v33);
      ++v30;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    v3 = v129;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  sub_15F84(v3 + 16, &aBlock, &qword_DF4F58, &unk_B0EB60);
  v51 = *(&v152 + 1);
  if (*(&v152 + 1))
  {
    v52 = v153;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v152 + 1));
    v53 = (*(v52 + 2))(v51, v52);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    sub_12E1C(&aBlock, &qword_DF4F58, &unk_B0EB60);
    v53 = [objc_opt_self() emptyPropertySet];
  }

  v54 = v150;
  if (!*(v150 + 16))
  {

    sub_1CDA30(v139, v53, sub_1D2B14, v141);

    v97 = v140;
    *(v140 + 32) = 0;
    *v97 = 0u;
    v97[1] = 0u;
    goto LABEL_108;
  }

  v127 = v53;
  v31 = type metadata accessor for UnfairLock();
  swift_allocObject();
  v147 = UnfairLock.init()();
  v144 = dispatch_group_create();
  v128 = _s7CatalogV15EndpointRequestCMa();
  v55 = swift_allocObject();
  v142 = v55;
  swift_allocObject();
  *(v55 + 16) = UnfairLock.init()();
  *(v55 + 24) = 0;
  v3 = sub_13C80(0, &qword_DF4F60, ICMusicKitRequestContext_ptr);
  *(v55 + 32) = static ICMusicKitRequestContext.music.getter();
  *(v55 + 40) = 0;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v54 + 56);
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  v32 = &unk_DFEEE0;
  v129 = _swiftEmptyArrayStorage;
  while (1)
  {
    v61 = v60;
    if (!v58)
    {
      break;
    }

LABEL_48:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = v145;
    sub_15F84(*(v54 + 48) + *(v146 + 72) * (v62 | (v60 << 6)), v145, &unk_DFEEE0, &qword_AF7AF0);
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = 0xE600000000000000;
    v67 = 0x736D75626C61;
    switch(v65)
    {
      case 1:
        break;
      case 2:
        v66 = 0xE700000000000000;
        v67 = 0x73747369747261;
        break;
      case 3:
        v66 = 0xE800000000000000;
        v67 = 0x73726F7461727563;
        break;
      case 4:
        v66 = 0xE500000000000000;
        v67 = 0x73676E6F73;
        break;
      case 5:
        v66 = 0xE800000000000000;
        v67 = 0x736E6F6974617473;
        break;
      case 6:
        v67 = 0x75632D656C707061;
        v66 = 0xEE0073726F746172;
        break;
      case 7:
        v67 = 0x6169726F74696465;
        v66 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v67 = 0x6F6D2D636973756DLL;
        v68 = 1936025974;
        goto LABEL_64;
      case 9:
        v67 = 0x69762D636973756DLL;
        v68 = 1936680292;
LABEL_64:
        v66 = v68 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v67 = 0x6F736970652D7674;
        v66 = 0xEB00000000736564;
        break;
      case 11:
        v66 = 0xE800000000000000;
        v67 = 0x73776F68732D7674;
        break;
      case 12:
        v67 = 0x646564616F6C7075;
        v66 = 0xEF736F656469762DLL;
        break;
      case 13:
        v67 = 0x6C2D64726F636572;
        v66 = 0xED0000736C656261;
        break;
      case 14:
        v67 = 0x702D6C6169636F73;
        v66 = 0xEF73656C69666F72;
        break;
      case 15:
        v66 = 0xE900000000000073;
        v67 = 0x7473696C79616C70;
        break;
      default:
        v66 = 0xEA00000000007365;
        v67 = 0x6974697669746361;
        break;
    }

    v69 = v64;
    v31 = sub_1CF1DC(v67, v66);
    v3 = v31;
    sub_12E1C(v145, &unk_DFEEE0, &qword_AF7AF0);
    if (v31 == 16)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_6B8EC(0, *(v129 + 2) + 1, 1, v129);
      }

      v71 = *(v129 + 2);
      v70 = *(v129 + 3);
      v3 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v129 = sub_6B8EC((v70 > 1), v71 + 1, 1, v129);
      }

      v72 = v129;
      *(v129 + 2) = v3;
      v73 = &v72[16 * v71];
      *(v73 + 4) = v69;
      v73[40] = v31;
      v32 = &unk_DFEEE0;
    }
  }

  while (1)
  {
    v60 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_110;
    }

    if (v60 >= v59)
    {
      break;
    }

    v58 = *(v54 + 56 + 8 * v60);
    ++v61;
    if (v58)
    {
      goto LABEL_48;
    }
  }

  v3 = sub_2F3C78(v129);

  v74 = *(v3 + 32);
  v75 = v74 & 0x3F;
  v32 = ((1 << v74) + 63) >> 6;
  v31 = 8 * v32;
  swift_bridgeObjectRetain_n();
  if (v75 > 0xD)
  {
    goto LABEL_112;
  }

  do
  {
    v146 = v32;
    v145 = &v126;
    __chkstk_darwin();
    v76 = &v126 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v76, v31);
    v77 = 0;
    v78 = 0;
    v79 = 1 << *(v3 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v32 = v80 & *(v3 + 56);
    v81 = (v79 + 63) >> 6;
    while (v32)
    {
      v82 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_83:
      v31 = v82 | (v78 << 6);
      if (*(*(v3 + 48) + 16 * v31 + 8) == 14)
      {

LABEL_87:
        *&v76[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v77++, 1))
        {
          __break(1u);
LABEL_90:
          v87 = sub_1CAE6C(v76, v146, v77, v3);

          goto LABEL_91;
        }
      }

      else
      {
        v85 = sub_ABB3C0();

        if (v85)
        {
          goto LABEL_87;
        }
      }
    }

    v83 = v78;
    while (1)
    {
      v78 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v78 >= v81)
      {
        goto LABEL_90;
      }

      v84 = *(v3 + 56 + 8 * v78);
      ++v83;
      if (v84)
      {
        v82 = __clz(__rbit64(v84));
        v32 = (v84 - 1) & v84;
        goto LABEL_83;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    ;
  }

  while ((swift_stdlib_isStackAllocationSafe() & 1) != 0);
  v123 = swift_slowAlloc();

  v124 = v126;
  v125 = sub_1CB820(v123, v32, v3, sub_1C3FC0);
  if (v124)
  {

    swift_bridgeObjectRelease_n();

    __break(1u);
    JUMPOUT(0x1C3914);
  }

  v87 = v125;
  swift_bridgeObjectRelease_n();

LABEL_91:

  if (v87[2] > *(v3 + 16) >> 3)
  {
    v88 = sub_1C6088(v87, v3);
    if (v87[2])
    {
      goto LABEL_93;
    }

LABEL_103:

    v89 = _swiftEmptyArrayStorage;
    if (!v88[2])
    {
      goto LABEL_104;
    }

LABEL_96:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_6BA4C(0, *(v89 + 2) + 1, 1, v89);
    }

    v94 = *(v89 + 2);
    v93 = *(v89 + 3);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      v89 = sub_6BA4C((v93 > 1), v94 + 1, 1, v89);
    }

    *(v89 + 2) = v95;
    v96 = &v89[24 * v94];
    *(v96 + 4) = v88;
    *(v96 + 5) = 0;
    v96[48] = 64;
    goto LABEL_105;
  }

  *&aBlock = v3;
  sub_1C4EB4(v87);
  v88 = aBlock;
  if (!v87[2])
  {
    goto LABEL_103;
  }

LABEL_93:
  v89 = sub_6BA4C(0, 1, 1, _swiftEmptyArrayStorage);
  v91 = *(v89 + 2);
  v90 = *(v89 + 3);
  if (v91 >= v90 >> 1)
  {
    v89 = sub_6BA4C((v90 > 1), v91 + 1, 1, v89);
  }

  *(v89 + 2) = v91 + 1;
  v92 = &v89[24 * v91];
  *(v92 + 4) = v87;
  *(v92 + 5) = 1;
  v92[48] = 64;
  if (v88[2])
  {
    goto LABEL_96;
  }

LABEL_104:

  v95 = *(v89 + 2);
  if (v95)
  {
LABEL_105:
    v146 = v89;
    v98 = (v89 + 48);
    v99 = v144;
    v100 = v142;
    do
    {
      v101 = *(v98 - 2);
      v102 = *(v98 - 1);
      v103 = *v98;
      v98 += 24;
      sub_1D2B24(v101, v102, v103);
      dispatch_group_enter(v99);
      v104 = swift_allocObject();
      v105 = v147;
      v104[2] = v99;
      v104[3] = v105;
      v104[4] = v148;

      v106 = v99;

      BagProvider.shared.unsafeMutableAddressor();
      v107 = swift_allocObject();
      *(v107 + 16) = v100;
      *(v107 + 24) = sub_1D2B9C;
      *(v107 + 32) = v104;
      *(v107 + 40) = v101;
      *(v107 + 48) = v102;
      *(v107 + 56) = v103;

      BagProvider.getBag(completion:)(sub_1D2BD8, v107);

      --v95;
    }

    while (v95);
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v108 = v131;
  v109 = v130;
  v110 = v132;
  (*(v131 + 104))(v130, enum case for DispatchQoS.QoSClass.userInteractive(_:), v132);
  v111 = sub_ABA190();
  (*(v108 + 8))(v109, v110);
  v112 = swift_allocObject();
  v113 = v127;
  v112[2] = v139;
  v112[3] = v113;
  v114 = v141;
  v112[4] = sub_1D2B14;
  v112[5] = v114;
  v153 = sub_1D2C24;
  v154 = v112;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v152 = sub_1B5EB4;
  *(&v152 + 1) = &block_descriptor_45;
  v115 = _Block_copy(&aBlock);
  v116 = v113;

  v117 = v133;
  sub_AB7C30();
  v149 = _swiftEmptyArrayStorage;
  sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  v118 = v135;
  v119 = v138;
  sub_ABABB0();
  v120 = v144;
  sub_ABA0F0();
  (*(v137 + 8))(v118, v119);
  (*(v134 + 8))(v117, v136);
  _Block_release(v115);

  v121 = v140;
  *(v140 + 24) = v128;
  v121[4] = &off_D00038;

  *v121 = v142;
LABEL_108:

  return result;
}

void sub_1C3994(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F98, &unk_B02800);
  __chkstk_darwin();
  v62 = (&v55 - v13);
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0) - 8);
  __chkstk_darwin();
  v66 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v55 - v15;
  *&v17 = __chkstk_darwin().n128_u64[0];
  v64 = &v55 - v18;
  if (a1)
  {
    v19 = [a1 results];
    if (!v19)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = [v19 allItems];

    v22 = sub_AB9760();
    v24 = sub_12DBC0(v22, v23);

    if (v24)
    {
      v25 = v16;
      v56 = a7;
      v57 = a1;
      v58 = a4;
      v59 = a3;
      v26 = 1 << *(a5 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(a5 + 56);
      v29 = (v26 + 63) >> 6;

      v30 = 0;
      v67 = 0;
      v60 = v16;
      v61 = v24;
      while (v28)
      {
LABEL_13:
        v32 = v64;
        sub_15F84(*(a5 + 48) + *(v65 + 72) * (__clz(__rbit64(v28)) | (v30 << 6)), v64, &unk_DFEEE0, &qword_AF7AF0);
        sub_2B8DC(v32, v25);
        __chkstk_darwin();
        *(&v55 - 2) = v25;
        v33 = v67;
        v34 = sub_1B5EF8(sub_1D2FF8, (&v55 - 4), v24);
        v35 = v25;
        v67 = v33;
        if (v34)
        {
          v36 = v34;
          sub_15F84(v35, v66, &unk_DFEEE0, &qword_AF7AF0);
          v37 = v62;
          *v62 = v36;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
          swift_storeEnumTagMultiPayload();
          (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          swift_beginAccess();
          v39 = v36;
          v40 = v37;
          v24 = v61;
          sub_2E5AC0(v40, v66);
          swift_endAccess();

          v35 = v60;
        }

        v28 &= v28 - 1;
        v25 = v35;
        sub_12E1C(v35, &unk_DFEEE0, &qword_AF7AF0);
      }

      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v29)
        {

          v43 = v63;
          swift_beginAccess();
          v44 = *(v43 + 16);
          v45 = v56;
          swift_beginAccess();
          v46 = *(v45 + 16);
          type metadata accessor for BindingRequestResponseInvalidation();
          v47 = MPModelResponseDidInvalidateNotification;
          v48 = v57;
          UIScreen.Dimensions.size.getter();
          v68[3] = &type metadata for NotificationTrigger;
          v68[4] = &protocol witness table for NotificationTrigger;
          v68[0] = v49;
          v68[1] = v50;

          v51 = v47;
          v52 = v48;
          v53 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(v68);
          v54 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
          v59(v44, v46, 0, v53, v54);

          return;
        }

        v28 = *(a5 + 56 + 8 * v31);
        ++v30;
        if (v28)
        {
          v30 = v31;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  sub_1D2FA4();
  v41 = swift_allocError();
  *v42 = a2;
  *(v42 + 8) = 1;
  swift_errorRetain();
  a3(v41, 0, 1, 0, 0);
}

id sub_1C3F58(id *a1, void *a2)
{
  v3 = [*a1 identifiers];
  v4 = [v3 intersectsSet:*a2];

  return v4;
}

uint64_t sub_1C3FC0(uint64_t a1)
{
  if (*(a1 + 8) == 14)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_ABB3C0();
  }

  return v1 & 1;
}

void sub_1C4044(uint64_t *a1, int a2, dispatch_group_t group)
{
  v5 = *a1;
  if (v5 == 1)
  {

    dispatch_group_leave(group);
  }

  else
  {
    v6 = a1[4];
    v8 = a1[1];
    v7 = a1[2];
    v11 = v5;
    v12 = *(a1 + 1);
    v13 = *(a1 + 3);
    v9 = *(a1 + 24);
    __chkstk_darwin();

    sub_1D2B24(v8, v7, v9);
    v10 = v6;
    UnfairLock.locked<A>(_:)(sub_1D2D4C);
    dispatch_group_leave(group);
    v14 = v11;
    sub_12E1C(&v14, &qword_DF4F70, &qword_B027D0);
    v15 = v12;
    v16 = v13;
    sub_1D2D1C(&v15);
    v17 = *(&v13 + 1);
    sub_12E1C(&v17, &qword_DF4F78, &qword_B027D8);
  }
}

uint64_t sub_1C41C0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1CE69C(*a2);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  *a1 = 0x8000000000000000;
  sub_1D2D68(v4, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, &v7);

  if (v2)
  {

    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    *a1 = v7;
    return swift_endAccess();
  }

  return result;
}

__n128 sub_1C4294@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1C434C()
{
  v0 = qword_DF4BD0;

  return v0;
}

double sub_1C4384@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1C23C4(sub_1D2A44, v6, a3);

  return result;
}

uint64_t sub_1C4414(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return a6(v7, a4, a5);
}

BOOL sub_1C445C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4C9564(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    v8 = sub_4740B4(v4, v5);

    return v8 & 1;
  }

  return result;
}

unint64_t sub_1C44DC()
{
  result = sub_988FC(_swiftEmptyArrayStorage);
  qword_DF4BE0 = result;
  return result;
}

void sub_1C4504(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v30 = v12;
  v31 = v8;
  while (v11)
  {
LABEL_10:
    v15 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v11)) | (v13 << 6)));

    v16 = sub_AB9260();
    [a2 appendSection:v16];

    v17 = sub_AB9260();
    [a3 appendSection:v17];

    if (v15 >> 62)
    {
      v18 = sub_ABB060();
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_24;
    }

    for (i = 0; i != v18; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = sub_360310(i, v15);
      }

      else
      {
        v20 = *(v15 + 8 * i + 32);
      }

      v21 = v20;
      v22 = [a4 modelObjectMatchingIdentifierSet:v20 propertySet:a5];
      if (v22)
      {
        v23 = v22;
        [a3 appendItem:v22];
        v24 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v23 personalizationStyle:1];
        [a2 appendItem:v24];

        v21 = v24;
      }
    }

LABEL_4:
    v11 &= v11 - 1;

    v12 = v30;
    v8 = v31;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      v25 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:a6 unpersonalizedContentDescriptors:a2];
      [v25 setRepresentedObjects:a3];
      aBlock[4] = a7;
      aBlock[5] = a8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_21_1;
      v26 = _Block_copy(aBlock);

      [v25 performWithResponseHandler:v26];
      _Block_release(v26);

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

unint64_t sub_1C4834(uint64_t a1)
{
  *(a1 + 8) = sub_1C4864();
  result = sub_1C48B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4864()
{
  result = qword_DF4DD0;
  if (!qword_DF4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4DD0);
  }

  return result;
}

unint64_t sub_1C48B8()
{
  result = qword_DF4DD8;
  if (!qword_DF4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4DD8);
  }

  return result;
}

unint64_t sub_1C490C(uint64_t a1)
{
  result = sub_1C4934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4934()
{
  result = qword_DF4E10;
  if (!qword_DF4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4E10);
  }

  return result;
}

unint64_t sub_1C4998()
{
  result = qword_DF4E58;
  if (!qword_DF4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4E58);
  }

  return result;
}

unint64_t sub_1C49EC(uint64_t a1)
{
  result = sub_1C4A14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4A14()
{
  result = qword_DF4ED0;
  if (!qword_DF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4ED0);
  }

  return result;
}

unint64_t sub_1C4A68(uint64_t a1)
{
  result = sub_1C4A90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4A90()
{
  result = qword_DF4F08;
  if (!qword_DF4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F08);
  }

  return result;
}

unint64_t sub_1C4AE4(void *a1)
{
  a1[1] = sub_1C4B1C();
  a1[2] = sub_1C4B70();
  result = sub_1C4BC4();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4B1C()
{
  result = qword_DF4F10;
  if (!qword_DF4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F10);
  }

  return result;
}

unint64_t sub_1C4B70()
{
  result = qword_DF4F18;
  if (!qword_DF4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F18);
  }

  return result;
}

unint64_t sub_1C4BC4()
{
  result = qword_DF4F20;
  if (!qword_DF4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F20);
  }

  return result;
}

unint64_t sub_1C4C1C()
{
  result = qword_DF4F28;
  if (!qword_DF4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F28);
  }

  return result;
}

void sub_1C4C74(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_2BA40(*v11, v13, v14);
        v15 = sub_2EF144(v12, v13, v14);
        sub_1D3AA0(v15, v16, v17);
        sub_13CC8(v12, v13, v14);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1C4DBC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_2EF334(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1C4EB4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
        v12 = *(v11 + 8);
        v13 = *v11;
        v14 = sub_2EFB70(v13, v12);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1C4FD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v4 = v16 - v3;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;
    v16[0] = v6 + 8;
    v16[1] = v6 + 16;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v6 + 16))(v8, *(a1 + 48) + *(v6 + 72) * (v15 | (v14 << 6)), v5);
      sub_2F0A50(v8, v4);
      (*(v6 + 8))(v8, v5);
      sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(a1 + 56 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1C51F4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_2F0D00(*(*(a1 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1C52E8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a1 + 48) + 240 * (v10 | (v9 << 6)));
      v13 = v11[1];
      v12 = v11[2];
      v25[0] = *v11;
      v25[1] = v13;
      v25[2] = v12;
      v14 = v11[6];
      v16 = v11[3];
      v15 = v11[4];
      v25[5] = v11[5];
      v25[6] = v14;
      v25[3] = v16;
      v25[4] = v15;
      v17 = v11[10];
      v19 = v11[7];
      v18 = v11[8];
      v25[9] = v11[9];
      v25[10] = v17;
      v25[7] = v19;
      v25[8] = v18;
      v20 = v11[14];
      v22 = v11[11];
      v21 = v11[12];
      v25[13] = v11[13];
      v25[14] = v20;
      v25[11] = v22;
      v25[12] = v21;
      sub_2B990(v25, v24);
      sub_2F0ECC(v23);
      sub_2B9EC(v25);
      v24[12] = v23[12];
      v24[13] = v23[13];
      v24[14] = v23[14];
      v24[8] = v23[8];
      v24[9] = v23[9];
      v24[10] = v23[10];
      v24[11] = v23[11];
      v24[4] = v23[4];
      v24[5] = v23[5];
      v24[6] = v23[6];
      v24[7] = v23[7];
      v24[0] = v23[0];
      v24[1] = v23[1];
      v24[2] = v23[2];
      v24[3] = v23[3];
      sub_12E1C(v24, &qword_DF5018, &unk_B02890);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_1C5494(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v62 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v67 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v74 = a2;
  v75 = (a2 + 56);

  v15 = 0;
  v70 = v14;
  v69 = v9;
  for (i = v13; ; v13 = i)
  {
    if (!v12)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v17 >= v13)
        {
          sub_2BB88(v14);
          return v74;
        }

        v12 = *(v9 + 8 * v17);
        ++v16;
      }

      while (!v12);
      v15 = v17;
    }

    v18 = *(v14 + 48) + 24 * (__clz(__rbit64(v12)) | (v15 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v5 = *(v18 + 16);
    sub_ABB5C0();
    v72 = v20;
    v73 = v19;
    v71 = v15;
    if (v5)
    {
      sub_ABB5D0(1uLL);
      sub_2BA40(v19, v20, 1);
      sub_ABA7A0();
    }

    else
    {
      sub_ABB5D0(0);
      sub_2BA40(v19, v20, 0);
      sub_AB93F0();
    }

    v12 &= v12 - 1;
    v21 = sub_ABB610();
    v22 = v74;
    v23 = -1 << *(v74 + 32);
    v3 = v21 & ~v23;
    v6 = v3 >> 6;
    v9 = 1 << v3;
    if (((1 << v3) & v75[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_13CC8(v73, v72, v5);
    v14 = v70;
    v9 = v69;
    v15 = v71;
  }

  v7 = ~v23;
  while (1)
  {
    v24 = *(v22 + 48) + 24 * v3;
    v2 = *v24;
    v25 = *(v24 + 8);
    v4 = *(v24 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    if (v5)
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v26 = v2;
      v27 = sub_ABA790();
      sub_13CC8(v2, v25, 1);
      v22 = v74;
      if (v27)
      {
LABEL_29:
        v7 = v71;
        v28 = v72;
        v79 = v67;
        v80 = v71;
        v81 = v12;
        v5 = v69;
        v2 = v70;
        v77 = v70;
        v78 = v69;
        v29 = v73;
        goto LABEL_33;
      }
    }

LABEL_18:
    v3 = (v3 + 1) & v7;
    v6 = v3 >> 6;
    v9 = 1 << v3;
    if ((v75[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v5)
  {
    goto LABEL_18;
  }

  v28 = v72;
  v29 = v73;
  if (v2 != v73 || v25 != v72)
  {
    v31 = sub_ABB3C0();
    v22 = v74;
    if (v31)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v7 = v71;
  v79 = v67;
  v80 = v71;
  v81 = v12;
  v5 = v69;
  v2 = v70;
  v77 = v70;
  v78 = v69;
LABEL_33:
  sub_13CC8(v29, v28, v4);
  v4 = v74;
  v33 = *(v74 + 32);
  v34 = v33 & 0x3F;
  v63 = ((1 << v33) + 63) >> 6;
  v15 = 8 * v63;

  if (v34 <= 0xD)
  {
LABEL_34:
    v64 = &v61;
    __chkstk_darwin();
    v35 = &v61 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v75, v15);
    v36 = *&v35[8 * v6] & ~v9;
    v66 = v35;
    *&v35[8 * v6] = v36;
    v37 = *(v4 + 16) - 1;
    v38 = i;
LABEL_35:
    v65 = v37;
LABEL_37:
    while (2)
    {
      if (v12)
      {
LABEL_43:
        v41 = v2[6] + 24 * (__clz(__rbit64(v12)) | (v7 << 6));
        v42 = *v41;
        v43 = *(v41 + 8);
        v3 = *(v41 + 16);
        sub_ABB5C0();
        v71 = v7;
        v72 = v43;
        v73 = v42;
        if (v3)
        {
          sub_ABB5D0(1uLL);
          sub_2BA40(v42, v43, 1);
          sub_ABA7A0();
        }

        else
        {
          sub_ABB5D0(0);
          sub_2BA40(v42, v43, 0);
          sub_AB93F0();
        }

        v12 &= v12 - 1;
        v15 = v76;
        v44 = sub_ABB610();
        v45 = v74;
        v46 = -1 << *(v74 + 32);
        v47 = v44 & ~v46;
        v48 = v47 >> 6;
        v6 = 1 << v47;
        if (((1 << v47) & v75[v47 >> 6]) == 0)
        {
LABEL_36:
          sub_13CC8(v73, v72, v3);
          v2 = v70;
          v5 = v69;
          v7 = v71;
          v38 = i;
          continue;
        }

        v49 = ~v46;
        while (1)
        {
          v50 = *(v45 + 48) + 24 * v47;
          v51 = *v50;
          v52 = *(v50 + 8);
          v4 = *(v50 + 16);
          if (v4)
          {
            if (v3)
            {
              sub_13C80(0, &qword_DFA720, NSObject_ptr);
              v53 = v51;
              v15 = sub_ABA790();
              sub_13CC8(v51, v52, 1);
              v45 = v74;
              if (v15)
              {
                goto LABEL_59;
              }
            }
          }

          else if ((v3 & 1) == 0)
          {
            v54 = v51 == v73 && v52 == v72;
            if (v54 || (v55 = sub_ABB3C0(), v45 = v74, (v55 & 1) != 0))
            {
LABEL_59:
              sub_13CC8(v73, v72, v4);
              v56 = v66[v48];
              v66[v48] = v56 & ~v6;
              v2 = v70;
              v5 = v69;
              v7 = v71;
              v38 = i;
              if ((v56 & v6) != 0)
              {
                v37 = v65 - 1;
                if (__OFSUB__(v65, 1))
                {
                  __break(1u);
                }

                if (v65 == 1)
                {

                  v57 = &_swiftEmptySetSingleton;
                  goto LABEL_64;
                }

                goto LABEL_35;
              }

              goto LABEL_37;
            }
          }

          v47 = (v47 + 1) & v49;
          v48 = v47 >> 6;
          v6 = 1 << v47;
          if ((v75[v47 >> 6] & (1 << v47)) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      break;
    }

    v39 = v7;
    v9 = v74;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v40 >= v38)
      {
        break;
      }

      v12 = *(v5 + 8 * v40);
      ++v39;
      if (v12)
      {
        v7 = v40;
        goto LABEL_43;
      }
    }

    v57 = sub_1CAA14(v66, v63, v65, v74);
LABEL_64:

LABEL_65:
    sub_2BB88(v2);
    return v57;
  }

LABEL_68:
  if (swift_stdlib_isStackAllocationSafe())
  {
    goto LABEL_34;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v75, v15);
  v59 = v62;
  sub_1C8C9C(v58, v63, v4, v3, &v77);
  v57 = v60;

  if (!v59)
  {

    v2 = v77;
    v67 = v79;
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

void *sub_1C5C2C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (*(a2 + 16))
  {
    v44 = a1;
    v45 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v43 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v44;
          v16 = v45;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              sub_2BB88(v38);
              return v6;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v45 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v44;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v45 << 9) | (8 * v18)));
        v19 = sub_ABB5B0();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v47 = v43;
    v48 = v45;
    v49 = v11;
    v46[0] = v44;
    v46[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v14);
      v36 = sub_1C8F80(v40, v4, v6, v5, v46);

      v2 = v46[0];
      v43 = v47;
      v45 = v48;
      goto LABEL_42;
    }

LABEL_18:
    v41 = &v41;
    __chkstk_darwin();
    v5 = &v41 - v22;
    memcpy(&v41 - v22, (v6 + 56), v14);
    v23 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v24 = v23 - 1;
    v14 = 1;
    v2 = v44;
LABEL_19:
    v42 = v24;
    while (v11)
    {
LABEL_27:
      v28 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v45 << 9) | (8 * v28)));
      v29 = sub_ABB5B0();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = 1 << v31;
      if (((1 << v31) & *(v13 + 8 * (v31 >> 6))) != 0)
      {
        v34 = *(v6 + 48);
        if (*(v34 + 8 * v31) == v3)
        {
LABEL_20:
          v25 = *(v5 + 8 * v32);
          *(v5 + 8 * v32) = v25 & ~v33;
          if ((v25 & v33) != 0)
          {
            v24 = v42 - 1;
            if (__OFSUB__(v42, 1))
            {
              __break(1u);
            }

            if (v42 == 1)
            {

              v36 = &_swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v35 = ~v30;
          while (1)
          {
            v31 = (v31 + 1) & v35;
            v32 = v31 >> 6;
            v33 = 1 << v31;
            if (((1 << v31) & *(v13 + 8 * (v31 >> 6))) == 0)
            {
              break;
            }

            if (*(v34 + 8 * v31) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v26 = v45;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v27 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v27);
      ++v26;
      if (v11)
      {
        v45 = v27;
        goto LABEL_27;
      }
    }

    if (v12 <= v45 + 1)
    {
      v37 = v45 + 1;
    }

    else
    {
      v37 = v12;
    }

    v45 = v37 - 1;
    v36 = sub_1CAC80(v5, v4, v42, v6);
LABEL_41:

LABEL_42:
    sub_2BB88(v2);
    return v36;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}

void *sub_1C6088(unint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (*(a2 + 16))
  {
    v7 = a1;
    v73 = 0;
    v9 = a1 + 56;
    v8 = *(a1 + 56);
    v10 = -1 << *(a1 + 32);
    v78 = ~v10;
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v8;
    v13 = (63 - v10) >> 6;
    v86 = (a2 + 56);

    v15 = 0;
    v79 = v13;
    v84 = v6;
    v81 = v14;
    v80 = v9;
    while (2)
    {
      if (v12)
      {
        goto LABEL_13;
      }

      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_146;
        }

        if (v17 >= v13)
        {
          sub_2BB88(v7);
          return v6;
        }

        v12 = *(v9 + 8 * v17);
        ++v16;
      }

      while (!v12);
      v15 = v17;
LABEL_13:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = *(v7 + 48);
      v82 = v15;
      v20 = v19 + ((v15 << 10) | (16 * v18));
      v21 = *v20;
      v3 = *(v20 + 8);
      sub_ABB5C0();
      v22 = v21;
      sub_ABA7A0();
      sub_AB93F0();

      v2 = v87;
      v23 = sub_ABB610();
      v24 = -1 << *(v6 + 32);
      v7 = v23 & ~v24;
      v4 = v7 >> 6;
      v13 = 1 << v7;
      if (((1 << v7) & v86[v7 >> 6]) == 0)
      {
LABEL_6:

        v7 = v81;
        v9 = v80;
        v15 = v82;
        v13 = v79;
        continue;
      }

      break;
    }

    v5 = ~v24;
    v85 = sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v83 = v3;
    while (1)
    {
      v25 = *(v6 + 48) + 16 * v7;
      v26 = *(v25 + 8);
      v27 = *v25;
      v2 = v85;
      if (sub_ABA790())
      {
        break;
      }

LABEL_16:
      v7 = (v7 + 1) & v5;
      v4 = v7 >> 6;
      v13 = 1 << v7;
      v6 = v84;
      if ((v86[v7 >> 6] & (1 << v7)) == 0)
      {
        goto LABEL_6;
      }
    }

    v2 = 0xEA00000000007365;
    v28 = 0x6974697669746361;
    switch(v26)
    {
      case 1:
        v2 = 0xE600000000000000;
        v28 = 0x736D75626C61;
        break;
      case 2:
        v2 = 0xE700000000000000;
        v28 = 0x73747369747261;
        break;
      case 3:
        v2 = 0xE800000000000000;
        v28 = 0x73726F7461727563;
        break;
      case 4:
        v2 = 0xE500000000000000;
        v28 = 0x73676E6F73;
        break;
      case 5:
        v2 = 0xE800000000000000;
        v28 = 0x736E6F6974617473;
        break;
      case 6:
        v28 = 0x75632D656C707061;
        v2 = 0xEE0073726F746172;
        break;
      case 7:
        v28 = 0x6169726F74696465;
        v2 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v28 = 0x6F6D2D636973756DLL;
        v29 = 1936025974;
        goto LABEL_34;
      case 9:
        v28 = 0x69762D636973756DLL;
        v29 = 1936680292;
LABEL_34:
        v2 = (v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        break;
      case 10:
        v28 = 0x6F736970652D7674;
        v2 = 0xEB00000000736564;
        break;
      case 11:
        v2 = 0xE800000000000000;
        v28 = 0x73776F68732D7674;
        break;
      case 12:
        v28 = 0x646564616F6C7075;
        v2 = 0xEF736F656469762DLL;
        break;
      case 13:
        v28 = 0x6C2D64726F636572;
        v2 = 0xED0000736C656261;
        break;
      case 14:
        v28 = 0x702D6C6169636F73;
        v2 = 0xEF73656C69666F72;
        break;
      case 15:
        v28 = 0x7473696C79616C70;
        v2 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v30 = 0x6974697669746361;
    v31 = 0xEA00000000007365;
    switch(v83)
    {
      case 1:
        v31 = 0xE600000000000000;
        if (v28 != 0x736D75626C61)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 2:
        v31 = 0xE700000000000000;
        if (v28 != 0x73747369747261)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 3:
        v31 = 0xE800000000000000;
        if (v28 != 0x73726F7461727563)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 4:
        v31 = 0xE500000000000000;
        if (v28 != 0x73676E6F73)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 5:
        v31 = 0xE800000000000000;
        if (v28 != 0x736E6F6974617473)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 6:
        v31 = 0xEE0073726F746172;
        if (v28 != 0x75632D656C707061)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 7:
        v32 = 0x6169726F74696465;
        v33 = 0x6D6574692D6CLL;
        goto LABEL_52;
      case 8:
        v34 = 0x6F6D2D636973756DLL;
        v35 = 1936025974;
        goto LABEL_66;
      case 9:
        v34 = 0x69762D636973756DLL;
        v35 = 1936680292;
LABEL_66:
        v31 = v35 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v28 != v34)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 10:
        v30 = 0x6F736970652D7674;
        v31 = 0xEB00000000736564;
        goto LABEL_61;
      case 11:
        v31 = 0xE800000000000000;
        if (v28 != 0x73776F68732D7674)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 12:
        v32 = 0x646564616F6C7075;
        v33 = 0x6F656469762DLL;
        goto LABEL_52;
      case 13:
        v31 = 0xED0000736C656261;
        if (v28 != 0x6C2D64726F636572)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 14:
        v32 = 0x702D6C6169636F73;
        v33 = 0x656C69666F72;
LABEL_52:
        v31 = v33 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v28 != v32)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 15:
        v31 = 0xE900000000000073;
        if (v28 != 0x7473696C79616C70)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      default:
LABEL_61:
        if (v28 != v30)
        {
          goto LABEL_63;
        }

LABEL_62:
        if (v2 == v31)
        {
          v90 = v78;
          v91 = v82;
          v92 = v12;
          v5 = v80;
          v3 = v81;
          v88 = v81;
          v89 = v80;

          goto LABEL_71;
        }

LABEL_63:
        v3 = sub_ABB3C0();

        if ((v3 & 1) == 0)
        {
          goto LABEL_16;
        }

        v90 = v78;
        v91 = v82;
        v92 = v12;
        v5 = v80;
        v3 = v81;
        v88 = v81;
        v89 = v80;

LABEL_71:
        v6 = v84;
        v36 = *(v84 + 32);
        v37 = v36 & 0x3F;
        v74 = ((1 << v36) + 63) >> 6;
        v2 = (8 * v74);

        if (v37 > 0xD)
        {
          goto LABEL_147;
        }

        break;
    }

LABEL_72:
    v75 = &v72;
    __chkstk_darwin();
    v38 = &v72 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v38, v86, v2);
    v39 = *&v38[8 * v4] & ~v13;
    v40 = *(v6 + 16);
    v77 = v38;
    *&v38[8 * v4] = v39;
    v41 = v40 - 1;
    v13 = v82;
    v42 = v79;
LABEL_73:
    v76 = v41;
LABEL_75:
    if (v12)
    {
      goto LABEL_81;
    }

    v43 = v13;
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v70 = swift_slowAlloc();
          memcpy(v70, v86, v2);
          v71 = v73;
          v68 = sub_1C913C(v70, v74, v6, v7, &v88);

          if (v71)
          {

            __break(1u);
            JUMPOUT(0x1C73C0);
          }

          v3 = v88;
          v78 = v90;
          goto LABEL_143;
        }

        goto LABEL_72;
      }

      if (v44 >= v42)
      {
        break;
      }

      v12 = *(v5 + 8 * v44);
      ++v43;
      if (v12)
      {
        v13 = v44;
LABEL_81:
        v45 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v46 = *(v3 + 48);
        v82 = v13;
        v47 = v46 + ((v13 << 10) | (16 * v45));
        v48 = *v47;
        v49 = *(v47 + 8);
        sub_ABB5C0();
        v7 = v48;
        sub_ABA7A0();
        sub_AB93F0();

        v2 = v87;
        v50 = sub_ABB610();
        v51 = -1 << *(v6 + 32);
        v52 = v50 & ~v51;
        v53 = v52 >> 6;
        v4 = 1 << v52;
        if (((1 << v52) & v86[v52 >> 6]) == 0)
        {
LABEL_74:

          v3 = v81;
          v5 = v80;
          v13 = v82;
          v42 = v79;
          goto LABEL_75;
        }

        v54 = ~v51;
        v83 = v49;
        while (1)
        {
          v55 = *(v6 + 48) + 16 * v52;
          v56 = *(v55 + 8);
          v57 = *v55;
          v2 = v85;
          if (sub_ABA790())
          {
            v2 = 0xEA00000000007365;
            v58 = 0x6974697669746361;
            switch(v56)
            {
              case 1:
                v2 = 0xE600000000000000;
                v58 = 0x736D75626C61;
                break;
              case 2:
                v2 = 0xE700000000000000;
                v58 = 0x73747369747261;
                break;
              case 3:
                v2 = 0xE800000000000000;
                v58 = 0x73726F7461727563;
                break;
              case 4:
                v2 = 0xE500000000000000;
                v58 = 0x73676E6F73;
                break;
              case 5:
                v2 = 0xE800000000000000;
                v58 = 0x736E6F6974617473;
                break;
              case 6:
                v58 = 0x75632D656C707061;
                v2 = 0xEE0073726F746172;
                break;
              case 7:
                v58 = 0x6169726F74696465;
                v2 = 0xEF736D6574692D6CLL;
                break;
              case 8:
                v58 = 0x6F6D2D636973756DLL;
                v59 = 1936025974;
                goto LABEL_102;
              case 9:
                v58 = 0x69762D636973756DLL;
                v59 = 1936680292;
LABEL_102:
                v2 = (v59 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
                break;
              case 10:
                v58 = 0x6F736970652D7674;
                v2 = 0xEB00000000736564;
                break;
              case 11:
                v2 = 0xE800000000000000;
                v58 = 0x73776F68732D7674;
                break;
              case 12:
                v58 = 0x646564616F6C7075;
                v2 = 0xEF736F656469762DLL;
                break;
              case 13:
                v58 = 0x6C2D64726F636572;
                v2 = 0xED0000736C656261;
                break;
              case 14:
                v58 = 0x702D6C6169636F73;
                v2 = 0xEF73656C69666F72;
                break;
              case 15:
                v58 = 0x7473696C79616C70;
                v2 = 0xE900000000000073;
                break;
              default:
                break;
            }

            v60 = 0x6974697669746361;
            v61 = 0xEA00000000007365;
            switch(v83)
            {
              case 1:
                v61 = 0xE600000000000000;
                if (v58 != 0x736D75626C61)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 2:
                v61 = 0xE700000000000000;
                if (v58 != 0x73747369747261)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 3:
                v61 = 0xE800000000000000;
                if (v58 != 0x73726F7461727563)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 4:
                v61 = 0xE500000000000000;
                if (v58 != 0x73676E6F73)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 5:
                v61 = 0xE800000000000000;
                if (v58 != 0x736E6F6974617473)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 6:
                v61 = 0xEE0073726F746172;
                if (v58 != 0x75632D656C707061)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 7:
                v62 = 0x6169726F74696465;
                v63 = 0x6D6574692D6CLL;
                goto LABEL_120;
              case 8:
                v64 = 0x6F6D2D636973756DLL;
                v65 = 1936025974;
                goto LABEL_134;
              case 9:
                v64 = 0x69762D636973756DLL;
                v65 = 1936680292;
LABEL_134:
                v61 = v65 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                if (v58 != v64)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 10:
                v60 = 0x6F736970652D7674;
                v61 = 0xEB00000000736564;
                goto LABEL_129;
              case 11:
                v61 = 0xE800000000000000;
                if (v58 != 0x73776F68732D7674)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 12:
                v62 = 0x646564616F6C7075;
                v63 = 0x6F656469762DLL;
                goto LABEL_120;
              case 13:
                v61 = 0xED0000736C656261;
                if (v58 != 0x6C2D64726F636572)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 14:
                v62 = 0x702D6C6169636F73;
                v63 = 0x656C69666F72;
LABEL_120:
                v61 = v63 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
                if (v58 != v62)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 15:
                v61 = 0xE900000000000073;
                if (v58 != 0x7473696C79616C70)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              default:
LABEL_129:
                if (v58 != v60)
                {
                  goto LABEL_131;
                }

LABEL_130:
                if (v2 == v61)
                {

LABEL_137:
                  v6 = v84;
                  v42 = v79;
                  v67 = v77[v53];
                  v77[v53] = v67 & ~v4;
                  v3 = v81;
                  v5 = v80;
                  v13 = v82;
                  if ((v67 & v4) != 0)
                  {
                    v41 = v76 - 1;
                    if (__OFSUB__(v76, 1))
                    {
                      __break(1u);
                    }

                    if (v76 == 1)
                    {

                      v68 = &_swiftEmptySetSingleton;
                      goto LABEL_142;
                    }

                    goto LABEL_73;
                  }

                  goto LABEL_75;
                }

LABEL_131:
                v66 = sub_ABB3C0();

                if (v66)
                {

                  goto LABEL_137;
                }

                break;
            }
          }

          else
          {
          }

          v52 = (v52 + 1) & v54;
          v53 = v52 >> 6;
          v4 = 1 << v52;
          v6 = v84;
          if ((v86[v52 >> 6] & (1 << v52)) == 0)
          {
            goto LABEL_74;
          }
        }
      }
    }

    v68 = sub_1CAE6C(v77, v74, v76, v6);
LABEL_142:

LABEL_143:
    sub_2BB88(v3);
    return v68;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}