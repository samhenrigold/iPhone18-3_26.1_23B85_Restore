uint64_t sub_6CA20(uint64_t result, int a2, int a3)
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

uint64_t sub_6CA6C()
{
  sub_14E2C(&qword_B9BC8, &qword_8B9E8);
  sub_14F24(&qword_B9BF8, &qword_B9BC8, &qword_8B9E8, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_6CB4C()
{
  v1 = type metadata accessor for _StorageSettingsPreferencesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_147EC(&qword_B8570, &qword_8A370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_80B38();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_6CC6C()
{
  v1 = *(type metadata accessor for _StorageSettingsPreferencesView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_6B440(v2);
}

unint64_t sub_6CCCC()
{
  result = qword_B9CF8;
  if (!qword_B9CF8)
  {
    sub_14E2C(&qword_B81C0, &qword_88E98);
    sub_6C2B4(&qword_B9D00, type metadata accessor for DeepLinkParameters, &unk_8BD44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9CF8);
  }

  return result;
}

uint64_t sub_6CD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9CD8, &qword_8BC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6CDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_6CE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_6CEC4()
{
  result = qword_B9D20;
  if (!qword_B9D20)
  {
    sub_14E2C(&qword_B9D08, &qword_8BC78);
    sub_6CF80();
    sub_6C2B4(&qword_B9D30, type metadata accessor for NavigationEventEmissionViewModifier, &unk_8A800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9D20);
  }

  return result;
}

unint64_t sub_6CF80()
{
  result = qword_B9D28;
  if (!qword_B9D28)
  {
    sub_14E2C(&qword_B9CD8, &qword_8BC10);
    sub_14E2C(&qword_B9CC8, &qword_8BC00);
    sub_14E2C(&qword_B81C0, &qword_88E98);
    sub_14E2C(&qword_B9CC0, &qword_8BBF8);
    sub_14F24(&qword_B9CF0, &qword_B9CC0, &qword_8BBF8, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    sub_6CCCC();
    swift_getOpaqueTypeConformance2();
    sub_6C2B4(&qword_B78E0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9D28);
  }

  return result;
}

uint64_t sub_6D12C(uint64_t a1)
{
  v2 = v1;
  sub_80A98();
  if (!a1)
  {
    v10 = _swiftEmptyDictionarySingleton;
LABEL_27:
    *(v2 + 16) = v10;
    v28 = v10[2];

    if (v28 && (v29 = sub_34B30(1752457584, 0xE400000000000000), (v30 & 1) != 0))
    {
      v31 = (v10[7] + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v41[0] = v33;
      v41[1] = v32;
      v40[0] = 47;
      v40[1] = 0xE100000000000000;
      sub_14ED0();
      v34 = sub_81BA8();
    }

    else
    {
      v34 = 0;
    }

    *(v2 + 24) = v34;

    return v2;
  }

  v36 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyDictionarySingleton;
  v37 = a1;
  while (v7)
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    sub_3CC30(*(a1 + 48) + 40 * v12, v41);
    sub_22B2C(*(a1 + 56) + 32 * v12, v42);
    sub_3CC30(v41, v40);
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    sub_22B2C(v42, v40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v10;
    v14 = sub_34B30(v38, v39);
    v16 = v10[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_33;
    }

    v20 = v15;
    if (v10[3] < v19)
    {
      sub_371CC(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_34B30(v38, v39);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_35;
      }

LABEL_19:
      v10 = v40[0];
      if ((v20 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v23 = v14;
    sub_390A0();
    v14 = v23;
    v10 = v40[0];
    if ((v20 & 1) == 0)
    {
LABEL_22:
      v10[(v14 >> 6) + 8] |= 1 << v14;
      v24 = (v10[6] + 16 * v14);
      *v24 = v38;
      v24[1] = v39;
      v25 = (v10[7] + 16 * v14);
      *v25 = v38;
      v25[1] = v39;
      v26 = v10[2];
      v18 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v18)
      {
        goto LABEL_34;
      }

      v10[2] = v27;
      goto LABEL_24;
    }

LABEL_20:
    v22 = (v10[7] + 16 * v14);
    *v22 = v38;
    v22[1] = v39;

LABEL_24:
    a1 = v37;
LABEL_6:
    v7 &= v7 - 1;
    sub_6D9CC(v41);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v2 = v36;
      goto LABEL_27;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_81E38();
  __break(1u);
  return result;
}

uint64_t sub_6D4B4()
{

  v1 = OBJC_IVAR____TtC17StorageSettingsUI18DeepLinkParameters___observationRegistrar;
  v2 = sub_80AA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeepLinkParameters(uint64_t a1)
{
  result = qword_B9D68;
  if (!qword_B9D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6D5B4(uint64_t a1)
{
  result = sub_80AA8();
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

uint64_t sub_6D65C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = *(*a2 + 24);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_6D6B0(v2, v3);
  }
}

uint64_t sub_6D6B0(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_81E18() & 1) == 0)
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

uint64_t sub_6D740(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_6D980();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_81D18();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_81D18();
LABEL_26:
        v17 = v16;
        v18 = sub_81B88();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_81B88();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_81D88();
  }

  result = sub_81D88();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_6D980()
{
  result = qword_B88D0;
  if (!qword_B88D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B88D0);
  }

  return result;
}

uint64_t sub_6D9CC(uint64_t a1)
{
  v2 = sub_147EC(&qword_B9E50, qword_8BD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6DA48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Application(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_6DB14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Application(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppListView(uint64_t a1)
{
  result = qword_B9EB0;
  if (!qword_B9EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6DC04(uint64_t a1)
{
  sub_6C944(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Application(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_6DCA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = v2 + *(v9 + 28);
  if (*(v12 + 130) == 1)
  {
    v13 = *(v12 + 131) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  sub_6F17C(v2, &v22 - v10);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_6F1E4(v11, v15 + v14);
  sub_6F17C(v2, v8);
  v16 = swift_allocObject();
  sub_6F1E4(v8, v16 + v14);
  *a1 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v17 = sub_147EC(&qword_B9EE8, &qword_8BE28);
  v18 = v17[9];
  *(a1 + v18) = swift_getKeyPath();
  sub_147EC(&qword_B8680, &unk_895A0);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v17[10]) = v13 & 1;
  v20 = (a1 + v17[11]);
  *v20 = sub_6F248;
  v20[1] = v15;
  v21 = (a1 + v17[12]);
  *v21 = sub_6F3FC;
  v21[1] = v16;
  return result;
}

uint64_t sub_6DED4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppListView(0);
  sub_1B4B0(a1);
  v2 = sub_80B08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_6DF64(uint64_t a1)
{
  sub_147EC(&qword_B9EF0, &qword_8BE68);
  sub_14F24(&qword_B9EF8, &qword_B9EF0, &qword_8BE68, &protocol conformance descriptor for HStack<A>);
  sub_432C8();
  return sub_814B8();
}

uint64_t sub_6E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_147EC(&qword_B9F00, &qword_8BEA0);
  return sub_6E090(a1, a2 + *(v4 + 44));
}

uint64_t sub_6E090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v80 = sub_147EC(&qword_B9F08, &qword_8BEA8);
  __chkstk_darwin(v80);
  v68 = &v65 - v3;
  v77 = sub_147EC(&qword_B9F10, &unk_8BEB0);
  __chkstk_darwin(v77);
  v78 = &v65 - v4;
  v72 = sub_147EC(&qword_B7B68, &unk_8A470);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v65 - v5;
  v75 = sub_147EC(&qword_B9078, &qword_8BEC0);
  __chkstk_darwin(v75);
  v71 = &v65 - v6;
  v7 = sub_147EC(&qword_B9F18, &qword_8BEC8);
  v8 = __chkstk_darwin(v7 - 8);
  v79 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v65 - v10;
  v11 = sub_147EC(&qword_B9F20, &qword_8BED0);
  v12 = __chkstk_darwin(v11 - 8);
  v76 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = sub_147EC(&qword_B9F28, &qword_8BED8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v20 = sub_147EC(&qword_B9F30, &qword_8BEE0);
  v21 = __chkstk_darwin(v20 - 8);
  v73 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v65 - v23;
  v25 = a1;
  v26 = a1 + *(type metadata accessor for AppListView(0) + 20);
  v27 = *(v26 + 64);
  if (v27 != 1 || (v29 = *v26, v28 = *(v26 + 8), *v26 == 0xD000000000000010) && 0x8000000000094710 == v28 || (sub_81E18() & 1) != 0 || v29 == 0xD000000000000019 && 0x8000000000094730 == v28 || (sub_81E18() & 1) != 0)
  {
    (*(v17 + 56))(v24, 1, 1, v16);
  }

  else
  {
    v66 = sub_81478();
    v82 = v66;
    v84 = 0;
    v85 = 0xE000000000000000;
    v67 = v15;
    sub_81D08(26);

    v84 = 0xD000000000000018;
    v85 = 0x8000000000096D50;
    v88._countAndFlagsBits = v29;
    v88._object = v28;
    sub_81978(v88);
    sub_81398();
    v15 = v67;

    v62 = sub_81448();
    KeyPath = swift_getKeyPath();
    v64 = &v19[*(v16 + 36)];
    *v64 = KeyPath;
    v64[1] = v62;
    sub_5F2F0(v19, v24, &qword_B9F28, &qword_8BED8);
    (*(v17 + 56))(v24, 0, 1, v16);
  }

  *v15 = sub_81058();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v30 = sub_147EC(&qword_B9F38, &qword_8BEE8);
  sub_6EA78(v25, &v15[*(v30 + 44)]);
  if ((v27 - 3) <= 2)
  {
    v31 = v15;
    v32 = v69;
    sub_80D28();
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_81D08(25);

    v84 = 0xD000000000000017;
    v85 = 0x8000000000096D10;
    sub_81978(*v26);
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470, &protocol conformance descriptor for ProgressView<A, B>);
    v33 = v71;
    v34 = v72;
    sub_81398();

    (*(v70 + 8))(v32, v34);
    v35 = &qword_B9078;
    v36 = &qword_8BEC0;
    sub_14F6C(v33, v78, &qword_B9078, &qword_8BEC0);
    swift_storeEnumTagMultiPayload();
    sub_6F4C0();
    sub_6F5F0();
    v37 = v74;
    sub_810A8();
    v38 = v33;
LABEL_13:
    sub_14FD4(v38, v35, v36);
    v53 = v24;
    v54 = v73;
    sub_14F6C(v24, v73, &qword_B9F30, &qword_8BEE0);
    v55 = v31;
    v56 = v76;
    sub_14F6C(v31, v76, &qword_B9F20, &qword_8BED0);
    v57 = v79;
    sub_14F6C(v37, v79, &qword_B9F18, &qword_8BEC8);
    v58 = v81;
    sub_14F6C(v54, v81, &qword_B9F30, &qword_8BEE0);
    v59 = v37;
    v60 = sub_147EC(&qword_B9F68, &unk_8BF30);
    sub_14F6C(v56, v58 + v60[12], &qword_B9F20, &qword_8BED0);
    v61 = v58 + v60[16];
    *v61 = 0;
    *(v61 + 8) = 1;
    sub_14F6C(v57, v58 + v60[20], &qword_B9F18, &qword_8BEC8);
    sub_14FD4(v59, &qword_B9F18, &qword_8BEC8);
    sub_14FD4(v55, &qword_B9F20, &qword_8BED0);
    sub_14FD4(v53, &qword_B9F30, &qword_8BEE0);
    sub_14FD4(v57, &qword_B9F18, &qword_8BEC8);
    sub_14FD4(v56, &qword_B9F20, &qword_8BED0);
    return sub_14FD4(v54, &qword_B9F30, &qword_8BEE0);
  }

  v39 = *(v26 + 48);
  v40 = *(v26 + 56);
  result = v39 + v40;
  if (!__OFADD__(v39, v40))
  {
    v31 = v15;
    v84 = sub_81E68();
    v85 = v42;
    sub_14ED0();
    v43 = sub_81288();
    v45 = v44;
    v84 = v43;
    v85 = v44;
    v47 = v46 & 1;
    v86 = v46 & 1;
    v87 = v48;
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_81D08(26);

    v82 = 0xD000000000000018;
    v83 = 0x8000000000096CF0;
    sub_81978(*v26);
    v49 = v68;
    sub_81398();

    sub_15034(v43, v45, v47);

    v50 = sub_81448();
    v51 = swift_getKeyPath();
    v52 = (v49 + *(v80 + 36));
    *v52 = v51;
    v52[1] = v50;
    v35 = &qword_B9F08;
    v36 = &qword_8BEA8;
    sub_14F6C(v49, v78, &qword_B9F08, &qword_8BEA8);
    swift_storeEnumTagMultiPayload();
    sub_6F4C0();
    sub_6F5F0();
    v37 = v74;
    sub_810A8();
    v38 = v49;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_6EA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_147EC(&qword_B78C8, &unk_89660);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v68 = &v63 - v5;
  v6 = sub_147EC(&unk_B8230, qword_88A50);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_80A38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_147EC(&qword_B9F70, &qword_8BF40);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v63 - v16;
  v17 = (a1 + *(type metadata accessor for AppListView(0) + 20));
  object = v17[1]._object;
  countAndFlagsBits = v17[1]._countAndFlagsBits;
  v79 = object;
  sub_14ED0();

  v19 = sub_81288();
  v72 = v20;
  v73 = v19;
  v69 = v21;
  v23 = v22;
  v24 = type metadata accessor for Application(0);
  sub_14F6C(v17 + *(v24 + 72), v8, &unk_B8230, qword_88A50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_14FD4(v8, &unk_B8230, qword_88A50);
    v25 = 1;
    v26 = v70;
  }

  else
  {
    v63 = v9;
    v64 = v10;
    (*(v10 + 32))();
    v27 = sub_818E8();
    v28 = sub_818E8();
    v29 = STLocalizedString(v27);

    sub_81928();
    v65 = v23;

    sub_147EC(&qword_B7CB0, &qword_88A40);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_886D0;
    v31 = sub_80A28();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_1A83C();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    v34 = sub_81938();
    v36 = v35;

    countAndFlagsBits = v34;
    v79 = v36;
    v37 = sub_81288();
    v39 = v38;
    v41 = v40;
    sub_811F8();
    v42 = sub_81258();
    v66 = v15;
    v67 = a2;
    v44 = v43;
    v46 = v45;

    sub_15034(v37, v39, v41 & 1);

    sub_81448();
    v47 = sub_81228();
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v54 = v46 & 1;
    v55 = v44;
    v15 = v66;
    a2 = v67;
    sub_15034(v42, v55, v54);

    countAndFlagsBits = v47;
    v79 = v49;
    v51 &= 1u;
    v80 = v51;
    v81 = v53;
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_81D08(34);

    v76 = 0xD000000000000020;
    v77 = 0x8000000000096D90;
    sub_81978(*v17);
    v56 = v68;
    sub_81398();

    v57 = v51;
    v23 = v65;
    sub_15034(v47, v49, v57);

    (*(v64 + 8))(v71, v63);
    v26 = v70;
    sub_5F2F0(v56, v70, &qword_B78C8, &unk_89660);
    v25 = 0;
  }

  (*(v74 + 56))(v26, v25, 1, v75);
  sub_14F6C(v26, v15, &qword_B9F70, &qword_8BF40);
  v59 = v72;
  v58 = v73;
  *a2 = v73;
  *(a2 + 8) = v59;
  v60 = v69 & 1;
  *(a2 + 16) = v69 & 1;
  *(a2 + 24) = v23;
  v61 = sub_147EC(&qword_B9F78, qword_8BF48);
  sub_14F6C(v15, a2 + *(v61 + 48), &qword_B9F70, &qword_8BF40);
  sub_16C28(v58, v59, v60);

  sub_14FD4(v26, &qword_B9F70, &qword_8BF40);
  sub_14FD4(v15, &qword_B9F70, &qword_8BF40);
  sub_15034(v58, v59, v60);
}

uint64_t sub_6F0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppListView(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = *(v3 + 104);
  v6 = *(v3 + 112);
  v8 = *(v3 + 96);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  *(a2 + 56) = 2;
  sub_2092C(v4, v5, v8);
}

uint64_t sub_6F17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F260()
{
  v1 = (type metadata accessor for AppListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  sub_431D4(*(v5 + 80), *(v5 + 88), *(v5 + 96));

  v6 = *(type metadata accessor for Application(0) + 72);
  v7 = sub_80A38();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6F414(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppListView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_6F4C0()
{
  result = qword_B9F40;
  if (!qword_B9F40)
  {
    sub_14E2C(&qword_B9078, &qword_8BEC0);
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470, &protocol conformance descriptor for ProgressView<A, B>);
    sub_6F5A8(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9F40);
  }

  return result;
}

uint64_t sub_6F5A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6F5F0()
{
  result = qword_B9F48;
  if (!qword_B9F48)
  {
    sub_14E2C(&qword_B9F08, &qword_8BEA8);
    sub_6F6A8();
    sub_14F24(&qword_B9F58, &qword_B9F60, &qword_8BF28, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9F48);
  }

  return result;
}

unint64_t sub_6F6A8()
{
  result = qword_B9F50;
  if (!qword_B9F50)
  {
    sub_14E2C(&qword_B78C8, &unk_89660);
    sub_6F5A8(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9F50);
  }

  return result;
}

uint64_t sub_6F7AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_80C18();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StorageShared(0);
  sub_76720(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  *a2 = sub_80E68();
  a2[1] = v11;
  v12 = type metadata accessor for DetailView(0);
  v13 = a2 + v12[6];
  v24[15] = 0;
  sub_814C8();
  v14 = v25;
  *v13 = v24[16];
  *(v13 + 1) = v14;
  sub_7571C(a1, a2 + v12[5], type metadata accessor for Application);
  v15 = *a1;
  v16 = a1[1];
  if (v15 == sub_81928() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_81E18();

    if ((v18 & 1) == 0)
    {
      v19 = 0;
      goto LABEL_7;
    }
  }

  type metadata accessor for VisionProDataApplicationModel(0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) = 1;
  sub_80A98();
  sub_80C08();
  (*(v8 + 32))(v19 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel_enrollmentAssetService, v10, v7);
  v20 = sub_81AB8();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;

  sub_68AE4(0, 0, v6, &unk_8BF90, v21);

LABEL_7:
  v22 = v12[7];
  result = sub_2095C(a1);
  *(a2 + v22) = v19;
  return result;
}

id sub_6FB64(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DetailViewWrapper();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for DetailView(uint64_t a1)
{
  result = qword_BA010;
  if (!qword_BA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6FC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_632D4(a1, v4, v5, v6);
}

uint64_t sub_6FCD4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_147EC(&qword_BA080, &qword_8C080);
  v4 = __chkstk_darwin(v3 - 8);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_147EC(&qword_BA088, &qword_8C088);
  v9 = __chkstk_darwin(v8 - 8);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_147EC(&qword_BA090, &qword_8C090);
  __chkstk_darwin(v13);
  v15 = (&v39 - v14);
  v16 = sub_147EC(&qword_BA098, &qword_8C098);
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = __chkstk_darwin(v16);
  v42 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v47 = a1;
  sub_71B34(a1, v15);
  sub_147EC(&qword_BA0A0, &qword_8C0A0);
  sub_14F24(&qword_BA0A8, &qword_BA0A0, &qword_8C0A0, &protocol conformance descriptor for TupleView<A>);
  sub_14F24(&qword_BA0B0, &qword_BA090, &qword_8C090, &protocol conformance descriptor for TupleView<A>);
  sub_81638();
  v21 = type metadata accessor for DetailView(0);
  if (a1[*(v21 + 20) + 128] == 1)
  {
    __chkstk_darwin(v21);
    *(&v39 - 2) = a1;
    v48 = sub_1EC08();
    v49 = v22;
    v50 = v23 & 1;
    v51 = v24;
    sub_147EC(&qword_BA0C8, &qword_8C0B8);
    sub_14F24(&qword_BA0D0, &qword_BA0C8, &qword_8C0B8, &protocol conformance descriptor for HStack<A>);
    sub_81638();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_147EC(&qword_BA0B8, &qword_8C0A8);
  (*(*(v26 - 8) + 56))(v12, v25, 1, v26);
  sub_72688(v7);
  v28 = v42;
  v27 = v43;
  v29 = *(v43 + 16);
  v40 = v20;
  v30 = v44;
  v29(v42, v20, v44);
  v31 = v41;
  sub_14F6C(v12, v41, &qword_BA088, &qword_8C088);
  v32 = v46;
  sub_14F6C(v7, v46, &qword_BA080, &qword_8C080);
  v39 = v12;
  v33 = v7;
  v34 = v31;
  v35 = v45;
  v29(v45, v28, v30);
  v36 = sub_147EC(&qword_BA0C0, &qword_8C0B0);
  sub_14F6C(v34, &v35[*(v36 + 48)], &qword_BA088, &qword_8C088);
  sub_14F6C(v32, &v35[*(v36 + 64)], &qword_BA080, &qword_8C080);
  sub_14FD4(v33, &qword_BA080, &qword_8C080);
  sub_14FD4(v39, &qword_BA088, &qword_8C088);
  v37 = *(v27 + 8);
  v37(v40, v30);
  sub_14FD4(v32, &qword_BA080, &qword_8C080);
  sub_14FD4(v34, &qword_BA088, &qword_8C088);
  return (v37)(v28, v30);
}

uint64_t sub_70264@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a2;
  v3 = sub_147EC(&qword_BA1B8, &qword_8C1A0);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v57 - v4;
  v5 = sub_147EC(&qword_BA1C0, &qword_8C1A8);
  v6 = __chkstk_darwin(v5 - 8);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v57 - v8;
  v9 = *(type metadata accessor for DetailView(0) + 20);
  v64 = a1;
  v10 = (a1 + v9);
  v12 = *(a1 + v9 + 80);
  v11 = *(a1 + v9 + 88);
  v74 = *(v10 + 96);
  v13 = v10[14];
  v71 = v10[13];
  v14 = v10[3];
  v69 = v10[2];
  v15 = v10[5];
  v67 = v10[4];
  v62 = *(v10 + 64);
  v16 = *v10;
  v17 = v10[1];
  v19 = v16 == sub_81928() && v17 == v18;
  v70 = v13;
  v68 = v14;
  v66 = v12;
  v61 = v15;
  if (v19)
  {
    sub_2092C(v12, v11, v74);

    goto LABEL_8;
  }

  v20 = sub_81E18();
  sub_2092C(v12, v11, v74);

  if (v20)
  {
LABEL_8:
    *&v159[0] = *(v10 + *(type metadata accessor for Application(0) + 84));

    sub_147EC(&qword_B8268, &qword_88FA0);
    sub_147EC(&qword_BA210, &qword_8C1F0);
    sub_14F24(&qword_BA218, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
    sub_761F8();
    sub_762D0();
    v21 = v58;
    sub_81608();
    v22 = v59;
    v23 = v73;
    v24 = v21;
    v25 = v60;
    (*(v59 + 32))(v73, v24, v60);
    (*(v22 + 56))(v23, 0, 1, v25);
    goto LABEL_9;
  }

  (*(v59 + 56))(v73, 1, 1, v60);
LABEL_9:
  v65 = v11;
  if (v10[7] && v10[6])
  {
    v26 = sub_81008();
    LOBYTE(v90) = 1;
    sub_715B4(v159);
    v120 = v159[2];
    v121 = v159[3];
    v122 = v159[4];
    v118 = v159[0];
    v119 = v159[1];
    v123[2] = v159[2];
    v123[3] = v159[3];
    v123[4] = v159[4];
    v123[1] = v159[1];
    v123[0] = v159[0];
    sub_14F6C(&v118, &v150, &qword_BA1C8, &qword_8C1B0);
    sub_14FD4(v123, &qword_BA1C8, &qword_8C1B0);
    *(v159 + 7) = v118;
    *(&v159[1] + 7) = v119;
    *(&v159[4] + 7) = v122;
    *(&v159[3] + 7) = v121;
    *(&v159[2] + 7) = v120;
    v124 = v26;
    v125[0] = v90;
    *&v125[17] = v159[1];
    *&v125[1] = v159[0];
    *&v125[80] = *(&v122 + 1);
    *&v125[65] = v159[4];
    *&v125[49] = v159[3];
    *&v125[33] = v159[2];
    v27 = sub_81008();
    LOBYTE(v90) = 1;
    sub_71774(v159);
    v128 = v159[2];
    v129 = v159[3];
    v130 = v159[4];
    v127 = v159[1];
    v126 = v159[0];
    v131[2] = v159[2];
    v131[3] = v159[3];
    v131[4] = v159[4];
    v131[1] = v159[1];
    v131[0] = v159[0];
    sub_14F6C(&v126, &v150, &qword_BA1C8, &qword_8C1B0);
    sub_14FD4(v131, &qword_BA1C8, &qword_8C1B0);
    *(v159 + 7) = v126;
    *(&v159[1] + 7) = v127;
    *(&v159[4] + 7) = v130;
    *(&v159[3] + 7) = v129;
    *(&v159[2] + 7) = v128;
    v132[0] = v27;
    v132[1] = 0;
    v133[0] = v90;
    *&v133[17] = v159[1];
    *&v133[1] = v159[0];
    *&v133[80] = *(&v130 + 1);
    *&v133[65] = v159[4];
    *&v133[49] = v159[3];
    *&v133[33] = v159[2];
    v115 = *&v125[48];
    v116 = *&v125[64];
    v111 = v124;
    v112 = *v125;
    v113 = *&v125[16];
    v114 = *&v125[32];
    v144 = *v133;
    v143 = v27;
    v148 = *&v133[64];
    v147 = *&v133[48];
    v145 = *&v133[16];
    v146 = *&v133[32];
    v134[1] = *v125;
    v134[0] = v124;
    v134[5] = *&v125[64];
    v134[4] = *&v125[48];
    v134[2] = *&v125[16];
    v134[3] = *&v125[32];
    v104 = v124;
    v105 = *v125;
    v108 = *&v125[48];
    v109 = *&v125[64];
    v106 = *&v125[16];
    v107 = *&v125[32];
    v137 = *v133;
    v136 = v27;
    v141 = *&v133[64];
    v140 = *&v133[48];
    v138 = *&v133[16];
    v139 = *&v133[32];
    *(&v110[2] + 8) = *&v133[16];
    *(&v110[1] + 8) = *v133;
    v117 = *&v125[80];
    v149 = *&v133[80];
    v135 = *&v125[80];
    v142 = *&v133[80];
    *(v110 + 8) = v27;
    *&v110[0] = *&v125[80];
    *(&v110[6] + 1) = *&v133[80];
    *(&v110[5] + 8) = *&v133[64];
    *(&v110[4] + 8) = *&v133[48];
    *(&v110[3] + 8) = *&v133[32];
    sub_14F6C(&v124, v159, &qword_BA1D0, &qword_8C1B8);
    sub_14F6C(v132, v159, &qword_BA1D0, &qword_8C1B8);
    sub_14F6C(v134, v159, &qword_BA1D0, &qword_8C1B8);
    sub_14F6C(&v136, v159, &qword_BA1D0, &qword_8C1B8);
    sub_14FD4(&v143, &qword_BA1D0, &qword_8C1B8);
    v80 = v115;
    v81 = v116;
    *&v82 = v117;
    v76 = v111;
    v77 = v112;
    v78 = v113;
    v79 = v114;
    sub_14FD4(&v76, &qword_BA1D0, &qword_8C1B8);
    v155 = v110[4];
    v156 = v110[5];
    v157 = v110[6];
    v151[5] = v110[0];
    v152 = v110[1];
    v154 = v110[3];
    v153 = v110[2];
    v151[1] = v106;
    v151[2] = v107;
    v151[4] = v109;
    v151[3] = v108;
    v151[0] = v105;
    v150 = v104;
    sub_76114(&v150);
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v160 = v151[5];
    v161 = v152;
    v162 = v153;
    v163 = v154;
    v159[2] = v151[1];
    v159[3] = v151[2];
    v159[4] = v151[3];
    v159[5] = v151[4];
    v159[0] = v150;
    v159[1] = v151[0];
    sub_147EC(&qword_BA1D8, &qword_8C1C0);
    sub_147EC(&qword_BA1E0, &qword_8C1C8);
    sub_14F24(&qword_BA1E8, &qword_BA1D8, &qword_8C1C0, &protocol conformance descriptor for HStack<A>);
    sub_14F24(&qword_BA1F0, &qword_BA1E0, &qword_8C1C8, &protocol conformance descriptor for TupleView<A>);
    sub_810A8();
    sub_14FD4(v132, &qword_BA1D0, &qword_8C1B8);
    sub_14FD4(&v124, &qword_BA1D0, &qword_8C1B8);
    v164 = v100;
    v165 = v101;
    v166 = v102;
    v167 = v103;
    v160 = v96;
    v161 = v97;
    v162 = v98;
    v163 = v99;
    v159[2] = v92;
    v159[3] = v93;
    v159[4] = v94;
    v159[5] = v95;
    v159[0] = v90;
    v159[1] = v91;
  }

  else
  {
    v28 = sub_81008();
    LOBYTE(v90) = 1;
    sub_7112C(v64, v159);
    v145 = v159[2];
    v146 = v159[3];
    v147 = v159[4];
    *&v148 = *&v159[5];
    v143 = v159[0];
    v144 = v159[1];
    *&v81 = *&v159[5];
    v78 = v159[2];
    v79 = v159[3];
    v80 = v159[4];
    v76 = v159[0];
    v77 = v159[1];
    sub_14F6C(&v143, &v150, &qword_BA208, &unk_8C1E0);
    sub_14FD4(&v76, &qword_BA208, &unk_8C1E0);
    *(&v75[2] + 7) = v145;
    *(&v75[3] + 7) = v146;
    *(&v75[4] + 7) = v147;
    *(&v75[5] + 7) = v148;
    *(v75 + 7) = v143;
    *(&v75[1] + 7) = v144;
    v150 = v28;
    LOBYTE(v151[0]) = v90;
    *(&v151[1] + 1) = v75[1];
    *(v151 + 1) = v75[0];
    v151[5] = *(&v75[4] + 15);
    *(&v151[4] + 1) = v75[4];
    *(&v151[3] + 1) = v75[3];
    *(&v151[2] + 1) = v75[2];
    sub_761F0(&v150);
    v100 = v155;
    v101 = v156;
    v102 = v157;
    v103 = v158;
    v96 = v151[5];
    v97 = v152;
    v98 = v153;
    v99 = v154;
    v92 = v151[1];
    v93 = v151[2];
    v94 = v151[3];
    v95 = v151[4];
    v90 = v150;
    v91 = v151[0];
    sub_147EC(&qword_BA1D8, &qword_8C1C0);
    sub_147EC(&qword_BA1E0, &qword_8C1C8);
    sub_14F24(&qword_BA1E8, &qword_BA1D8, &qword_8C1C0, &protocol conformance descriptor for HStack<A>);
    sub_14F24(&qword_BA1F0, &qword_BA1E0, &qword_8C1C8, &protocol conformance descriptor for TupleView<A>);
    sub_810A8();
  }

  v29 = v62 == 1;
  v62 = v62 == 1;
  sub_71938(&v150);
  v64 = *(&v150 + 1);
  v60 = v150;
  v30 = *&v151[0];
  LODWORD(v59) = BYTE8(v151[0]);
  v31 = v72;
  sub_14F6C(v73, v72, &qword_BA1C0, &qword_8C1A8);
  v86 = v164;
  v87 = v165;
  v88 = v166;
  v89 = v167;
  v82 = v160;
  v83 = v161;
  v84 = v162;
  v85 = v163;
  v78 = v159[2];
  v79 = v159[3];
  v80 = v159[4];
  v81 = v159[5];
  v76 = v159[0];
  v77 = v159[1];
  *&v136 = v66;
  *(&v136 + 1) = v65;
  LOBYTE(v137) = v74;
  *(&v137 + 1) = v169[0];
  DWORD1(v137) = *(v169 + 3);
  *(&v137 + 1) = v71;
  *&v138 = v70;
  *(&v138 + 1) = v69;
  *&v139 = v68;
  *(&v139 + 1) = v67;
  v32 = v61;
  *&v140 = v61;
  BYTE8(v140) = v29;
  *(&v140 + 9) = *v168;
  HIDWORD(v140) = *&v168[3];
  v141 = 0uLL;
  v33 = v139;
  v34 = v63;
  v63[2] = v138;
  v34[3] = v33;
  v35 = v141;
  v34[4] = v140;
  v34[5] = v35;
  v36 = v137;
  *v34 = v136;
  v34[1] = v36;
  v37 = sub_147EC(&qword_BA1F8, &qword_8C1D0);
  sub_14F6C(v31, v34 + v37[12], &qword_BA1C0, &qword_8C1A8);
  v38 = v37[16];
  v39 = v87;
  v100 = v86;
  v101 = v87;
  v40 = v88;
  v102 = v88;
  v41 = v82;
  v42 = v83;
  v96 = v82;
  v97 = v83;
  v43 = v84;
  v44 = v85;
  v98 = v84;
  v99 = v85;
  v45 = v80;
  v46 = v81;
  v94 = v80;
  v95 = v81;
  v47 = v78;
  v48 = v79;
  v92 = v78;
  v93 = v79;
  v49 = v76;
  v50 = v77;
  v90 = v76;
  v91 = v77;
  v51 = v34 + v38;
  *(v51 + 10) = v86;
  *(v51 + 11) = v39;
  *(v51 + 12) = v40;
  *(v51 + 6) = v41;
  *(v51 + 7) = v42;
  *(v51 + 8) = v43;
  *(v51 + 9) = v44;
  *(v51 + 2) = v47;
  *(v51 + 3) = v48;
  *(v51 + 4) = v45;
  *(v51 + 5) = v46;
  v103 = v89;
  v51[208] = v89;
  *v51 = v49;
  *(v51 + 1) = v50;
  v52 = v34 + v37[20];
  v53 = v60;
  v54 = v64;
  *v52 = v60;
  *(v52 + 1) = v54;
  *(v52 + 2) = v30;
  v55 = v59;
  v52[24] = v59;
  sub_76120(&v136, &v150);
  sub_14F6C(&v90, &v150, &qword_BA200, &qword_8C1D8);
  sub_7617C(v53, v54, v30, v55);
  sub_14FD4(v73, &qword_BA1C0, &qword_8C1A8);
  sub_7618C(v53, v54, v30, v55);
  v155 = v86;
  v156 = v87;
  v157 = v88;
  v158 = v89;
  v151[5] = v82;
  v152 = v83;
  v153 = v84;
  v154 = v85;
  v151[1] = v78;
  v151[2] = v79;
  v151[3] = v80;
  v151[4] = v81;
  v150 = v76;
  v151[0] = v77;
  sub_14FD4(&v150, &qword_BA200, &qword_8C1D8);
  sub_14FD4(v72, &qword_BA1C0, &qword_8C1A8);
  *&v143 = v66;
  *(&v143 + 1) = v65;
  LOBYTE(v144) = v74;
  *(&v144 + 1) = v169[0];
  DWORD1(v144) = *(v169 + 3);
  *(&v144 + 1) = v71;
  *&v145 = v70;
  *(&v145 + 1) = v69;
  *&v146 = v68;
  *(&v146 + 1) = v67;
  *&v147 = v32;
  BYTE8(v147) = v62;
  *(&v147 + 9) = *v168;
  HIDWORD(v147) = *&v168[3];
  v148 = 0uLL;
  return sub_7619C(&v143);
}

uint64_t sub_7110C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (!v4)
  {
    v3 = 0;
    v2 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v2;
}

uint64_t sub_7112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DetailView(0) + 20));
  if (*(v3[15] + 16))
  {
    v4 = sub_818E8();
    v5 = sub_818E8();
    v6 = STLocalizedString(v4);

    v7 = sub_81928();
    v9 = v8;

    *&v28 = v7;
    *(&v28 + 1) = v9;
    sub_14ED0();
    sub_81288();
  }

  else
  {
    v10 = *v3;
    v11 = v3[1];
    if (v10 != sub_81928() || v11 != v12)
    {
      sub_81E18();
    }

    v14 = sub_818E8();
    v15 = sub_818E8();
    v16 = STLocalizedString(v14);

    v17 = sub_81928();
    v19 = v18;

    *&v28 = v17;
    *(&v28 + 1) = v19;
    sub_14ED0();
    sub_81288();
    sub_810A8();
  }

  sub_147EC(&qword_BA238, &qword_8C1F8);
  sub_76324();
  result = sub_810A8();
  if (__OFADD__(v3[6], v3[7]))
  {
    __break(1u);
  }

  else
  {
    sub_763A0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    sub_81E68();
    sub_14ED0();
    v21 = sub_81288();
    v27 = v22;
    v24 = v23;
    v26 = v25;
    sub_763A0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    v24 &= 1u;
    sub_16C28(v21, v27, v24);

    sub_76430(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    *a2 = v28;
    *(a2 + 16) = v29;
    *(a2 + 32) = v30;
    *(a2 + 33) = v31;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    *(a2 + 56) = v21;
    *(a2 + 64) = v27;
    *(a2 + 72) = v24;
    *(a2 + 80) = v26;
    sub_15034(v21, v27, v24);

    return sub_76430(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
  }

  return result;
}

uint64_t sub_715B4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_818E8();
  v4 = sub_818E8();
  v5 = STLocalizedString(v3);

  sub_81928();
  sub_14ED0();
  v6 = sub_81288();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  type metadata accessor for DetailView(0);
  sub_81E68();
  v13 = sub_81288();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v17 & 1;
  *(a2 + 72) = v19;
  sub_16C28(v6, v8, v16);

  sub_16C28(v13, v15, v18);

  sub_15034(v13, v15, v18);

  sub_15034(v6, v8, v21);
}

uint64_t sub_71774@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_818E8();
  v4 = sub_818E8();
  v5 = STLocalizedString(v3);

  sub_81928();
  sub_14ED0();
  v6 = sub_81288();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  type metadata accessor for DetailView(0);
  sub_81E68();
  v13 = sub_81288();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v17 & 1;
  *(a2 + 72) = v19;
  sub_16C28(v6, v8, v16);

  sub_16C28(v13, v15, v18);

  sub_15034(v13, v15, v18);

  sub_15034(v6, v8, v21);
}

uint64_t sub_71938@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DetailView(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  if (sub_81928() == v4 && v6 == v5)
  {
  }

  else
  {
    v8 = sub_81E18();

    if ((v8 & 1) == 0)
    {
LABEL_14:
      sub_7627C();
      result = sub_810A8();
      *a1 = v18;
      *(a1 + 16) = v19;
      *(a1 + 24) = v20;
      return result;
    }
  }

  if (qword_B7848 != -1)
  {
    result = swift_once();
  }

  v10 = v3[6];
  v11 = v3[7];
  v12 = v10 + v11;
  if (!__OFADD__(v10, v11))
  {
    v13 = [objc_opt_self() mainICloudDriveDomainID];
    if (v13)
    {
      v14 = v13;
      sub_2160C(v13, v12);
    }

    v15 = sub_818E8();
    v16 = sub_818E8();
    v17 = STLocalizedString(v15);

    sub_81928();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_71B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = sub_147EC(&qword_BA198, &qword_8C150);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v40[-v4];
  v5 = sub_147EC(&qword_BA1A0, &qword_8C158);
  v6 = __chkstk_darwin(v5 - 8);
  v47 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v40[-v8];
  v10 = type metadata accessor for DetailView(0);
  v11 = *(v10 + 20);
  v45 = a1;
  v12 = (a1 + v11);
  v13 = (a1 + v11 + *(type metadata accessor for Application(0) + 76));
  v14 = v13[1];
  if (v14)
  {
    v49 = *v13;
    v50 = v14;
    sub_14ED0();

    v15 = sub_81288();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
    sub_16C28(v15, v16, v20 & 1);
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  v23 = *v12;
  v22 = v12[1];
  if (v23 == sub_81928() && v22 == v24)
  {
  }

  else
  {
    v26 = sub_81E18();

    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = *(v45 + *(v10 + 28));
  if (!v27)
  {
LABEL_17:
    v36 = 1;
    goto LABEL_18;
  }

  swift_getKeyPath();
  v49 = v27;
  sub_76720(&qword_B9890, type metadata accessor for VisionProDataApplicationModel, &unk_8B4E0);

  sub_80A68();

  if (*(v27 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) != 1)
  {

    goto LABEL_17;
  }

  if (qword_B78A8 != -1)
  {
    swift_once();
  }

  sub_81028();
  v28 = sub_81278();
  v42 = v29;
  v43 = v28;
  v41 = v30;
  v45 = v31;
  KeyPath = swift_getKeyPath();
  v33 = v44;
  v34 = &v44[*(v48 + 36)];
  sub_147EC(&qword_BA1B0, &qword_8C198);
  sub_80D88();

  *v34 = KeyPath;
  v35 = v42;
  *v33 = v43;
  *(v33 + 8) = v35;
  *(v33 + 16) = v41 & 1;
  *(v33 + 24) = v45;
  sub_760A4(v33, v9);
  v36 = 0;
LABEL_18:
  (*(v46 + 56))(v9, v36, 1, v48);
  v37 = v47;
  sub_14F6C(v9, v47, &qword_BA1A0, &qword_8C158);
  *a2 = v15;
  a2[1] = v17;
  a2[2] = v21;
  a2[3] = v19;
  v38 = sub_147EC(&qword_BA1A8, &qword_8C160);
  sub_14F6C(v37, a2 + *(v38 + 48), &qword_BA1A0, &qword_8C158);
  sub_4E778(v15, v17, v21, v19);
  sub_4E7BC(v15, v17, v21, v19);
  sub_14FD4(v9, &qword_BA1A0, &qword_8C158);
  sub_14FD4(v37, &qword_BA1A0, &qword_8C158);
  return sub_4E7BC(v15, v17, v21, v19);
}

uint64_t sub_71FFC(uint64_t a1)
{
  v2 = sub_80D98();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_80F58();
}

uint64_t sub_720C4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    sub_809A8(v1);
    v4 = v3;
    sub_3B59C(_swiftEmptyArrayStorage);
    isa = sub_81828().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  else
  {
    __break(1u);
  }

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_721A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_147EC(&qword_BA0D8, &qword_8C0C0);
  return sub_721F8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_721F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for DetailView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_147EC(&qword_B8780, &qword_8B7E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_147EC(&qword_B86B0, &qword_88500);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  sub_80C98();
  v15 = sub_80CB8();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  sub_7571C(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
  v16 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v17 = swift_allocObject();
  sub_75784(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for DetailView);
  v27 = a1;
  sub_81518();
  v18 = *(v9 + 16);
  v18(v12, v14, v8);
  v19 = v26;
  *v26 = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = sub_147EC(&qword_BA0E0, &qword_8C0C8);
  v18(&v20[*(v21 + 48)], v12, v8);
  v22 = &v20[*(v21 + 64)];
  *v22 = 0;
  v22[8] = 1;
  v23 = *(v9 + 8);
  v23(v14, v8);
  return (v23)(v12, v8);
}

void sub_7253C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (a1 + *(type metadata accessor for DetailView(0) + 20));
    v3 = *v2;
    v4 = v2[1];
    v5 = v1;
    sub_23040(v3, v4);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_76720(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    sub_80E58();
    __break(1u);
  }
}

uint64_t sub_72614@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DetailView(0);
  sub_1EB24();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_72688@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v57 = type metadata accessor for Application(0);
  __chkstk_darwin(v57);
  v54 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_147EC(&qword_BA0E8, &qword_8C0D0);
  __chkstk_darwin(v65);
  v55 = &v53 - v3;
  v63 = sub_147EC(&qword_BA0F0, &qword_8C0D8);
  __chkstk_darwin(v63);
  v64 = &v53 - v4;
  v71 = sub_147EC(&qword_BA0F8, &qword_8C0E0);
  __chkstk_darwin(v71);
  v6 = &v53 - v5;
  v60 = sub_147EC(&qword_BA100, &qword_8C0E8);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v53 - v7;
  v62 = sub_147EC(&qword_BA108, &qword_8C0F0);
  __chkstk_darwin(v62);
  v61 = &v53 - v8;
  v74 = sub_147EC(&qword_BA110, &qword_8C0F8);
  __chkstk_darwin(v74);
  v75 = &v53 - v9;
  v68 = sub_147EC(&qword_BA118, &qword_8C100);
  __chkstk_darwin(v68);
  v70 = &v53 - v10;
  v66 = sub_147EC(&qword_BA120, &qword_8C108);
  __chkstk_darwin(v66);
  v12 = (&v53 - v11);
  v69 = sub_147EC(&qword_BA128, &qword_8C110);
  __chkstk_darwin(v69);
  v67 = &v53 - v13;
  v73 = sub_147EC(&qword_BA130, &qword_8C118);
  __chkstk_darwin(v73);
  v72 = &v53 - v14;
  v15 = sub_147EC(&qword_BA138, &qword_8C120);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - v17;
  v19 = type metadata accessor for DetailView(0);
  v20 = *(v19 + 20);
  v58 = v1;
  v21 = v1 + v20;
  v23 = *(v1 + v20);
  v22 = *(v1 + v20 + 8);
  if (sub_81928() != v23 || v24 != v22)
  {
    v53 = v6;
    v25 = sub_81E18();

    if (v25)
    {
      goto LABEL_5;
    }

    if (sub_81928() == v23 && v29 == v22)
    {
    }

    else
    {
      v30 = sub_81E18();

      if ((v30 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (_IsInternalInstall())
    {
      v31 = *(v21 + *(v57 + 84));
      v77 = 0;
      v78 = 0xE000000000000000;

      sub_814C8();
      v32 = v79;
      v33 = v80;
      v34 = v81;
      *v12 = v31;
      v12[1] = v32;
      v12[2] = v33;
      v12[3] = v34;
      swift_storeEnumTagMultiPayload();
      sub_75EDC(&qword_BA150, &qword_BA138, &qword_8C120, sub_75CF8);
      sub_75D4C();

      v35 = v67;
      sub_810A8();
      sub_14F6C(v35, v70, &qword_BA128, &qword_8C110);
      swift_storeEnumTagMultiPayload();
      sub_75C40();
      sub_75DA0();
      v36 = v72;
      sub_810A8();
      sub_14FD4(v35, &qword_BA128, &qword_8C110);
      sub_14F6C(v36, v75, &qword_BA130, &qword_8C118);
      swift_storeEnumTagMultiPayload();
      sub_75BB4();
      sub_810A8();

      return sub_14FD4(v36, &qword_BA130, &qword_8C118);
    }

LABEL_13:
    if (sub_81928() == v23 && v37 == v22)
    {

      v38 = v53;
    }

    else
    {
      v39 = sub_81E18();

      v38 = v53;
      if ((v39 & 1) == 0)
      {
        if (sub_81928() == v23 && v45 == v22)
        {
        }

        else
        {
          v51 = sub_81E18();

          if ((v51 & 1) == 0)
          {
            swift_storeEnumTagMultiPayload();
            sub_75BB4();
            return sub_810A8();
          }
        }

        v52 = v54;
        sub_7571C(v21, v54, type metadata accessor for Application);
        v41 = v55;
        sub_43D78(v52, v55);
        v48 = &qword_BA0E8;
        v49 = &qword_8C0D0;
        sub_14F6C(v41, v64, &qword_BA0E8, &qword_8C0D0);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        sub_75E2C();
        sub_75FB8();
        sub_810A8();
        sub_14F6C(v38, v70, &qword_BA0F8, &qword_8C0E0);
        swift_storeEnumTagMultiPayload();
        sub_75C40();
        sub_75DA0();
        v50 = v72;
        sub_810A8();
        sub_14FD4(v38, &qword_BA0F8, &qword_8C0E0);
        sub_14F6C(v50, v75, &qword_BA130, &qword_8C118);
        swift_storeEnumTagMultiPayload();
        sub_75BB4();
        sub_810A8();
        sub_14FD4(v50, &qword_BA130, &qword_8C118);
        return sub_14FD4(v41, v48, v49);
      }
    }

    v40 = *(v58 + *(v19 + 28));
    if (v40)
    {
      swift_getKeyPath();
      v79 = v40;
      sub_76720(&qword_B9890, type metadata accessor for VisionProDataApplicationModel, &unk_8B4E0);

      sub_80A68();

      v41 = v61;
      if ((*(v40 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) & 1) == 0)
      {
        sub_75F64();
        v46 = v56;
        sub_81628();

        v44 = v59;
        v47 = v60;
        (*(v59 + 32))(v41, v46, v60);
        v43 = v47;
        v42 = 0;
        goto LABEL_26;
      }

      v42 = 1;
    }

    else
    {
      v42 = 1;
      v41 = v61;
    }

    v43 = v60;
    v44 = v59;
LABEL_26:
    (*(v44 + 56))(v41, v42, 1, v43);
    v48 = &qword_BA108;
    v49 = &qword_8C0F0;
    sub_14F6C(v41, v64, &qword_BA108, &qword_8C0F0);
    goto LABEL_27;
  }

LABEL_5:
  sub_75CF8();
  sub_81628();
  (*(v16 + 16))(v12, v18, v15);
  swift_storeEnumTagMultiPayload();
  sub_75EDC(&qword_BA150, &qword_BA138, &qword_8C120, sub_75CF8);
  sub_75D4C();
  v26 = v67;
  sub_810A8();
  sub_14F6C(v26, v70, &qword_BA128, &qword_8C110);
  swift_storeEnumTagMultiPayload();
  sub_75C40();
  sub_75DA0();
  v27 = v72;
  sub_810A8();
  sub_14FD4(v26, &qword_BA128, &qword_8C110);
  sub_14F6C(v27, v75, &qword_BA130, &qword_8C118);
  swift_storeEnumTagMultiPayload();
  sub_75BB4();
  sub_810A8();
  sub_14FD4(v27, &qword_BA130, &qword_8C118);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_733AC(uint64_t a1)
{
  v1[2] = a1;
  sub_147EC(&unk_B8240, &qword_88F50);
  v1[3] = swift_task_alloc();
  sub_81A88();
  v1[4] = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_7347C, v3, v2);
}

uint64_t sub_7347C()
{
  v1 = v0[2];

  v2 = type metadata accessor for DetailView(0);
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  v5 = v3[1];
  if (v4 == sub_81928() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_81E18();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v9 = *(v0[2] + *(v2 + 28));
  if (v9)
  {
    v10 = v0[3];
    v11 = sub_81AB8();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v9;

    sub_68AE4(0, 0, v10, &unk_8B518, v12);
  }

LABEL_10:

  v13 = v0[1];

  return v13();
}

uint64_t sub_73604@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StorageShared(0);
  sub_76720(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  result = sub_80E68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_73674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_814C8();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t sub_736D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(a1 - 8);
  v4 = *(v15 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_147EC(&qword_BA058, &qword_8C050);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v16 = v2;
  sub_147EC(&qword_BA060, &qword_8C058);
  sub_14F24(&qword_BA068, &qword_BA060, &qword_8C058, &protocol conformance descriptor for TupleView<A>);
  sub_81218();
  sub_14F24(&qword_BA070, &qword_BA058, &qword_8C050, &protocol conformance descriptor for Form<A>);
  sub_812A8();
  (*(v7 + 8))(v9, v6);
  sub_7571C(v2, v5, type metadata accessor for DetailView);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = swift_allocObject();
  sub_75784(v5, v11 + v10, type metadata accessor for DetailView);
  v12 = (a2 + *(sub_147EC(&qword_BA078, &unk_8C070) + 36));
  sub_80DA8();
  result = sub_81A98();
  *v12 = &unk_8C068;
  v12[1] = v11;
  return result;
}

uint64_t sub_73978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_147EC(&qword_BA260, &qword_8C348);
  sub_814D8();
  if (v29)
  {
    v5 = 0;
  }

  else
  {
    v5 = v30 == 0xE000000000000000;
  }

  if (v5)
  {

    goto LABEL_22;
  }

  v6 = sub_81E18();

  if (v6)
  {
LABEL_22:

    return a1;
  }

  v8 = a1[2];
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = 0;
  v10 = a1 + 8;
  a1 = _swiftEmptyArrayStorage;
  v26 = v10;
  do
  {
    v27 = a1;
    v11 = &v10[5 * v9];
    v12 = v9;
    while (1)
    {
      if (v12 >= v8)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_26;
      }

      v28 = v12 + 1;
      v13 = v8;
      v14 = *(v11 - 1);
      v15 = *v11;
      v17 = *(v11 - 3);
      v16 = *(v11 - 2);
      v18 = *(v11 - 4);

      swift_bridgeObjectRetain_n();
      sub_814D8();
      sub_14ED0();
      v19 = sub_81BC8();

      if (v19)
      {
        break;
      }

      ++v12;
      v11 += 5;
      v8 = v13;
      if (v28 == v13)
      {
        return v27;
      }
    }

    v20 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_34F44(0, v27[2] + 1, 1);
      v20 = v27;
    }

    v10 = v26;
    v21 = v14;
    v22 = v16;
    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      result = sub_34F44((v23 > 1), v24 + 1, 1);
      v22 = v16;
      v21 = v14;
      v20 = v27;
    }

    v20[2] = v24 + 1;
    v25 = &v20[5 * v24];
    v25[4] = v18;
    v25[5] = v17;
    v25[6] = v22;
    v25[7] = v21;
    v25[8] = v15;
    v8 = v13;
    v9 = v28;
    v5 = v28 == v13;
    a1 = v20;
  }

  while (!v5);
  return a1;
}

uint64_t sub_73BF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a1;
  v38 = a5;
  v37 = sub_147EC(&qword_BA250, &qword_8C338);
  v35 = *(v37 - 8);
  v8 = __chkstk_darwin(v37);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v30 - v10;
  v34 = sub_147EC(&qword_BA258, &qword_8C340);
  v32 = *(v34 - 8);
  v11 = v32;
  v12 = __chkstk_darwin(v34);
  v39 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  sub_81018();
  v42 = a2;
  v43 = a3;
  v44 = a4;
  sub_147EC(&qword_BA260, &qword_8C348);
  sub_814F8();
  v31 = v15;
  sub_816B8();
  v41 = sub_73978(v33, a2, a3, a4);
  sub_147EC(&qword_B8268, &qword_88FA0);
  sub_14F24(&qword_BA218, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
  sub_7627C();
  sub_762D0();
  v16 = v40;
  sub_81608();
  v17 = *(v11 + 16);
  v18 = v39;
  v19 = v15;
  v20 = v34;
  v17(v39, v19, v34);
  v22 = v35;
  v21 = v36;
  v23 = *(v35 + 16);
  v24 = v37;
  v23(v36, v16, v37);
  v25 = v38;
  v17(v38, v18, v20);
  v26 = sub_147EC(&qword_BA268, &qword_8C350);
  v23(&v25[*(v26 + 48)], v21, v24);
  v27 = *(v22 + 8);
  v27(v40, v24);
  v28 = *(v32 + 8);
  v28(v31, v20);
  v27(v21, v24);
  return (v28)(v39, v20);
}

uint64_t sub_74000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_74024@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v33 = a2;
  v36 = a4;
  v7 = sub_147EC(&qword_B8780, &qword_8B7E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32[-v8];
  v10 = sub_147EC(&qword_B86B0, &qword_88500);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32[-v12];
  v14 = sub_147EC(&qword_BA270, &unk_8C358);
  v34 = v14;
  __chkstk_darwin(v14);
  v16 = &v32[-v15];
  sub_80C98();
  v17 = sub_80CB8();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v5;
  *(v18 + 32) = a3;

  sub_81518();
  sub_81688();
  sub_80E48();
  v19 = *(v11 + 32);
  v35 = v16;
  v19(v16, v13, v10);
  v20 = &v16[*(v14 + 36)];
  v21 = v49;
  v20[4] = v48;
  v20[5] = v21;
  v20[6] = v50;
  v22 = v45;
  *v20 = v44;
  v20[1] = v22;
  v23 = v47;
  v20[2] = v46;
  v20[3] = v23;
  v24 = sub_818E8();
  v25 = sub_818E8();
  v26 = STLocalizedString(v24);

  v27 = sub_81928();
  v29 = v28;

  v42 = v27;
  v43 = v29;
  LOBYTE(v11) = v33;
  v40 = v33;
  v41 = a3;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814F8();
  v37 = a1;
  v38 = v11;
  v39 = a3;
  sub_147EC(&qword_BA278, &qword_8C368);
  sub_76828();
  sub_14ED0();
  sub_14F24(&qword_BA288, &qword_BA278, &qword_8C368, &protocol conformance descriptor for TupleView<A>);
  v30 = v35;
  sub_813B8();

  return sub_14FD4(v30, &qword_BA270, &unk_8C358);
}

uint64_t sub_74504@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_745D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = sub_147EC(&qword_B86B0, &qword_88500);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = __chkstk_darwin(v7);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v51 - v10;
  v11 = sub_147EC(&qword_B8780, &qword_8B7E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_147EC(&qword_BA290, &qword_8C370);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  sub_80C98();
  v52 = sub_80CB8();
  v20 = *(v52 - 8);
  v51 = *(v20 + 56);
  v53 = v20 + 56;
  v51(v13, 0, 1, v52);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v22 = &v19[*(v15 + 52)];
  v60 = 0;

  sub_814C8();
  v23 = v62;
  *v22 = v61;
  *(v22 + 1) = v23;
  sub_14F6C(v13, &v19[*(v15 + 48)], &qword_B8780, &qword_8B7E0);
  *v19 = &unk_8C380;
  *(v19 + 1) = v21;
  v24 = sub_818E8();
  v25 = sub_818E8();
  v26 = STLocalizedString(v24);

  v27 = sub_81928();
  v29 = v28;

  v61 = v27;
  v62 = v29;
  sub_14ED0();
  v30 = sub_81288();
  v32 = v31;
  LOBYTE(v26) = v33;
  LODWORD(v61) = sub_81128();
  v34 = sub_81238();
  v36 = v35;
  LOBYTE(v22) = v37;
  v39 = v38;
  sub_15034(v30, v32, v26 & 1);

  *(v19 + 2) = v34;
  *(v19 + 3) = v36;
  v19[32] = v22 & 1;
  *(v19 + 5) = v39;
  sub_14FD4(v13, &qword_B8780, &qword_8B7E0);
  sub_80CA8();
  v51(v13, 0, 1, v52);
  v40 = v54;
  sub_81518();
  v41 = v59;
  sub_14F6C(v19, v59, &qword_BA290, &qword_8C370);
  v43 = v55;
  v42 = v56;
  v44 = *(v56 + 16);
  v45 = v57;
  v44(v55, v40, v57);
  v46 = v41;
  v47 = v58;
  sub_14F6C(v46, v58, &qword_BA290, &qword_8C370);
  v48 = sub_147EC(&qword_BA298, &qword_8C388);
  v44((v47 + *(v48 + 48)), v43, v45);
  v49 = *(v42 + 8);
  v49(v40, v45);
  sub_14FD4(v19, &qword_BA290, &qword_8C370);
  v49(v43, v45);
  return sub_14FD4(v59, &qword_BA290, &qword_8C370);
}

uint64_t sub_74AF8()
{
  v1 = sub_80BC8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = sub_81A88();
  v0[6] = sub_81A78();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_74C00;

  return sub_63CF8();
}

uint64_t sub_74C00()
{
  *(*v1 + 64) = v0;

  v3 = sub_81A58();
  if (v0)
  {
    v4 = sub_74DC4;
  }

  else
  {
    v4 = sub_74D5C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_74D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_74DC4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = sub_80BA8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_80BB8();
  v6 = sub_81B38();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v5, v6, "Failed to remove vision pro data", v11, 2u);
  }

  (*(v9 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_74F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_74FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_81128();
  v5 = sub_81238();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_750E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailView(0);
  __chkstk_darwin(v4 - 8);
  v24 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Application(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_B7858 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    v16 = v25;
    v17 = *(v25 + 16);
    if (!v17)
    {
      break;
    }

    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      sub_7571C(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, type metadata accessor for Application);
      v19 = *v9 == a1 && v9[1] == a2;
      if (v19 || (sub_81E18() & 1) != 0)
      {

        sub_75784(v9, v15, type metadata accessor for Application);
        v20 = 0;
        goto LABEL_13;
      }

      ++v18;
      sub_2095C(v9);
      if (v17 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_11:

  v20 = 1;
LABEL_13:
  (*(v7 + 56))(v15, v20, 1, v6);
  sub_14F6C(v15, v13, &qword_B7E50, &qword_8A3F0);
  result = (*(v7 + 48))(v13, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_6F7AC(v13, v24);
    v22 = objc_allocWithZone(sub_147EC(&qword_B9FB0, &qword_8BFE8));
    v23 = sub_81088();
    sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
    return v23;
  }

  return result;
}

uint64_t sub_7547C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Application(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_75548(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Application(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_755EC(uint64_t a1)
{
  sub_6C944(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Application(319);
    if (v2 <= 0x3F)
    {
      sub_68758();
      if (v3 <= 0x3F)
      {
        sub_756A0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_756A0(uint64_t a1)
{
  if (!qword_BA020)
  {
    type metadata accessor for VisionProDataApplicationModel(255);
    v1 = sub_81B98();
    if (!v2)
    {
      atomic_store(v1, &qword_BA020);
    }
  }
}

uint64_t sub_7571C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_75784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_757EC()
{
  v2 = *(type metadata accessor for DetailView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_16268;

  return sub_733AC(v0 + v3);
}

uint64_t sub_758B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_635AC(a1, v4, v5, v6);
}

uint64_t sub_75980()
{
  v1 = type metadata accessor for DetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v9 = *(*(v1 - 8) + 64);

  v4 = v0 + v3 + *(v1 + 20);

  sub_431D4(*(v4 + 80), *(v4 + 88), *(v4 + 96));

  v5 = *(type metadata accessor for Application(0) + 72);
  v6 = sub_80A38();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v9, v2 | 7);
}

void sub_75B4C()
{
  v1 = *(type metadata accessor for DetailView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_7253C(v2);
}

unint64_t sub_75BB4()
{
  result = qword_BA140;
  if (!qword_BA140)
  {
    sub_14E2C(&qword_BA130, &qword_8C118);
    sub_75C40();
    sub_75DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA140);
  }

  return result;
}

unint64_t sub_75C40()
{
  result = qword_BA148;
  if (!qword_BA148)
  {
    sub_14E2C(&qword_BA128, &qword_8C110);
    sub_75EDC(&qword_BA150, &qword_BA138, &qword_8C120, sub_75CF8);
    sub_75D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA148);
  }

  return result;
}

unint64_t sub_75CF8()
{
  result = qword_BA158;
  if (!qword_BA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA158);
  }

  return result;
}

unint64_t sub_75D4C()
{
  result = qword_BA160;
  if (!qword_BA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA160);
  }

  return result;
}

unint64_t sub_75DA0()
{
  result = qword_BA168;
  if (!qword_BA168)
  {
    sub_14E2C(&qword_BA0F8, &qword_8C0E0);
    sub_75E2C();
    sub_75FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA168);
  }

  return result;
}

unint64_t sub_75E2C()
{
  result = qword_BA170;
  if (!qword_BA170)
  {
    sub_14E2C(&qword_BA108, &qword_8C0F0);
    sub_75EDC(&qword_BA178, &qword_BA100, &qword_8C0E8, sub_75F64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA170);
  }

  return result;
}

uint64_t sub_75EDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_14E2C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_75F64()
{
  result = qword_BA180;
  if (!qword_BA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA180);
  }

  return result;
}

unint64_t sub_75FB8()
{
  result = qword_BA188;
  if (!qword_BA188)
  {
    sub_14E2C(&qword_BA0E8, &qword_8C0D0);
    sub_76720(&qword_BA190, type metadata accessor for FileProviderAppDetailView, &unk_89F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA188);
  }

  return result;
}

uint64_t sub_760A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_BA198, &qword_8C150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7617C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_7618C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_761F8()
{
  result = qword_BA220;
  if (!qword_BA220)
  {
    sub_14E2C(&qword_BA210, &qword_8C1F0);
    sub_7627C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA220);
  }

  return result;
}

unint64_t sub_7627C()
{
  result = qword_BA228;
  if (!qword_BA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA228);
  }

  return result;
}

unint64_t sub_762D0()
{
  result = qword_BA230;
  if (!qword_BA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA230);
  }

  return result;
}

unint64_t sub_76324()
{
  result = qword_BA240;
  if (!qword_BA240)
  {
    sub_14E2C(&qword_BA238, &qword_8C1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA240);
  }

  return result;
}

uint64_t sub_763A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_16C28(a1, a2, a3 & 1);
  }

  else
  {

    return sub_763F4(a1, a2, a3, a4);
  }
}

uint64_t sub_763F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_16C28(a1, a2, a3 & 1);
}

uint64_t sub_76430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_15034(a1, a2, a3 & 1);
  }

  else
  {

    return sub_76484(a1, a2, a3, a4);
  }
}

uint64_t sub_76484(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_15034(a1, a2, a3 & 1);
}

uint64_t sub_764C0(uint64_t *a1, int a2)
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

uint64_t sub_76508(uint64_t result, int a2, int a3)
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

uint64_t sub_76558(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_765A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_765F4()
{
  result = qword_BA248;
  if (!qword_BA248)
  {
    sub_14E2C(&qword_BA078, &unk_8C070);
    sub_14E2C(&qword_BA058, &qword_8C050);
    sub_14F24(&qword_BA070, &qword_BA058, &qword_8C050, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    sub_76720(&qword_B78E0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA248);
  }

  return result;
}

uint64_t sub_76720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_76828()
{
  result = qword_BA280;
  if (!qword_BA280)
  {
    sub_14E2C(&qword_BA270, &unk_8C358);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA280);
  }

  return result;
}

uint64_t sub_768E0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_76928()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22EB0;

  return sub_74AF8();
}

unint64_t sub_769D8()
{
  result = qword_BA2A0;
  if (!qword_BA2A0)
  {
    sub_14E2C(&qword_BA2A8, &qword_8C390);
    sub_14F24(&qword_BA2B0, &qword_BA2B8, &qword_8C398, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA2A0);
  }

  return result;
}

uint64_t sub_76A88()
{
  sub_14E2C(&qword_BA270, &unk_8C358);
  sub_14E2C(&qword_BA278, &qword_8C368);
  sub_76828();
  sub_14ED0();
  sub_14F24(&qword_BA288, &qword_BA278, &qword_8C368, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_76B94(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_147EC(&qword_BA2C0, qword_8C3A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_76C64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&qword_BA2C0, qword_8C3A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppsListView(uint64_t a1)
{
  result = qword_BA320;
  if (!qword_BA320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_76D60(uint64_t a1)
{
  sub_76E7C(319);
  if (v1 <= 0x3F)
  {
    sub_6C944(319);
    if (v2 <= 0x3F)
    {
      sub_76EF0(319, &qword_BA338, &type metadata for ApplicationSortingOrder, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_76EF0(319, &qword_B8D98, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_76F40(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_76E7C(uint64_t a1)
{
  if (!qword_BA330)
  {
    type metadata accessor for StorageShared(255);
    sub_14E2C(&qword_B81A0, &qword_88E90);
    v1 = sub_81EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_BA330);
    }
  }
}

void sub_76EF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_76F40(uint64_t a1)
{
  if (!qword_BA340)
  {
    sub_14E2C(&qword_B7E50, &qword_8A3F0);
    v1 = sub_81508();
    if (!v2)
    {
      atomic_store(v1, &qword_BA340);
    }
  }
}

void *sub_76FC0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Application(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_7A4F0(a3 + v15 + v16 * v13, v12, type metadata accessor for Application);
      v17 = a1(v12);
      if (v3)
      {
        sub_7AF04(v12, type metadata accessor for Application);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_7A88C(v12, v24, type metadata accessor for Application);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_34F84(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_34F84((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_7A88C(v24, v14 + v15 + v20 * v16, type metadata accessor for Application);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_7AF04(v12, type metadata accessor for Application);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_7724C()
{
  v1 = sub_80838();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_80C68();

    sub_80828();
    sub_14ED0();
    v7 = sub_81BB8();
    (*(v2 + 8))(v4, v1);

    return v7;
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_77404()
{
  if (*(v0 + 8) != 1)
  {
    goto LABEL_8;
  }

  LOBYTE(v8) = *(v0 + 56);
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814D8();
  if (v7 != 1)
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_80C68();

    v3 = *(v8 + 16);

    if (v3 > 0x19)
    {
      if (sub_7724C() || v4 != 0xE000000000000000)
      {
        v5 = sub_81E18();
      }

      else
      {

        v5 = 1;
      }

      return v5 & 1;
    }

LABEL_8:
    v5 = 0;
    return v5 & 1;
  }

  type metadata accessor for StorageShared(0);
  sub_7A480(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  result = sub_80E58();
  __break(1u);
  return result;
}

uint64_t sub_77594()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    swift_getAtKeyPath();
    sub_147EC(&qword_B7A80, &qword_88410);
    sub_815A8();
    v3 = *(&off_AD1E0 + v5);

    sub_7AF64(v3, 0);

    return v6;
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    sub_80E58();
    __break(1u);

    __break(1u);
  }

  return result;
}

void *sub_776D0()
{
  if (sub_77404())
  {
    result = sub_77594();
    if (result[2] >= 0x15uLL)
    {
      v2 = result;
      v3 = *(type metadata accessor for Application(0) - 8);
      sub_7B1FC(v2, v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0x29uLL);
      v5 = v4;

      return v5;
    }
  }

  else
  {
    if (sub_7724C() || v6 != 0xE000000000000000)
    {
      v7 = sub_81E18();

      if ((v7 & 1) == 0)
      {
        v8 = sub_77594();
        __chkstk_darwin(v8);
        v10[2] = v0;
        return sub_76FC0(sub_7CE04, v10, v9);
      }
    }

    else
    {
    }

    return sub_77594();
  }

  return result;
}

BOOL sub_77830(uint64_t a1)
{
  v2 = sub_147EC(&qword_BA400, &unk_8C570);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v12[2] = v5;
  v12[3] = v6;

  v12[0] = sub_7724C();
  v12[1] = v7;
  v8 = sub_80A48();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_14ED0();
  sub_81BE8();
  v10 = v9;
  sub_14FD4(v4, &qword_BA400, &unk_8C570);

  return (v10 & 1) == 0;
}

uint64_t sub_77990@<X0>(char *a1@<X8>)
{
  v52 = a1;
  v2 = sub_147EC(&qword_BA380, &qword_8C420);
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v44[0] = v44 - v3;
  v4 = sub_147EC(&qword_BA388, &qword_8C428);
  v5 = __chkstk_darwin(v4 - 8);
  v51 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v44 - v7;
  v9 = type metadata accessor for AppsListView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v47 = sub_147EC(&qword_BA390, &qword_8C430);
  v45 = *(v47 - 8);
  v12 = __chkstk_darwin(v47);
  v48 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v44 - v14;
  v46 = v1;
  v61 = sub_776D0();
  sub_7A4F0(v1, v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_7A88C(v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppsListView);
  v44[3] = sub_147EC(&qword_B81A0, &qword_88E90);
  v44[2] = sub_147EC(&qword_BA398, &qword_8C438);
  v44[1] = sub_14F24(&qword_B9050, &qword_B81A0, &qword_88E90, &protocol conformance descriptor for [A]);
  v18 = sub_14E2C(&qword_BA3A0, &qword_8C440);
  v19 = sub_14E2C(&qword_BA3A8, &unk_8C448);
  v20 = sub_14E2C(&qword_B9038, &qword_8A2E0);
  v21 = sub_14E2C(&qword_BA3B0, &unk_8C458);
  v22 = sub_510DC();
  v23 = sub_14F24(&qword_BA3B8, &qword_BA3B0, &unk_8C458, &protocol conformance descriptor for TupleView<A>);
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v24 = v8;
  v25 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_14ED0();
  v28 = sub_7A398();
  v53 = v18;
  v54 = &type metadata for String;
  v55 = v19;
  v56 = &type metadata for Text;
  v57 = OpaqueTypeConformance2;
  v58 = v27;
  v59 = v28;
  v60 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_7A480(&qword_B9058, type metadata accessor for Application, &unk_88BF0);
  v29 = v15;
  v30 = v46;
  sub_81608();
  if (sub_77404())
  {
    v31 = sub_81008();
    v32 = v44[0];
    *v44[0] = v31;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    v33 = sub_147EC(&qword_BA3D0, &qword_8C470);
    sub_79E90(v30, (v32 + *(v33 + 44)));
    sub_5F2F0(v32, v24, &qword_BA380, &qword_8C420);
    v25 = 0;
  }

  v34 = v24;
  (*(v49 + 56))(v24, v25, 1, v50);
  v35 = v45;
  v36 = *(v45 + 16);
  v37 = v47;
  v38 = v48;
  v36(v48, v29, v47);
  v39 = v51;
  sub_14F6C(v34, v51, &qword_BA388, &qword_8C428);
  v40 = v52;
  v36(v52, v38, v37);
  v41 = sub_147EC(&qword_BA3C8, &qword_8C468);
  sub_14F6C(v39, &v40[*(v41 + 48)], &qword_BA388, &qword_8C428);
  sub_14FD4(v34, &qword_BA388, &qword_8C428);
  v42 = *(v35 + 8);
  v42(v29, v37);
  sub_14FD4(v39, &qword_BA388, &qword_8C428);
  return (v42)(v38, v37);
}

uint64_t sub_77FB4@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = type metadata accessor for Application(0);
  v52 = *(v5 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppsListView(0);
  v50 = *(v7 - 8);
  v47 = *(v50 + 64);
  __chkstk_darwin(v7 - 8);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppListView(0);
  __chkstk_darwin(v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_147EC(&qword_B9038, &qword_8A2E0);
  __chkstk_darwin(v44);
  v13 = &v38 - v12;
  v14 = sub_147EC(&qword_BA3A0, &qword_8C440);
  v15 = *(v14 - 8);
  v53 = v14;
  v54 = v15;
  __chkstk_darwin(v14);
  v46 = &v38 - v16;
  v17 = v11 + *(v9 + 20);
  v38 = type metadata accessor for Application;
  sub_7A4F0(a1, v17, type metadata accessor for Application);
  type metadata accessor for StorageShared(0);
  sub_7A480(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  *v11 = sub_80E68();
  v11[1] = v18;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_81D08(17);

  v60 = 0x746163696C707041;
  v61 = 0xEF2D776F526E6F69;
  sub_81978(*a1);
  sub_7A480(&qword_B9040, type metadata accessor for AppListView, &unk_8BDA0);
  sub_81398();

  sub_7AF04(v11, type metadata accessor for AppListView);
  v58 = a1;
  v59 = a2;
  v19 = a1;
  v40 = a1;
  v39 = a2;
  v43 = sub_147EC(&qword_BA3B0, &unk_8C458);
  v42 = sub_510DC();
  v41 = sub_14F24(&qword_BA3B8, &qword_BA3B0, &unk_8C458, &protocol conformance descriptor for TupleView<A>);
  sub_81338();
  sub_14FD4(v13, &qword_B9038, &qword_8A2E0);
  v20 = sub_818E8();
  v21 = sub_818E8();
  v22 = STLocalizedString(v20);

  v23 = sub_81928();
  v25 = v24;
  v45 = v24;

  v64 = v23;
  v65 = v25;
  v26 = v48;
  sub_7A4F0(a2, v48, type metadata accessor for AppsListView);
  v27 = v49;
  sub_7A4F0(v19, v49, type metadata accessor for Application);
  sub_81A88();
  v28 = sub_81A78();
  v29 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v30 = (v29 + v47 + *(v52 + 80)) & ~*(v52 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_7A88C(v26, v31 + v29, type metadata accessor for AppsListView);
  sub_7A88C(v27, v31 + v30, v38);
  v32 = v39;
  sub_7A4F0(v39, v26, type metadata accessor for AppsListView);
  v33 = sub_81A78();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_7A88C(v26, v34 + v29, type metadata accessor for AppsListView);
  sub_815E8();
  v56 = v32;
  v57 = v40;
  sub_147EC(&qword_BA3A8, &unk_8C448);
  v60 = v44;
  v61 = v43;
  v62 = v42;
  v63 = v41;
  swift_getOpaqueTypeConformance2();
  sub_14ED0();
  sub_7A398();
  v35 = v53;
  v36 = v46;
  sub_81378();

  return (*(v54 + 8))(v36, v35);
}

uint64_t sub_78784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = type metadata accessor for Application(0);
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for AppsListView(0);
  v70 = *(v7 - 8);
  v8 = v70[8];
  __chkstk_darwin(v7 - 8);
  v72 = sub_147EC(&qword_B86B0, &qword_88500);
  v9 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v62 - v10;
  v11 = sub_147EC(&qword_BA3E8, &qword_8C520);
  v80 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = sub_147EC(&qword_BA3F0, &qword_8C528);
  v15 = __chkstk_darwin(v14 - 8);
  v76 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v75 = &v62 - v18;
  v19 = __chkstk_darwin(v17);
  v78 = &v62 - v20;
  __chkstk_darwin(v19);
  v79 = &v62 - v21;
  v22 = a1;
  v23 = *(a1 + 128);
  v74 = v13;
  v68 = v6;
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v65 = v8;
  if (v23 == 1)
  {
    sub_7A4F0(a2, &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
    v63 = v9;
    sub_7A4F0(a1, &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Application);
    v24 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v25 = *(v73 + 80);
    v64 = a1;
    v26 = v11;
    v27 = (v8 + v25 + v24) & ~v25;
    v28 = swift_allocObject();
    sub_7A88C(&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v24, type metadata accessor for AppsListView);
    v29 = v28 + v27;
    v11 = v26;
    v30 = v71;
    v31 = v72;
    v32 = v79;
    v33 = v64;
    sub_7A88C(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29, type metadata accessor for Application);
    v34 = v74;
    sub_81528();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_81D08(29);

    v81 = 0xD00000000000001BLL;
    v82 = 0x8000000000097180;
    v22 = v33;
    sub_81978(*v33);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
    sub_81398();
    v9 = v63;

    (*(v9 + 8))(v30, v31);
    v35 = sub_81418();
    KeyPath = swift_getKeyPath();
    v37 = (v34 + *(v11 + 36));
    *v37 = KeyPath;
    v37[1] = v35;
    sub_5F2F0(v34, v32, &qword_BA3E8, &qword_8C520);
    v38 = *(v80 + 56);
    (v38)(v32, 0, 1, v11);
  }

  else
  {
    v38 = *(v80 + 56);
    (v38)(v79, 1, 1, v11);
  }

  if (*(v22 + 129) == 1)
  {
    v39 = v66;
    sub_7A4F0(v67, v66, type metadata accessor for AppsListView);
    v40 = v71;
    v41 = v9;
    v42 = v22;
    v43 = v69;
    sub_7A4F0(v22, v69, type metadata accessor for Application);
    v44 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v45 = *(v73 + 80);
    v70 = v38;
    v46 = (v65 + v45 + v44) & ~v45;
    v47 = swift_allocObject();
    v73 = v11;
    v48 = v47;
    sub_7A88C(v39, v47 + v44, type metadata accessor for AppsListView);
    sub_7A88C(v43, v48 + v46, type metadata accessor for Application);
    sub_81528();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_81D08(30);

    v81 = 0xD00000000000001CLL;
    v82 = 0x8000000000097160;
    sub_81978(*v42);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
    v49 = v74;
    v50 = v72;
    sub_81398();
    v11 = v73;

    (*(v41 + 8))(v40, v50);
    v51 = sub_81428();
    v52 = swift_getKeyPath();
    v53 = (v49 + *(v11 + 36));
    *v53 = v52;
    v53[1] = v51;
    v38 = v70;
    sub_5F2F0(v49, v78, &qword_BA3E8, &qword_8C520);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v78;
  (v38)(v78, v54, 1, v11);
  v56 = v79;
  v57 = v75;
  sub_14F6C(v79, v75, &qword_BA3F0, &qword_8C528);
  v58 = v76;
  sub_14F6C(v55, v76, &qword_BA3F0, &qword_8C528);
  v59 = v77;
  sub_14F6C(v57, v77, &qword_BA3F0, &qword_8C528);
  v60 = sub_147EC(&qword_BA3F8, &qword_8C530);
  sub_14F6C(v58, v59 + *(v60 + 48), &qword_BA3F0, &qword_8C528);
  sub_14FD4(v55, &qword_BA3F0, &qword_8C528);
  sub_14FD4(v56, &qword_BA3F0, &qword_8C528);
  sub_14FD4(v58, &qword_BA3F0, &qword_8C528);
  return sub_14FD4(v57, &qword_BA3F0, &qword_8C528);
}

void sub_78FEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = v2;
    sub_23040(v3, v4);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    sub_80E58();
    __break(1u);
  }
}

uint64_t sub_790A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_79170(uint64_t a1, uint64_t a2)
{
  v3 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_7A4F0(a2, &v11 - v7, type metadata accessor for Application);
  v9 = type metadata accessor for Application(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  type metadata accessor for AppsListView(0);
  sub_14F6C(v8, v6, &qword_B7E50, &qword_8A3F0);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814E8();
  return sub_14FD4(v8, &qword_B7E50, &qword_8A3F0);
}

uint64_t sub_792D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_793A0@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v23 = a2;
  v3 = sub_147EC(&qword_BA3E0, &qword_8C518);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  type metadata accessor for AppsListView(0);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814D8();
  sub_7A4F0(a1, v13, type metadata accessor for Application);
  v16 = type metadata accessor for Application(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v13, 0, 1, v16);
  v18 = *(v4 + 56);
  sub_14F6C(v15, v6, &qword_B7E50, &qword_8A3F0);
  sub_14F6C(v13, &v6[v18], &qword_B7E50, &qword_8A3F0);
  v19 = *(v17 + 48);
  if (v19(v6, 1, v16) != 1)
  {
    sub_14F6C(v6, v10, &qword_B7E50, &qword_8A3F0);
    if (v19(&v6[v18], 1, v16) != 1)
    {
      v21 = sub_209B8(v10, &v6[v18]);
      sub_7AF04(&v6[v18], type metadata accessor for Application);
      sub_14FD4(v13, &qword_B7E50, &qword_8A3F0);
      sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
      sub_7AF04(v10, type metadata accessor for Application);
      result = sub_14FD4(v6, &qword_B7E50, &qword_8A3F0);
      goto LABEL_8;
    }

    sub_14FD4(v13, &qword_B7E50, &qword_8A3F0);
    sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
    sub_7AF04(v10, type metadata accessor for Application);
    goto LABEL_6;
  }

  sub_14FD4(v13, &qword_B7E50, &qword_8A3F0);
  sub_14FD4(v15, &qword_B7E50, &qword_8A3F0);
  if (v19(&v6[v18], 1, v16) != 1)
  {
LABEL_6:
    result = sub_14FD4(v6, &qword_BA3E0, &qword_8C518);
    v21 = 0;
    goto LABEL_8;
  }

  result = sub_14FD4(v6, &qword_B7E50, &qword_8A3F0);
  v21 = 1;
LABEL_8:
  *v23 = v21 & 1;
  return result;
}

uint64_t sub_79764()
{
  v0 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for Application(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for AppsListView(0);
  sub_14F6C(v5, v3, &qword_B7E50, &qword_8A3F0);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814E8();
  return sub_14FD4(v5, &qword_B7E50, &qword_8A3F0);
}

uint64_t sub_798A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a2;
  v20[1] = a3;
  v4 = type metadata accessor for AppsListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_147EC(&qword_B86B0, &qword_88500);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v11 = sub_818E8();
  v12 = sub_818E8();
  v13 = STLocalizedString(v11);

  v14 = sub_81928();
  v16 = v15;

  v21 = v14;
  v22 = v16;
  sub_7A4F0(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_7A88C(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AppsListView);
  sub_14ED0();
  sub_81568();
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_81D08(26);

  v21 = 0xD000000000000018;
  v22 = 0x8000000000097140;
  sub_81978(*v20[0]);
  sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
  sub_81398();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_79B98(uint64_t a1)
{
  v2 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Application(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppsListView(0);
  sub_147EC(&qword_BA2C0, qword_8C3A0);
  sub_814D8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_14FD4(v4, &qword_B7E50, &qword_8A3F0);
  }

  sub_7A88C(v4, v8, type metadata accessor for Application);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v10;
    sub_23DDC(v11, v12);

    return sub_7AF04(v8, type metadata accessor for Application);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_7A480(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_79DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_79E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for AppsListView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_147EC(&qword_B86B0, &qword_88500);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_147EC(&qword_BA3A8, &unk_8C448);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_7A4F0(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppsListView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_7A88C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppsListView);
  sub_81528();
  sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
  sub_81398();
  (*(v7 + 8))(v9, v6);
  sub_14F6C(v15, v13, &qword_BA3A8, &unk_8C448);
  v18 = v24;
  *v24 = 0;
  *(v18 + 8) = 1;
  v19 = v18;
  v20 = sub_147EC(&qword_BA3D8, &unk_8C478);
  sub_14F6C(v13, v19 + *(v20 + 48), &qword_BA3A8, &unk_8C448);
  v21 = v19 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_14FD4(v15, &qword_BA3A8, &unk_8C448);
  return sub_14FD4(v13, &qword_BA3A8, &unk_8C448);
}

uint64_t sub_7A244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_7A318@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppsListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_77FB4(a1, v6, a2);
}

unint64_t sub_7A398()
{
  result = qword_BA3C0;
  if (!qword_BA3C0)
  {
    sub_14E2C(&qword_BA3A8, &unk_8C448);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
    sub_7A480(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA3C0);
  }

  return result;
}

uint64_t sub_7A480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7A4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7A560()
{
  v1 = (type metadata accessor for AppsListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Application(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  v10 = v0 + v3;

  v11 = v10 + v1[11];
  if (!(*(v6 + 48))(v11, 1, v5))
  {

    sub_431D4(*(v11 + 80), *(v11 + 88), *(v11 + 96));

    v12 = *(v5 + 72);
    v13 = sub_80A38();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v11 + v12, 1, v13))
    {
      (*(v14 + 8))(v11 + v12, v13);
    }
  }

  sub_147EC(&qword_BA2C0, qword_8C3A0);

  v15 = v0 + v8;

  sub_431D4(*(v15 + 80), *(v15 + 88), *(v15 + 96));

  v16 = *(v5 + 72);
  v17 = sub_80A38();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v8 + v16, 1, v17))
  {
    (*(v18 + 8))(v15 + v16, v17);
  }

  return _swift_deallocObject(v0, v8 + v9, v2 | v7 | 7);
}

uint64_t sub_7A88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7A8F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for AppsListView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Application(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_793A0(v7, a1);
}

uint64_t sub_7A9CC()
{
  v1 = (type metadata accessor for AppsListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for Application(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    sub_431D4(*(v5 + 80), *(v5 + 88), *(v5 + 96));

    v7 = *(v6 + 72);
    v8 = sub_80A38();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  sub_147EC(&qword_BA2C0, qword_8C3A0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7ABE8()
{
  type metadata accessor for AppsListView(0);

  return sub_79764();
}

uint64_t sub_7AC64()
{
  v1 = (type metadata accessor for AppsListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for Application(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    sub_431D4(*(v5 + 80), *(v5 + 88), *(v5 + 96));

    v7 = *(v6 + 72);
    v8 = sub_80A38();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  sub_147EC(&qword_BA2C0, qword_8C3A0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7AE90(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppsListView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_7AF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_7AF64(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for Application(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_208AC(v5);
  }

  result = sub_7B39C(a1, a2);
  *v2 = v5;
  return result;
}

void sub_7B024(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_147EC(&unk_B82E0, &unk_8C580);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_7B10C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_147EC(&qword_B8338, &qword_89358);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 216);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_7B1FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_147EC(&qword_B82B8, &qword_89148);
      v7 = *(type metadata accessor for Application(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for Application(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_7B39C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_81DE8(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Application(0);
        v9 = sub_81A18();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for Application(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_7B750(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_7B4D8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_7B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for Application(0);
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_7A4F0(v22, v17, type metadata accessor for Application);
      sub_7A4F0(v23, v13, type metadata accessor for Application);
      v24 = v37(v17, v13);
      sub_7AF04(v13, type metadata accessor for Application);
      result = sub_7AF04(v17, type metadata accessor for Application);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_7A88C(v22, v35, type metadata accessor for Application);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_7A88C(v25, v23, type metadata accessor for Application);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_7B750(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for Application(0);
  v140 = *(v135 - 8);
  v10 = __chkstk_darwin(v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v119 - v16;
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v119 - v20;
  v22 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_7A4F0(v34, v125, type metadata accessor for Application);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_7A4F0(v36, v126, type metadata accessor for Application);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_7AF04(v37, type metadata accessor for Application);
        v118 = v35;
        goto LABEL_112;
      }

      sub_7AF04(v37, type metadata accessor for Application);
      result = sub_7AF04(v35, type metadata accessor for Application);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_7A4F0(v38, v21, type metadata accessor for Application);
        v40 = v21;
        v41 = v136;
        sub_7A4F0(v34, v136, type metadata accessor for Application);
        v42 = v142(v40, v41);
        sub_7AF04(v41, type metadata accessor for Application);
        result = sub_7AF04(v40, type metadata accessor for Application);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_7A88C(v50 + v49, v132, type metadata accessor for Application);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_7A88C(v132, v50 + v45, type metadata accessor for Application);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_7A4F0(v105, v17, type metadata accessor for Application);
        v106 = v17;
        v107 = v133;
        sub_7A4F0(v103, v133, type metadata accessor for Application);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_7AF04(v107, type metadata accessor for Application);
          v118 = v106;
LABEL_112:
          sub_7AF04(v118, type metadata accessor for Application);
        }

        v109 = v108;
        v110 = v43;
        sub_7AF04(v107, type metadata accessor for Application);
        result = sub_7AF04(v106, type metadata accessor for Application);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_7A88C(v105, v134, type metadata accessor for Application);
        swift_arrayInitWithTakeFrontToBack();
        sub_7A88C(v111, v103, type metadata accessor for Application);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20780(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_20780((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_7C248(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2076C(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_206E0(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_2076C(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_7C248(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2076C(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_206E0(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_7C248(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for Application(0);
  v11 = __chkstk_darwin(v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_7A4F0(a2, v22, type metadata accessor for Application);
          sub_7A4F0(a4, v19, type metadata accessor for Application);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_7AF04(v19, type metadata accessor for Application);
          sub_7AF04(v22, type metadata accessor for Application);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_7AF04(v19, type metadata accessor for Application);
        sub_7AF04(v22, type metadata accessor for Application);
      }

LABEL_64:
      sub_7C890(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_7A4F0(v38 + v37, v16, type metadata accessor for Application);
              sub_7A4F0(v50, v13, type metadata accessor for Application);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_7AF04(v13, type metadata accessor for Application);
                sub_7AF04(v16, type metadata accessor for Application);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_7AF04(v13, type metadata accessor for Application);
              sub_7AF04(v16, type metadata accessor for Application);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_7C890(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Application(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_7C990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80F88();
  *a1 = result;
  return result;
}

uint64_t sub_7C9E8()
{
  v1 = (type metadata accessor for AppsListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Application(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v3 + v4 + v7) & ~v7;
  v10 = v0 + v3;

  v11 = v10 + v1[11];
  if (!(*(v6 + 48))(v11, 1, v5))
  {

    sub_431D4(*(v11 + 80), *(v11 + 88), *(v11 + 96));

    v12 = *(v5 + 72);
    v13 = sub_80A38();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v11 + v12, 1, v13))
    {
      (*(v14 + 8))(v11 + v12, v13);
    }
  }

  sub_147EC(&qword_BA2C0, qword_8C3A0);

  v15 = v0 + v9;

  sub_431D4(*(v15 + 80), *(v15 + 88), *(v15 + 96));

  v16 = *(v5 + 72);
  v17 = sub_80A38();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v9 + v16, 1, v17))
  {
    (*(v18 + 8))(v15 + v16, v17);
  }

  return _swift_deallocObject(v0, v9 + v8, v2 | v7 | 7);
}

uint64_t sub_7CD24(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppsListView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Application(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_7CE88()
{
  result = qword_BA418;
  if (!qword_BA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA418);
  }

  return result;
}

void *sub_7CF08(void *result, void *a2)
{
  v2 = result[1];
  v3 = *result + v2;
  if (__OFADD__(*result, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = a2[1];
    v5 = __OFADD__(*a2, v4);
    v6 = *a2 + v4;
    if (!v5)
    {
      return (v3 < v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CF34(void *result, void *a2)
{
  v2 = a2[1];
  v3 = *a2 + v2;
  if (__OFADD__(*a2, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v5 = __OFADD__(*result, v4);
    v6 = *result + v4;
    if (!v5)
    {
      return (v3 >= v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CF60(void *result, void *a2)
{
  v2 = result[1];
  v3 = *result + v2;
  if (__OFADD__(*result, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = a2[1];
    v5 = __OFADD__(*a2, v4);
    v6 = *a2 + v4;
    if (!v5)
    {
      return (v3 >= v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CF8C(void *result, void *a2)
{
  v2 = a2[1];
  v3 = *a2 + v2;
  if (__OFADD__(*a2, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v5 = __OFADD__(*result, v4);
    v6 = *result + v4;
    if (!v5)
    {
      return (v3 < v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_7CFB8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_7CFD8(void *a1)
{
  v2 = [a1 fixedSize];
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v3 = sub_80BC8();
    sub_19818(v3, qword_BCF70);
    v4 = a1;
    v5 = sub_80BB8();
    v6 = sub_81B18();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 fixedSize];

      _os_log_impl(&dword_0, v5, v6, "Unable to create fixed size from %llu", v7, 0xCu);
    }

    else
    {

      v5 = v4;
    }

    v2 = 0;
  }

  if (([a1 dataSize] & 0x8000000000000000) != 0)
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v8 = sub_80BC8();
    sub_19818(v8, qword_BCF70);
    v9 = a1;
    v10 = sub_80BB8();
    v11 = sub_81B18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v9 dataSize];

      _os_log_impl(&dword_0, v10, v11, "Unable to create data size from %llu", v12, 0xCu);
    }

    else
    {

      v10 = v9;
    }
  }

  return v2;
}

uint64_t sub_7D26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v34 = *(a1 + 24);
  v31 = *(a1 + 32);
  v32 = *a1;
  v6 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v38 = 0;
  v7 = v4;
  v8 = v5;
  sub_2092C(v7, v5, v6);

  v9 = sub_81058();
  v35[0] = 1;
  sub_7D6DC(a1, &v56);
  v49 = *&v57[144];
  v50 = *&v57[160];
  v45 = *&v57[80];
  v46 = *&v57[96];
  v47 = *&v57[112];
  v48 = *&v57[128];
  v41 = *&v57[16];
  v42 = *&v57[32];
  v43 = *&v57[48];
  v44 = *&v57[64];
  v39 = v56;
  v40 = *v57;
  v52[10] = *&v57[144];
  v52[11] = *&v57[160];
  v52[6] = *&v57[80];
  v52[7] = *&v57[96];
  v52[8] = *&v57[112];
  v52[9] = *&v57[128];
  v52[2] = *&v57[16];
  v52[3] = *&v57[32];
  v52[4] = *&v57[48];
  v52[5] = *&v57[64];
  v51 = *&v57[176];
  v53 = *&v57[176];
  v52[0] = v56;
  v52[1] = *v57;
  sub_14F6C(&v39, v54, &qword_BA478, &qword_8C810);
  sub_14FD4(v52, &qword_BA478, &qword_8C810);
  *(&v37[9] + 7) = v48;
  *(&v37[10] + 7) = v49;
  *(&v37[11] + 7) = v50;
  *(&v37[12] + 7) = v51;
  *(&v37[5] + 7) = v44;
  *(&v37[6] + 7) = v45;
  *(&v37[7] + 7) = v46;
  *(&v37[8] + 7) = v47;
  *(&v37[1] + 7) = v40;
  *(&v37[2] + 7) = v41;
  *(&v37[3] + 7) = v42;
  *(&v37[4] + 7) = v43;
  *(v37 + 7) = v39;
  v54[0] = v9;
  v54[1] = 0;
  LOBYTE(v55[0]) = 1;
  v10 = v37[9];
  *(&v55[9] + 1) = v37[9];
  v11 = v37[10];
  *(&v55[10] + 1) = v37[10];
  v12 = v37[11];
  *(&v55[11] + 1) = v37[11];
  v55[12] = *(&v37[11] + 15);
  v13 = v37[5];
  *(&v55[5] + 1) = v37[5];
  v14 = v37[6];
  *(&v55[6] + 1) = v37[6];
  v15 = v37[7];
  *(&v55[7] + 1) = v37[7];
  v16 = v37[8];
  *(&v55[8] + 1) = v37[8];
  v17 = v37[1];
  *(&v55[1] + 1) = v37[1];
  v18 = v37[2];
  *(&v55[2] + 1) = v37[2];
  v19 = v37[3];
  *(&v55[3] + 1) = v37[3];
  v20 = v37[4];
  *(&v55[4] + 1) = v37[4];
  v21 = v37[0];
  *(v55 + 1) = v37[0];
  *&v36[167] = v55[9];
  *&v36[183] = v55[10];
  *&v36[199] = v55[11];
  *&v36[215] = *(&v37[11] + 15);
  *&v36[103] = v55[5];
  *&v36[119] = v55[6];
  *&v36[135] = v55[7];
  *&v36[151] = v55[8];
  *&v36[39] = v55[1];
  *&v36[55] = v55[2];
  *&v36[71] = v55[3];
  *&v36[87] = v55[4];
  *&v36[7] = v9;
  *&v36[23] = v55[0];
  v22 = *&v36[160];
  *(a2 + 233) = *&v36[176];
  v23 = *&v36[208];
  *(a2 + 249) = *&v36[192];
  *(a2 + 265) = v23;
  v24 = *&v36[96];
  *(a2 + 169) = *&v36[112];
  v25 = *&v36[144];
  *(a2 + 185) = *&v36[128];
  *(a2 + 201) = v25;
  *(a2 + 217) = v22;
  v26 = *&v36[32];
  *(a2 + 105) = *&v36[48];
  v27 = *&v36[80];
  *(a2 + 121) = *&v36[64];
  *(a2 + 137) = v27;
  *(a2 + 153) = v24;
  v28 = *&v36[16];
  *(a2 + 57) = *v36;
  *(a2 + 73) = v28;
  *(a2 + 89) = v26;
  *&v57[145] = v10;
  *&v57[161] = v11;
  *&v57[177] = v12;
  *&v57[192] = *(&v37[11] + 15);
  *&v57[81] = v13;
  *&v57[97] = v14;
  *&v57[113] = v15;
  *&v57[129] = v16;
  *&v57[17] = v17;
  *&v57[33] = v18;
  *&v57[49] = v19;
  *&v57[65] = v20;
  v29 = v38;
  v35[224] = 1;
  *a2 = KeyPath;
  *(a2 + 8) = v29;
  *(a2 + 16) = v32;
  *(a2 + 24) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v34;
  *(a2 + 48) = v31;
  *(a2 + 56) = 3;
  *(a2 + 280) = *&v36[223];
  *(a2 + 288) = 0;
  *(a2 + 296) = 1;
  v56 = v9;
  v57[0] = 1;
  *&v57[1] = v21;
  sub_5D064(KeyPath, v29 & 1);
  sub_2092C(v32, v8, v6);

  sub_14F6C(v54, v35, &qword_BA480, &qword_8C818);
  sub_14FD4(&v56, &qword_BA480, &qword_8C818);
  sub_4C7F8(KeyPath, v29 & 1);
  sub_431D4(v32, v8, v6);
}

uint64_t sub_7D6DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_80FF8();
  LOBYTE(v62[0]) = 1;
  sub_7D9DC(a1, &v66);
  v4 = v66;
  v5 = v67;
  v6 = *v68;
  v7 = *&v68[16];
  v30 = *&v68[16];
  v31 = v66;
  v8 = v68[24];
  v25 = *&v68[32];
  v26 = *&v68[8];
  LOBYTE(v66) = v68[24];
  v27 = sub_81058();
  LOBYTE(v66) = 1;
  sub_7DB3C(a1, v56);
  *&v55[7] = v56[0];
  *&v55[23] = v56[1];
  *&v55[39] = v56[2];
  *&v55[55] = v56[3];
  v9 = v66;
  v29 = sub_81208();
  KeyPath = swift_getKeyPath();
  v10 = sub_81448();
  v11 = swift_getKeyPath();
  v57[0] = v32;
  v57[1] = 0;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = v4;
  *&v59 = v5;
  *(&v59 + 1) = v6;
  *&v60 = v26;
  *(&v60 + 1) = v7;
  LOBYTE(v61) = v8;
  *(&v61 + 1) = v25;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v42 = v32;
  v62[0] = v27;
  v62[1] = 0;
  v63[0] = v9;
  v12 = *v55;
  *&v63[1] = *v55;
  *&v63[64] = *&v55[63];
  v13 = *&v55[48];
  *&v63[49] = *&v55[48];
  v14 = *&v55[32];
  *&v63[33] = *&v55[32];
  v15 = *&v55[16];
  *&v63[17] = *&v55[16];
  *&v63[72] = KeyPath;
  *&v64 = v29;
  *(&v64 + 1) = v11;
  v49 = *&v63[16];
  v50 = *&v63[32];
  v47 = v27;
  v48 = *v63;
  v52 = *&v63[64];
  v53 = v64;
  v51 = *&v63[48];
  v16 = v58;
  v17 = v60;
  v18 = v61;
  *(a2 + 32) = v59;
  *(a2 + 48) = v17;
  *a2 = v32;
  *(a2 + 16) = v16;
  v19 = v47;
  v20 = v49;
  v21 = v50;
  *(a2 + 96) = v48;
  *(a2 + 112) = v20;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  v22 = v51;
  v23 = v53;
  *(a2 + 160) = v52;
  *(a2 + 176) = v23;
  *(a2 + 128) = v21;
  *(a2 + 144) = v22;
  v65 = v10;
  v54 = v10;
  *(a2 + 192) = v10;
  v66 = v27;
  v67 = 0;
  v68[0] = v9;
  *&v68[17] = v15;
  *&v68[33] = v14;
  *v69 = v13;
  *&v68[1] = v12;
  *&v69[15] = *&v55[63];
  v70 = KeyPath;
  v71 = v29;
  v72 = v11;
  v73 = v10;
  sub_14F6C(v57, v33, &qword_BA488, &qword_8C880);
  sub_14F6C(v62, v33, &qword_BA490, &qword_8C888);
  sub_14FD4(&v66, &qword_BA490, &qword_8C888);
  v33[0] = v32;
  v33[1] = 0;
  v34 = 1;
  v35 = v31;
  v36 = v5;
  v37 = v6;
  v38 = v26;
  v39 = v30;
  v40 = v8;
  v41 = v25;
  return sub_14FD4(v33, &qword_BA488, &qword_8C880);
}

uint64_t sub_7D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 72))
  {
    v3 = sub_81478();
    v4 = sub_81448();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    v3 = 0;
    KeyPath = 0;
    v4 = 0;
  }

  sub_14ED0();

  v6 = sub_81288();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_7EDB0(v3, KeyPath, v4);
  v10 &= 1u;
  sub_16C28(v6, v8, v10);

  sub_7EE00(v3);
  *a2 = v3;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  sub_15034(v6, v8, v10);

  return sub_7EE00(v3);
}

uint64_t sub_7DB3C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[11];
  if (!v4)
  {
LABEL_8:
    v7 = 0;
    v11 = 0;
    v9 = 0;
    v12 = a1[8];
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = a1[10] & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    v4 = 0;
    goto LABEL_8;
  }

  sub_14ED0();

  v4 = sub_81288();
  v7 = v6;
  v9 = v8;
  v11 = v10 & 1;
  sub_16C28(v4, v6, v10 & 1);

  v12 = a1[8];
  if (!v12)
  {
LABEL_6:
    v13 = 0;
LABEL_14:
    v19 = 0;
    v17 = 0;
    goto LABEL_15;
  }

LABEL_9:
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = a1[7] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  sub_14ED0();

  v13 = sub_81288();
  v12 = v15;
  v17 = v16;
  v19 = v18 & 1;
  sub_16C28(v13, v15, v18 & 1);

LABEL_15:
  sub_4E778(v4, v7, v11, v9);
  sub_4E778(v13, v12, v19, v17);
  sub_4E7BC(v4, v7, v11, v9);
  sub_4E7BC(v13, v12, v19, v17);
  *a2 = v4;
  a2[1] = v7;
  a2[2] = v11;
  a2[3] = v9;
  a2[4] = v13;
  a2[5] = v12;
  a2[6] = v19;
  a2[7] = v17;
  sub_4E7BC(v13, v12, v19, v17);
  return sub_4E7BC(v4, v7, v11, v9);
}

void *sub_7DD14@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v14[2] = v2[2];
  v14[3] = v4;
  v5 = v2[5];
  v14[4] = v2[4];
  v14[5] = v5;
  v6 = v2[1];
  v14[0] = *v2;
  v14[1] = v6;
  v7 = sub_81008();
  v13 = 0;
  sub_7D26C(v14, __src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v16, __src, 0x129uLL);
  sub_14F6C(__dst, v10, &qword_BA470, &qword_8C7D8);
  sub_14FD4(v16, &qword_BA470, &qword_8C7D8);
  memcpy(&v12[7], __dst, 0x129uLL);
  v8 = v13;
  *a2 = v7;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v8;
  return memcpy((a2 + 17), v12, 0x130uLL);
}

uint64_t STUIAppHeaderCell.refreshCellContents(with:)(uint64_t a1)
{
  v2[3] = sub_147EC(&qword_BA420, &qword_8C660);
  v2[4] = sub_14F24(&qword_BA428, &qword_BA420, &qword_8C660, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_7E490(v2);
  sub_147EC(&qword_BA430, qword_8C668);
  sub_7E4F4();
  sub_81178();
  return sub_81B48();
}

void sub_7DEDC(void *a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1)
  {
    if ([a1 propertyForKey:STStorageAppKey])
    {
      sub_81BF8();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (*(&v56 + 1))
    {
      sub_7EE4C();
      if (swift_dynamicCast())
      {
        v3 = [v54 bundleIdentifier];
        v4 = sub_81928();
        v6 = v5;

        if (v4 == 0xD000000000000010 && 0x8000000000094710 == v6)
        {
          goto LABEL_9;
        }

        v20 = sub_81E18();

        v7 = 0;
        if ((v20 & 1) == 0)
        {
          v21 = [v54 bundleIdentifier];
          v22 = sub_81928();
          v24 = v23;

          if (v22 == 0xD000000000000019 && 0x8000000000094730 == v24)
          {
LABEL_9:

            v7 = 0;
            goto LABEL_16;
          }

          v25 = sub_81E18();

          v7 = v25 ^ 1;
        }

LABEL_16:
        v26 = [v54 isDemoted];
        v27 = [v54 bundleIdentifier];
        v28 = sub_81928();
        v30 = v29;

        if (v26)
        {
          if (v28 == 0xD000000000000010 && 0x8000000000094710 == v30 || (sub_81E18() & 1) != 0)
          {

            if (qword_B7870 != -1)
            {
              swift_once();
            }

            v31 = v7;
            v32 = unk_BD020;
            v51 = qword_BD018;
            v52 = *algn_BD008;
            v53 = qword_BD000;
            v49 = byte_BD010;
            sub_2092C(qword_BD000, *algn_BD008, byte_BD010);
            v50 = v32;

            goto LABEL_32;
          }

          if (v28 == 0xD000000000000019 && 0x8000000000094730 == v30)
          {

LABEL_42:
            if (qword_B7878 != -1)
            {
              swift_once();
            }

            v31 = v7;
            v48 = unk_BD048;
            v51 = qword_BD040;
            v52 = qword_BD030;
            v53 = qword_BD028;
            v49 = byte_BD038;
            sub_2092C(qword_BD028, qword_BD030, byte_BD038);
            v50 = v48;

            goto LABEL_32;
          }

          v47 = sub_81E18();

          if (v47)
          {
            goto LABEL_42;
          }

          goto LABEL_31;
        }

        if (sub_81928() == v28 && v33 == v30)
        {
        }

        else
        {
          v34 = sub_81E18();

          if ((v34 & 1) == 0)
          {
LABEL_31:
            v31 = v7;
            v35 = [v54 appIdentifier];
            v36 = sub_81928();
            v38 = v37;

            v49 = 0;
            v52 = v38;
            v53 = v36;
            v50 = v38;
            v51 = v36;
            goto LABEL_32;
          }
        }

        v31 = v7;
        v49 = 0;
        v52 = 0x8000000000096190;
        v53 = 0xD000000000000015;
        v50 = 0x8000000000096190;
        v51 = 0xD000000000000015;
LABEL_32:
        v39 = [v54 name];
        v12 = sub_81928();
        v13 = v40;

        v41 = [v54 vendorName];
        if (v41)
        {
          v42 = v41;
          v14 = sub_81928();
          v15 = v43;
        }

        else
        {
          v14 = 0;
          v15 = 0xE000000000000000;
        }

        v18 = [v54 isDemoted] & v31;
        if ([v54 isApple] || (v44 = objc_msgSend(v54, "versionString")) == 0)
        {

          v16 = 0;
          v17 = 0;
        }

        else
        {
          v45 = v44;
          v16 = sub_81928();
          v17 = v46;
        }

        v19 = v49;
        v9 = v52;
        v8 = v53;
        v11 = v50;
        v10 = v51;
        goto LABEL_40;
      }
    }

    else
    {
      sub_14FD4(v57, &qword_BA498, &qword_8C890);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_40:
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v19;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;
    a2[6] = v13;
    a2[7] = v14;
    a2[8] = v15;
    a2[9] = v18;
    a2[10] = v16;
    a2[11] = v17;
    return;
  }

  __break(1u);
}

uint64_t *sub_7E490(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_7E4F4()
{
  result = qword_BA438;
  if (!qword_BA438)
  {
    sub_14E2C(&qword_BA430, qword_8C668);
    sub_7E578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA438);
  }

  return result;
}

unint64_t sub_7E578()
{
  result = qword_BA440;
  if (!qword_BA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA440);
  }

  return result;
}

id STUIAppHeaderCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_818E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id STUIAppHeaderCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_818E8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for STUIAppHeaderCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id STUIAppHeaderCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_818E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id STUIAppHeaderCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_818E8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for STUIAppHeaderCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id STUIAppHeaderCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id STUIAppHeaderCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STUIAppHeaderCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STUIAppHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STUIAppHeaderCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_7EB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_7EB88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7EBD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7ECA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80EC8();
  *a1 = result;
  return result;
}

uint64_t sub_7ED00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80F28();
  *a1 = result;
  return result;
}

uint64_t sub_7ED58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_80EC8();
  *a1 = result;
  return result;
}

uint64_t sub_7EDB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7EE00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_7EE4C()
{
  result = qword_BA4A0;
  if (!qword_BA4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_BA4A0);
  }

  return result;
}

void sub_7EF3C()
{
  v1 = sub_80D18();
  v97 = *(v1 - 8);
  v98 = v1;
  __chkstk_darwin(v1);
  v96 = v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_80FC8();
  v3 = *(v95 - 8);
  __chkstk_darwin(v95);
  v5 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Application(0);
  __chkstk_darwin(v6 - 8);
  v8 = (v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_147EC(&qword_BA4F0, &qword_8C8D8);
  __chkstk_darwin(v9);
  v11 = (v87 - v10);
  v93 = sub_147EC(&qword_BA4F8, &qword_8C8E0);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v13 = v87 - v12;
  v94 = sub_147EC(&qword_BA500, &qword_8C8E8);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v15 = v87 - v14;
  v16 = sub_147EC(&qword_BA508, &unk_8C8F0);
  __chkstk_darwin(v16 - 8);
  v90 = v87 - v17;
  v18 = type metadata accessor for AppDetailViewWrapper(0);
  v103.receiver = v0;
  v103.super_class = v18;
  objc_msgSendSuper2(&v103, "viewDidLoad");
  v89 = v0;
  v19 = &v0[OBJC_IVAR____TtC17StorageSettingsUI20AppDetailViewWrapper_model];
  sub_208C8(&v0[OBJC_IVAR____TtC17StorageSettingsUI20AppDetailViewWrapper_model], v8);
  sub_6F7AC(v8, v11);
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  v20 = qword_BCF88;
  type metadata accessor for StorageShared(0);
  sub_7FC18(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  v21 = sub_80C38();
  v22 = (v11 + *(v9 + 36));
  *v22 = v21;
  v22[1] = v20;
  v23 = *(v19 + 3);
  v88 = *(v19 + 2);
  v99 = v88;
  v100 = v23;
  v87[1] = v23;
  v24 = sub_7FB5C();
  v25 = sub_14ED0();
  v26 = v20;
  sub_81358();
  sub_7FC60(v11);
  v27 = v95;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v95);
  v99 = v9;
  v100 = &type metadata for String;
  v101 = v24;
  v102 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v93;
  sub_813A8();
  (*(v3 + 8))(v5, v27);
  (*(v91 + 8))(v13, v29);
  v30 = v96;
  sub_80D08();
  v99 = v29;
  v100 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v94;
  sub_81318();
  (*(v97 + 8))(v30, v98);
  (*(v92 + 8))(v15, v31);
  v32 = objc_allocWithZone(sub_147EC(&unk_BA520, &qword_8C900));
  v33 = sub_81088();
  v34 = [v33 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  v36 = v89;
  v37 = [v89 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v38 = v37;
  [v37 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v35 setFrame:{v40, v42, v44, v46}];
  v47 = [v33 view];
  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v36 addChildViewController:v33];
  v49 = [v36 view];
  if (!v49)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = v49;
  v51 = [v33 view];
  if (!v51)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v52 = v51;
  [v50 addSubview:v51];

  [v33 didMoveToParentViewController:v36];
  v53 = [v36 navigationItem];
  v54 = sub_818E8();
  [v53 setTitle:v54];

  v55 = [v36 navigationItem];
  [v55 setLargeTitleDisplayMode:2];

  v56 = [v36 view];
  if (!v56)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v56;
  sub_147EC(&qword_B8C70, &qword_89E70);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_896D0;
  v59 = [v36 view];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = v59;
  v61 = [v59 topAnchor];

  v62 = [v33 view];
  if (!v62)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v63 = v62;
  v64 = [v62 topAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(v58 + 32) = v65;
  v66 = [v36 view];
  if (!v66)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v67 = v66;
  v68 = [v66 leadingAnchor];

  v69 = [v33 view];
  if (!v69)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v70 = v69;
  v71 = [v69 leadingAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v58 + 40) = v72;
  v73 = [v36 view];
  if (!v73)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v74 = v73;
  v75 = [v73 bottomAnchor];

  v76 = [v33 view];
  if (!v76)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v77 = v76;
  v78 = [v76 bottomAnchor];

  v79 = [v75 constraintEqualToAnchor:v78];
  *(v58 + 48) = v79;
  v80 = [v36 view];
  if (!v80)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v81 = v80;
  v82 = [v80 trailingAnchor];

  v83 = [v33 view];
  if (v83)
  {
    v84 = [v83 trailingAnchor];

    v85 = [v82 constraintEqualToAnchor:v84];
    *(v58 + 56) = v85;
    sub_40730();
    isa = sub_819E8().super.isa;

    [v57 addConstraints:isa];

    return;
  }

LABEL_31:
  __break(1u);
}

id sub_7FA30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDetailViewWrapper(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppDetailViewWrapper(uint64_t a1)
{
  result = qword_BA4E0;
  if (!qword_BA4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7FACC(uint64_t a1)
{
  result = type metadata accessor for Application(319);
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

unint64_t sub_7FB5C()
{
  result = qword_BA510;
  if (!qword_BA510)
  {
    sub_14E2C(&qword_BA4F0, &qword_8C8D8);
    sub_7FC18(&qword_BA518, type metadata accessor for DetailView, &unk_8BFFC);
    sub_406CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_BA510);
  }

  return result;
}

uint64_t sub_7FC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7FC60(uint64_t a1)
{
  v2 = sub_147EC(&qword_BA4F0, &qword_8C8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_7FCC8(int a1, int a2, int a3)
{
  if (qword_BCF48 == -1)
  {
    v3 = dword_BCF38 < a1;
    if (dword_BCF38 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_807D8();
    a2 = v6;
    a3 = v5;
    v3 = dword_BCF38 < a1;
    if (dword_BCF38 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_BCF3C > a2)
  {
    return 1;
  }

  if (dword_BCF3C < a2)
  {
    return 0;
  }

  return dword_BCF40 >= a3;
}

uint64_t sub_7FD88(int a1, int a2, int a3, int a4)
{
  if (qword_BCF50 == -1)
  {
    if (qword_BCF58)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_807F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_BCF58)
    {
      return _availability_version_check();
    }
  }

  if (qword_BCF48 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_807D8();
    a3 = v10;
    a4 = v9;
    v8 = dword_BCF38 < v11;
    if (dword_BCF38 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_BCF3C > a3)
      {
        return 1;
      }

      if (dword_BCF3C >= a3)
      {
        return dword_BCF40 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_BCF38 < a2;
  if (dword_BCF38 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_7FF1C(uint64_t result)
{
  v1 = qword_BCF58;
  if (qword_BCF58)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_BCF58 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_BCF38, &dword_BCF3C, &dword_BCF40);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

void sub_80264(uint64_t a1, void *a2)
{
  [*(a1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_B3AC() description];
  [a2 code];
  sub_B354();
  sub_B394();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_8031C(void *a1)
{
  v1 = [a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Demoting app: %@", v3, v4, v5, v6);
}

void sub_803EC(id *a1)
{
  v1 = [*a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Application demote completed: %@", v3, v4, v5, v6);
}

void sub_80478(void *a1)
{
  v1 = [a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Restoring app: %@", v3, v4, v5, v6);
}

void sub_80500(void *a1)
{
  [a1 code];
  v1 = [sub_B3AC() description];
  sub_B33C();
  sub_B394();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_8059C(id *a1)
{
  v1 = [*a1 name];
  sub_B3A0();
  sub_B378(&dword_0, &_os_log_default, v2, "Application restore completed: %@", v3, v4, v5, v6);
}

void sub_80628(void *a1)
{
  [a1 code];
  v1 = [sub_B3AC() description];
  sub_B33C();
  sub_B394();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_806C4(void *a1)
{
  [a1 code];
  v1 = [sub_B3AC() description];
  sub_B33C();
  sub_B394();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}