uint64_t sub_A4FD8()
{

  sub_20750(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A5068()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Mail Import List] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_A51FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_A5294()
{
  result = qword_128BB8;
  if (!qword_128BB8)
  {
    sub_6110(&qword_128B98, &qword_E3448);
    sub_109A8(&qword_128BC0, &qword_128BC8, &unk_E3488, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128BB8);
  }

  return result;
}

uint64_t sub_A5378(uint64_t a1)
{
  v2 = sub_66D4(&qword_128B98, &qword_E3448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A5438()
{
  result = qword_128BD8;
  if (!qword_128BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128BD8);
  }

  return result;
}

unint64_t sub_A5504()
{
  result = qword_128C00;
  if (!qword_128C00)
  {
    sub_6110(&qword_128BF8, &qword_E5DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128C00);
  }

  return result;
}

uint64_t sub_A5588()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7D76C;

  return sub_A4F40(v2, v3);
}

char *sub_A56F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_128CF0, &qword_E37B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_A57FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_66D4(&qword_1223D8, &qword_DA4D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_66D4(&qword_1223E0, &unk_E3890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A5944(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_128D28, &unk_E3880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A5A6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121900, &qword_D96E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_A5B78@<X0>(uint64_t a1@<X8>)
{
  result = sub_D5AE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_A5C00(uint64_t a1)
{
  v2 = sub_D5EF0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D59B0();
}

unint64_t sub_A5CDC()
{
  result = qword_128C88;
  if (!qword_128C88)
  {
    sub_6110(&qword_128C80, &qword_E36F0);
    sub_F5B8();
    sub_A5D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128C88);
  }

  return result;
}

unint64_t sub_A5D68()
{
  result = qword_128C90;
  if (!qword_128C90)
  {
    sub_6110(&qword_128C98, &qword_E36F8);
    sub_109A8(&qword_128CA0, &qword_128CA8, &qword_E3700, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128C90);
  }

  return result;
}

unint64_t sub_A5E38()
{
  result = qword_128CC8;
  if (!qword_128CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128CC8);
  }

  return result;
}

uint64_t sub_A5E9C()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_A5EF4()
{

  sub_67D4((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_A5F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A5F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 8)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_D6C20() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_A6030(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v6 = *a1;
  result = sub_A5F90(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = result << 6;
    while (v10 < v11)
    {
      result = *(v6 + v12 + 96);
      if (result != a2 || *(v6 + v12 + 104) != a3)
      {
        result = sub_D6C20();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v14 = v9 << 6;
            v15 = (v6 + 32 + (v9 << 6));
            v16 = *v15;
            v17 = v15[1];
            v18 = v15[2];
            *(v42 + 9) = *(v15 + 41);
            v41 = v17;
            v42[0] = v18;
            v40 = v16;
            v19 = *(v6 + v12 + 96);
            v20 = *(v6 + v12 + 112);
            v21 = *(v6 + v12 + 128);
            *(v45 + 9) = *(v6 + v12 + 137);
            v44 = v20;
            v45[0] = v21;
            v43 = v19;
            sub_15C4C(&v40, v38);
            sub_15C4C(&v43, v38);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_A5CC8(v6);
              v6 = result;
            }

            if (v9 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v22 = (v6 + v14);
            v23 = *(v6 + v14 + 32);
            v24 = *(v6 + v14 + 48);
            v25 = *(v6 + v14 + 64);
            *&v37[9] = *(v6 + v14 + 73);
            v36[1] = v24;
            *v37 = v25;
            v36[0] = v23;
            v26 = v43;
            v27 = v44;
            v28 = v45[0];
            *(v22 + 73) = *(v45 + 9);
            v22[3] = v27;
            v22[4] = v28;
            v22[2] = v26;
            result = sub_3C4F8(v36);
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_26;
            }

            v29 = (v6 + v12);
            v30 = *(v6 + v12 + 96);
            v31 = *(v6 + v12 + 112);
            v32 = *(v6 + v12 + 128);
            *&v39[9] = *(v6 + v12 + 137);
            v38[1] = v31;
            *v39 = v32;
            v38[0] = v30;
            v33 = v40;
            v34 = v41;
            v35 = v42[0];
            *(v29 + 137) = *(v42 + 9);
            v29[7] = v34;
            v29[8] = v35;
            v29[6] = v33;
            result = sub_3C4F8(v38);
            *v46 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 64;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_A6248(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = v13 + 64 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_A6308(unint64_t result, uint64_t a2)
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
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_A56F0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_A6248(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_A63F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_D5AE0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_A6454()
{
  result = qword_128D10;
  if (!qword_128D10)
  {
    sub_6110(&qword_128D08, &qword_E3850);
    sub_6110(&qword_128D18, &qword_E3858);
    sub_109A8(&qword_128D20, &qword_128D18, &qword_E3858, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D10);
  }

  return result;
}

uint64_t sub_A6550()
{
  sub_6110(&qword_128BA0, &qword_E3450);
  sub_6110(&qword_128B98, &qword_E3448);
  type metadata accessor for MSStartMailImportView(255);
  sub_A5294();
  sub_A5F48(&qword_128BD0, type metadata accessor for MSStartMailImportView, &unk_DAFF0);
  swift_getOpaqueTypeConformance2();
  sub_A5438();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_A6648()
{
  result = qword_128D38;
  if (!qword_128D38)
  {
    sub_6110(&qword_128D30, &qword_E38E0);
    sub_A66E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D38);
  }

  return result;
}

unint64_t sub_A66E0()
{
  result = qword_128D40;
  if (!qword_128D40)
  {
    sub_6110(&qword_128D48, &qword_E38E8);
    sub_A6764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D40);
  }

  return result;
}

unint64_t sub_A6764()
{
  result = qword_128D50;
  if (!qword_128D50)
  {
    sub_6110(&qword_128D58, &qword_E38F0);
    sub_109A8(&qword_128D60, &qword_128D68, &qword_E38F8, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128D50);
  }

  return result;
}

uint64_t sub_A68C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v43 = *v2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if ((v53 & 0xF9) != 0)
  {
    v40 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v8 = *(&v53 + 1);
    v40 = v53;
  }

  v39 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v41 = v5;
  v42 = v4;
  if (v53 > 2u)
  {
    v9 = 0xE400000000000000;
    if (v53 == 3)
    {
      v10 = 1346585938;
    }

    else if (v53 == 4)
    {
      v10 = 1245861203;
    }

    else
    {
      v10 = 1414744396;
    }
  }

  else if (v53)
  {
    v9 = 0xE200000000000000;
    if (v53 == 1)
    {
      v10 = 20308;
    }

    else
    {
      v10 = 17219;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 1297044038;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v11 = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v12 = *&aMove_2[8 * v53];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v13 = *(v3 + qword_128D70);
  *&v49[0] = v10;
  *(&v49[0] + 1) = v9;
  v49[1] = v11;
  *&v50 = v12;
  *(&v50 + 1) = 0xE400000000000000;
  *&v51 = v40;
  *(&v51 + 1) = v39;
  v52[0] = v53;
  *&v52[1] = v13;
  BYTE8(v52[1]) = 0;
  v53 = v49[0];
  v54 = v11;
  *(v57 + 9) = *(v52 + 9);
  v56 = v51;
  v57[0] = v52[0];
  v55 = v50;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = v42;
  v15 = sub_6610(v42, qword_137988);
  v16 = v41;
  (*(v41 + 16))(v7, v15, v14);
  v17 = sub_D5320();
  v18 = sub_D68A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "[Add Rule] create rule started", v19, 2u);
  }

  (*(v16 + 8))(v7, v14);
  v20 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository + 24));
  v21 = *(*v20 + 16);
  v22 = *(*v20 + 24);
  v48[3] = &type metadata for CreateMailRuleRequest;
  v48[4] = sub_46830();
  v23 = swift_allocObject();
  v48[0] = v23;
  v24 = v56;
  v23[3] = v55;
  v23[4] = v24;
  v23[5] = v57[0];
  *(v23 + 89) = *(v57 + 9);
  v25 = v54;
  v23[1] = v53;
  v23[2] = v25;
  v26 = objc_allocWithZone(type metadata accessor for MSRuleAddAPI(0));
  sub_13E28(v48, v47);
  v27 = v21;
  v28 = v22;
  sub_958F8(v49, v46);
  v29 = sub_46884(v21, v28, v47);

  sub_13EF4(v48);
  v30 = sub_1FFF4();

  v46[0] = v30;
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = *(v43 + 1240);
  v34 = v56;
  *(v32 + 56) = v55;
  *(v32 + 72) = v34;
  *(v32 + 88) = v57[0];
  *(v32 + 97) = *(v57 + 9);
  v35 = v54;
  *(v32 + 24) = v53;
  *(v32 + 16) = v33;
  *(v32 + 40) = v35;
  *(v32 + 120) = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = v44;
  *(v36 + 24) = v45;

  sub_66D4(&qword_128630, &qword_E2A08);
  sub_96EA8();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_A6FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v42 - v10;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 32);
    v46 = *a1;
    v47 = v13;
    v44 = *(a1 + 40);
    v14 = *(a1 + 24);
    v45 = *(a1 + 16);
    v43 = v14;

    v15 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (sub_3E944())
    {
      v16 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v19, v4);

      v20 = sub_D5320();
      v21 = sub_D68B0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v42 = v20;
        v23 = v16;
        v24 = v22;
        v25 = swift_slowAlloc();
        v49 = v25;
        *v24 = 136642819;
        v26 = sub_558F0(v23, v18, &v49);
        v27 = v12;
        v28 = v5;
        v29 = v8;
        v30 = v26;

        *(v24 + 4) = v30;
        v8 = v29;
        v5 = v28;
        v12 = v27;
        v31 = v42;
        _os_log_impl(&dword_0, v42, v21, "[Add Rule] params: %{sensitive}s", v24, 0xCu);
        sub_67D4(v25);
        v15 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
    }

    if (v15[91].isa != -1)
    {
      swift_once();
    }

    v32 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v32, v4);

    v33 = sub_D5320();
    v34 = sub_D68B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55[0] = v36;
      *v35 = 136315138;
      v49 = v46;
      v50 = v12;
      v51 = v45;
      LOBYTE(v52) = v43 & 1;
      v53 = v47;
      v54 = v44 & 1;
      sub_6780();
      v37 = sub_D6C60();
      v39 = sub_558F0(v37, v38, v55);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v33, v34, "[Add Rule] create rule failed: %s", v35, 0xCu);
      sub_67D4(v36);
    }

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v40 = v43 & 1;
      v41 = v44 & 1;
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v46;
      v50 = v12;
      v51 = v45;
      v52 = v40;
      v53 = v47;
      v54 = v41;
      return sub_D5580();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_A74E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Add Rule] create rule successful", v10, 2u);
  }

  v11 = (*(v4 + 8))(v6, v3);
  return a2(v11);
}

uint64_t sub_A768C()
{
  v0 = sub_901D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_A7718()
{

  return _swift_deallocObject(v0, 105, 7);
}

double sub_A7770@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_A7800(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_A7898()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A78D0()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_A7940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A79C4()
{
  v1 = *v0;
  sub_66D4(&qword_1226D8, &qword_DA760);
  sub_D6310();
  *&v6[5] = *v6;
  *&v6[7] = *&v6[2];
  sub_D62E0();

  v5[2] = v5[4];
  v5[3] = v5[5];
  v7 = v1;
  *v6 = *(v0 + 1);
  v2 = swift_allocObject();
  v3 = *(v0 + 1);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v0[4];
  sub_10578(&v7, v5);

  sub_9FF94(v6, v5);
  sub_66D4(&qword_128DF8, &qword_E3C30);
  sub_A7C20();
  sub_D6150();
}

uint64_t sub_A7B4C(uint64_t *a1, void *a2, __int128 *a3)
{
  result = sub_D6690();
  if (*(a3 + 4) < result)
  {

    sub_66D4(&qword_1226D8, &qword_DA760);
    return sub_D62F0();
  }

  return result;
}

uint64_t sub_A7BD0()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_A7C20()
{
  result = qword_128E00;
  if (!qword_128E00)
  {
    sub_6110(&qword_128DF8, &qword_E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128E00);
  }

  return result;
}

uint64_t sub_A7C84()
{
  sub_6110(&qword_128DF8, &qword_E3C30);
  sub_A7C20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_66D4(&qword_128E08, qword_E3C38);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_A7E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_66D4(&qword_128E08, qword_E3C38);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for MSRulesView(uint64_t a1)
{
  result = qword_128E68;
  if (!qword_128E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A7FBC(uint64_t a1)
{
  sub_A816C(319, &qword_121100, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_A80D8(319);
    if (v2 <= 0x3F)
    {
      sub_39788();
      if (v3 <= 0x3F)
      {
        sub_A816C(319, &unk_128E88, &type metadata accessor for EditMode, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_A80D8(uint64_t a1)
{
  if (!qword_128E78)
  {
    _s9ViewModelCMa_2(255);
    sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
    v1 = sub_D5760();
    if (!v2)
    {
      atomic_store(v1, &qword_128E78);
    }
  }
}

void sub_A816C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_A81EC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_90D1C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_A8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2A5C4(a1, v19);
  v11 = sub_38BFC(v19, v19[3]);
  __chkstk_darwin(v11);
  v13 = (&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;

  v16 = sub_B08B4(v15, a2, a3, a4, a5, a6);

  sub_67D4(v19);
  return v16;
}

uint64_t sub_A8378@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v131 = sub_66D4(&qword_128EC8, &qword_E3CD0);
  v111 = *(v131 - 8);
  __chkstk_darwin(v131);
  v119 = &v94 - v2;
  v3 = type metadata accessor for MSRulesView(0);
  v4 = v3 - 8;
  v121 = *(v3 - 8);
  v129 = *(v121 + 64);
  v122 = v3 - 8;
  __chkstk_darwin(v3);
  v134 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_D63D0();
  v133 = *(v127 - 8);
  v6 = __chkstk_darwin(v127);
  v113 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v126 = &v94 - v8;
  v9 = sub_D5B20();
  *(&v109 + 1) = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  *&v109 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_66D4(&qword_128D18, &qword_E3858);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v94 - v13;
  v94 = sub_66D4(&qword_128D08, &qword_E3850);
  __chkstk_darwin(v94);
  v16 = &v94 - v15;
  v17 = sub_66D4(&qword_128ED0, &qword_E3CD8);
  v18 = *(v17 - 8);
  v123 = v17;
  v124 = v18;
  __chkstk_darwin(v17);
  v95 = &v94 - v19;
  v102 = sub_66D4(&qword_128ED8, &qword_E3CE0);
  __chkstk_darwin(v102);
  v101 = &v94 - v20;
  v21 = sub_66D4(&qword_128EE0, &qword_E3CE8);
  v22 = *(v21 - 8);
  v105 = v21;
  v106 = v22;
  __chkstk_darwin(v21);
  v103 = &v94 - v23;
  v24 = sub_66D4(&qword_128EE8, &qword_E3CF0);
  v25 = *(v24 - 8);
  v107 = v24;
  v108 = v25;
  __chkstk_darwin(v24);
  v104 = &v94 - v26;
  v112 = sub_66D4(&qword_128EF0, &qword_E3CF8);
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  v125 = &v94 - v27;
  v28 = sub_66D4(&qword_128EF8, &qword_E3D00);
  v29 = *(v28 - 8);
  v115 = v28;
  v116 = v29;
  __chkstk_darwin(v28);
  v128 = &v94 - v30;
  v31 = sub_66D4(&qword_128F00, &qword_E3D08);
  v32 = *(v31 - 8);
  v117 = v31;
  v118 = v32;
  __chkstk_darwin(v31);
  v130 = &v94 - v33;
  v34 = v1;
  v136 = v1;
  sub_66D4(&qword_128F08, &unk_E3D10);
  sub_B1074();
  sub_D5E60();
  sub_109A8(&qword_128D20, &qword_128D18, &qword_E3858, &protocol conformance descriptor for List<A, B>);
  sub_D5F90();
  (*(v12 + 8))(v14, v11);
  v35 = v94;
  v36 = &v16[*(v94 + 36)];
  *v36 = sub_AA160;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = 0;
  v37 = v1 + *(v4 + 28);
  v38 = *v37;
  v99 = *(v37 + 8);
  v100 = v38;
  v98 = *(v37 + 16);
  v97 = _s9ViewModelCMa_2(0);
  v96 = sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v153 = v159;
  v154 = v160;
  v155[0] = *v161;
  *(v155 + 9) = *&v161[9];
  v39 = v95;
  sub_A1458(&v153, 19279, 0xE200000000000000);
  v156 = v153;
  sub_E158(&v156);

  v157 = v154;
  v158[0] = v155[0];
  *(v158 + 9) = *(v155 + 9);
  sub_FC3C(&v157, &qword_120EE8, &qword_D8DD0);
  sub_FC3C(v16, &qword_128D08, &qword_E3850);
  v135 = v34;
  sub_66D4(&qword_128F28, &unk_E3D60);
  v40 = sub_6110(&qword_121178, &qword_DB0C0);
  v41 = sub_A6454();
  v42 = sub_E000();
  v43 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  *&v159 = v35;
  *(&v159 + 1) = &type metadata for MSError;
  *&v160 = v40;
  *(&v160 + 1) = v41;
  *v161 = v42;
  *&v161[8] = v43;
  swift_getOpaqueTypeConformance2();
  sub_B113C();
  v44 = v101;
  v45 = v123;
  sub_D6130();
  (*(v124 + 8))(v39, v45);
  KeyPath = swift_getKeyPath();
  v47 = v102;
  v48 = (v44 + *(v102 + 36));
  v49 = *(sub_66D4(&qword_128F40, &qword_E3DA0) + 28);
  v50 = v122;
  v123 = *(v122 + 36);
  v124 = sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6230();
  (*(v111 + 7))(v48 + v49, 0, 1, v131);
  *v48 = KeyPath;
  v51 = (v34 + *(v50 + 40));
  v132 = v34;
  v53 = *v51;
  v52 = v51[1];
  *&v159 = v53;
  *(&v159 + 1) = v52;
  v54 = sub_B1218();
  v55 = sub_DFAC();
  v56 = v103;
  sub_D6040();
  sub_FC3C(v44, &qword_128ED8, &qword_E3CE0);
  v57 = v109;
  v58 = v110;
  (*(*(&v109 + 1) + 104))(v109, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v110);
  *&v159 = v47;
  *(&v159 + 1) = &type metadata for String;
  *&v160 = v54;
  *(&v160 + 1) = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v104;
  v60 = v105;
  sub_D60D0();
  (*(*(&v57 + 1) + 8))(v57, v58);
  v62 = v60;
  (*(v106 + 8))(v56, v60);
  v63 = v126;
  sub_D6210();
  v64 = v133;
  v65 = v113;
  v66 = v127;
  (*(v133 + 104))(v113, enum case for EditMode.active(_:), v127);
  sub_D63C0();
  v67 = *(v64 + 8);
  v133 = v64 + 8;
  v111 = v67;
  v67(v65, v66);
  v67(v63, v66);
  *&v159 = v62;
  *(&v159 + 1) = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v107;
  sub_D60C0();
  (*(v108 + 8))(v61, v69);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v141 = v149;
  v142 = v150;
  v143 = v151;
  v144 = v152;
  v137 = v145;
  v138 = v146;
  v139 = v147;
  v140 = v148;
  v70 = v134;
  sub_B13F8(v132, v134);
  v121 = *(v121 + 80);
  v71 = (v121 + 16) & ~v121;
  v72 = swift_allocObject();
  sub_B1460(v70, v72 + v71);
  *&v109 = sub_66D4(&qword_128F58, &qword_E3DD8);
  *&v159 = v69;
  *(&v159 + 1) = v68;
  *(&v109 + 1) = swift_getOpaqueTypeConformance2();
  v110 = sub_B1544();
  v113 = &unk_E5CE8;
  v73 = sub_109A8(&qword_128F68, &qword_128F58, &qword_E3DD8, &unk_E5CE8);
  v74 = v112;
  v75 = v125;
  sub_D6100();

  v162 = v141;
  v163 = v142;
  v164 = v143;
  v165 = v144;
  v159 = v137;
  v160 = v138;
  *v161 = v139;
  *&v161[16] = v140;
  sub_FC3C(&v159, &qword_128F70, &unk_E3DE0);
  (*(v114 + 8))(v75, v74);
  v76 = v132;
  v77 = (v132 + *(v122 + 32));
  v78 = *v77;
  v79 = *(v77 + 1);
  LOBYTE(v137) = v78;
  *(&v137 + 1) = v79;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  LODWORD(v122) = v146;
  v80 = v134;
  sub_B13F8(v76, v134);
  v81 = swift_allocObject();
  sub_B1460(v80, v81 + v71);
  v125 = sub_66D4(&qword_128F78, &qword_E3DF0);
  *&v145 = v74;
  *(&v145 + 1) = &type metadata for MailRule;
  v146 = v109;
  *&v147 = v110;
  *(&v147 + 1) = v73;
  *&v93 = swift_getOpaqueTypeConformance2();
  *(&v93 + 1) = sub_109A8(&qword_128F80, &qword_128F78, &qword_E3DF0, v113);
  v82 = v115;
  v83 = v128;
  sub_D60F0();

  (*(v116 + 8))(v83, v82);
  v84 = v132;
  v85 = v119;
  sub_D6230();
  v86 = v126;
  sub_D62E0();
  sub_FC3C(v85, &qword_128EC8, &qword_E3CD0);
  v87 = v134;
  sub_B13F8(v84, v134);
  v88 = swift_allocObject();
  sub_B1460(v87, v88 + v71);
  *&v145 = v82;
  *(&v145 + 1) = v125;
  v146 = v93;
  swift_getOpaqueTypeConformance2();
  sub_B1ED0(&qword_128F88, &type metadata accessor for EditMode, &protocol conformance descriptor for EditMode);
  v89 = v117;
  v90 = v127;
  v91 = v130;
  sub_D6150();

  v111(v86, v90);
  return (*(v118 + 8))(v91, v89);
}

uint64_t sub_A94E0@<X0>(uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_66D4(&qword_128F20, &qword_E3D30);
  __chkstk_darwin(v31);
  v23 = &v22 - v2;
  v27 = sub_66D4(&qword_1263D8, &qword_DE958);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v22 - v3;
  v28 = sub_66D4(&qword_129020, &unk_E4110);
  __chkstk_darwin(v28);
  v5 = &v22 - v4;
  v26 = sub_66D4(&qword_1263E8, &qword_DE968);
  __chkstk_darwin(v26);
  v7 = &v22 - v6;
  v29 = sub_66D4(&qword_1263F0, &unk_DE970);
  __chkstk_darwin(v29);
  v9 = &v22 - v8;
  v10 = sub_66D4(&qword_1263F8, &unk_E3D20);
  v22 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  type metadata accessor for MSRulesView(0);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v14 = v33;
  if (v33)
  {
    if (v33 == 1)
    {
      v15 = v23;
      sub_A9D1C(v23);
      sub_FBD4(v15, v5, &qword_128F20, &qword_E3D30);
      swift_storeEnumTagMultiPayload();
      sub_713E8();
      sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30, &protocol conformance descriptor for TupleView<A>);
      sub_D5BF0();
      return sub_FC3C(v15, &qword_128F20, &qword_E3D30);
    }

    else
    {
      v18 = v32;
      __chkstk_darwin(v13);
      *(&v22 - 2) = v18;
      *(&v22 - 1) = v14;
      v19 = v24;
      sub_D6390();
      sub_F2AC(v18, v14);
      v20 = v25;
      v21 = v27;
      (*(v25 + 16))(v7, v19, v27);
      swift_storeEnumTagMultiPayload();
      sub_71474();
      sub_71504();
      sub_D5BF0();
      sub_FBD4(v9, v5, &qword_1263F0, &unk_DE970);
      swift_storeEnumTagMultiPayload();
      sub_713E8();
      sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30, &protocol conformance descriptor for TupleView<A>);
      sub_D5BF0();
      sub_FC3C(v9, &qword_1263F0, &unk_DE970);
      return (*(v20 + 8))(v19, v21);
    }
  }

  else
  {
    sub_66D4(&qword_121360, &unk_D8FE0);
    sub_F5B8();
    sub_D6390();
    v17 = v22;
    (*(v22 + 16))(v7, v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_71474();
    sub_71504();
    sub_D5BF0();
    sub_FBD4(v9, v5, &qword_1263F0, &unk_DE970);
    swift_storeEnumTagMultiPayload();
    sub_713E8();
    sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30, &protocol conformance descriptor for TupleView<A>);
    sub_D5BF0();
    sub_FC3C(v9, &qword_1263F0, &unk_DE970);
    return (*(v17 + 8))(v12, v10);
  }
}

__n128 sub_A9BC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_66D4(&qword_121238, &unk_D8E20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  sub_D5780();
  sub_D63E0();
  sub_D5930();
  (*(v3 + 32))(a1, v5, v2);
  v6 = a1 + *(sub_66D4(&qword_121360, &unk_D8FE0) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_A9D1C@<X0>(char *a1@<X8>)
{
  v40 = a1;
  v39 = sub_66D4(&qword_129028, &qword_E4168);
  v2 = *(v39 - 8);
  v3 = __chkstk_darwin(v39);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = sub_66D4(&qword_129030, &qword_E4170);
  v37 = *(v7 - 8);
  v8 = v37;
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v42 = v1;
  sub_66D4(&qword_129038, &qword_E4178);
  sub_B1974();
  v36 = v13;
  sub_D6390();
  v41 = v1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v43._countAndFlagsBits = 2777980912;
  v43._object = 0xA400000000000000;
  v47._object = 0x80000000000E9DC0;
  v47._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v47);
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  sub_D66D0(v48);
  v32._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x80000000000E9DC0;
  v49._countAndFlagsBits = 0xD000000000000011;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v16.super.isa = v15;
  v17 = sub_D4E80(v49, v50, v16, v43, 0, v32);
  v19 = v18;

  v43._countAndFlagsBits = v17;
  v43._object = v19;
  sub_DFAC();
  v43._countAndFlagsBits = sub_D5F50();
  v43._object = v20;
  v44 = v21 & 1;
  v45 = v22;
  v46 = 256;
  sub_66D4(&qword_121280, &unk_D8E40);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_EB50();
  sub_4ABC8();
  v34 = v6;
  sub_D63A0();
  v23 = *(v8 + 16);
  v35 = v11;
  v23(v11, v13, v7);
  v24 = *(v2 + 16);
  v25 = v38;
  v26 = v39;
  v24(v38, v6, v39);
  v27 = v40;
  v23(v40, v11, v7);
  v28 = &v27[*(sub_66D4(&qword_1290D0, &qword_E41C8) + 48)];
  v24(v28, v25, v26);
  v29 = *(v2 + 8);
  v29(v34, v26);
  v30 = *(v37 + 8);
  v30(v36, v7);
  v29(v25, v26);
  return (v30)(v35, v7);
}

uint64_t sub_AA160()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Rules List] page viewed", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v8 = sub_78BC4(3);
  v8();
}

double sub_AA308@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_AA398(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_AA430@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_D56A0();
  v10 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MSRulesView(0);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  v6 = sub_43830();

  if (v6)
  {
    sub_D5690();
    (*(v10 + 32))(a2, v5, v3);
    return (*(v10 + 56))(a2, 0, 1, v3);
  }

  else
  {
    v8 = *(v10 + 56);

    return v8(a2, 1, 1, v3);
  }
}

uint64_t sub_AA60C(uint64_t a1)
{
  v2 = sub_66D4(&qword_129018, &qword_E40E8);
  __chkstk_darwin(v2 - 8);
  sub_FBD4(a1, &v5 - v3, &qword_129018, &qword_E40E8);
  return sub_D5AB0();
}

__n128 sub_AA6B4@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v5;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_AA774(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v18[4] = a1[4];
  v18[5] = v3;
  v19 = *(a1 + 12);
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v5 = a1[3];
  v18[2] = a1[2];
  v18[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v15 = a1[4];
  v16 = v6;
  v17 = *(a1 + 12);
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  v8 = a1[3];
  v13 = a1[2];
  v14 = v8;
  sub_FBD4(v18, v10, &unk_123F28, &unk_E3CC0);

  return sub_D5580();
}

uint64_t sub_AA84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v23 = a3;
  v4 = type metadata accessor for MSRulesView(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *(a1 + 80);
  v25[4] = *(a1 + 64);
  v25[5] = v6;
  v26 = *(a1 + 96);
  v7 = *(a1 + 48);
  v25[2] = *(a1 + 32);
  v25[3] = v7;
  v8 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v8;
  sub_26A60(v25, v24);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  v9 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList);

  v10 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference);

  v11 = sub_D5740();
  sub_2A5C4(v11 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository, v24);

  sub_B13F8(v21, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v13 = swift_allocObject();
  sub_B1460(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_66D4(&qword_129010, &qword_E3F10);
  v14 = swift_allocObject();
  v15 = sub_38BFC(v24, v24[3]);
  __chkstk_darwin(v15);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_B03C0(v25, v9, v10, *v17, sub_B176C, v13, v14);
  sub_67D4(v24);
  return sub_AACA8(v19, &qword_128F58, &qword_E3DD8, sub_11C60, sub_AEAC4, sub_B2C18, v23);
}

uint64_t sub_AABF4(uint64_t a1)
{
  type metadata accessor for MSRulesView(0);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  sub_3F1B8();
}

uint64_t sub_AACA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __n128 (*a4)(void, uint64_t, void)@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v166 = a6;
  v194 = a5;
  v167 = a4;
  v165 = a1;
  v199 = sub_D5340();
  v177 = *(v199 - 8);
  v10 = __chkstk_darwin(v199);
  v186 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v185 = &v164 - v13;
  v14 = __chkstk_darwin(v12);
  v189.n128_u64[0] = &v164 - v15;
  __chkstk_darwin(v14);
  v188.n128_u64[0] = &v164 - v16;
  v200 = sub_66D4(&qword_128F98, &qword_E3E90);
  v195 = *(v200 - 8);
  v17 = __chkstk_darwin(v200);
  v198 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v187 = &v164 - v20;
  v21 = __chkstk_darwin(v19);
  v197 = &v164 - v22;
  __chkstk_darwin(v21);
  v196 = &v164 - v23;
  v24 = sub_66D4(&qword_128FA0, &qword_E3E98);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v164 - v26;
  v28 = sub_D5220();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v178 = sub_66D4(a2, a3);
  v32 = v178[7];
  (*(v29 + 104))(v31, enum case for Solarium.main(_:), v28);
  LOBYTE(a3) = sub_D5210();
  (*(v29 + 8))(v31, v28);
  v179 = a7;
  *(a7 + v32) = a3 & 1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v171 = objc_opt_self();
  v173 = ObjCClassFromMetadata;
  v34 = [v171 bundleForClass:ObjCClassFromMetadata];
  v202._countAndFlagsBits = 2777980912;
  v202._object = 0xA400000000000000;
  v204._object = 0x80000000000E9D10;
  v204._countAndFlagsBits = 0xD000000000000018;
  sub_D66D0(v204);
  v205._countAndFlagsBits = 2777980912;
  v205._object = 0xA400000000000000;
  sub_D66D0(v205);
  v160._countAndFlagsBits = 0xE000000000000000;
  v182 = "RULES.LABEL.ADDRULE";
  v206._object = 0x80000000000E9D10;
  v181 = 0xD000000000000018;
  v206._countAndFlagsBits = 0xD000000000000018;
  v216.value._countAndFlagsBits = 0;
  v216.value._object = 0;
  v35.super.isa = v34;
  v36 = sub_D4E80(v206, v216, v35, v202, 0, v160);
  v38 = v37;

  v202._countAndFlagsBits = v36;
  v202._object = v38;
  v39 = sub_66D4(&qword_128FA8, &qword_E3ED0);
  sub_D5250();
  v40 = sub_78648();
  v41 = sub_109A8(&qword_128FB0, &qword_128FA0, &qword_E3E98, &protocol conformance descriptor for Regex<A>);
  v172 = v39;
  v170 = v40;
  v169 = v41;
  v42 = sub_D6570();
  v43 = *(v25 + 8);
  v174 = v27;
  v44 = v27;
  v45 = v195;
  v176 = v24;
  v175 = v25 + 8;
  v168 = v43;
  v43(v44, v24);
  v46 = v167;
  v47 = v177;

  v48 = *(v42 + 16);
  if (v48)
  {
    v203 = _swiftEmptyArrayStorage;
    v49 = v46(0, v48, 0);
    v50 = v203;
    v52 = *(v45 + 16);
    v51 = v45 + 16;
    v192 = v52;
    v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v164 = v42;
    v54 = v42 + v53;
    v191 = *(v51 + 56);
    v184 = v47 + 16;
    v183.n128_u64[0] = v47 + 8;
    v193 = v51;
    v190 = v51 - 8;
    v49.n128_u64[0] = 136315394;
    v180 = v49;
    v55 = v194;
    v56 = v200;
    do
    {
      v192(v196, v54, v56);
      sub_D5260();

      v57 = sub_D6670();
      v59 = v58;

      v60 = v55(v57, v59);
      if (v60 == 13)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v61 = v199;
        v62 = sub_6610(v199, qword_137988);
        v63 = v188.n128_u64[0];
        (*v184)(v188.n128_u64[0], v62, v61);

        v64 = sub_D5320();
        v65 = sub_D68B0();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *v66 = v180.n128_u32[0];
          *(v66 + 4) = sub_558F0(v181, v182 | 0x8000000000000000, &v201);
          *(v66 + 12) = 2080;
          *(v66 + 14) = sub_558F0(v57, v59, &v201);
          _os_log_impl(&dword_0, v64, v65, "Rule Layout %s unknown %s enum", v66, 0x16u);
          swift_arrayDestroy();
          v55 = v194;

          (*v183.n128_u64[0])(v188.n128_u64[0], v61);
        }

        else
        {

          (*v183.n128_u64[0])(v63, v61);
        }

        v67 = 12;
        v56 = v200;
      }

      else
      {
        v67 = v60;
      }

      (*v190)(v196, v56);
      v203 = v50;
      v69 = v50[2];
      v68 = v50[3];
      if (v69 >= v68 >> 1)
      {
        v167(v68 > 1, v69 + 1, 1);
        v50 = v203;
      }

      v50[2] = v69 + 1;
      *(v50 + v69 + 32) = v67;
      v54 += v191;
      --v48;
    }

    while (v48);

    v46 = v167;
    v45 = v195;
  }

  else
  {

    v50 = _swiftEmptyArrayStorage;
    v55 = v194;
  }

  *(v179 + v178[8]) = v50;
  v70 = [v171 bundleForClass:{v173, v164}];
  v202._countAndFlagsBits = 2777980912;
  v202._object = 0xA400000000000000;
  v207._countAndFlagsBits = 0xD00000000000002ELL;
  v207._object = 0x80000000000E9D30;
  sub_D66D0(v207);
  v208._countAndFlagsBits = 2777980912;
  v208._object = 0xA400000000000000;
  sub_D66D0(v208);
  v161._countAndFlagsBits = 0xE000000000000000;
  v209._countAndFlagsBits = 0xD00000000000002ELL;
  v184 = "RULES.RULEOPTIONS.LAYOUT";
  v209._object = 0x80000000000E9D30;
  v217.value._countAndFlagsBits = 0;
  v217.value._object = 0;
  v71.super.isa = v70;
  v72 = sub_D4E80(v209, v217, v71, v202, 0, v161);
  v74 = v73;

  v202._countAndFlagsBits = v72;
  v202._object = v74;
  v75 = v174;
  sub_D5250();
  v76 = v176;
  v77 = sub_D6570();
  v168(v75, v76);

  v78 = *(v77 + 16);
  if (v78)
  {
    v203 = _swiftEmptyArrayStorage;
    v79 = v46(0, v78, 0);
    v80 = v203;
    v82 = *(v45 + 16);
    v81 = (v45 + 16);
    v193 = v82;
    v83 = (v81[64] + 32) & ~v81[64];
    v182 = v77;
    v84 = v77 + v83;
    v192 = *(v81 + 7);
    v190 = v177 + 16;
    v188.n128_u64[0] = v177 + 8;
    v196 = v81;
    v191 = (v81 - 8);
    v79.n128_u64[0] = 136315394;
    v183 = v79;
    v85 = v200;
    do
    {
      (v193)(v197, v84, v85);
      sub_D5260();

      v86 = sub_D6670();
      v88 = v87;

      v89 = v55(v86, v88);
      if (v89 == 13)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v90 = v199;
        v91 = sub_6610(v199, qword_137988);
        v92 = v189.n128_u64[0];
        (*v190)(v189.n128_u64[0], v91, v90);

        v93 = sub_D5320();
        v94 = sub_D68B0();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *v95 = v183.n128_u32[0];
          *(v95 + 4) = sub_558F0(0xD00000000000002ELL, v184 | 0x8000000000000000, &v201);
          *(v95 + 12) = 2080;
          *(v95 + 14) = sub_558F0(v86, v88, &v201);
          _os_log_impl(&dword_0, v93, v94, "Rule Layout %s unknown %s enum", v95, 0x16u);
          swift_arrayDestroy();
          v55 = v194;

          (*v188.n128_u64[0])(v189.n128_u64[0], v90);
        }

        else
        {

          (*v188.n128_u64[0])(v92, v90);
        }

        v96 = 12;
        v85 = v200;
      }

      else
      {
        v96 = v89;
      }

      (*v191)(v197, v85);
      v203 = v80;
      v98 = v80[2];
      v97 = v80[3];
      if (v98 >= v97 >> 1)
      {
        v167(v97 > 1, v98 + 1, 1);
        v80 = v203;
      }

      v80[2] = v98 + 1;
      *(v80 + v98 + 32) = v96;
      v84 += v192;
      --v78;
    }

    while (v78);

    v46 = v167;
  }

  else
  {

    v80 = _swiftEmptyArrayStorage;
  }

  *(v179 + v178[9]) = v80;
  v99 = [v171 bundleForClass:v173];
  v202._countAndFlagsBits = 2777980912;
  v202._object = 0xA400000000000000;
  v210._object = 0x80000000000E9D60;
  v210._countAndFlagsBits = 0xD00000000000002BLL;
  sub_D66D0(v210);
  v211._countAndFlagsBits = 2777980912;
  v211._object = 0xA400000000000000;
  sub_D66D0(v211);
  v162._countAndFlagsBits = 0xE000000000000000;
  v189.n128_u64[0] = "S.LAYOUT.CONDITIONLABELSECTION";
  v212._object = 0x80000000000E9D60;
  v212._countAndFlagsBits = 0xD00000000000002BLL;
  v218.value._countAndFlagsBits = 0;
  v218.value._object = 0;
  v100.super.isa = v99;
  v101 = sub_D4E80(v212, v218, v100, v202, 0, v162);
  v103 = v102;

  v202._countAndFlagsBits = v101;
  v202._object = v103;
  v104 = v174;
  sub_D5250();
  v105 = v176;
  v106 = sub_D6570();
  v168(v104, v105);

  v107 = *(v106 + 16);
  v108 = v187;
  if (v107)
  {
    v203 = _swiftEmptyArrayStorage;
    v109 = v46(0, v107, 0);
    v110 = v203;
    v196 = *(v195 + 16);
    v111 = (*(v195 + 80) + 32) & ~*(v195 + 80);
    v184 = v106;
    v112 = v106 + v111;
    v193 = *(v195 + 72);
    v190 = v177 + 8;
    v191 = (v177 + 16);
    v197 = (v195 + 16);
    v192 = (v195 + 8);
    v109.n128_u64[0] = 136315394;
    v188 = v109;
    do
    {
      (v196)(v108, v112, v200);
      sub_D5260();

      v113 = sub_D6670();
      v115 = v114;

      v116 = v55(v113, v115);
      if (v116 == 13)
      {
        v117 = v185;
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v118 = v199;
        v119 = sub_6610(v199, qword_137988);
        (*v191)(v117, v119, v118);

        v120 = sub_D5320();
        v121 = sub_D68B0();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *v122 = v188.n128_u32[0];
          *(v122 + 4) = sub_558F0(0xD00000000000002BLL, v189.n128_u64[0] | 0x8000000000000000, &v201);
          *(v122 + 12) = 2080;
          *(v122 + 14) = sub_558F0(v113, v115, &v201);
          _os_log_impl(&dword_0, v120, v121, "Rule Layout %s unknown %s enum", v122, 0x16u);
          swift_arrayDestroy();

          v55 = v194;

          (*v190)(v117, v199);
        }

        else
        {

          (*v190)(v117, v118);
        }

        v123 = 12;
        v108 = v187;
      }

      else
      {
        v123 = v116;
      }

      (*v192)(v108, v200);
      v203 = v110;
      v125 = v110[2];
      v124 = v110[3];
      if (v125 >= v124 >> 1)
      {
        v167(v124 > 1, v125 + 1, 1);
        v110 = v203;
      }

      v110[2] = v125 + 1;
      *(v110 + v125 + 32) = v123;
      v112 += v193;
      --v107;
    }

    while (v107);

    v126 = v167;
  }

  else
  {
    v126 = v46;

    v110 = _swiftEmptyArrayStorage;
  }

  v127 = v177;
  *(v179 + v178[10]) = v110;
  v128 = [v171 bundleForClass:v173];
  v202._countAndFlagsBits = 2777980912;
  v202._object = 0xA400000000000000;
  v213._object = 0x80000000000E9D90;
  v213._countAndFlagsBits = 0xD00000000000002BLL;
  sub_D66D0(v213);
  v214._countAndFlagsBits = 2777980912;
  v214._object = 0xA400000000000000;
  sub_D66D0(v214);
  v163._countAndFlagsBits = 0xE000000000000000;
  v190 = "S.LAYOUT.ACTIONLABELSECTION";
  v215._object = 0x80000000000E9D90;
  v215._countAndFlagsBits = 0xD00000000000002BLL;
  v219.value._countAndFlagsBits = 0;
  v219.value._object = 0;
  v129.super.isa = v128;
  v130 = sub_D4E80(v215, v219, v129, v202, 0, v163);
  v132 = v131;

  v202._countAndFlagsBits = v130;
  v202._object = v132;
  v133 = v174;
  sub_D5250();
  v134 = v176;
  v135 = sub_D6570();
  v168(v133, v134);

  v136 = *(v135 + 16);
  if (v136)
  {
    v203 = _swiftEmptyArrayStorage;
    v137 = v126(0, v136, 0);
    v138 = v203;
    v197 = *(v195 + 16);
    v139 = (*(v195 + 80) + 32) & ~*(v195 + 80);
    v188.n128_u64[0] = v135;
    v140 = v135 + v139;
    v196 = *(v195 + 72);
    v191 = (v127 + 8);
    v192 = (v127 + 16);
    v193 = v195 + 8;
    v137.n128_u64[0] = 136315394;
    v189 = v137;
    v141 = v200;
    v195 += 16;
    do
    {
      (v197)(v198, v140, v141);
      sub_D5260();

      v142 = sub_D6670();
      v144 = v143;

      v145 = v55(v142, v144);
      if (v145 == 13)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v146 = v199;
        v147 = sub_6610(v199, qword_137988);
        v148 = v186;
        (*v192)(v186, v147, v146);

        v149 = sub_D5320();
        v150 = sub_D68B0();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *v151 = v189.n128_u32[0];
          *(v151 + 4) = sub_558F0(0xD00000000000002BLL, v190 | 0x8000000000000000, &v201);
          *(v151 + 12) = 2080;
          *(v151 + 14) = sub_558F0(v142, v144, &v201);
          _os_log_impl(&dword_0, v149, v150, "Rule Layout %s unknown %s enum", v151, 0x16u);
          swift_arrayDestroy();

          v55 = v194;

          (*v191)(v148, v199);
        }

        else
        {

          (*v191)(v148, v146);
        }

        v152 = 12;
        v141 = v200;
      }

      else
      {
        v152 = v145;
      }

      (*v193)(v198, v141);
      v203 = v138;
      v154 = v138[2];
      v153 = v138[3];
      if (v154 >= v153 >> 1)
      {
        v167(v153 > 1, v154 + 1, 1);
        v138 = v203;
      }

      v138[2] = v154 + 1;
      *(v138 + v154 + 32) = v152;
      v140 += v196;
      --v136;
    }

    while (v136);
  }

  else
  {

    v138 = _swiftEmptyArrayStorage;
  }

  v156 = v178;
  v157 = v179;
  *(v179 + v178[11]) = v138;
  v158 = v157 + v156[12];
  v159 = v165;
  *v158 = v166;
  *(v158 + 1) = v159;
  v158[16] = 0;
  return result;
}

uint64_t sub_AC51C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v22 = a2;
  v2 = type metadata accessor for MSRulesView(0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2 - 8);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  v4 = sub_D5740();
  sub_2A5C4(v4 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository, v24);

  v5 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList);

  v6 = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference);

  sub_D5740();
  v7 = sub_4393C();

  sub_B13F8(v20, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v9 = swift_allocObject();
  sub_B1460(&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_66D4(&qword_128F90, &qword_E3E88);
  v10 = swift_allocObject();
  *&v10[qword_128D70] = v7;
  sub_2A5C4(v24, v23);
  v11 = sub_38BFC(v23, v23[3]);
  __chkstk_darwin(v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;

  v16 = sub_AED08(v15, v5, v6, sub_B1728, v9, v10);
  sub_67D4(v23);

  sub_67D4(v24);
  v17 = &v16[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title];
  *v17 = 0xD000000000000013;
  *(v17 + 1) = 0x80000000000E9CF0;

  return sub_AACA8(v16, &qword_128F78, &qword_E3DF0, sub_11C90, sub_AEB10, sub_B1744, v22);
}

uint64_t sub_AC938(uint64_t a1)
{
  type metadata accessor for MSRulesView(0);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  v1 = sub_D5740();
  (*(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate))();
  sub_3F1B8();
}

uint64_t sub_ACA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_D63D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, enum case for EditMode.inactive(_:), v3);
  v7 = sub_D63C0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for MSRulesView(0);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v7)
  {
    v9[13] = 1;
    sub_D5580();
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    v9[12] = 1;
    sub_D5580();
    sub_D5740();
    sub_3F564();
  }

  else
  {
    v9[15] = 0;
    sub_D5580();
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    v9[14] = 0;
    return sub_D5580();
  }
}

uint64_t sub_ACCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MSRulesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (a1 + *(__chkstk_darwin(v4 - 8) + 28));
  v8 = *v7;
  v20 = v7[1];
  v21 = v8;
  v19 = *(v7 + 16);
  v18[1] = _s9ViewModelCMa_2(0);
  v18[0] = sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  sub_B13F8(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_B1460(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_66D4(&qword_123F18, &qword_DBB00);
  sub_109A8(&qword_1290D8, &qword_123F18, &qword_DBB00, &protocol conformance descriptor for [A]);
  sub_B1CD8();
  sub_B1ED0(&qword_1290E0, _s11MailRuleRowCMa, &unk_DBB8C);
  sub_D6340();
  sub_B13F8(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_B1460(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_B1F18;
  *(v12 + 24) = v11;
  v13 = (a2 + *(sub_66D4(&qword_129070, &qword_E4190) + 36));
  *v13 = sub_B1FD0;
  v13[1] = v12;
  sub_B13F8(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_B1460(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_B21AC;
  *(v15 + 24) = v14;
  v16 = (a2 + *(sub_66D4(&qword_129060, &qword_E4188) + 36));
  *v16 = sub_B221C;
  v16[1] = v15;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  LOBYTE(v14) = v22;
  *(a2 + *(sub_66D4(&qword_129050, &qword_E4180) + 36)) = v14;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  LOBYTE(v14) = v22;
  result = sub_66D4(&qword_129038, &qword_E4178);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_AD180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v50 = a2;
  v5 = type metadata accessor for MSRulesView(0);
  v6 = v5 - 8;
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = v7;
  v48 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_D63D0();
  v8 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v39 - v11;
  v13 = *a1;
  v14 = (a2 + *(v6 + 28));
  v16 = *v14;
  v15 = v14[1];
  v17 = _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  v39[1] = v16;
  v39[2] = v17;
  v39[3] = v15;
  sub_D5740();

  v18 = *(v13 + 104);
  v44 = *(v13 + 96);
  v45 = v18;

  sub_D5740();
  v19 = *(v13 + 16);
  v20 = *(v13 + 32);
  v21 = *(v13 + 48);
  v22 = *(v13 + 64);
  v23 = *(v13 + 96);
  v58[4] = *(v13 + 80);
  v58[5] = v23;
  v59 = *(v13 + 112);
  v58[2] = v21;
  v58[3] = v22;
  v58[0] = v19;
  v58[1] = v20;
  sub_26A60(v58, v60);
  v24 = sub_40E7C(v58);
  v42 = v25;
  v43 = v24;
  sub_26ABC(v58);

  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6210();
  v27 = v40;
  v26 = v41;
  (*(v8 + 104))(v40, enum case for EditMode.active(_:), v41);
  v28 = sub_D63C0();
  v29 = *(v8 + 8);
  v29(v27, v26);
  v29(v12, v26);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v60[4] = v55;
  v60[5] = v56;
  v61 = v57;
  v60[0] = v51;
  v60[1] = v52;
  v60[2] = v53;
  v60[3] = v54;
  v30 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    v31 = *&v60[0];

    sub_FC3C(v60, &unk_123F28, &unk_E3CC0);
    if (v31 == *(v13 + 16) && *(v13 + 24) == v30)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_D6C20();
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = v48;
  sub_B13F8(v50, v48);
  v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_B1460(v33, v36 + v34);
  *(v36 + v35) = v13;
  v37 = v49;
  *v49 = v44;
  v37[1] = v45;
  v37[2] = v43;
  v37[3] = v42;
  *(v37 + 32) = v28 & 1;
  *(v37 + 33) = v32 & 1;
  v37[5] = sub_B2408;
  v37[6] = v36;
}

uint64_t sub_AD614(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MSRulesView(0);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  v22 = *(a2 + 80);
  v23 = v4;
  v5 = *(a2 + 32);
  v19[0] = *(a2 + 16);
  v19[1] = v5;
  v6 = *(a2 + 64);
  v8 = *(a2 + 16);
  v7 = *(a2 + 32);
  v20 = *(a2 + 48);
  v21 = v6;
  v9 = *(a2 + 96);
  v16 = v22;
  v17 = v9;
  v12 = v8;
  v13 = v7;
  v24 = *(a2 + 112);
  v18 = *(a2 + 112);
  v14 = v20;
  v15 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A60(v19, v11);
  return sub_D5580();
}

uint64_t sub_AD754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_D63D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  v11 = (a3 + *(type metadata accessor for MSRulesView(0) + 20));
  v12 = *v11;
  v13 = v11[1];
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  v16[0] = v13;
  v16[1] = v12;
  sub_D5740();
  sub_41738(v17, v18);

  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6210();
  (*(v5 + 104))(v8, enum case for EditMode.inactive(_:), v4);
  LOBYTE(v12) = sub_D63C0();
  v14 = *(v5 + 8);
  v14(v8, v4);
  result = (v14)(v10, v4);
  if (v12)
  {
    sub_D5740();
    sub_3F564();
  }

  return result;
}

uint64_t sub_AD980(uint64_t a1, uint64_t a2)
{
  v3 = sub_D63D0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  type metadata accessor for MSRulesView(0);
  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6210();
  (*(v4 + 104))(v7, enum case for EditMode.active(_:), v3);
  v10 = sub_D63C0();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  _s9ViewModelCMa_2(0);
  sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
  sub_D5740();
  if (v10)
  {
    sub_431EC(a1);
  }

  else
  {
    sub_42044(a1);
  }
}

uint64_t sub_ADB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v40 = sub_D63D0();
  v2 = *(v40 - 8);
  v3 = __chkstk_darwin(v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v34 - v5;
  v37 = sub_66D4(&qword_128EC8, &qword_E3CD0);
  __chkstk_darwin(v37);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MSRulesView(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v10 = sub_66D4(&qword_121178, &qword_DB0C0);
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v44._countAndFlagsBits = 2777980912;
  v44._object = 0xA400000000000000;
  v45._object = 0x80000000000E9CF0;
  v45._countAndFlagsBits = 0xD000000000000013;
  sub_D66D0(v45);
  v46._countAndFlagsBits = 2777980912;
  v46._object = 0xA400000000000000;
  sub_D66D0(v46);
  v33._countAndFlagsBits = 0xE000000000000000;
  v47._object = 0x80000000000E9CF0;
  v47._countAndFlagsBits = 0xD000000000000013;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v15.super.isa = v14;
  v16 = sub_D4E80(v47, v48, v15, v44, 0, v33);
  v18 = v17;

  v44._countAndFlagsBits = v16;
  v44._object = v18;
  sub_B13F8(v36, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v20 = swift_allocObject() + v19;
  v21 = v12;
  sub_B1460(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  sub_DFAC();
  sub_D6280();
  sub_66D4(&qword_128E08, qword_E3C38);
  sub_D6230();
  v22 = v38;
  sub_D62E0();
  sub_FC3C(v7, &qword_128EC8, &qword_E3CD0);
  v23 = v39;
  v24 = v40;
  (*(v2 + 104))(v39, enum case for EditMode.active(_:), v40);
  v25 = v23;
  LOBYTE(v23) = sub_D63C0();
  v26 = *(v2 + 8);
  v26(v25, v24);
  v26(v22, v24);
  if (v23)
  {
    v27 = 1;
  }

  else
  {
    _s9ViewModelCMa_2(0);
    sub_B1ED0(&qword_128E80, _s9ViewModelCMa_2, &unk_DBBC4);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v27 = LOBYTE(v44._countAndFlagsBits) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v27 & 1;
  v30 = v43;
  (*(v41 + 32))(v43, v21, v42);
  result = sub_66D4(&qword_121280, &unk_D8E40);
  v32 = (v30 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = sub_B1E30;
  v32[2] = v29;
  return result;
}

uint64_t sub_AE0FC(uint64_t a1)
{
  type metadata accessor for MSRulesView(0);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_AE170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_129108, &qword_E43C0);
  return sub_AE1C8(a1, a2 + *(v4 + 44));
}

uint64_t sub_AE1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_66D4(&qword_129110, &qword_E43C8);
  __chkstk_darwin(v4);
  v6 = &v30[-v5];
  v7 = sub_66D4(&qword_121238, &unk_D8E20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30[-v9];
  v11 = sub_66D4(&qword_129118, &qword_E43D0);
  v12 = __chkstk_darwin(v11 - 8);
  v33 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v30[-v14];
  v32 = sub_D5BB0();
  LOBYTE(v36[0]) = 1;
  sub_AE6E8(a1, v43);
  *&v42[7] = v43[0];
  *&v42[23] = v43[1];
  *&v42[39] = v43[2];
  *&v42[55] = v43[3];
  v31 = LOBYTE(v36[0]);
  if (*(a1 + 33))
  {
    sub_D5780();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_129120, &qword_E43D8);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_B28CC();
    sub_D5BF0();
    (*(v8 + 8))(v10, v7);
LABEL_6:
    v20 = sub_66D4(&qword_129148, &qword_E43F0);
    (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
    goto LABEL_7;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v17 = sub_D61C0();
    v18 = sub_D61B0();
    KeyPath = swift_getKeyPath();
    *v6 = v17;
    v6[8] = 1;
    *(v6 + 2) = KeyPath;
    *(v6 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_129120, &qword_E43D8);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_B28CC();
    sub_D5BF0();
    goto LABEL_6;
  }

  v16 = sub_66D4(&qword_129148, &qword_E43F0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
LABEL_7:
  v21 = v33;
  sub_FBD4(v15, v33, &qword_129118, &qword_E43D0);
  v22 = v32;
  v34[0] = v32;
  v34[1] = 0;
  v23 = v31;
  v35[0] = v31;
  *&v35[1] = *v42;
  *&v35[17] = *&v42[16];
  *&v35[33] = *&v42[32];
  *&v35[49] = *&v42[48];
  v24 = *&v42[63];
  *&v35[64] = *&v42[63];
  v25 = *v35;
  *a2 = v32;
  *(a2 + 16) = v25;
  v26 = *&v35[16];
  v27 = *&v35[48];
  *(a2 + 48) = *&v35[32];
  *(a2 + 64) = v27;
  *(a2 + 32) = v26;
  *(a2 + 80) = v24;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v28 = sub_66D4(&qword_129150, &qword_E43F8);
  sub_FBD4(v21, a2 + *(v28 + 64), &qword_129118, &qword_E43D0);
  sub_FBD4(v34, v36, &qword_129158, &qword_E4400);
  sub_FC3C(v15, &qword_129118, &qword_E43D0);
  sub_FC3C(v21, &qword_129118, &qword_E43D0);
  v36[0] = v22;
  v36[1] = 0;
  v37 = v23;
  v39 = *&v42[16];
  v40 = *&v42[32];
  *v41 = *&v42[48];
  *&v41[15] = *&v42[63];
  v38 = *v42;
  return sub_FC3C(v36, &qword_129158, &qword_E4400);
}

uint64_t sub_AE6E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_DFAC();

    v5 = sub_D5F50();
    v7 = v6;
    v30 = v9;
    v31 = v5;
    v28 = v8 & 1;
    sub_166E0(v5, v9, v8 & 1);
    v29 = v7;
  }

  else
  {
LABEL_6:
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
  }

  sub_DFAC();

  v10 = sub_D5F50();
  v12 = v11;
  v14 = v13;
  sub_D61B0();
  v15 = sub_D5F00();
  v17 = v16;
  v19 = v18;

  sub_F16C(v10, v12, v14 & 1);

  sub_D5E50();
  v20 = sub_D5F20();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_F16C(v15, v17, v19 & 1);

  sub_A0010(v31, v30, v28, v29);
  sub_166E0(v20, v22, v24 & 1);

  sub_A0054(v31, v30, v28, v29);
  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_F16C(v20, v22, v24 & 1);

  return sub_A0054(v31, v30, v28, v29);
}

uint64_t sub_AE90C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v3;
  v16 = *(v1 + 32);
  v17 = *(v1 + 48);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = *(v1 + 48);
  sub_B288C(v15, v14);
  sub_66D4(&qword_1290E8, &qword_E4378);
  sub_109A8(&qword_1290F0, &qword_1290E8, &qword_E4378, &protocol conformance descriptor for HStack<A>);
  sub_D6260();
  v6 = sub_D61A0();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(sub_66D4(&qword_1290F8, &qword_E43B0) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = v16;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  result = sub_66D4(&qword_129100, &qword_E43B8);
  v13 = (a1 + *(result + 36));
  *v13 = v10;
  v13[1] = sub_B2C30;
  v13[2] = v11;
  return result;
}

unint64_t sub_AEAC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113EF0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_AEB10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_114048;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_AEC9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5AC0();
  *a1 = result & 1;
  return result;
}

char *sub_AED08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v141 = a5;
  v120 = a4;
  v144 = a3;
  v142 = a2;
  v130 = *a6;
  v135 = sub_66D4(&qword_128FB8, &qword_E3ED8);
  v136 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v99 - v8;
  v133 = sub_66D4(&qword_128FC0, &qword_E3EE0);
  v132 = *(v133 - 8);
  v9 = __chkstk_darwin(v133);
  v131 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v127 = &v99 - v11;
  v128 = sub_66D4(&qword_128FC8, &qword_E3EE8);
  v129 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v99 - v12;
  v124 = sub_66D4(&qword_122F80, &qword_DFB50);
  v123 = *(v124 - 8);
  v13 = __chkstk_darwin(v124);
  v122 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v121 = &v99 - v15;
  v143 = sub_66D4(&qword_122F60, &unk_E2B60);
  v125 = *(v143 - 8);
  v16 = __chkstk_darwin(v143);
  v114 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v111 = &v99 - v19;
  __chkstk_darwin(v18);
  v140 = &v99 - v20;
  v115 = sub_66D4(&qword_128FD0, &qword_E3EF0);
  __chkstk_darwin(v115);
  v110 = &v99 - v21;
  v116 = sub_66D4(&qword_128FD8, &qword_E3EF8);
  v117 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v99 - v22;
  v118 = sub_66D4(&qword_128FE0, &unk_E3F00);
  v119 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = &v99 - v23;
  v145 = sub_66D4(&qword_124830, &qword_E1560);
  v109 = *(v145 - 8);
  __chkstk_darwin(v145);
  v108 = &v99 - v24;
  v146 = sub_66D4(&qword_121070, &qword_DAFE0);
  v107 = *(v146 - 8);
  __chkstk_darwin(v146);
  v106 = &v99 - v25;
  v139 = sub_66D4(&qword_124208, &unk_E1550);
  v104 = *(v139 - 8);
  __chkstk_darwin(v139);
  v103 = &v99 - v26;
  v138 = sub_66D4(&qword_121068, &qword_DBEE0);
  v102 = *(v138 - 8);
  __chkstk_darwin(v138);
  v101 = &v99 - v27;
  v100 = sub_66D4(&qword_128218, &unk_E1540);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v29 = &v99 - v28;
  v30 = sub_66D4(&qword_128210, &qword_E1538);
  v105 = v30;
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v99 - v32;
  v34 = sub_66D4(&qword_121948, &unk_DC5C0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v99 - v36;
  v149[3] = type metadata accessor for MSRepositoryDefault();
  v149[4] = &off_1188F0;
  v149[0] = a1;
  v38 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__ruleName;
  v147._countAndFlagsBits = 0;
  v147._object = 0xE000000000000000;
  sub_D5530();
  v39 = *(v35 + 32);
  v39(&a6[v38], v37, v34);
  v40 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__selectedAction;
  LOBYTE(v147._countAndFlagsBits) = 0;
  sub_D5530();
  (*(v31 + 32))(&a6[v40], v33, v30);
  v41 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__selectedCondition;
  LOBYTE(v147._countAndFlagsBits) = 0;
  sub_D5530();
  (*(v99 + 32))(&a6[v41], v29, v100);
  v42 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__conditionValue;
  v147._countAndFlagsBits = 0;
  v147._object = 0xE000000000000000;
  sub_D5530();
  v43 = v34;
  v39(&a6[v42], v37, v34);
  v44 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__actionEmailValue;
  v147._countAndFlagsBits = 0;
  v147._object = 0xE000000000000000;
  sub_D5530();
  v39(&a6[v44], v37, v34);
  v45 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__actionFolderValue;
  v147._countAndFlagsBits = 0;
  v147._object = 0xE000000000000000;
  sub_D5530();
  v137 = v34;
  v39(&a6[v45], v37, v34);
  v46 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__conditionGreyText;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v147._countAndFlagsBits = 2777980912;
  v147._object = 0xA400000000000000;
  v150._countAndFlagsBits = 0x6F697469646E6F43;
  v150._object = 0xE90000000000006ELL;
  sub_D66D0(v150);
  v151._countAndFlagsBits = 2777980912;
  v151._object = 0xA400000000000000;
  sub_D66D0(v151);
  v98._countAndFlagsBits = 0xE000000000000000;
  v152._countAndFlagsBits = 0x6F697469646E6F43;
  v152._object = 0xE90000000000006ELL;
  v153.value._countAndFlagsBits = 0;
  v153.value._object = 0;
  v49.super.isa = v48;
  v50 = sub_D4E80(v152, v153, v49, v147, 0, v98);
  v52 = v51;

  v147._countAndFlagsBits = v50;
  v147._object = v52;
  sub_D5530();
  v39(&a6[v46], v37, v43);
  v53 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__enableActionFolderMenu;
  LOBYTE(v147._countAndFlagsBits) = 1;
  v54 = v101;
  sub_D5530();
  v55 = *(v102 + 32);
  v56 = v138;
  v55(&a6[v53], v54, v138);
  v57 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__enableActionEmailInput;
  LOBYTE(v147._countAndFlagsBits) = 0;
  sub_D5530();
  v55(&a6[v57], v54, v56);
  v58 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__loadingState;
  v147 = 0;
  v59 = v103;
  sub_D5530();
  v60 = *(v104 + 32);
  v60(&a6[v58], v59, v139);
  v61 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__isUpdating;
  LOBYTE(v147._countAndFlagsBits) = 0;
  sub_D5530();
  v55(&a6[v61], v54, v56);
  v62 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__isDoneDisabled;
  LOBYTE(v147._countAndFlagsBits) = 0;
  sub_D5530();
  v55(&a6[v62], v54, v56);
  v63 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__state;
  v147 = 0;
  sub_D5530();
  v64 = v139;
  v60(&a6[v63], v59, v139);
  v65 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__folderState;
  v147 = 0;
  sub_D5530();
  v60(&a6[v65], v59, v64);
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_maxTitleLength] = 30;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_maxBodyLength] = 90;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_maxTargetLength] = 90;
  v66 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName];
  *v66 = 0xD000000000000010;
  *(v66 + 1) = 0x80000000000E6D30;
  v67 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName];
  strcpy(&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName], "Sent Messages");
  *(v67 + 7) = -4864;
  v68 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__error;
  v147 = 0;
  memset(v148, 0, 25);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v69 = v106;
  sub_D5530();
  (*(v107 + 32))(&a6[v68], v69, v146);
  v70 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__inlineErrorMessage;
  v147 = 0;
  v139 = sub_66D4(&qword_124838, &qword_E1490);
  v71 = v108;
  sub_D5530();
  (*(v109 + 32))(&a6[v70], v71, v145);
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_cancellables] = &_swiftEmptySetSingleton;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderListPublisher] = 0;
  sub_2A5C4(v149, &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository]);
  v72 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_onDone];
  v73 = v141;
  v74 = v142;
  *v72 = v120;
  *(v72 + 1) = v73;
  v75 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title];
  *v75 = 0x5445445F454C5552;
  *(v75 + 1) = 0xEB000000004C4941;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderList] = v74;
  *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sharedPreference] = v144;
  swift_beginAccess();

  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  v120 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_109A8(&qword_128FE8, &qword_128FD0, &qword_E3EF0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_109A8(&qword_127788, &qword_122F60, &unk_E2B60, &protocol conformance descriptor for Published<A>.Publisher);
  v76 = v112;
  sub_D54A0();
  sub_109A8(&qword_128FF0, &qword_128FD8, &qword_E3EF8, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v77 = v113;
  v78 = v116;
  sub_D55C0();
  v117[1](v76, v78);
  swift_beginAccess();
  v79 = v121;
  sub_D5540();
  swift_endAccess();
  v117 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_109A8(&qword_128FF8, &qword_128FE0, &unk_E3F00, &protocol conformance descriptor for Publishers.Map<A, B>);
  v80 = v118;
  sub_D5620();
  (*(v119 + 8))(v77, v80);
  v81 = v123;
  v82 = v124;
  (*(v123 + 16))(v122, v79, v124);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v81 + 8))(v79, v82);
  swift_beginAccess();
  v83 = v140;
  sub_D5540();
  swift_endAccess();
  *(swift_allocObject() + 16) = v130;
  v84 = v126;
  v85 = v143;
  sub_D55C0();

  (*(v125 + 8))(v83, v85);
  swift_beginAccess();
  v86 = v127;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_129000, &qword_128FC8, &qword_E3EE8, v117);
  v87 = v128;
  sub_D5620();
  (*(v129 + 8))(v84, v87);
  v88 = v132;
  v89 = v133;
  (*(v132 + 16))(v131, v86, v133);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v88 + 8))(v86, v89);
  swift_beginAccess();
  v90 = v134;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_129008, &qword_128FB8, &qword_E3ED8, v120);

  v91 = v135;
  sub_D5610();

  (*(v136 + 8))(v90, v91);
  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();

  sub_D54F0();

  sub_67D4(v149);
  if (v147._object != &dword_0 + 1)
  {
    v92 = *v148;
    v93 = *&v148[24];
    if (*&v148[24])
    {
      v94 = HIBYTE(*&v148[24]) & 0xFLL;
      if ((*&v148[24] & 0x2000000000000000) == 0)
      {
        v94 = *&v148[16] & 0xFFFFFFFFFFFFLL;
      }

      if (v94)
      {
        v95 = &a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName];
        *v95 = *&v148[16];
        *(v95 + 1) = v93;
      }
    }

    if (*(&v92 + 1))
    {

      v96 = HIBYTE(*(&v92 + 1)) & 0xFLL;
      if ((*(&v92 + 1) & 0x2000000000000000) == 0)
      {
        v96 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v96)
      {
        *&a6[OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName] = v92;
      }
    }

    else
    {
    }
  }

  return a6;
}

char *sub_B03C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char *a7)
{
  v41[3] = type metadata accessor for MSRepositoryDefault();
  v41[4] = &off_1188F0;
  v41[0] = a4;
  v14 = &a7[qword_137AA0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v15;
  *(v14 + 12) = *(a1 + 96);
  v16 = *(a1 + 80);
  *(v14 + 4) = *(a1 + 64);
  *(v14 + 5) = v16;
  v17 = *(a1 + 48);
  *(v14 + 2) = *(a1 + 32);
  *(v14 + 3) = v17;
  sub_2A5C4(v41, &v39);
  v18 = sub_38BFC(&v39, v40);
  __chkstk_darwin(v18);
  v20 = &v37[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20);
  v22 = *v20;

  sub_26A60(a1, v38);
  v23 = sub_AED08(v22, a2, a3, a5, a6, a7);
  sub_67D4(&v39);
  if (*(a1 + 88))
  {
    v24 = *(a1 + 80);
    v25 = *(a1 + 88);
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v38[0] = v24;
  *(&v38[0] + 1) = v25;
  swift_retain_n();

  sub_D5580();
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);

  v28 = sub_82A68(v26, v27);
  if (v28 == 6)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38[0]) = v29;

  sub_D5580();
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);

  v32 = sub_82A1C(v30, v31);
  if (v32 == 7)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38[0]) = v33;

  sub_D5580();
  v38[0] = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v38[0];

  sub_9FF94(v38, v37);
  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v39 <= 6u && ((1 << v39) & 0x55) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v34 = *(a1 + 72);
    if ((v39 & 0xFB) != 0)
    {
      if (!v34)
      {
        v35 = 0;
        v34 = 0xE000000000000000;
        goto LABEL_20;
      }
    }

    else if (!v34)
    {
      v35 = 0;
      v34 = 0xE000000000000000;
      goto LABEL_20;
    }

    v35 = *(a1 + 64);

LABEL_20:
    sub_26ABC(a1);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v39 = v35;
    *(&v39 + 1) = v34;

    sub_D5580();

    sub_67D4(v41);
    return v23;
  }

  sub_67D4(v41);

  sub_26ABC(a1);
  return v23;
}

uint64_t sub_B08B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a5;
  v55 = a4;
  v54 = a3;
  v51 = a2;
  v50 = sub_66D4(&qword_121070, &qword_DAFE0);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43 - v7;
  v47 = sub_66D4(&qword_121068, &qword_DBEE0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v43 - v8;
  v44 = sub_66D4(&qword_124218, &unk_E3CB0);
  v56 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v43 - v9;
  v43 = sub_66D4(&qword_124210, &qword_DBE90);
  v11 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v43 - v12;
  v14 = sub_66D4(&qword_124208, &unk_E1550);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = type metadata accessor for MSRepositoryDefault();
  v64[3] = v18;
  v64[4] = &off_1188F0;
  v64[0] = a1;
  _s9ViewModelCMa_2(0);
  v19 = swift_allocObject();
  v20 = sub_38BFC(v64, v18);
  __chkstk_darwin(v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v63[3] = v18;
  v63[4] = &off_1188F0;
  v63[0] = v24;
  v25 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__state;
  v57 = 0uLL;
  sub_D5530();
  (*(v15 + 32))(v19 + v25, v17, v14);
  v26 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__rules;
  *&v57 = _swiftEmptyArrayStorage;
  sub_66D4(&qword_123F18, &qword_DBB00);
  sub_D5530();
  (*(v11 + 32))(v19 + v26, v13, v43);
  v27 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToEdit;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  memset(v58, 0, sizeof(v58));
  v57 = 0u;
  v43 = sub_66D4(&unk_123F28, &unk_E3CC0);
  sub_D5530();
  v28 = *(v56 + 32);
  v56 += 32;
  v29 = v44;
  v28(v19 + v27, v10, v44);
  v30 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__deleteDisabled;
  LOBYTE(v57) = 0;
  v31 = v45;
  sub_D5530();
  v32 = *(v46 + 32);
  v33 = v47;
  v32(v19 + v30, v31, v47);
  v34 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__moveDisabled;
  LOBYTE(v57) = 0;
  sub_D5530();
  v32(v19 + v34, v31, v33);
  v35 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__enableAddRule;
  LOBYTE(v57) = 1;
  sub_D5530();
  v32(v19 + v35, v31, v33);
  v36 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToDelete;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  memset(v58, 0, sizeof(v58));
  v57 = 0u;
  sub_D5530();
  v28(v19 + v36, v10, v29);
  v37 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__error;
  memset(v58, 0, 25);
  v57 = 0u;
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v38 = v48;
  sub_D5530();
  (*(v49 + 32))(v19 + v37, v38, v50);
  v39 = (v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_rowSize);
  *v39 = 0;
  v39[1] = 0;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_mailRuleResponse) = 0;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest) = 0;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag) = 0;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = 0;
  sub_2A5C4(v63, v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository);
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed) = v51;
  v40 = (v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate);
  v41 = v53;
  *v40 = v52;
  v40[1] = v41;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_sharedPreference) = v54;
  *(v19 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_folderList) = v55;

  sub_3F1B8();
  sub_67D4(v63);
  sub_67D4(v64);
  return v19;
}

unint64_t sub_B1074()
{
  result = qword_128F10;
  if (!qword_128F10)
  {
    sub_6110(&qword_128F08, &unk_E3D10);
    sub_713E8();
    sub_109A8(&qword_128F18, &qword_128F20, &qword_E3D30, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F10);
  }

  return result;
}

unint64_t sub_B113C()
{
  result = qword_128F30;
  if (!qword_128F30)
  {
    sub_6110(&qword_128F28, &unk_E3D60);
    sub_B1ED0(&qword_128F38, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F30);
  }

  return result;
}

unint64_t sub_B1218()
{
  result = qword_128F48;
  if (!qword_128F48)
  {
    sub_6110(&qword_128ED8, &qword_E3CE0);
    sub_6110(&qword_128ED0, &qword_E3CD8);
    sub_6110(&qword_128F28, &unk_E3D60);
    sub_6110(&qword_128D08, &qword_E3850);
    sub_6110(&qword_121178, &qword_DB0C0);
    sub_A6454();
    sub_E000();
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_B113C();
    swift_getOpaqueTypeConformance2();
    sub_109A8(&qword_128F50, &qword_128F40, &qword_E3DA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F48);
  }

  return result;
}

uint64_t sub_B13F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSRulesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B1460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSRulesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B14C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MSRulesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_AA84C(a1, v6, a2);
}

unint64_t sub_B1544()
{
  result = qword_128F60;
  if (!qword_128F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128F60);
  }

  return result;
}

uint64_t sub_B1598@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MSRulesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_AC51C(v4, a1);
}

uint64_t sub_B1608(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MSRulesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_ACA08(a1, a2, v6);
}

unint64_t sub_B1974()
{
  result = qword_129040;
  if (!qword_129040)
  {
    sub_6110(&qword_129038, &qword_E4178);
    sub_B1A2C();
    sub_109A8(&qword_1290C0, &qword_1290C8, &unk_E41B8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129040);
  }

  return result;
}

unint64_t sub_B1A2C()
{
  result = qword_129048;
  if (!qword_129048)
  {
    sub_6110(&qword_129050, &qword_E4180);
    sub_B1AE4();
    sub_109A8(&qword_1290B0, &qword_1290B8, &qword_E41B0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129048);
  }

  return result;
}

unint64_t sub_B1AE4()
{
  result = qword_129058;
  if (!qword_129058)
  {
    sub_6110(&qword_129060, &qword_E4188);
    sub_B1B9C();
    sub_109A8(&qword_1290A0, &qword_1290A8, &qword_E41A8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129058);
  }

  return result;
}

unint64_t sub_B1B9C()
{
  result = qword_129068;
  if (!qword_129068)
  {
    sub_6110(&qword_129070, &qword_E4190);
    sub_B1C54();
    sub_109A8(&qword_129090, &qword_129098, &qword_E41A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129068);
  }

  return result;
}

unint64_t sub_B1C54()
{
  result = qword_129078;
  if (!qword_129078)
  {
    sub_6110(&qword_129080, &qword_E4198);
    sub_B1CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129078);
  }

  return result;
}

unint64_t sub_B1CD8()
{
  result = qword_129088;
  if (!qword_129088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129088);
  }

  return result;
}

uint64_t sub_B1D4C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MSRulesView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_B1DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5AC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_B1E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for MSRulesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_AD180(a1, v6, a2);
}

uint64_t sub_B1ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B1F18(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MSRulesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_AD754(a1, a2, v6);
}

uint64_t sub_B1F98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B1FFC()
{
  v1 = type metadata accessor for MSRulesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_E0C4(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  v7 = v5 + *(v1 + 28);
  v8 = sub_D63D0();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_66D4(&qword_128E08, qword_E3C38);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_B21AC(uint64_t a1)
{
  v3 = *(type metadata accessor for MSRulesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_AD980(a1, v4);
}

uint64_t sub_B224C()
{
  v1 = type metadata accessor for MSRulesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_E0C4(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  v8 = v5 + *(v1 + 28);
  v9 = sub_D63D0();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_66D4(&qword_128E08, qword_E3C38);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_B2408()
{
  v1 = *(type metadata accessor for MSRulesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_AD614(v0 + v2, v3);
}

uint64_t sub_B2494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B24DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_B2538()
{
  sub_6110(&qword_128F00, &qword_E3D08);
  sub_D63D0();
  sub_6110(&qword_128EF8, &qword_E3D00);
  sub_6110(&qword_128F78, &qword_E3DF0);
  sub_6110(&qword_128EF0, &qword_E3CF8);
  sub_6110(&qword_128F58, &qword_E3DD8);
  sub_6110(&qword_128EE8, &qword_E3CF0);
  sub_6110(&qword_128EE0, &qword_E3CE8);
  sub_6110(&qword_128ED8, &qword_E3CE0);
  sub_B1218();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_B1544();
  sub_109A8(&qword_128F68, &qword_128F58, &qword_E3DD8, &unk_E5CE8);
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_128F80, &qword_128F78, &qword_E3DF0, &unk_E5CE8);
  swift_getOpaqueTypeConformance2();
  sub_B1ED0(&qword_128F88, &type metadata accessor for EditMode, &protocol conformance descriptor for EditMode);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B280C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_B2854()
{
  if ((*(v0 + 49) & 1) == 0)
  {
    return (*(v0 + 56))();
  }

  return result;
}

unint64_t sub_B28CC()
{
  result = qword_129128;
  if (!qword_129128)
  {
    sub_6110(&qword_129120, &qword_E43D8);
    sub_B2984();
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129128);
  }

  return result;
}

unint64_t sub_B2984()
{
  result = qword_129130;
  if (!qword_129130)
  {
    sub_6110(&qword_129138, &unk_E43E0);
    sub_B2A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129130);
  }

  return result;
}

unint64_t sub_B2A10()
{
  result = qword_129140;
  if (!qword_129140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129140);
  }

  return result;
}

unint64_t sub_B2A68()
{
  result = qword_129160;
  if (!qword_129160)
  {
    sub_6110(&qword_129100, &qword_E43B8);
    sub_B2B20();
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129160);
  }

  return result;
}

unint64_t sub_B2B20()
{
  result = qword_129168;
  if (!qword_129168)
  {
    sub_6110(&qword_1290F8, &qword_E43B0);
    sub_109A8(&qword_129170, &qword_129178, &qword_E4408, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129168);
  }

  return result;
}

uint64_t sub_B2C5C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_B2CDC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

double sub_B2D88@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_B2E18(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_B2EC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_B2F60@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_B3000(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = sub_D5340();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v7 = v56[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v8 = *v56;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v9 = v56[0];
  v56[0] = v7;
  *&v56[8] = v8;
  v56[24] = v9;
  v57 = 0uLL;
  *&v58[0] = 1;
  memset(v58 + 8, 0, 32);
  v52 = 0uLL;
  v53 = v58[0];
  v54 = v58[1];
  v55 = 0;
  v50 = *v56;
  v51 = *&v56[16];
  v10 = (v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences);
  v11 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16);
  if (v11 == 1)
  {
    goto LABEL_2;
  }

  v37 = *v10;
  if (v37 == 2 || ((v7 ^ v37) & 1) != 0)
  {
    goto LABEL_2;
  }

  if (v11)
  {
    v38 = *(v10 + 1);
  }

  else
  {
    v38 = 0;
  }

  if (v11)
  {
    v39 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16);
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  if (__PAIR128__(v39, v38) == v8)
  {
  }

  else
  {
    v40 = sub_D6C20();

    if ((v40 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  if (*(v10 + 2) != 1)
  {
    v41 = v10[24];
    if (v41 != 2 && ((v9 ^ v41) & 1) == 0)
    {
      sub_B43D4(v56);
      return v45(0);
    }
  }

LABEL_2:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v47[0]) = 1;

  sub_D5580();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v12 = v44;
  v13 = sub_6610(v44, qword_137988);
  v14 = v43;
  (*(v43 + 16))(v6, v13, v12);
  v15 = sub_D5320();
  v16 = sub_D68A0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "[Mail Forwarding] update started", v17, 2u);
  }

  (*(v14 + 8))(v6, v12);
  v18 = sub_6648((v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository), *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository + 24));
  v19 = *(*v18 + 16);
  v20 = *(*v18 + 24);
  v49[3] = &type metadata for ServerPreference;
  v49[4] = sub_316F4();
  v21 = swift_allocObject();
  v49[0] = v21;
  v22 = v53;
  *(v21 + 48) = v52;
  *(v21 + 64) = v22;
  *(v21 + 80) = v54;
  *(v21 + 96) = v55;
  v23 = v51;
  *(v21 + 16) = v50;
  *(v21 + 32) = v23;
  v24 = objc_allocWithZone(type metadata accessor for MSUpdateServerPreferenceAPI(0));
  sub_13E28(v49, v48);
  v25 = v19;
  v26 = v20;
  sub_B4294(v56, v47);
  v27 = sub_45BC4(v19, v26, v48);

  sub_13EF4(v49);
  v28 = sub_1EB80();

  v47[0] = v28;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v31 = v53;
  *(v30 + 48) = v52;
  *(v30 + 64) = v31;
  *(v30 + 80) = v54;
  v32 = v55;
  v33 = v51;
  *(v30 + 16) = v50;
  *(v30 + 32) = v33;
  *(v30 + 96) = v32;
  *(v30 + 104) = v29;
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  *(v34 + 24) = v46;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_14038();
  v35 = sub_D55D0();

  *(v3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_cancellable) = v35;
}

uint64_t sub_B35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v52 = *(a1 + 24);
  v53 = v12;
  v54 = *(a1 + 32);
  v55 = v11;
  LODWORD(v14) = *(a1 + 40);
  if (v11)
  {
    if (sub_3EB44())
    {
      v15 = sub_D6550();
      v17 = v16;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v18 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v10, v18, v4);

      v19 = sub_D5320();
      v20 = v5;
      v21 = sub_D68B0();

      if (os_log_type_enabled(v19, v21))
      {
        v22 = swift_slowAlloc();
        LODWORD(v50) = v14;
        v14 = v22;
        v23 = swift_slowAlloc();
        v51 = v13;
        v24 = v23;
        v58 = v23;
        *v14 = 136642819;
        v25 = sub_558F0(v15, v17, &v58);
        v26 = v20;
        v27 = v19;
        v28 = v25;

        *(v14 + 4) = v28;
        _os_log_impl(&dword_0, v27, v21, "[Mail Forwarding] params: %{sensitive}s", v14, 0xCu);
        sub_67D4(v24);
        v13 = v51;

        LOBYTE(v14) = v50;

        (*(v26 + 8))(v10, v4);
        v5 = v26;
      }

      else
      {

        (*(v20 + 8))(v10, v4);
        v5 = v20;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v29 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v29, v4);
    v30 = v55;

    v31 = v30;
    v32 = sub_D5320();
    v33 = sub_D68B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = v13;
      v35 = v34;
      v36 = v5;
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v35 = 136315138;
      v58 = v53;
      v59 = v31;
      v60 = v51;
      LOBYTE(v61) = v52 & 1;
      v62 = v54;
      v63 = v14 & 1;
      sub_6780();
      v38 = sub_D6C60();
      v40 = sub_558F0(v38, v39, v64);
      v50 = v4;
      v41 = v40;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v32, v33, "[Mail Forwarding] update failed: %s", v35, 0xCu);
      sub_67D4(v37);

      v13 = v51;

      (*(v36 + 8))(v8, v50);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v55;
    if (v55)
    {
      v43 = v53;
    }

    else
    {
      v43 = 0;
    }

    if (v55)
    {
      v44 = v13;
    }

    else
    {
      v44 = 0;
    }

    if (v55)
    {
      v45 = v52 & 1;
    }

    else
    {
      v45 = 0;
    }

    if (v55)
    {
      v46 = v54;
    }

    else
    {
      v46 = 0;
    }

    if (v55)
    {
      v47 = v14 & 1;
    }

    else
    {
      v47 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v43;
    v59 = v42;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v63 = v47;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_B3B6C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Mail Forwarding] update successful", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return a2(1);
}

uint64_t sub_B3D18()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__enabled;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__forwardTo;
  v5 = sub_66D4(&qword_121948, &unk_DC5C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__deleteAfter, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__isDoneDisabled, v2);
  v6 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__error;
  v7 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__isUpdating, v2);
  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository));

  sub_B4480(*(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 8), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 16), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 24), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 32), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 40), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 48), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 56), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 64), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 72), *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences + 80));
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t _s11descr112941C9ViewModelCMa(uint64_t a1)
{
  result = qword_1291F0;
  if (!qword_1291F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B3F6C(uint64_t a1)
{
  sub_116AC(319, &qword_120ED8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_116AC(319, &qword_121638, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_3030C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_B40B4@<X0>(uint64_t *a2@<X8>)
{
  _s11descr112941C9ViewModelCMa(0);
  result = sub_D54D0();
  *a2 = result;
  return result;
}

uint64_t sub_B423C()
{

  if (*(v0 + 64) != 1)
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_B42F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B4328()
{

  if (*(v0 + 64) != 1)
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_B4394()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_B4480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != 1)
  {

    sub_31650(a5, a6, a7, a8, a9, a10, a11);
  }
}

__n128 sub_B450C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_B4530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_B458C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_B4614(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_B4648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_B46A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_B4714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_B4770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_B47FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_B4848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B48BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_D4F20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ImportProviderImage(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_B4A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_D4F20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ImportProviderImage(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_B4B58(uint64_t a1)
{
  sub_D4F20();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImportProviderImage(319);
    if (v2 <= 0x3F)
    {
      sub_B4C04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B4C04()
{
  if (!qword_129460)
  {
    v0 = sub_D6930();
    if (!v1)
    {
      atomic_store(v0, &qword_129460);
    }
  }
}

uint64_t sub_B4C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_D4F20();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B4CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_D4F20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B4D58(uint64_t a1)
{
  result = sub_D4F20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B4DC4(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; i += 4)
    {
      v6 = i[1];
      v15[0] = *i;
      v15[1] = v6;
      v8 = *i;
      v7 = i[1];
      v16[0] = i[2];
      *(v16 + 9) = *(i + 41);
      v12 = v8;
      v13 = v7;
      v14[0] = i[2];
      *(v14 + 9) = *(i + 41);
      sub_5842C(v15, &v9);
      sub_B5904(&v12, a2);
      if (v2)
      {
        break;
      }

      v9 = v12;
      v10 = v13;
      v11[0] = v14[0];
      *(v11 + 9) = *(v14 + 9);
      result = sub_584E0(&v9);
      if (!--v3)
      {
        return result;
      }
    }

    v9 = v12;
    v10 = v13;
    v11[0] = v14[0];
    *(v11 + 9) = *(v14 + 9);
    return sub_584E0(&v9);
  }

  return result;
}

void sub_B4EAC()
{
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage;
  v3 = *(v0 + 48);
  v4 = *(v3 + 16);
  v5 = v3 + 48;
LABEL_2:
  v6 = (v5 + 24 * v1);
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_56;
    }

    v8 = *v6;
    v6 += 24;
    ++v1;
    if (v8)
    {
      v9 = *(v6 - 5);
      v10 = *(v6 - 4);

      *&v64 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_11BB0(0, v2[2] + 1, 1);
        v2 = v64;
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_11BB0((v11 > 1), v12 + 1, 1);
        v2 = v64;
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v9;
      v13[5] = v10;
      *(v13 + 48) = 1;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  sub_63AE8(v0, &v64);
  if (v14)
  {
    v15 = (v2 + 5);
    v16 = _swiftEmptyArrayStorage;
    do
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      v69 = *(v0 + 32);
      v64 = *(v0 + 32);

      sub_9FF94(&v69, v63);
      v70._countAndFlagsBits = 64;
      v70._object = 0xE100000000000000;
      sub_D66D0(v70);

      v71._countAndFlagsBits = v18;
      v71._object = v17;
      sub_D66D0(v71);

      v19 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_A5A6C(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_A5A6C((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      *&v16[16 * v21 + 32] = v19;

      v68 = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_80370(v0);

  v22 = *(v0 + 56);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
LABEL_21:
    v26 = (v25 + (v24 << 6));
    v27 = v24;
    while (v27 < v23)
    {
      v28 = *v26;
      v29 = v26[1];
      v30 = v26[2];
      *&v66[9] = *(v26 + 41);
      v65 = v29;
      *v66 = v30;
      v64 = v28;
      v24 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_58;
      }

      if (v66[24])
      {
        sub_5842C(&v64, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_11C10(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v32 = _swiftEmptyArrayStorage[2];
        v31 = _swiftEmptyArrayStorage[3];
        if (v32 >= v31 >> 1)
        {
          sub_11C10((v31 > 1), v32 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v32 + 1;
        v33 = &_swiftEmptyArrayStorage[8 * v32];
        v34 = v64;
        v35 = v65;
        v36 = *v66;
        *(v33 + 73) = *&v66[9];
        v33[3] = v35;
        v33[4] = v36;
        v33[2] = v34;
        if (v24 != v23)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      ++v27;
      v26 += 4;
      if (v24 == v23)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_57;
  }

LABEL_32:
  sub_B4DC4(_swiftEmptyArrayStorage, &v68);

  v37 = *(v0 + 64);
  if (!v37)
  {
    return;
  }

  v38 = *(v37 + 16);
  if (!v38)
  {
LABEL_46:
    v52 = _swiftEmptyArrayStorage[2];
    if (v52)
    {
      v53 = &_swiftEmptyArrayStorage[4];
      do
      {
        v64 = *v53;
        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        v56 = *(v53 + 1);
        v67 = v53[8];
        *v66 = v55;
        *&v66[16] = v54;
        v65 = v56;
        v57 = v56;
        v62 = v64;
        sub_13E98(&v64, v63);

        v72._countAndFlagsBits = 64;
        v72._object = 0xE100000000000000;
        sub_D66D0(v72);
        v63[0] = v62;

        sub_D66D0(v57);

        v58 = v63[0];
        v59 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_A5A6C(0, *(v59 + 2) + 1, 1, v59);
        }

        v61 = *(v59 + 2);
        v60 = *(v59 + 3);
        if (v61 >= v60 >> 1)
        {
          v59 = sub_A5A6C((v60 > 1), v61 + 1, 1, v59);
        }

        *(v59 + 2) = v61 + 1;
        *&v59[16 * v61 + 32] = v58;
        sub_1409C(&v64);
        v68 = v59;
        v53 += 9;
        --v52;
      }

      while (v52);
    }

    return;
  }

  v39 = 0;
  v40 = v37 + 32;
LABEL_35:
  v41 = (v40 + 72 * v39);
  v42 = v39;
  while (v42 < v38)
  {
    v64 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v67 = *(v41 + 8);
    *v66 = v44;
    *&v66[16] = v45;
    v65 = v43;
    v39 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_60;
    }

    if (v66[0])
    {
      sub_13E98(&v64, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_11BF0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v47 = _swiftEmptyArrayStorage[2];
      v46 = _swiftEmptyArrayStorage[3];
      if (v47 >= v46 >> 1)
      {
        sub_11BF0((v46 > 1), v47 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v47 + 1;
      v48 = &_swiftEmptyArrayStorage[9 * v47];
      *(v48 + 2) = v64;
      v49 = v65;
      v50 = *v66;
      v51 = *&v66[16];
      v48[12] = v67;
      *(v48 + 4) = v50;
      *(v48 + 5) = v51;
      *(v48 + 3) = v49;
      if (v39 != v38)
      {
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    ++v42;
    v41 = (v41 + 72);
    if (v39 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_B5458()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_11B90(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v15 = *(v0 + 32);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v13 = v15;

      sub_9FF94(&v15, &v12);
      v16._countAndFlagsBits = 64;
      v16._object = 0xE100000000000000;
      sub_D66D0(v16);

      v17._countAndFlagsBits = v5;
      v17._object = v6;
      sub_D66D0(v17);

      v7 = v13;
      v14 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        sub_11B90((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      v3[2] = v9 + 1;
      *&v3[2 * v9 + 4] = v7;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  v10 = v3[4];

LABEL_9:

  return v10;
}

uint64_t sub_B55C0()
{
  v1 = v0[2];
  v2 = (v1 + 48);
  v3 = *(v1 + 16) + 1;
  v4 = 0x632E64756F6C6369;
  while (--v3)
  {
    v5 = v2 + 24;
    v6 = *v2;
    v2 += 24;
    if (v6 == 1)
    {
      v4 = *(v5 - 5);
      v7 = *(v5 - 4);

      goto LABEL_6;
    }
  }

  v7 = 0xEA00000000006D6FLL;
LABEL_6:
  v9 = *v0;

  v10._countAndFlagsBits = 64;
  v10._object = 0xE100000000000000;
  sub_D66D0(v10);

  v11._countAndFlagsBits = v4;
  v11._object = v7;
  sub_D66D0(v11);

  return v9;
}

void sub_B5690()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = v2 + 48;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = (v4 + 24 * v1);
  while (1)
  {
    if (v3 == v1)
    {
      v14 = v5[2];
      if (v14)
      {
        v25 = _swiftEmptyArrayStorage;
        sub_11B90(0, v14, 0);
        v15 = _swiftEmptyArrayStorage;
        v26 = *(v22 + 32);
        v16 = (v5 + 5);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          v24 = v26;

          sub_9FF94(&v26, v23);
          v27._countAndFlagsBits = 64;
          v27._object = 0xE100000000000000;
          sub_D66D0(v27);

          v28._countAndFlagsBits = v17;
          v28._object = v18;
          sub_D66D0(v28);

          v19 = v24;
          v25 = v15;
          v21 = v15[2];
          v20 = v15[3];
          if (v21 >= v20 >> 1)
          {
            sub_11B90((v20 > 1), v21 + 1, 1);
            v15 = v25;
          }

          v15[2] = v21 + 1;
          *&v15[2 * v21 + 4] = v19;
          v16 += 3;
          --v14;
        }

        while (v14);

        if (v15[2])
        {
          goto LABEL_18;
        }
      }

      else
      {

        if (_swiftEmptyArrayStorage[2])
        {
LABEL_18:

          return;
        }
      }

      sub_B5458();
      return;
    }

    if (v1 >= v3)
    {
      break;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_22;
    }

    v8 = *v6;
    v6 += 24;
    ++v1;
    if (v8)
    {
      v10 = *(v6 - 5);
      v9 = *(v6 - 4);

      *&v26 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_11BB0(0, v5[2] + 1, 1);
        v5 = v26;
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_11BB0((v11 > 1), v12 + 1, 1);
        v5 = v26;
      }

      v5[2] = v12 + 1;
      v13 = &v5[3 * v12];
      v13[4] = v10;
      v13[5] = v9;
      *(v13 + 48) = 1;
      v1 = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_B5904(uint64_t result, char **a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v18[0] = *result;
  v18[1] = v4;
  v19[0] = *(result + 32);
  *(v19 + 9) = *(result + 41);
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v4 + 48;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 24 * v3);
  while (1)
  {
    if (v6 == v3)
    {
      sub_5842C(v18, &v17);
      sub_B8F58(v8, a2, v18);
      sub_584E0(v18);
    }

    if (v3 >= *(v5 + 16))
    {
      break;
    }

    ++v3;
    v10 = v9 + 24;
    v11 = *v9;
    v9 += 24;
    if (v11)
    {
      v20 = v7;
      v12 = *(v10 - 4);
      v16 = *(v10 - 5);

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((result & 1) == 0)
      {
        result = sub_11BB0(0, v8[2] + 1, 1);
        v8 = v17;
      }

      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_11BB0((v13 > 1), v14 + 1, 1);
        v8 = v17;
      }

      v8[2] = v14 + 1;
      v15 = &v8[3 * v14];
      v15[4] = v16;
      v15[5] = v12;
      *(v15 + 48) = 1;
      v7 = v20;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_B5A84(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_1295C0, &qword_E4D28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_6648(a1, a1[3]);
  sub_BAC40();
  sub_D6D00();
  LOBYTE(v11) = 0;
  sub_D6BC0();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_D6B80();
    LOBYTE(v11) = 2;
    sub_D6BC0();
    v11 = v3[6];
    HIBYTE(v10) = 3;
    sub_66D4(&qword_129560, &qword_E4D00);
    sub_BAB68();
    sub_D6BF0();
    v11 = v3[7];
    HIBYTE(v10) = 4;
    sub_66D4(&qword_128A58, qword_E2FB0);
    sub_BAE44();
    sub_D6BF0();
    v11 = v3[8];
    HIBYTE(v10) = 5;
    sub_66D4(&qword_128A60, &qword_E4D20);
    sub_BAEC8();
    sub_D6BB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_B5D40(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_66D4(&qword_129788, &qword_E5868);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_6648(a1, a1[3]);
  sub_BCB9C();
  sub_D6D00();
  v14 = 0;
  sub_D6BC0();
  if (!v4)
  {
    v13 = 1;
    sub_D6BD0();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_B5ED4()
{
  v1 = *v0;
  v2 = 1682535268;
  v3 = 0xD000000000000010;
  v4 = 0x73657361696C61;
  if (v1 != 4)
  {
    v4 = 0x6F446D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6C6C7566;
  if (v1 != 1)
  {
    v5 = 0x64496C69616D65;
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

uint64_t sub_B5F98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_B90A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B5FC0(uint64_t a1)
{
  v2 = sub_BAC40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B5FFC(uint64_t a1)
{
  v2 = sub_BAC40();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_B6038@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_B92B4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_B60A4()
{
  if (*v0)
  {
    return 0x6E6553776F6C6C61;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_B60E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6553776F6C6C61 && a2 == 0xED00006D6F724664)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_B61C8(uint64_t a1)
{
  v2 = sub_BCB9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B6204(uint64_t a1)
{
  v2 = sub_BCB9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B6240@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_B9774(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_B6294(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_D6C20();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_B62F4(void *a1)
{
  v3 = sub_66D4(&qword_129640, &qword_E4D68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_6648(a1, a1[3]);
  sub_BBD04();
  sub_D6D00();
  v8[15] = 0;
  sub_D6BC0();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_D6BC0();
  v8[13] = 2;
  sub_D6BD0();
  v8[12] = 3;
  sub_D6B80();
  v8[11] = 4;
  sub_D6B80();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B64D4()
{
  v1 = *v0;
  v2 = 0x64496C69616D65;
  v3 = 0x6E6553776F6C6C61;
  v4 = 0x656D614E6C6C7566;
  if (v1 != 3)
  {
    v4 = 0x6C6562616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69616D6F64;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B6574@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_B994C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B659C(uint64_t a1)
{
  v2 = sub_BBD04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B65D8(uint64_t a1)
{
  v2 = sub_BBD04();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_B6614@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_B9AFC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_B6680(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_B8B90(v7, v9) & 1;
}

uint64_t sub_B66DC(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129578, &qword_E4D08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_6648(a1, a1[3]);
  sub_BAA3C();
  sub_D6D00();
  v12 = 0;
  sub_D6BC0();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_66D4(&qword_129560, &qword_E4D00);
    sub_BAB68();
    sub_D6BF0();
    v10[14] = 2;
    sub_D6B80();
    v10[13] = 3;
    sub_D6B80();
    v10[12] = 4;
    sub_D6BD0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_B68E4()
{
  v1 = *v0;
  v2 = 0x64496C69616D65;
  v3 = 0x656D614E6C6C7566;
  v4 = 0x6C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0x6576697463417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B6980@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_B9E68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B69A8(uint64_t a1)
{
  v2 = sub_BAA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B69E4(uint64_t a1)
{
  v2 = sub_BAA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B6A20@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_BA01C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_B6A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_D6C20();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_B6B40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_B8D6C(v5, v7) & 1;
}

uint64_t sub_B6B9C(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129540, &qword_E4CE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7 - 8];
  sub_6648(a1, a1[3]);
  sub_BA924();
  sub_D6D00();
  LOBYTE(v15) = 0;
  sub_D6B90();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_D6B80();
    LOBYTE(v15) = 2;
    sub_D6B90();
    v9 = *(v3 + 48);
    v19[0] = *(v3 + 32);
    v19[1] = v9;
    v11 = *(v3 + 32);
    v10 = *(v3 + 48);
    v19[2] = *(v3 + 64);
    v20 = *(v3 + 80);
    v15 = v11;
    v16 = v10;
    v17 = *(v3 + 64);
    v18 = *(v3 + 80);
    v21 = 3;
    sub_BA9CC(v19, v14);
    sub_46A70();
    sub_D6BB0();
    sub_31650(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_B6DEC()
{
  v1 = 0x4564726177726F66;
  v2 = 0xD00000000000001CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636176;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_B6E7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_BA3BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B6EA4(uint64_t a1)
{
  v2 = sub_BA924();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B6EE0(uint64_t a1)
{
  v2 = sub_BA924();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B6F1C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_BA530(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_B6F90(void *a1)
{
  v3 = sub_66D4(&qword_129600, &qword_E4D48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_6648(a1, a1[3]);
  sub_BB6EC();
  sub_D6D00();
  v8[15] = 0;
  sub_D6B90();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_D6B80();
  v8[13] = 2;
  sub_D6B80();
  v8[12] = 3;
  sub_D6B80();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_B7150()
{
  v1 = 0x7541656C62616E65;
  v2 = 0x6E6F697461636176;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_B71E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_BAF4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B7210(uint64_t a1)
{
  v2 = sub_BB6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B724C(uint64_t a1)
{
  v2 = sub_BB6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B7288@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_BB0D0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_B72F0(void *a1)
{
  v3 = sub_66D4(&qword_1295E8, &qword_E4D38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_6648(a1, a1[3]);
  sub_BB698();
  sub_D6D00();
  v8[15] = 0;
  sub_D6B80();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_D6B80();
  v8[13] = 2;
  sub_D6B80();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B7490()
{
  v1 = 0x69614D6873617274;
  if (*v0 != 1)
  {
    v1 = 0x6C69614D746E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_B7508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_BB360(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B7530(uint64_t a1)
{
  v2 = sub_BB698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B756C(uint64_t a1)
{
  v2 = sub_BB698();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B75A8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_BB494(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_B7604(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_129620, &qword_E4D58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_6648(a1, a1[3]);
  sub_BBC08();
  sub_D6D00();
  v10[15] = 0;
  sub_D6BC0();
  if (!v2)
  {
    v10[14] = 1;
    sub_D6BC0();
    v10[13] = *(v3 + 32);
    v10[12] = 2;
    sub_BBCB0();
    sub_D6BF0();
    v10[11] = 3;
    sub_D6BE0();
    v10[10] = 4;
    sub_D6BA0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_B7828()
{
  v1 = *v0;
  v2 = 0x6449626F6ALL;
  v3 = 0x737574617473;
  v4 = 0x6D69547472617473;
  if (v1 != 3)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C69616D65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B78BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_BB740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B78E4(uint64_t a1)
{
  v2 = sub_BBC08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B7920(uint64_t a1)
{
  v2 = sub_BBC08();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_B795C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_BB8EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_B79E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BCC44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_B7A18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x44455452415453;
  v5 = 0xEB00000000444554;
  v6 = 0x524154535F544F4ELL;
  if (v2 != 6)
  {
    v6 = 0x444554454C4544;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEE00524F5252455FLL;
  v8 = 0x4C414E5245544E49;
  if (v2 != 4)
  {
    v8 = 0x524F5252455F4353;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x574549564552;
  if (v2 != 2)
  {
    v10 = 0xD000000000000014;
    v9 = 0x80000000000E6E90;
  }

  if (*v1)
  {
    v4 = 0x4554454C504D4F43;
    v3 = 0xE900000000000044;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_B7BE0(void *a1)
{
  v3 = sub_66D4(&qword_129668, &qword_E4D78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_6648(a1, a1[3]);
  sub_BBD58();
  sub_D6D00();
  v8[15] = 0;
  sub_D6BC0();
  if (!v1)
  {
    type metadata accessor for ImportProvider(0);
    v8[14] = 1;
    sub_D4F20();
    sub_BBDAC(&qword_129670, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_D6BF0();
    v8[13] = 2;
    type metadata accessor for ImportProviderImage(0);
    sub_BBDAC(&qword_129678, type metadata accessor for ImportProviderImage, &unk_E48B4);
    sub_D6BF0();
    v8[12] = 3;
    sub_D6B80();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B7E40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = type metadata accessor for ImportProviderImage(0);
  __chkstk_darwin(v29);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D4F20();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_66D4(&qword_129648, &qword_E4D70);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ImportProvider(0);
  __chkstk_darwin(v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6648(a1, a1[3]);
  sub_BBD58();
  v32 = v8;
  v12 = v34;
  sub_D6CF0();
  if (v12)
  {
    return sub_67D4(a1);
  }

  v13 = v6;
  v14 = v30;
  v15 = v31;
  v38 = 0;
  *v11 = sub_D6B40();
  v11[1] = v16;
  v34 = v16;
  v37 = 1;
  sub_BBDAC(&qword_129658, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_D6B70();
  v26 = v9;
  (*(v15 + 32))(v11 + *(v9 + 20), v13, v4);
  v36 = 2;
  sub_BBDAC(&qword_129660, type metadata accessor for ImportProviderImage, &unk_E48DC);
  v17 = v28;
  v29 = 0;
  sub_D6B70();
  sub_BBDF4(v17, v11 + *(v26 + 24));
  v35 = 3;
  v18 = sub_D6B00();
  v28 = v19;
  v21 = v18;
  (*(v14 + 8))(v32, v33);
  v22 = v27;
  v23 = (v11 + *(v26 + 28));
  v24 = v28;
  *v23 = v21;
  v23[1] = v24;
  sub_BBF0C(v11, v22, type metadata accessor for ImportProvider);
  sub_67D4(a1);
  return sub_BBE58(v11, type metadata accessor for ImportProvider);
}

uint64_t sub_B8304(void *a1)
{
  v3 = sub_66D4(&qword_129690, &qword_E4D88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_6648(a1, a1[3]);
  sub_BBEB8();
  sub_D6D00();
  v8[15] = 0;
  sub_D4F20();
  sub_BBDAC(&qword_129670, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_D6BF0();
  if (!v1)
  {
    type metadata accessor for ImportProviderImage(0);
    v8[14] = 1;
    sub_D6BF0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B84C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_D4F20();
  v26 = *(v30 - 8);
  v4 = __chkstk_darwin(v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = &v21 - v7;
  v8 = sub_66D4(&qword_129680, &qword_E4D80);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ImportProviderImage(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6648(a1, a1[3]);
  sub_BBEB8();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_BBDAC(&qword_129658, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v16 = v27;
  v17 = v28;
  sub_D6B70();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  sub_D6B70();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_BBF0C(v19, v25, type metadata accessor for ImportProviderImage);
  sub_67D4(a1);
  return sub_BBE58(v19, type metadata accessor for ImportProviderImage);
}

unint64_t sub_B888C()
{
  v1 = 0x72656469766F7270;
  v2 = 0x6567616D69;
  if (*v0 != 2)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_B8910@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_BCC90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B8938(uint64_t a1)
{
  v2 = sub_BBD58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8974(uint64_t a1)
{
  v2 = sub_BBD58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B89E0()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_B8A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_B8AE8(uint64_t a1)
{
  v2 = sub_BBEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8B24(uint64_t a1)
{
  v2 = sub_BBEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B8B90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_D6C20() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_D6C20() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a1[6])
  {
    v7 = a1[5];
    v8 = a1[6];
    v9 = *(a2 + 48);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = *(a2 + 48);
    if (v9)
    {
LABEL_15:
      v10 = v9;
      if (v7 != *(a2 + 40))
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  v10 = 0xE000000000000000;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v8 == v10)
  {

    goto LABEL_22;
  }

LABEL_21:
  v11 = sub_D6C20();

  if (v11)
  {
LABEL_22:
    if (a1[8])
    {
      v12 = a1[7];
      v13 = a1[8];
      v14 = *(a2 + 64);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      v14 = *(a2 + 64);
      if (v14)
      {
LABEL_24:
        v15 = *(a2 + 56);
        v16 = v14;
        if (v12 != v15)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (v13 == v16)
        {
          v6 = 1;
LABEL_31:

          return v6 & 1;
        }

LABEL_30:
        v6 = sub_D6C20();
        goto LABEL_31;
      }
    }

    v16 = 0xE000000000000000;
    if (v12)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_12:
  v6 = 0;
  return v6 & 1;
}

uint64_t sub_B8D6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_D6C20() & 1) == 0 || (sub_B6A84(a1[2], *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (a1[4])
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = *(a2 + 32);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = *(a2 + 32);
    if (v7)
    {
LABEL_9:
      v8 = v7;
      if (v5 != *(a2 + 24))
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  v8 = 0xE000000000000000;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v6 == v8)
  {

    goto LABEL_16;
  }

LABEL_15:
  v9 = sub_D6C20();

  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (a1[6])
  {
    v10 = a1[5];
    v11 = a1[6];
    v12 = *(a2 + 48);
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_21:
    v13 = 0xE000000000000000;
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  v12 = *(a2 + 48);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_18:
  v13 = v12;
  if (v10 != *(a2 + 40))
  {
LABEL_24:
    v14 = sub_D6C20();

    if (v14)
    {
      goto LABEL_25;
    }

LABEL_26:
    v15 = 0;
    return v15 & 1;
  }

LABEL_22:
  if (v11 != v13)
  {
    goto LABEL_24;
  }

LABEL_25:
  v15 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v15 & 1;
}

uint64_t sub_B8F58(uint64_t result, char **a2, __int128 *a3)
{
  v16 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v14 = *v16;
      v15 = v14;

      sub_9FF94(&v15, v13);
      v17._countAndFlagsBits = 64;
      v17._object = 0xE100000000000000;
      sub_D66D0(v17);

      v18._countAndFlagsBits = v7;
      v18._object = v6;
      sub_D66D0(v18);

      v8 = v14;
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_A5A6C(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_A5A6C((v11 > 1), v12 + 1, 1, v9);
        *a2 = v9;
      }

      *(v9 + 2) = v12 + 1;
      *&v9[16 * v12 + 32] = v8;

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_B90A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1682535268 && a2 == 0xE400000000000000;
  if (v3 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496C69616D65 && a2 == 0xE700000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9EB0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73657361696C61 && a2 == 0xE700000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F446D6F74737563 && a2 == 0xED0000736E69616DLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_B92B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_129590, &unk_E4D10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_6648(a1, a1[3]);
  sub_BAC40();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_D6B40();
  v11 = v10;
  LOBYTE(v34[0]) = 1;
  v26 = sub_D6B00();
  v28 = v12;
  LOBYTE(v34[0]) = 2;
  v25 = sub_D6B40();
  v27 = v13;
  sub_66D4(&qword_129560, &qword_E4D00);
  LOBYTE(v29) = 3;
  sub_BAA90();
  sub_D6B70();
  v24 = v34[0];
  sub_66D4(&qword_128A58, qword_E2FB0);
  LOBYTE(v29) = 4;
  sub_BAC94();
  sub_D6B70();
  v23 = v34[0];
  sub_66D4(&qword_128A60, &qword_E4D20);
  v35[0] = 5;
  sub_BAD6C();
  sub_D6B30();
  (*(v6 + 8))(v8, v5);
  v22 = v36;
  *&v29 = v9;
  *(&v29 + 1) = v11;
  v14 = v26;
  v16 = v27;
  v15 = v28;
  *&v30 = v26;
  *(&v30 + 1) = v28;
  *&v31 = v25;
  *(&v31 + 1) = v27;
  v17 = v24;
  *&v32 = v24;
  *(&v32 + 1) = v23;
  v33 = v36;
  sub_63AE8(&v29, v34);
  sub_67D4(a1);
  v34[0] = v9;
  v34[1] = v11;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v25;
  v34[5] = v16;
  v34[6] = v17;
  v34[7] = v23;
  v34[8] = v22;
  result = sub_80370(v34);
  v19 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v19;
  *(a2 + 64) = v33;
  v20 = v30;
  *a2 = v29;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_B9774(void *a1)
{
  v3 = sub_66D4(&qword_129778, &qword_E5860);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BCB9C();
  sub_D6CF0();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_D6B40();
    v9[14] = 1;
    sub_D6B50();
    (*(v4 + 8))(v6, v3);
  }

  sub_67D4(a1);
  return v7;
}

uint64_t sub_B994C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C69616D65 && a2 == 0xE700000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6553776F6C6C61 && a2 == 0xED00006D6F724664 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_B9AFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_129630, &qword_E4D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_6648(a1, a1[3]);
  sub_BBD04();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_D6B40();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  *&v29 = sub_D6B40();
  *(&v29 + 1) = v11;
  LOBYTE(v36[0]) = 2;
  v42 = sub_D6B50();
  LOBYTE(v36[0]) = 3;
  v27 = sub_D6B00();
  v28 = v12;
  v43 = 4;
  v13 = sub_D6B00();
  v42 &= 1u;
  v14 = v42;
  v15 = *(v6 + 8);
  v16 = v13;
  v26 = v17;
  v15(v8, v5);
  v19 = *(&v29 + 1);
  v18 = v30;
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v20 = v29;
  v32 = v29;
  LOBYTE(v33) = v14;
  *(&v33 + 1) = v27;
  *&v34 = v28;
  v21 = v26;
  *(&v34 + 1) = v16;
  v35 = v26;
  sub_13E98(&v31, v36);
  sub_67D4(a1);
  v36[0] = v9;
  v36[1] = v18;
  v36[2] = v20;
  v36[3] = v19;
  v37 = v42;
  v38 = v27;
  v39 = v28;
  v40 = v16;
  v41 = v21;
  result = sub_1409C(v36);
  v23 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v23;
  *(a2 + 64) = v35;
  v24 = v32;
  *a2 = v31;
  *(a2 + 16) = v24;
  return result;
}

uint64_t sub_B9E68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C69616D65 && a2 == 0xE700000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9EB0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_BA01C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_66D4(&qword_129550, &qword_E4CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_6648(a1, a1[3]);
  sub_BAA3C();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v31[0]) = 0;
  v9 = sub_D6B40();
  v27 = v10;
  sub_66D4(&qword_129560, &qword_E4D00);
  LOBYTE(v28) = 1;
  sub_BAA90();
  sub_D6B70();
  v26 = v31[0];
  LOBYTE(v31[0]) = 2;
  v24 = sub_D6B00();
  v25 = v11;
  LOBYTE(v31[0]) = 3;
  v22 = sub_D6B00();
  v23 = v12;
  v34 = 4;
  v13 = sub_D6B50();
  (*(v6 + 8))(v8, v5);
  v33 = v13 & 1;
  v15 = v26;
  v14 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v16 = v24;
  v17 = v25;
  *&v29 = v26;
  *(&v29 + 1) = v24;
  *v30 = v25;
  *&v30[8] = v22;
  v18 = v23;
  *&v30[16] = v23;
  v30[24] = v33;
  sub_5842C(&v28, v31);
  sub_67D4(a1);
  v31[0] = v9;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v31[5] = v22;
  v31[6] = v18;
  v32 = v33;
  result = sub_584E0(v31);
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  return result;
}

uint64_t sub_BA3BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4564726177726F66 && a2 == 0xEC0000006C69616DLL;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000000E9E70 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000000000E9E90 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_BA530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_129528, &qword_E4CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_6648(a1, a1[3]);
  sub_BA924();
  sub_D6CF0();
  if (v2)
  {
    v53 = v2;
    v9 = 0;
    v10 = 0;
    v11 = 2;
    v12 = 2;
LABEL_4:
    sub_67D4(a1);
    v44[0] = v12;
    v45 = v10;
    v46 = v9;
    v47 = v11;
    v48 = 0;
    v49 = 0;
    v50 = 1;
    v51 = 0u;
    v52 = 0u;
    return sub_B43D4(v44);
  }

  v44[0] = 0;
  v12 = sub_D6B10();
  v44[0] = 1;
  v10 = sub_D6B00();
  v9 = v14;
  v29 = a2;
  v44[0] = 2;
  v15 = sub_D6B10();
  v53 = 0;
  v11 = v15;
  v36 = 3;
  sub_BA978();
  v16 = v53;
  sub_D6B30();
  v53 = v16;
  if (v16)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_4;
  }

  (*(v6 + 8))(v8, v5);
  v17 = v37;
  v18 = v38;
  v25 = v37;
  v20 = v39;
  v19 = v40;
  v28 = v41;
  v26 = v42;
  v27 = v43;
  sub_31650(0, 0, 1, 0, 0, 0, 0);
  LOBYTE(v30) = v12;
  *(&v30 + 1) = v10;
  *&v31 = v9;
  BYTE8(v31) = v11;
  *&v32 = v17;
  *(&v32 + 1) = v18;
  *&v33 = v20;
  *(&v33 + 1) = v19;
  *&v34 = v28;
  v21 = v26;
  *(&v34 + 1) = v26;
  v35 = v27;
  sub_B4294(&v30, v44);
  sub_67D4(a1);
  v44[0] = v12;
  v45 = v10;
  v46 = v9;
  v47 = v11;
  v48 = v25;
  v49 = v18;
  v50 = v20;
  *&v51 = v19;
  *(&v51 + 1) = v28;
  v52 = __PAIR128__(v27, v21);
  result = sub_B43D4(v44);
  v22 = v33;
  v23 = v29;
  *(v29 + 32) = v32;
  *(v23 + 48) = v22;
  *(v23 + 64) = v34;
  *(v23 + 80) = v35;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  return result;
}

unint64_t sub_BA924()
{
  result = qword_129530;
  if (!qword_129530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129530);
  }

  return result;
}

unint64_t sub_BA978()
{
  result = qword_129538;
  if (!qword_129538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129538);
  }

  return result;
}

uint64_t sub_BA9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_129548, &qword_E4CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_BAA3C()
{
  result = qword_129558;
  if (!qword_129558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129558);
  }

  return result;
}

unint64_t sub_BAA90()
{
  result = qword_129568;
  if (!qword_129568)
  {
    sub_6110(&qword_129560, &qword_E4D00);
    sub_BAB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129568);
  }

  return result;
}

unint64_t sub_BAB14()
{
  result = qword_129570;
  if (!qword_129570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129570);
  }

  return result;
}

unint64_t sub_BAB68()
{
  result = qword_129580;
  if (!qword_129580)
  {
    sub_6110(&qword_129560, &qword_E4D00);
    sub_BABEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129580);
  }

  return result;
}

unint64_t sub_BABEC()
{
  result = qword_129588;
  if (!qword_129588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129588);
  }

  return result;
}

unint64_t sub_BAC40()
{
  result = qword_129598;
  if (!qword_129598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129598);
  }

  return result;
}

unint64_t sub_BAC94()
{
  result = qword_1295A0;
  if (!qword_1295A0)
  {
    sub_6110(&qword_128A58, qword_E2FB0);
    sub_BAD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295A0);
  }

  return result;
}

unint64_t sub_BAD18()
{
  result = qword_1295A8;
  if (!qword_1295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295A8);
  }

  return result;
}

unint64_t sub_BAD6C()
{
  result = qword_1295B0;
  if (!qword_1295B0)
  {
    sub_6110(&qword_128A60, &qword_E4D20);
    sub_BADF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295B0);
  }

  return result;
}

unint64_t sub_BADF0()
{
  result = qword_1295B8;
  if (!qword_1295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295B8);
  }

  return result;
}

unint64_t sub_BAE44()
{
  result = qword_1295C8;
  if (!qword_1295C8)
  {
    sub_6110(&qword_128A58, qword_E2FB0);
    sub_469C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295C8);
  }

  return result;
}

unint64_t sub_BAEC8()
{
  result = qword_1295D0;
  if (!qword_1295D0)
  {
    sub_6110(&qword_128A60, &qword_E4D20);
    sub_13D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295D0);
  }

  return result;
}

uint64_t sub_BAF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541656C62616E65 && a2 == 0xEF796C7065526F74;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000000E9EF0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636176 && a2 == 0xEF65746144646E45 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9F10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_BB0D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_1295F0, &qword_E4D40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_6648(a1, a1[3]);
  sub_BB6EC();
  sub_D6CF0();
  if (v2)
  {
    sub_67D4(a1);
  }

  else
  {
    v30 = 0;
    v9 = sub_D6B10();
    v29 = 1;
    v10 = sub_D6B00();
    v12 = v11;
    v26 = v10;
    v28 = 2;
    v13 = sub_D6B00();
    v15 = v14;
    v25 = v13;
    v27 = 3;
    v16 = sub_D6B00();
    v17 = *(v6 + 8);
    v24 = v16;
    v18 = v8;
    v20 = v19;
    v17(v18, v5);

    sub_67D4(a1);

    *a2 = v9;
    v22 = v25;
    *(a2 + 8) = v26;
    *(a2 + 16) = v12;
    *(a2 + 24) = v22;
    *(a2 + 32) = v15;
    *(a2 + 40) = v24;
    *(a2 + 48) = v20;
  }

  return result;
}

uint64_t sub_BB360(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000000000E9ED0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69614D6873617274 && a2 == 0xEE004449786F626CLL || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69614D746E6573 && a2 == 0xEF656D614E786F62)
  {

    return 2;
  }

  else
  {
    v5 = sub_D6C20();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_BB494@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_66D4(&qword_1295D8, &qword_E4D30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_6648(a1, a1[3]);
  sub_BB698();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v25 = 0;
  v9 = sub_D6B00();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = sub_D6B00();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_D6B00();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_67D4(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_BB698()
{
  result = qword_1295E0;
  if (!qword_1295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295E0);
  }

  return result;
}

unint64_t sub_BB6EC()
{
  result = qword_1295F8;
  if (!qword_1295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295F8);
  }

  return result;
}

uint64_t sub_BB740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_BB8EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_66D4(&qword_129608, &qword_E4D50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_6648(a1, a1[3]);
  sub_BBC08();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_D6B40();
  v11 = v10;
  v25 = v9;
  LOBYTE(v29[0]) = 1;
  *&v24 = sub_D6B40();
  *(&v24 + 1) = v12;
  LOBYTE(v26) = 2;
  sub_BBC5C();
  sub_D6B70();
  v23 = LOBYTE(v29[0]);
  LOBYTE(v29[0]) = 3;
  v22 = sub_D6B60();
  v35 = 4;
  v13 = sub_D6B20();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v15 &= 1u;
  v34 = v15;
  v18 = *(&v24 + 1);
  v17 = v25;
  *&v26 = v25;
  *(&v26 + 1) = v11;
  v27 = v24;
  v19 = v23;
  v28[0] = v23;
  *&v28[8] = v22;
  *&v28[16] = v16;
  v28[24] = v15;
  sub_15C4C(&v26, v29);
  sub_67D4(a1);
  v29[0] = v17;
  v29[1] = v11;
  v29[2] = v24;
  v29[3] = v18;
  v30 = v19;
  v31 = v22;
  v32 = v16;
  v33 = v15;
  result = sub_3C4F8(v29);
  v21 = v27;
  *a2 = v26;
  a2[1] = v21;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  return result;
}

unint64_t sub_BBC08()
{
  result = qword_129610;
  if (!qword_129610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129610);
  }

  return result;
}

unint64_t sub_BBC5C()
{
  result = qword_129618;
  if (!qword_129618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129618);
  }

  return result;
}

unint64_t sub_BBCB0()
{
  result = qword_129628;
  if (!qword_129628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129628);
  }

  return result;
}

unint64_t sub_BBD04()
{
  result = qword_129638;
  if (!qword_129638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129638);
  }

  return result;
}

unint64_t sub_BBD58()
{
  result = qword_129650;
  if (!qword_129650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129650);
  }

  return result;
}

uint64_t sub_BBDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BBDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportProviderImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BBE58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_BBEB8()
{
  result = qword_129688;
  if (!qword_129688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129688);
  }

  return result;
}

uint64_t sub_BBF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BC014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_BC05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImportStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImportStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_BC200()
{
  result = qword_129698;
  if (!qword_129698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129698);
  }

  return result;
}

unint64_t sub_BC258()
{
  result = qword_1296A0;
  if (!qword_1296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296A0);
  }

  return result;
}

unint64_t sub_BC2B0()
{
  result = qword_1296A8;
  if (!qword_1296A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296A8);
  }

  return result;
}

unint64_t sub_BC308()
{
  result = qword_1296B0;
  if (!qword_1296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296B0);
  }

  return result;
}

unint64_t sub_BC360()
{
  result = qword_1296B8;
  if (!qword_1296B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296B8);
  }

  return result;
}

unint64_t sub_BC3B8()
{
  result = qword_1296C0;
  if (!qword_1296C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296C0);
  }

  return result;
}

unint64_t sub_BC410()
{
  result = qword_1296C8;
  if (!qword_1296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296C8);
  }

  return result;
}

unint64_t sub_BC468()
{
  result = qword_1296D0;
  if (!qword_1296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296D0);
  }

  return result;
}

unint64_t sub_BC4C0()
{
  result = qword_1296D8;
  if (!qword_1296D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296D8);
  }

  return result;
}

unint64_t sub_BC518()
{
  result = qword_1296E0;
  if (!qword_1296E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296E0);
  }

  return result;
}

unint64_t sub_BC570()
{
  result = qword_1296E8;
  if (!qword_1296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296E8);
  }

  return result;
}

unint64_t sub_BC5C8()
{
  result = qword_1296F0;
  if (!qword_1296F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296F0);
  }

  return result;
}

unint64_t sub_BC620()
{
  result = qword_1296F8;
  if (!qword_1296F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296F8);
  }

  return result;
}

unint64_t sub_BC678()
{
  result = qword_129700;
  if (!qword_129700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129700);
  }

  return result;
}

unint64_t sub_BC6D0()
{
  result = qword_129708;
  if (!qword_129708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129708);
  }

  return result;
}

unint64_t sub_BC728()
{
  result = qword_129710;
  if (!qword_129710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129710);
  }

  return result;
}

unint64_t sub_BC780()
{
  result = qword_129718;
  if (!qword_129718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129718);
  }

  return result;
}

unint64_t sub_BC7D8()
{
  result = qword_129720;
  if (!qword_129720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129720);
  }

  return result;
}

unint64_t sub_BC830()
{
  result = qword_129728;
  if (!qword_129728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129728);
  }

  return result;
}

unint64_t sub_BC888()
{
  result = qword_129730;
  if (!qword_129730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129730);
  }

  return result;
}

unint64_t sub_BC8E0()
{
  result = qword_129738;
  if (!qword_129738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129738);
  }

  return result;
}

unint64_t sub_BC938()
{
  result = qword_129740;
  if (!qword_129740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129740);
  }

  return result;
}

unint64_t sub_BC990()
{
  result = qword_129748;
  if (!qword_129748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129748);
  }

  return result;
}

unint64_t sub_BC9E8()
{
  result = qword_129750;
  if (!qword_129750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129750);
  }

  return result;
}

unint64_t sub_BCA40()
{
  result = qword_129758;
  if (!qword_129758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129758);
  }

  return result;
}

unint64_t sub_BCA98()
{
  result = qword_129760;
  if (!qword_129760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129760);
  }

  return result;
}

unint64_t sub_BCAF0()
{
  result = qword_129768;
  if (!qword_129768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129768);
  }

  return result;
}

unint64_t sub_BCB48()
{
  result = qword_129770;
  if (!qword_129770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129770);
  }

  return result;
}

unint64_t sub_BCB9C()
{
  result = qword_129780;
  if (!qword_129780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129780);
  }

  return result;
}

unint64_t sub_BCBF0()
{
  result = qword_129790;
  if (!qword_129790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129790);
  }

  return result;
}

unint64_t sub_BCC44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1141A0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BCC90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9F30 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_BCE10()
{
  result = qword_129798;
  if (!qword_129798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129798);
  }

  return result;
}

unint64_t sub_BCE68()
{
  result = qword_1297A0;
  if (!qword_1297A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1297A0);
  }

  return result;
}

unint64_t sub_BCEC0()
{
  result = qword_1297A8;
  if (!qword_1297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1297A8);
  }

  return result;
}

uint64_t sub_BCFF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v4, qword_137988);
  v47 = *(v5 + 16);
  v47(v9, v10, v4);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Add Alias] create started", v13, 2u);
  }

  v14 = *(v5 + 8);
  v50 = v5 + 8;
  v48 = v14;
  v14(v9, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v15 = v56;

  v17 = sub_14E94(v16, v15, *(&v15 + 1));
  v19 = v18;

  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v56 = v17;
    *(&v56 + 1) = v19;
    v57 = xmmword_DBAE0;
    *&v58[0] = 0;
    BYTE8(v58[0]) = 1;

    sub_D5580();
    v20 = v49;
    v47(v49, v10, v4);

    v21 = sub_D5320();
    v22 = sub_D68A0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v56 = v24;
      *v23 = 136315138;
      v25 = sub_558F0(v17, v19, &v56);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_0, v21, v22, "%s", v23, 0xCu);
      sub_67D4(v24);
    }

    else
    {
    }

    return v48(v20, v4);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v56) = 1;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v26 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v27 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v28 = v56;

    v29 = HIBYTE(*(&v28 + 1)) & 0xFLL;
    if ((*(&v28 + 1) & 0x2000000000000000) == 0)
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v30 = *(&v56 + 1);
      v29 = v56;
    }

    else
    {
      v30 = 0;
    }

    v54 = v26;
    *v55 = &off_113610;
    *&v55[8] = v27;
    *&v55[24] = v29;
    *&v55[32] = v30;
    v55[40] = 1;
    v56 = v26;
    v57 = *v55;
    v58[0] = *&v55[16];
    *(v58 + 9) = *&v55[25];
    v32 = sub_6648((v3 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository), *(v3 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository + 24));
    v33 = *(*v32 + 16);
    v34 = *(*v32 + 24);
    v53[3] = &type metadata for Alias;
    v53[4] = sub_469C8();
    v35 = swift_allocObject();
    v53[0] = v35;
    v36 = v57;
    v35[1] = v56;
    v35[2] = v36;
    v35[3] = v58[0];
    *(v35 + 57) = *(v58 + 9);
    objc_allocWithZone(type metadata accessor for CreateAliasAPIRequest(0));
    sub_13E28(v53, v52);
    v37 = v33;
    v38 = v34;
    sub_5842C(&v54, v51);
    v39 = sub_45BC4(v33, v38, v52);

    sub_13EF4(v53);
    v40 = sub_1EB80();

    v51[0] = v40;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v43 = v57;
    *(v42 + 16) = v56;
    *(v42 + 32) = v43;
    *(v42 + 48) = v58[0];
    *(v42 + 57) = *(v58 + 9);
    *(v42 + 80) = v41;
    v44 = swift_allocObject();
    *(v44 + 16) = v45;
    *(v44 + 24) = v46;

    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_BED48(&qword_121F40, &qword_121F38, &qword_D9CA0);
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }
}

double sub_BD7B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_BD844()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = 1;

  sub_D5580();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v6 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_D5320();
  v8 = sub_D68A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "[Add Alias] Fetch validation rules", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository + 24));
  v11 = *(*v10 + 16);
  v12 = *(*v10 + 24);
  v13 = objc_allocWithZone(type metadata accessor for iCloudMailValidationRulesAPIRequest(0));
  v14 = v11;
  v15 = v12;
  v16 = sub_324A0(v11, v15, 0, 0xF000000000000000);

  v17 = sub_1FA1C();
  v20 = v17;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_129900, qword_E5BA0);
  sub_BED48(qword_129908, &qword_129900, qword_E5BA0);
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_BDBA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8))
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v7 = sub_6610(v3, qword_137988);
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_D5320();
    v9 = sub_D68B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "[Add Alias] Unable to fetch email validation rules", v10, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12[7] = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_BDDA0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v8, v3);

  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v7 + 16);

    _os_log_impl(&dword_0, v9, v10, "[Add Alias] Email validation rules count: %ld", v11, 0xCu);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules) = v7;
  }

  return result;
}

uint64_t sub_BDFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v44 = *(a1 + 24);
  v46 = *(a1 + 32);
  v47 = v14;
  v43 = *(a1 + 40);
  v15 = sub_3E120();
  v48 = v12;
  if (v15)
  {
    v42 = sub_D6550();
    v17 = v16;

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v18 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v11, v18, v5);

    v19 = sub_D5320();
    v20 = sub_D68B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v45 = v13;
      v24 = v23;
      v50 = v23;
      *v22 = 136642819;
      v25 = sub_558F0(v42, v17, &v50);

      *(v22 + 4) = v25;
      v12 = v48;
      _os_log_impl(&dword_0, v19, v20, "[Add Alias] params: %{sensitive}s", v22, 0xCu);
      sub_67D4(v24);
      v13 = v45;
    }

    else
    {
    }

    (*(v6 + 8))(v11, v5);
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v26 = sub_6610(v5, qword_137988);
  (*(v6 + 16))(v9, v26, v5);

  v27 = sub_D5320();
  v28 = sub_D68B0();

  if (os_log_type_enabled(v27, v28))
  {
    v45 = v13;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56[0] = v30;
    *v29 = 136315138;
    if (v12)
    {
      v50 = v45;
      v51 = v12;
      v52 = v47;
      LOBYTE(v53) = v44 & 1;
      v54 = v46;
      v55 = v43 & 1;
      sub_6780();
      v31 = sub_D6C60();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_558F0(v31, v33, v56);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v27, v28, "[Add Alias] create failed: %s", v29, 0xCu);
    sub_67D4(v30);

    (*(v6 + 8))(v9, v5);
    v12 = v48;
    v13 = v45;
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v37 = v46;
  v36 = v47;
  if (Strong)
  {
    if (v12)
    {
      v38 = v44 & 1;
      v39 = v43 & 1;
    }

    else
    {
      v13 = 0;
      v36 = 0;
      v38 = 0;
      v37 = 0;
      v39 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v13;
    v51 = v48;
    v52 = v36;
    v53 = v38;
    v54 = v37;
    v55 = v39;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = 0;
    return sub_D5580();
  }

  return result;
}