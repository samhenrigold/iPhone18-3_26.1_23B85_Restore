uint64_t sub_FD5E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_FBE10(a1, a2);
}

void *sub_FD688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_12DA8C(_swiftEmptyArrayStorage);
  v76 = _swiftEmptySetSingleton;
  v64 = a1 + 64;
  v65 = a1;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v63 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
LABEL_6:
  while (2)
  {
    if (v10)
    {
LABEL_5:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(v65 + 56) + 8 * v14);
      v16 = *(v15 + 16);
      if (!v16)
      {
        continue;
      }

      v62 = v15 + 32;
      v72 = *(*(v65 + 48) + v14);
      if (*(*(v65 + 48) + v14))
      {
        v18 = 0x6F6F626F69647561;
      }

      else
      {
        v18 = 0x6B6F6F6265;
      }

      v19 = 0xE90000000000006BLL;
      if (!v72)
      {
        v19 = 0xE500000000000000;
      }

      v69 = v19;
      v70 = v18;

      v20 = 0;
      v68 = a3;
      v60 = v15;
      v61 = a2;
      v66 = v16;
      while (1)
      {
        v67 = v20;
        if (v20 >= *(v15 + 16))
        {
          goto LABEL_77;
        }

        if (*(a2 + 16))
        {
          v21 = sub_43124(*(v62 + 8 * v20));
          if (v22)
          {
            v23 = *(*(a2 + 56) + 8 * v21);

            v24 = v23[2];
            if (v24)
            {
              break;
            }

            goto LABEL_23;
          }
        }

        v23 = _swiftEmptyArrayStorage;
        v24 = _swiftEmptyArrayStorage[2];
        if (v24)
        {
          break;
        }

LABEL_23:

LABEL_18:
        v20 = v67 + 1;
        if (v67 + 1 == v66)
        {

          goto LABEL_6;
        }
      }

      v25 = 0;
      v74 = v23 + 4;
      v71 = v23;
      v73 = v24;
      while (1)
      {
        if (v25 >= v23[2])
        {
          __break(1u);
          goto LABEL_74;
        }

        if (*(a3 + 16))
        {
          v26 = v74[v25];
          v27 = sub_43124(v26);
          if (v28)
          {
            break;
          }
        }

LABEL_28:
        if (++v25 == v24)
        {

          v15 = v60;
          a2 = v61;
          goto LABEL_18;
        }
      }

      if (*(*(a3 + 56) + v27))
      {
        v29 = 0x6F6F626F69647561;
      }

      else
      {
        v29 = 0x6B6F6F6265;
      }

      if (*(*(a3 + 56) + v27))
      {
        v30 = 0xE90000000000006BLL;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      if (v70 == v29 && v69 == v30)
      {
      }

      else
      {
        v32 = sub_1B5604();
        v23 = v71;

        if ((v32 & 1) == 0)
        {
LABEL_27:
          v24 = v73;
          goto LABEL_28;
        }
      }

      v33 = v76;
      v24 = v73;
      if (v76[2])
      {
        v34 = sub_1B57E4();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        if ((*(v33 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36))
        {
          v37 = ~v35;
          while (*(v33[6] + 8 * v36) != v26)
          {
            v36 = (v36 + 1) & v37;
            if (((*(v33 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_28;
        }
      }

LABEL_50:
      sub_41C08(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v7;
      v40 = sub_3A9D8(v72);
      v41 = v7[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_76;
      }

      v44 = v39;
      if (v7[3] >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v39)
          {
LABEL_58:
            v47 = v7[7];
            v48 = *(v47 + 8 * v40);
            v49 = swift_isUniquelyReferenced_nonNull_native();
            *(v47 + 8 * v40) = v48;
            v50 = v7;
            if ((v49 & 1) == 0)
            {
              v48 = sub_33008(0, *(v48 + 2) + 1, 1, v48);
              *(v47 + 8 * v40) = v48;
            }

            v52 = *(v48 + 2);
            v51 = *(v48 + 3);
            if (v52 >= v51 >> 1)
            {
              v48 = sub_33008((v51 > 1), v52 + 1, 1, v48);
              *(v47 + 8 * v40) = v48;
            }

            v23 = v71;
            *(v48 + 2) = v52 + 1;
            *&v48[8 * v52 + 32] = v26;
            sub_111CE0(&v75, v26);
            v11 = sub_CC28C;
            v7 = v50;
            a3 = v68;
            goto LABEL_27;
          }
        }

        else
        {
          sub_1854BC();
          v7 = v75;
          if (v44)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        sub_17D810(v43, isUniquelyReferenced_nonNull_native);
        v7 = v75;
        v45 = sub_3A9D8(v72);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_78;
        }

        v40 = v45;
        if (v44)
        {
          goto LABEL_58;
        }
      }

      sub_15C8DC();
      goto LABEL_58;
    }

    break;
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v63)
    {

      if (v7[2] && (v53 = sub_3A9D8(0), (v54 & 1) != 0) && *(*(v7[7] + 8 * v53) + 16) >= a4 && v7[2] && (v55 = sub_3A9D8(1), (v56 & 1) != 0) && *(*(v7[7] + 8 * v55) + 16) >= a4)
      {
LABEL_74:

        v57 = v7;
      }

      else
      {
        v57 = 0;
      }

      sub_41C08(v11, 0);
      return v57;
    }

    v10 = *(v64 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FDC10(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1B4D14();
  if (!v19)
  {
    return sub_1B4B24();
  }

  v41 = v19;
  v45 = sub_1B51D4();
  v32 = sub_1B51E4();
  sub_1B5194(v41);
  result = sub_1B4D04();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B4D44();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B51C4();
      result = sub_1B4D24();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AttributeAffinityResult.inferredFromSeedBooks.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributeAffinityResult(0) + 20);
  v4 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AttributeAffinityResult(uint64_t a1)
{
  result = qword_22C448;
  if (!qword_22C448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributeAffinityResult.init(affinity:inferredFromSeedBooks:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for AttributeAffinityResult(0) + 20);
  v6 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t AttributeScorerType.score<A>(attribute:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a7;
  v8[6] = a1;
  v8[7] = a2;
  return (*(a6 + 8))(sub_FE32C, v8, a3, a5, a7, a4, a6);
}

void *sub_FE204(void *__src, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, __src, 0x231uLL);
  sub_FEA58(a5, a5);
  swift_allocObject();
  v10 = sub_1B4AF4();
  a2(__dst);
  v11 = sub_77558(v10, a5);
  if (sub_1B4B84())
  {
    v12 = sub_FED9C(v11, a5, a7);
  }

  else
  {
    v12 = _swiftEmptySetSingleton;
  }

  return v12;
}

uint64_t sub_FE350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_FE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_FE470(uint64_t a1)
{
  sub_FE4EC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_FE4EC(uint64_t a1)
{
  if (!qword_22C458)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    sub_42094(&unk_22C460, &qword_22AA48, &qword_1CD280, &protocol conformance descriptor for [A]);
    v1 = sub_1B43B4();
    if (!v2)
    {
      atomic_store(v1, &qword_22C458);
    }
  }
}

void *sub_FE5A4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v25 = a2;
  v3 = sub_2B0C(&qword_22C528, qword_1C6EA8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v24 = a1;
  sub_1B4364();
  (*(v4 + 16))(v7, v9, v3);
  sub_42094(&qword_22C530, &qword_22C528, qword_1C6EA8, &protocol conformance descriptor for NonEmpty<A>);
  result = sub_1B4974();
  v12 = *(v26 + 16);
  v13 = 0.0;
  if (v12 == v27)
  {
    goto LABEL_14;
  }

  if (v12 <= v27)
  {
    __break(1u);
  }

  else
  {
    v14 = v12 - v27;
    if (v12 >= v27)
    {
      v15 = v12 - v27;
    }

    else
    {
      v15 = 0;
    }

    if (v15 > v12 + ~v27)
    {
      if (v14 > 3)
      {
        v16 = v27 + (v14 & 0xFFFFFFFFFFFFFFFCLL);
        v17 = (v26 + 8 * v27 + 48);
        v18 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v13 = v13 + *(v17 - 2) + *(v17 - 1) + *v17 + v17[1];
          v17 += 4;
          v18 -= 4;
        }

        while (v18);
        if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v16 = v27;
      }

      v19 = v12 - v16;
      v20 = (v26 + 8 * v16 + 32);
      do
      {
        v21 = *v20++;
        v13 = v13 + v21;
        --v19;
      }

      while (v19);
LABEL_14:
      (*(v4 + 8))(v9, v3);

      v22 = type metadata accessor for AttributeAffinityResult(0);
      v23 = v25;
      result = (*(*(v10 - 8) + 16))(v25 + *(v22 + 20), v24, v10);
      *v23 = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_FE864@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 144);
  v17 = *(result + 128);
  v18 = v2;
  v19 = *(result + 160);
  v3 = *(result + 112);
  v15 = *(result + 96);
  v16 = v3;
  v4 = v18;
  if (v18 >> 1 == 0xFFFFFFFF)
  {
    __break(1u);
  }

  else
  {
    v5 = v15;
    v6 = v16;
    v7 = v17;
    if ((v18 >> 62) > 2)
    {
      v9 = v15;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BCA80;
      *(v9 + 32) = v5;
      *(v9 + 48) = v6;
      *(v9 + 64) = v7;
      *(v9 + 80) = v4 & 1;
    }

    sub_42CD4(&v15, v14);
    v10 = Array<A>.affinity.getter(v9);
    v12 = v11;

    v13 = *&v10;
    if (v12)
    {
      v13 = 0.0;
    }

    *a2 = v13;
  }

  return result;
}

double sub_FE984@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = fabs(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_FE994@<X0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1 / a3;
  v6 = *(type metadata accessor for AttributeAffinityResult(0) + 20);
  v7 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  result = (*(*(v7 - 8) + 16))(a2 + v6, a1 + v6, v7);
  *a2 = v5;
  return result;
}

uint64_t sub_FEA58(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_2B0C(&qword_22B2A8, &qword_1C3900);
  }

  else
  {

    return sub_1B55A4();
  }
}

uint64_t sub_FEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B0C(&qword_22AA48, &qword_1CD280);
  v10 = sub_42094(&qword_22B470, &qword_22AA48, &qword_1CD280, &protocol conformance descriptor for [A]);
  Sequence.grouped<A>(by:)(a1, a2, v9, a4, v10, a5);
  sub_2B0C(&qword_22C348, &unk_1C6DC0);
  type metadata accessor for AttributeAffinityResult(0);
  v11 = sub_1B4714();

  v12 = sub_1B46F4();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_FDC10(sub_FE984, 0, v12, &type metadata for Double, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

  v16 = *(v15 + 16);
  if (!v16)
  {

    return v11;
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_8:
    v21 = v16 - v17;
    v22 = (v15 + 8 * v17 + 32);
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_10;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v19 = (v15 + 48);
  v18 = 0.0;
  v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_8;
  }

LABEL_10:

  if (v18 != 0.0)
  {
    __chkstk_darwin(v24);
    v25 = sub_1B4714();

    return v25;
  }

  return v11;
}

void *sub_FED9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (sub_1B4B54())
  {
    sub_1B5064();
    v15 = sub_1B5054();
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
  }

  v43 = sub_1B4B84();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 7;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1B4B44();
    sub_1B4B04();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1B50A4();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1B4744();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = v49[v24 >> 6];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1B4784();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = v49[v24 >> 6];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    v49[v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of GenreMetadataServiceType.fetchMetadataFor(genreIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

uint64_t sub_FF280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = *(a1 + 16);
  sub_3747C(0, v1, 0);
  v2 = a1 + 56;
  result = sub_1B4F84();
  v4 = v25;
  v5 = a1;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v10 = *(v5 + 36);
    if (*(*(v5 + 48) + result))
    {
      v11 = 0x6F6F626F69647561;
    }

    else
    {
      v11 = 0x6B6F6F6265;
    }

    if (*(*(v5 + 48) + result))
    {
      v12 = 0xE90000000000006BLL;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = *(v5 + 36);
      v24 = result;
      sub_3747C((v13 > 1), v14 + 1, 1);
      v4 = v25;
      v5 = a1;
      v10 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v7 = 1 << *(v5 + 32);
    if (result >= v7)
    {
      goto LABEL_28;
    }

    v16 = *(v2 + 8 * v8);
    if ((v16 & v9) == 0)
    {
      goto LABEL_29;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_30;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (a1 + 64 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_42FF0(result, v10, 0);
          v4 = v25;
          v5 = a1;
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_42FF0(result, v10, 0);
      v4 = v25;
      v5 = a1;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_FF550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_43050(a1, v20 - v9, &qword_2296C0, &qword_1C3800);
  v11 = sub_1B4C54();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_42F48(v10, &qword_2296C0, &qword_1C3800);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B4BC4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4C44();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_2B0C(&qword_22B498, &qword_1C3A60);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t CollectionRecommendation.collectionRecommendationType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = 1;
      goto LABEL_11;
    case 2u:
      v10 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v13, &v6[*(v10 + 48)], 0x231uLL);
      sub_2601C(v13);

      v8 = 2;
      goto LABEL_16;
    case 3u:
      v8 = 3;
      goto LABEL_16;
    case 4u:
      v8 = 4;
      goto LABEL_16;
    case 5u:
      v8 = 5;
      goto LABEL_16;
    case 6u:
      v8 = 6;
      goto LABEL_16;
    case 7u:
      v8 = 7;
      goto LABEL_16;
    case 8u:
      v8 = 8;
LABEL_16:
      *a1 = v8;
      v11 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      result = (*(*(v11 - 8) + 8))(v6, v11);
      break;
    case 9u:
      result = sub_5DC0C(v6);
      *a1 = 9;
      break;
    case 0xAu:
      result = sub_5DC0C(v6);
      *a1 = 10;
      break;
    case 0xBu:
      result = sub_5DC0C(v6);
      *a1 = 11;
      break;
    case 0xCu:
      v9 = 12;
LABEL_11:
      *a1 = v9;
      result = sub_5DC0C(v6);
      break;
    default:
      result = sub_5DC0C(v6);
      *a1 = 0;
      break;
  }

  return result;
}

uint64_t sub_FF9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRecommendation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_FFA1C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 16);
  if (a3)
  {
    if (v5 && (v6 = sub_1B57E4(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      do
      {
        v10 = *(*(a2 + 48) + 8 * v8);
        result = v10 != a1;
        if (v10 == a1)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      return 1;
    }
  }

  else if (v5 && (v12 = sub_1B57E4(), v13 = -1 << *(a2 + 32), v14 = v12 & ~v13, ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v15 = ~v13;
    do
    {
      v16 = *(*(a2 + 48) + 8 * v14);
      result = v16 == a1;
      if (v16 == a1)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t CollectionRecommendation.targetGenreID.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v4 = *&v3[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)];
    v5 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  else
  {
    sub_5DC0C(v3);
    return 0;
  }

  return v4;
}

uint64_t CollectionRecommendationType.rawValue.getter()
{
  result = 1802465122;
  switch(*v0)
  {
    case 1:
      result = 0x736B6F6F62;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x417942736B6F6F62;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x476E49736B6F6F62;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x736569726573;
      break;
    case 0xA:
      v2 = 1954047342;
      goto LABEL_14;
    case 0xB:
      v2 = 1701998445;
LABEL_14:
      result = v2 | 0x65536E4900000000;
      break;
    case 0xC:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CollectionRecommendationRequest.storeInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t CollectionRecommendationRequest.clusteringOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
}

__n128 CollectionRecommendationRequest.init(userInfo:storeInfo:allGenresAllowed:allowedSales:explicitAllowed:excludedStoreIDs:featuresPreventingRecommendation:clusteringOptions:optionsByCollectionRecommendationType:overrideMediaTypeMethod:overrideBookCandidateLimit:overrideBookCandidateLimitPerSeedBook:overrideSeedBasedRecommendationSource:overrideSource:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15, unsigned __int8 *a16, char *a17)
{
  *a9 = *a1;
  v17 = *(a8 + 16);
  *(a9 + 72) = *a8;
  v19 = *a2;
  v18 = a2[1];
  v20 = *a4;
  v21 = *(a8 + 48);
  v22 = *a11;
  v23 = *a16;
  v24 = *a17;
  if (v23 == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v23 & 1;
  }

  *(a9 + 16) = v19;
  *(a9 + 24) = v18;
  *(a9 + 32) = a3;
  *(a9 + 40) = v20;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 88) = v17;
  result = *(a8 + 32);
  *(a9 + 104) = result;
  *(a9 + 120) = v21;
  *(a9 + 128) = a10;
  *(a9 + 136) = v22;
  *(a9 + 144) = a12;
  *(a9 + 152) = a13 & 1;
  *(a9 + 160) = a14;
  *(a9 + 168) = a15 & 1;
  *(a9 + 169) = v25;
  *(a9 + 170) = v24;
  return result;
}

unint64_t sub_FFF60(char a1)
{
  result = 0x6F666E4972657375;
  switch(a1)
  {
    case 1:
      result = 0x666E4965726F7473;
      break;
    case 2:
    case 5:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x536465776F6C6C61;
      break;
    case 4:
      result = 0x746963696C707865;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100150@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_11ADE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100178(uint64_t a1)
{
  v2 = sub_10089C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B4(uint64_t a1)
{
  v2 = sub_10089C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C538, &unk_1C6EE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v39 = v1[2];
  v40 = v9;
  v49 = *(v1 + 32);
  v38 = v1[5];
  v37 = *(v1 + 48);
  v10 = v1[7];
  v35 = v1[8];
  v36 = v10;
  v11 = v1[10];
  v28 = v1[9];
  v29 = v11;
  v12 = v1[12];
  v30 = v1[11];
  v31 = v12;
  v13 = v1[14];
  v32 = v1[13];
  v33 = v13;
  v14 = v1[16];
  v34 = v1[15];
  v27 = v14;
  v26 = *(v1 + 136);
  v24 = v1[18];
  v25 = *(v1 + 152);
  v22 = v1[20];
  v23 = *(v1 + 168);
  v21 = *(v1 + 169);
  v20 = *(v1 + 170);
  sub_2698(a1, a1[3]);
  sub_10089C();

  sub_1B5884();
  v42 = v7;
  v43 = v8;
  v15 = v3;
  v50 = 0;
  sub_1008F0();
  v16 = v41;
  sub_1B5544();
  if (v16)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v17 = v38;
    v18 = v36;

    v42 = v39;
    v43 = v40;
    v50 = 1;
    sub_100944();

    sub_1B5544();

    LOBYTE(v42) = 2;
    sub_1B5504();
    v41 = v4;
    v42 = v17;
    v50 = 3;
    sub_100998();
    sub_1B5544();
    LOBYTE(v42) = 4;
    sub_1B5504();
    v42 = v18;
    v50 = 5;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    v42 = v35;
    v50 = 6;
    sub_2B0C(&qword_22C560, &qword_1C6EF8);
    sub_1009EC();
    sub_1B54B4();
    v42 = v28;
    v43 = v29;
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v50 = 7;
    sub_100AC4();

    sub_1B5544();

    v42 = v27;
    v50 = 8;
    sub_2B0C(&qword_22C580, &qword_1C6F00);
    sub_101798(&qword_22C588, sub_71620, sub_100B18, &protocol conformance descriptor for <> [A : B]);
    sub_1B5544();
    LOBYTE(v42) = v26;
    v50 = 9;
    sub_100B6C();
    sub_1B54B4();
    LOBYTE(v42) = 10;
    sub_1B54A4();
    LOBYTE(v42) = 11;
    sub_1B54A4();
    LOBYTE(v42) = v21;
    v50 = 12;
    sub_638F4();
    sub_1B54B4();
    LOBYTE(v42) = v20;
    v50 = 13;
    sub_100BC0();
    sub_1B54B4();
    return (*(v4 + 8))(0, v15);
  }
}

unint64_t sub_10089C()
{
  result = qword_22C540;
  if (!qword_22C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C540);
  }

  return result;
}

unint64_t sub_1008F0()
{
  result = qword_22C548;
  if (!qword_22C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C548);
  }

  return result;
}

unint64_t sub_100944()
{
  result = qword_22C550;
  if (!qword_22C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C550);
  }

  return result;
}

unint64_t sub_100998()
{
  result = qword_22C558;
  if (!qword_22C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C558);
  }

  return result;
}

unint64_t sub_1009EC()
{
  result = qword_22C568;
  if (!qword_22C568)
  {
    sub_1CC1C(&qword_22C560, &qword_1C6EF8);
    sub_100A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C568);
  }

  return result;
}

unint64_t sub_100A70()
{
  result = qword_22C570;
  if (!qword_22C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C570);
  }

  return result;
}

unint64_t sub_100AC4()
{
  result = qword_22C578;
  if (!qword_22C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C578);
  }

  return result;
}

unint64_t sub_100B18()
{
  result = qword_22C590;
  if (!qword_22C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C590);
  }

  return result;
}

unint64_t sub_100B6C()
{
  result = qword_22C598;
  if (!qword_22C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C598);
  }

  return result;
}

unint64_t sub_100BC0()
{
  result = qword_22C5A0;
  if (!qword_22C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5A0);
  }

  return result;
}

uint64_t CollectionRecommendationRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v94 = sub_2B0C(&qword_22C5A8, &qword_1C6F08);
  v5 = *(v94 - 8);
  __chkstk_darwin(v94);
  v7 = &v27 - v6;
  sub_2698(a1, a1[3]);
  sub_10089C();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v8 = v5;
  LOBYTE(v50) = 0;
  sub_101570();
  sub_1B5404();
  v9 = v60;
  v49 = v61;
  LOBYTE(v50) = 1;
  sub_1015C4();
  sub_1B5404();
  v40 = v9;
  v10 = v60;
  v47 = 0;
  v48 = v61;
  LOBYTE(v60) = 2;
  v38 = sub_1B53C4();
  v39 = v10;
  LOBYTE(v50) = 3;
  sub_101618();
  sub_1B5404();
  v11 = v60;
  LOBYTE(v60) = 4;
  v37 = sub_1B53C4();
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  LOBYTE(v50) = 5;
  sub_8E804(&qword_22A8F8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  v46 = v60;
  sub_2B0C(&qword_22C560, &qword_1C6EF8);
  LOBYTE(v50) = 6;
  sub_10166C();
  sub_1B5374();
  v45 = v60;
  LOBYTE(v50) = 7;
  sub_101744();
  sub_1B5404();
  v35 = v61;
  v36 = v60;
  v43 = v62;
  v44 = v63;
  v34 = v64;
  v41 = v66;
  v42 = v65;
  sub_2B0C(&qword_22C580, &qword_1C6F00);
  LOBYTE(v50) = 8;
  sub_101798(&qword_22C5E0, sub_71328, sub_101828, &protocol conformance descriptor for <> [A : B]);
  sub_1B5404();
  v33 = v60;
  LOBYTE(v50) = 9;
  sub_10187C();
  sub_1B5374();
  LODWORD(v47) = v60;
  LOBYTE(v60) = 10;
  v12 = sub_1B5364();
  v90 = v13 & 1;
  LOBYTE(v60) = 11;
  v32 = sub_1B5364();
  v88 = v14 & 1;
  LOBYTE(v50) = 12;
  sub_63AB4();
  sub_1B5374();
  v31 = v60;
  v86 = 13;
  sub_1018D0();
  sub_1B5374();
  v38 &= 1u;
  v15 = v37 & 1;
  v29 = v37 & 1;
  (*(v8 + 8))(v7, v94);
  v37 = v87;
  v17 = v48;
  v16 = v49;
  *&v50 = v40;
  *(&v50 + 1) = v49;
  *&v51 = v39;
  *(&v51 + 1) = v48;
  LOBYTE(v52) = v38;
  *(&v52 + 1) = v11;
  LOBYTE(v53) = v15;
  v18 = v46;
  *(&v53 + 1) = v46;
  *&v54 = v45;
  *(&v54 + 1) = v36;
  *&v55 = v35;
  *(&v55 + 1) = v43;
  *&v56 = v44;
  *(&v56 + 1) = v34;
  *&v57 = v42;
  *(&v57 + 1) = v41;
  *&v58 = v33;
  BYTE8(v58) = v47;
  *(&v58 + 9) = *v91;
  HIDWORD(v58) = *&v91[3];
  v30 = v12;
  *&v59[0] = v12;
  LODWORD(v94) = v90;
  BYTE8(v59[0]) = v90;
  *(v59 + 9) = *v89;
  HIDWORD(v59[0]) = *&v89[3];
  *&v59[1] = v32;
  v28 = v88;
  BYTE8(v59[1]) = v88;
  LOBYTE(v12) = v31;
  BYTE9(v59[1]) = v31;
  BYTE10(v59[1]) = v87;
  v19 = v51;
  *a2 = v50;
  a2[1] = v19;
  v20 = v52;
  v21 = v53;
  v22 = v55;
  a2[4] = v54;
  a2[5] = v22;
  a2[2] = v20;
  a2[3] = v21;
  v23 = v56;
  v24 = v57;
  *(a2 + 155) = *(v59 + 11);
  v25 = v59[0];
  a2[8] = v58;
  a2[9] = v25;
  a2[6] = v23;
  a2[7] = v24;
  sub_101924(&v50, &v60);
  sub_2BF8(a1);
  v60 = v40;
  v61 = v16;
  v62 = v39;
  v63 = v17;
  LOBYTE(v64) = v38;
  *(&v64 + 1) = v93[0];
  HIDWORD(v64) = *(v93 + 3);
  v65 = v11;
  LOBYTE(v66) = v29;
  *(&v66 + 1) = *v92;
  HIDWORD(v66) = *&v92[3];
  v67 = v18;
  v68 = v45;
  v69 = v36;
  v70 = v35;
  v71 = v43;
  v72 = v44;
  v73 = v34;
  v74 = v42;
  v75 = v41;
  v76 = v33;
  v77 = v47;
  *v78 = *v91;
  *&v78[3] = *&v91[3];
  v79 = v30;
  v80 = v94;
  *v81 = *v89;
  *&v81[3] = *&v89[3];
  v82 = v32;
  v83 = v28;
  v84 = v12;
  v85 = v37;
  return sub_10195C(&v60);
}

unint64_t sub_101570()
{
  result = qword_22C5B0;
  if (!qword_22C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5B0);
  }

  return result;
}

unint64_t sub_1015C4()
{
  result = qword_22C5B8;
  if (!qword_22C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5B8);
  }

  return result;
}

unint64_t sub_101618()
{
  result = qword_22C5C0;
  if (!qword_22C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5C0);
  }

  return result;
}

unint64_t sub_10166C()
{
  result = qword_22C5C8;
  if (!qword_22C5C8)
  {
    sub_1CC1C(&qword_22C560, &qword_1C6EF8);
    sub_1016F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5C8);
  }

  return result;
}

unint64_t sub_1016F0()
{
  result = qword_22C5D0;
  if (!qword_22C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5D0);
  }

  return result;
}

unint64_t sub_101744()
{
  result = qword_22C5D8;
  if (!qword_22C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5D8);
  }

  return result;
}

uint64_t sub_101798(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22C580, &qword_1C6F00);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101828()
{
  result = qword_22C5E8;
  if (!qword_22C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5E8);
  }

  return result;
}

unint64_t sub_10187C()
{
  result = qword_22C5F0;
  if (!qword_22C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5F0);
  }

  return result;
}

unint64_t sub_1018D0()
{
  result = qword_22C5F8;
  if (!qword_22C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5F8);
  }

  return result;
}

BooksPersonalization::CollectionRecommendationType_optional __swiftcall CollectionRecommendationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213350;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 13;
  if (v5 < 0xD)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_101A24@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionRecommendationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_101A4C()
{
  sub_1B57F4();
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_101AB4(uint64_t a1)
{
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();
}

Swift::Int sub_101B18(uint64_t a1)
{
  sub_1B57F4();
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_101B7C()
{
  v0 = CollectionRecommendationType.rawValue.getter();
  v2 = v1;
  if (v0 == CollectionRecommendationType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B5604();
  }

  return v5 & 1;
}

uint64_t sub_101CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_120468();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_101D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_120468();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

BooksPersonalization::CollectionRecommendationType_optional static CollectionRecommendationType.from(string:)@<W0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4._countAndFlagsBits = sub_11B25C(a2, a3);
  result.value = CollectionRecommendationType.init(rawValue:)(v4).value;
  *a1 = v6;
  return result;
}

uint64_t sub_101DD4()
{
  if (*v0)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x746E756F4378616DLL;
  }
}

uint64_t sub_101E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_101EF8(uint64_t a1)
{
  v2 = sub_11B4A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101F34(uint64_t a1)
{
  v2 = sub_11B4A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationOptions.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22C600, &unk_1C6F10);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  sub_2698(a1, a1[3]);
  sub_11B4A0();
  sub_1B5884();
  v13 = 0;
  sub_1B54A4();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    sub_2B0C(&qword_22C610, &qword_1D3290);
    sub_11B4F4();
    sub_1B5544();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t CollectionRecommendationOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22C620, &unk_1C6F20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_2698(a1, a1[3]);
  sub_11B4A0();
  sub_1B5864();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1B5364();
    v11 = v10;
    v12 = v9;
    sub_2B0C(&qword_22C610, &qword_1D3290);
    v16 = 1;
    sub_11B578();
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    v14 = v15[1];
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = v14;
  }

  return sub_2BF8(a1);
}

uint64_t sub_10232C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  if (v7 <= 2)
  {
    if (*v3)
    {
LABEL_6:
      v8 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
      v9 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v9 - 8) + 16))(a3, a1, v9);
      *(a3 + v8) = v6;
      v10 = type metadata accessor for CollectionRecommendation(0);
      swift_storeEnumTagMultiPayload();
      v12 = *(*(v10 - 8) + 56);
      v13 = a3;
      v14 = 0;
      v15 = v10;
      goto LABEL_9;
    }
  }

  else if (*v3 > 4u)
  {
    if (v7 == 5)
    {
      goto LABEL_6;
    }
  }

  else if (v7 != 3)
  {
    goto LABEL_6;
  }

  v11 = type metadata accessor for CollectionRecommendation(0);
  v12 = *(*(v11 - 8) + 56);
  v15 = v11;
  v13 = a3;
  v14 = 1;
LABEL_9:

  return v12(v13, v14, 1, v15);
}

void *CollectionRecommendation.mediaTypes.getter()
{
  v1 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v107 = *(v1 - 8);
  v108 = v1;
  v2 = __chkstk_darwin(v1);
  v105 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v104 = &v102 - v5;
  v6 = __chkstk_darwin(v4);
  v103 = &v102 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v102 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v102 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v102 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v102 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v102 - v21;
  v23 = __chkstk_darwin(v20);
  v106 = &v102 - v24;
  __chkstk_darwin(v23);
  v26 = &v102 - v25;
  v27 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v27);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v73 = v107;
      v74 = v108;
      (*(v107 + 32))(v26, v29, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v73 + 16))(v106, v26, v74);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v76 = v113[0];
      v75 = v113[1];
      v77 = *(v113[0] + 16);
      if (v113[1] == v77)
      {
        goto LABEL_36;
      }

      do
      {
        if ((v75 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v75 >= *(v76 + 16))
        {
          goto LABEL_73;
        }

        v78 = *(v76 + 32 + (v75 << 6) + 8);
        v113[1] = v75 + 1;
        sub_111FB0(&v112, v78);
        v75 = v113[1];
      }

      while (v113[1] != v77);
      v32 = v110;
LABEL_36:

      (*(v73 + 8))(v26, v74);
      return v32;
    case 2u:
      v54 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v113, &v29[*(v54 + 48)], 0x231uLL);
      sub_2601C(v113);

      v55 = v107;
      v56 = v29;
      v57 = v108;
      (*(v107 + 32))(v22, v56, v108);
      v32 = _swiftEmptySetSingleton;
      v112 = _swiftEmptySetSingleton;
      (*(v55 + 16))(v106, v22, v57);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v59 = v110;
      v58 = v111;
      v60 = v110[2];
      if (v111 == v60)
      {
        goto LABEL_19;
      }

      do
      {
        if ((v58 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v58 >= v59[2])
        {
          goto LABEL_70;
        }

        v61 = v59[8 * v58 + 5];
        v111 = v58 + 1;
        sub_111FB0(&v109, v61);
        v58 = v111;
      }

      while (v111 != v60);
      v32 = v112;
LABEL_19:

      (*(v55 + 8))(v22, v57);
      return v32;
    case 3u:
      v62 = v107;
      v63 = v108;
      (*(v107 + 32))(v19, v29, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v62 + 16))(v106, v19, v63);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v65 = v113[0];
      v64 = v113[1];
      v66 = *(v113[0] + 16);
      if (v113[1] == v66)
      {
        goto LABEL_25;
      }

      do
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v64 >= *(v65 + 16))
        {
          goto LABEL_71;
        }

        v67 = *(v65 + 32 + (v64 << 6) + 8);
        v113[1] = v64 + 1;
        sub_111FB0(&v112, v67);
        v64 = v113[1];
      }

      while (v113[1] != v66);
      v32 = v110;
LABEL_25:

      (*(v62 + 8))(v19, v63);
      return v32;
    case 4u:
      v30 = v107;
      v31 = v108;
      (*(v107 + 32))(v16, v29, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v30 + 16))(v106, v16, v31);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v34 = v113[0];
      v33 = v113[1];
      v35 = *(v113[0] + 16);
      if (v113[1] == v35)
      {
        goto LABEL_7;
      }

      while ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 >= *(v34 + 16))
        {
          goto LABEL_68;
        }

        v36 = *(v34 + 32 + (v33 << 6) + 8);
        v113[1] = v33 + 1;
        sub_111FB0(&v112, v36);
        v33 = v113[1];
        if (v113[1] == v35)
        {
          v32 = v110;
LABEL_7:

          (*(v30 + 8))(v16, v31);
          return v32;
        }
      }

      __break(1u);
      goto LABEL_60;
    case 5u:
      v79 = v107;
      v80 = v29;
      v81 = v108;
      (*(v107 + 32))(v13, v80, v108);
      v82 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v79 + 16))(v106, v13, v81);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v84 = v113[0];
      v83 = v113[1];
      v85 = *(v113[0] + 16);
      if (v113[1] == v85)
      {
        goto LABEL_42;
      }

      do
      {
        if ((v83 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v83 >= *(v84 + 16))
        {
          goto LABEL_74;
        }

        v86 = *(v84 + 32 + (v83 << 6) + 8);
        v113[1] = v83 + 1;
        sub_111FB0(&v112, v86);
        v83 = v113[1];
      }

      while (v113[1] != v85);
      v82 = v110;
LABEL_42:

      (*(v79 + 8))(v13, v81);
      return v82;
    case 6u:
      v88 = v107;
      v87 = v108;
      (*(v107 + 32))(v10, v29, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v88 + 16))(v106, v10, v87);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v90 = v113[0];
      v89 = v113[1];
      v91 = *(v113[0] + 16);
      if (v113[1] == v91)
      {
        goto LABEL_48;
      }

      do
      {
        if ((v89 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v89 >= *(v90 + 16))
        {
          goto LABEL_75;
        }

        v92 = *(v90 + 32 + (v89 << 6) + 8);
        v113[1] = v89 + 1;
        sub_111FB0(&v112, v92);
        v89 = v113[1];
      }

      while (v113[1] != v91);
      v32 = v110;
      v87 = v108;
LABEL_48:

      (*(v88 + 8))(v10, v87);
      return v32;
    case 7u:
      v37 = v107;
      v38 = v103;
      v68 = v29;
      v40 = v108;
      (*(v107 + 32))(v103, v68, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v37 + 16))(v106, v38, v40);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v70 = v113[0];
      v69 = v113[1];
      v71 = *(v113[0] + 16);
      if (v113[1] == v71)
      {
        goto LABEL_56;
      }

      while ((v69 & 0x8000000000000000) == 0)
      {
        if (v69 >= *(v70 + 16))
        {
          goto LABEL_72;
        }

        v72 = *(v70 + 32 + (v69 << 6) + 8);
        v113[1] = v69 + 1;
        sub_111FB0(&v112, v72);
        v69 = v113[1];
        if (v113[1] == v71)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_63;
    case 8u:
      v37 = v107;
      v38 = v104;
      v96 = v29;
      v40 = v108;
      (*(v107 + 32))(v104, v96, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v37 + 16))(v106, v38, v40);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v98 = v113[0];
      v97 = v113[1];
      v99 = *(v113[0] + 16);
      if (v113[1] == v99)
      {
        goto LABEL_56;
      }

      while ((v97 & 0x8000000000000000) == 0)
      {
        if (v97 >= *(v98 + 16))
        {
          goto LABEL_76;
        }

        v100 = *(v98 + 32 + (v97 << 6) + 8);
        v113[1] = v97 + 1;
        sub_111FB0(&v112, v100);
        v97 = v113[1];
        if (v113[1] == v99)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_67;
    case 9u:
      LODWORD(v108) = v29[8];
      v45 = *(v29 + 3);
      v107 = *(v29 + 2);
      v46 = *(v29 + 4);
      v47 = *(v29 + 5);
      v48 = *(v29 + 6);
      v49 = *(v29 + 7);
      v50 = *(v29 + 8);
      v51 = *(v29 + 9);
      v52 = *(v29 + 10);
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      sub_CBD44(v107, v45, v46, v47, v48, v49, v50, v51, v52);
      *(inited + 32) = v108;
      goto LABEL_50;
    case 0xCu:
      v37 = v107;
      v38 = v105;
      v39 = v29;
      v40 = v108;
      (*(v107 + 32))(v105, v39, v108);
      v32 = _swiftEmptySetSingleton;
      v110 = _swiftEmptySetSingleton;
      (*(v37 + 16))(v106, v38, v40);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50, &protocol conformance descriptor for NonEmpty<A>);
      sub_1B4974();
      v42 = v113[0];
      v41 = v113[1];
      v43 = *(v113[0] + 16);
      if (v113[1] == v43)
      {
        goto LABEL_56;
      }

      break;
    default:
      v93 = v29[8];
      v94 = *(v29 + 2);
      v95 = v29[24];
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      sub_43CE0(v94, v95);

      *(inited + 32) = v93;
LABEL_50:
      v32 = sub_9EABC(inited);
      swift_setDeallocating();
      return v32;
  }

  do
  {
    if ((v41 & 0x8000000000000000) != 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      JUMPOUT(0x103348);
    }

    if (v41 >= *(v42 + 16))
    {
      goto LABEL_69;
    }

    v44 = *(v42 + 32 + (v41 << 6) + 8);
    v113[1] = v41 + 1;
    sub_111FB0(&v112, v44);
    v41 = v113[1];
  }

  while (v113[1] != v43);
LABEL_55:
  v32 = v110;
LABEL_56:

  (*(v37 + 8))(v38, v40);
  return v32;
}

uint64_t CollectionRecommendation.source.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xCu:
      *a1 = 2;
      return sub_5DC0C(v6);
    case 2u:
      v11 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v13, &v6[*(v11 + 48)], 0x231uLL);
      sub_2601C(v13);

      v9 = 2;
      goto LABEL_7;
    case 3u:
    case 5u:
      v8 = *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 64);
      goto LABEL_6;
    case 4u:
    case 6u:
    case 7u:
    case 8u:
      v8 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
LABEL_6:
      v9 = v6[v8];
LABEL_7:
      *a1 = v9;
      v10 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      result = (*(*(v10 - 8) + 8))(v6, v10);
      break;
    default:
      result = sub_5DC0C(v6);
      *a1 = 2;
      break;
  }

  return result;
}

uint64_t sub_103568(char a1)
{
  result = 1802465122;
  switch(a1)
  {
    case 1:
      result = 0x736B6F6F62;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x417942736B6F6F62;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x476E49736B6F6F62;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x736569726573;
      break;
    case 10:
      v3 = 1954047342;
      goto LABEL_14;
    case 11:
      v3 = 1701998445;
LABEL_14:
      result = v3 | 0x65536E4900000000;
      break;
    case 12:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_103714(uint64_t a1)
{
  v2 = sub_11BD1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103750(uint64_t a1)
{
  v2 = sub_11BD1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10378C(uint64_t a1)
{
  v2 = sub_11BB9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1037C8(uint64_t a1)
{
  v2 = sub_11BB9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_11EFE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_103840(uint64_t a1)
{
  v2 = sub_11BB48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10387C(uint64_t a1)
{
  v2 = sub_11BB48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1038B8(uint64_t a1)
{
  v2 = sub_11BAF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1038F4(uint64_t a1)
{
  v2 = sub_11BAF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103930(uint64_t a1)
{
  v2 = sub_11BCC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10396C(uint64_t a1)
{
  v2 = sub_11BCC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1039A8(uint64_t a1)
{
  v2 = sub_11BAA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1039E4(uint64_t a1)
{
  v2 = sub_11BAA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103A20()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_103A40(uint64_t a1)
{
  v2 = sub_11BA4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103A7C(uint64_t a1)
{
  v2 = sub_11BA4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103AC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_11F0E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_103AF4(uint64_t a1)
{
  v2 = sub_11B5FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103B30(uint64_t a1)
{
  v2 = sub_11B5FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103B6C(uint64_t a1)
{
  v2 = sub_11B650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103BA8(uint64_t a1)
{
  v2 = sub_11B650();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103BE4(uint64_t a1)
{
  v2 = sub_11B9F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103C20(uint64_t a1)
{
  v2 = sub_11B9F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_103D28(uint64_t a1)
{
  v2 = sub_11B950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103D64(uint64_t a1)
{
  v2 = sub_11B950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103DA0(uint64_t a1)
{
  v2 = sub_11B800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103DDC(uint64_t a1)
{
  v2 = sub_11B800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103E18(uint64_t a1)
{
  v2 = sub_11B854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103E54(uint64_t a1)
{
  v2 = sub_11B854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103E90(uint64_t a1)
{
  v2 = sub_11B8A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103ECC(uint64_t a1)
{
  v2 = sub_11B8A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendation.encode(to:)(void *a1)
{
  v178 = sub_2B0C(&qword_22C638, &qword_1C6F38);
  v150 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v139 - v2;
  v177 = sub_2B0C(&qword_22C640, &qword_1C6F40);
  v149 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v139 - v3;
  v174 = sub_2B0C(&qword_22C648, &qword_1C6F48);
  v148 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v139 - v4;
  v173 = sub_2B0C(&qword_22C650, &qword_1C6F50);
  v147 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v139 - v5;
  v171 = sub_2B0C(&qword_22C658, &qword_1C6F58);
  v146 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v139 - v6;
  v168 = sub_2B0C(&qword_22C660, &qword_1C6F60);
  v145 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = &v139 - v7;
  v166 = sub_2B0C(&qword_22C668, &qword_1C6F68);
  v144 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v139 - v8;
  v165 = sub_2B0C(&qword_22C670, &qword_1C6F70);
  v143 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v139 - v9;
  v161 = sub_2B0C(&qword_22C678, &qword_1C6F78);
  v141 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v139 - v10;
  v160 = sub_2B0C(&qword_22C680, &qword_1C6F80);
  v140 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v139 - v11;
  v162 = sub_2B0C(&qword_22C688, &qword_1C6F88);
  v142 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v139 - v12;
  v13 = sub_2B0C(&qword_22C690, &qword_1C6F90);
  v155 = *(v13 - 8);
  v156 = v13;
  __chkstk_darwin(v13);
  v154 = &v139 - v14;
  v15 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v16 = *(v15 - 8);
  v186 = v15;
  v187 = v16;
  v17 = __chkstk_darwin(v15);
  v153 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v183 = &v139 - v20;
  v21 = __chkstk_darwin(v19);
  v181 = &v139 - v22;
  v23 = __chkstk_darwin(v21);
  v180 = &v139 - v24;
  v25 = __chkstk_darwin(v23);
  v184 = &v139 - v26;
  v27 = __chkstk_darwin(v25);
  v179 = &v139 - v28;
  v29 = __chkstk_darwin(v27);
  v182 = &v139 - v30;
  v31 = __chkstk_darwin(v29);
  v185 = &v139 - v32;
  __chkstk_darwin(v31);
  v34 = &v139 - v33;
  v35 = sub_2B0C(&qword_22C698, &qword_1C6F98);
  v151 = *(v35 - 8);
  v152 = v35;
  __chkstk_darwin(v35);
  v37 = &v139 - v36;
  v38 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v38);
  v40 = (&v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = sub_2B0C(&qword_22C6A0, &unk_1C6FA0);
  v188 = *(v191 - 8);
  __chkstk_darwin(v191);
  v42 = &v139 - v41;
  sub_2698(a1, a1[3]);
  sub_11B5FC();
  v190 = v42;
  sub_1B5884();
  sub_FF9B8(v189, v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v103 = v187;
      v104 = v40;
      v105 = v186;
      (*(v187 + 32))(v34, v104, v186);
      LOBYTE(v194[0]) = 1;
      sub_11BCC8();
      v106 = v154;
      v108 = v190;
      v107 = v191;
      sub_1B5454();
      sub_11B6A4();
      v109 = v156;
      v110 = v195;
      sub_1B5544();
      (*(v155 + 8))(v106, v109);
      (*(v103 + 8))(v34, v105);
      result = (*(v188 + 8))(v108, v107);
      v195 = v110;
      return result;
    case 2u:
      v85 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v194, v40 + *(v85 + 48), 0x231uLL);
      v189 = *(v40 + *(v85 + 64));
      v86 = v186;
      v87 = v187;
      v88 = v185;
      (*(v187 + 32))(v185, v40, v186);
      LOBYTE(v193[0]) = 2;
      sub_11BB9C();
      v89 = v159;
      v91 = v190;
      v90 = v191;
      sub_1B5454();
      LOBYTE(v193[0]) = 0;
      sub_11B6A4();
      v92 = v162;
      v93 = v195;
      sub_1B5544();
      v195 = v93;
      if (v93)
      {
        sub_2601C(v194);

        (*(v142 + 8))(v89, v92);
        (*(v87 + 8))(v88, v86);
        v75 = *(v188 + 8);
        v76 = v91;
        goto LABEL_36;
      }

      v125 = v189;
      memcpy(v193, v194, 0x231uLL);
      v192 = 1;
      sub_90C14();
      v126 = v195;
      sub_1B5544();
      v195 = v126;
      if (v126)
      {

        (*(v142 + 8))(v89, v92);
        (*(v87 + 8))(v185, v86);
        (*(v188 + 8))(v91, v90);
        return sub_2601C(v194);
      }

      else
      {
        sub_2601C(v194);
        *&v193[0] = v125;
        v192 = 2;
        sub_2B0C(&qword_22C730, &qword_1C6FB0);
        sub_11BBF0();
        v134 = v195;
        sub_1B5544();
        v195 = v134;
        (*(v142 + 8))(v89, v92);
        (*(v87 + 8))(v185, v86);
        (*(v188 + 8))(v91, v90);
      }

    case 3u:
      v94 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v189 = *(v40 + *(v94 + 48));
      LODWORD(v185) = *(v40 + *(v94 + 64));
      v95 = v186;
      v96 = v187;
      v97 = v182;
      (*(v187 + 32))(v182, v40, v186);
      LOBYTE(v194[0]) = 3;
      sub_11BB48();
      v98 = v157;
      v99 = v190;
      v90 = v191;
      sub_1B5454();
      LOBYTE(v194[0]) = 0;
      sub_11B6A4();
      v100 = v160;
      v101 = v195;
      sub_1B5544();
      v195 = v101;
      if (v101)
      {
        (*(v140 + 8))(v98, v100);
        (*(v96 + 8))(v97, v95);
      }

      else
      {
        v127 = v185;
        LOBYTE(v194[0]) = 1;
        v128 = v98;
        sub_1B5574();
        v195 = 0;
        LOBYTE(v194[0]) = v127;
        LOBYTE(v193[0]) = 2;
        sub_11B9A4();
        v135 = v195;
        sub_1B5544();
        v136 = v182;
        v195 = v135;
        (*(v140 + 8))(v128, v100);
        (*(v96 + 8))(v136, v95);
      }

      goto LABEL_35;
    case 4u:
      LODWORD(v189) = *(v40 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v59 = v186;
      v58 = v187;
      v60 = v179;
      (*(v187 + 32))(v179, v40, v186);
      LOBYTE(v194[0]) = 4;
      sub_11BAF4();
      v61 = v158;
      v62 = v190;
      v63 = v191;
      sub_1B5454();
      LOBYTE(v194[0]) = 0;
      sub_11B6A4();
      v64 = v161;
      v65 = v195;
      sub_1B5544();
      v195 = v65;
      if (v65)
      {
        v66 = v141;
        goto LABEL_23;
      }

      LOBYTE(v194[0]) = v189;
      LOBYTE(v193[0]) = 1;
      sub_11B9A4();
      v124 = v195;
      sub_1B5544();
      v195 = v124;
      (*(v141 + 8))(v61, v64);
      (*(v58 + 8))(v179, v59);
      break;
    case 5u:
      v111 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v189 = *(v40 + *(v111 + 48));
      LODWORD(v185) = *(v40 + *(v111 + 64));
      v113 = v186;
      v112 = v187;
      v114 = v184;
      (*(v187 + 32))(v184, v40, v186);
      LOBYTE(v194[0]) = 5;
      sub_11BAA0();
      v115 = v163;
      v99 = v190;
      v90 = v191;
      sub_1B5454();
      LOBYTE(v194[0]) = 0;
      sub_11B6A4();
      v116 = v165;
      v117 = v195;
      sub_1B5544();
      v195 = v117;
      if (v117)
      {
        (*(v143 + 8))(v115, v116);
        (*(v112 + 8))(v114, v113);
      }

      else
      {
        v130 = v185;
        LOBYTE(v194[0]) = 1;
        v131 = v115;
        sub_1B5574();
        v195 = 0;
        LOBYTE(v194[0]) = v130;
        LOBYTE(v193[0]) = 2;
        sub_11B9A4();
        v137 = v195;
        sub_1B5544();
        v138 = v184;
        v195 = v137;
        (*(v143 + 8))(v131, v116);
        (*(v112 + 8))(v138, v113);
      }

LABEL_35:
      v75 = *(v188 + 8);
      v76 = v99;
LABEL_36:
      v123 = v90;
      return v75(v76, v123);
    case 6u:
      LODWORD(v189) = *(v40 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v59 = v186;
      v58 = v187;
      v60 = v180;
      (*(v187 + 32))(v180, v40, v186);
      LOBYTE(v194[0]) = 6;
      sub_11BA4C();
      v61 = v164;
      v62 = v190;
      v63 = v191;
      sub_1B5454();
      LOBYTE(v194[0]) = 0;
      sub_11B6A4();
      v64 = v166;
      v118 = v195;
      sub_1B5544();
      v195 = v118;
      if (v118)
      {
        v66 = v144;
        goto LABEL_23;
      }

      LOBYTE(v194[0]) = v189;
      LOBYTE(v193[0]) = 1;
      sub_11B9A4();
      v132 = v195;
      sub_1B5544();
      v195 = v132;
      (*(v144 + 8))(v61, v64);
      (*(v58 + 8))(v180, v59);
      break;
    case 7u:
      LODWORD(v189) = *(v40 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v59 = v186;
      v58 = v187;
      v60 = v181;
      (*(v187 + 32))(v181, v40, v186);
      LOBYTE(v194[0]) = 7;
      sub_11B9F8();
      v61 = v167;
      v62 = v190;
      v63 = v191;
      sub_1B5454();
      LOBYTE(v194[0]) = 0;
      sub_11B6A4();
      v64 = v168;
      v102 = v195;
      sub_1B5544();
      v195 = v102;
      if (v102)
      {
        v66 = v145;
        goto LABEL_23;
      }

      LOBYTE(v194[0]) = v189;
      LOBYTE(v193[0]) = 1;
      sub_11B9A4();
      v129 = v195;
      sub_1B5544();
      v195 = v129;
      (*(v145 + 8))(v61, v64);
      (*(v58 + 8))(v181, v59);
      break;
    case 8u:
      LODWORD(v189) = *(v40 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v59 = v186;
      v58 = v187;
      v60 = v183;
      (*(v187 + 32))(v183, v40, v186);
      LOBYTE(v194[0]) = 8;
      sub_11B950();
      v61 = v169;
      v62 = v190;
      v63 = v191;
      sub_1B5454();
      LOBYTE(v194[0]) = 0;
      sub_11B6A4();
      v64 = v171;
      v122 = v195;
      sub_1B5544();
      v195 = v122;
      if (v122)
      {
        v66 = v146;
LABEL_23:
        (*(v66 + 8))(v61, v64);
        (*(v58 + 8))(v60, v59);
      }

      else
      {
        LOBYTE(v194[0]) = v189;
        LOBYTE(v193[0]) = 1;
        sub_11B9A4();
        v133 = v195;
        sub_1B5544();
        v195 = v133;
        (*(v146 + 8))(v61, v64);
        (*(v58 + 8))(v183, v59);
      }

      break;
    case 9u:
      v77 = v40[3];
      v194[2] = v40[2];
      v194[3] = v77;
      v78 = v40[5];
      v194[4] = v40[4];
      v194[5] = v78;
      v79 = v40[1];
      v194[0] = *v40;
      v194[1] = v79;
      LOBYTE(v193[0]) = 9;
      sub_11B8A8();
      v80 = v170;
      v82 = v190;
      v81 = v191;
      sub_1B5454();
      v193[2] = v194[2];
      v193[3] = v194[3];
      v193[4] = v194[4];
      v193[5] = v194[5];
      v193[0] = v194[0];
      v193[1] = v194[1];
      sub_11B8FC();
      v83 = v173;
      v84 = v195;
      sub_1B5544();
      v195 = v84;
      (*(v147 + 8))(v80, v83);
      (*(v188 + 8))(v82, v81);
      return sub_C6088(v194);
    case 0xAu:
      v119 = v40[1];
      v194[0] = *v40;
      v194[1] = v119;
      v120 = v40[3];
      v194[2] = v40[2];
      v194[3] = v120;
      LOBYTE(v193[0]) = 10;
      sub_11B854();
      v52 = v172;
      v54 = v190;
      v53 = v191;
      sub_1B5454();
      v193[0] = v194[0];
      v193[1] = v194[1];
      v193[2] = v194[2];
      v193[3] = v194[3];
      sub_11B7AC();
      v55 = v174;
      v121 = v195;
      sub_1B5544();
      v195 = v121;
      v57 = v148;
      goto LABEL_20;
    case 0xBu:
      v50 = v40[1];
      v194[0] = *v40;
      v194[1] = v50;
      v51 = v40[3];
      v194[2] = v40[2];
      v194[3] = v51;
      LOBYTE(v193[0]) = 11;
      sub_11B800();
      v52 = v175;
      v54 = v190;
      v53 = v191;
      sub_1B5454();
      v193[0] = v194[0];
      v193[1] = v194[1];
      v193[2] = v194[2];
      v193[3] = v194[3];
      sub_11B7AC();
      v55 = v177;
      v56 = v195;
      sub_1B5544();
      v195 = v56;
      v57 = v149;
LABEL_20:
      (*(v57 + 8))(v52, v55);
      (*(v188 + 8))(v54, v53);
      return sub_43FF4(v194);
    case 0xCu:
      v67 = v187;
      v68 = v153;
      v69 = v40;
      v70 = v186;
      (*(v187 + 32))(v153, v69, v186);
      LOBYTE(v194[0]) = 12;
      sub_11B650();
      v71 = v176;
      v72 = v190;
      v63 = v191;
      sub_1B5454();
      sub_11B6A4();
      v73 = v178;
      v74 = v195;
      sub_1B5544();
      v195 = v74;
      (*(v150 + 8))(v71, v73);
      (*(v67 + 8))(v68, v70);
      v75 = *(v188 + 8);
      v76 = v72;
      goto LABEL_25;
    default:
      v43 = v40[1];
      v194[0] = *v40;
      v194[1] = v43;
      v44 = v40[3];
      v194[2] = v40[2];
      v194[3] = v44;
      LOBYTE(v193[0]) = 0;
      sub_11BD1C();
      v46 = v190;
      v45 = v191;
      sub_1B5454();
      v193[0] = v194[0];
      v193[1] = v194[1];
      v193[2] = v194[2];
      v193[3] = v194[3];
      sub_11B7AC();
      v47 = v152;
      v48 = v195;
      sub_1B5544();
      (*(v151 + 8))(v37, v47);
      (*(v188 + 8))(v46, v45);
      result = sub_43FF4(v194);
      v195 = v48;
      return result;
  }

  v75 = *(v188 + 8);
  v76 = v62;
LABEL_25:
  v123 = v63;
  return v75(v76, v123);
}

uint64_t CollectionRecommendation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a2;
  v182 = sub_2B0C(&qword_22C758, &qword_1C6FB8);
  v166 = *(v182 - 8);
  __chkstk_darwin(v182);
  v200 = &v151 - v3;
  v4 = sub_2B0C(&qword_22C760, &qword_1C6FC0);
  v180 = *(v4 - 8);
  v181 = v4;
  __chkstk_darwin(v4);
  v201 = &v151 - v5;
  v6 = sub_2B0C(&qword_22C768, &qword_1C6FC8);
  v177 = *(v6 - 8);
  v178 = v6;
  __chkstk_darwin(v6);
  v205 = &v151 - v7;
  v8 = sub_2B0C(&qword_22C770, &qword_1C6FD0);
  v174 = *(v8 - 8);
  v175 = v8;
  __chkstk_darwin(v8);
  v198 = &v151 - v9;
  v179 = sub_2B0C(&qword_22C778, &qword_1C6FD8);
  v165 = *(v179 - 8);
  __chkstk_darwin(v179);
  v199 = &v151 - v10;
  v176 = sub_2B0C(&qword_22C780, &qword_1C6FE0);
  v164 = *(v176 - 8);
  __chkstk_darwin(v176);
  v197 = &v151 - v11;
  v173 = sub_2B0C(&qword_22C788, &qword_1C6FE8);
  v162 = *(v173 - 8);
  __chkstk_darwin(v173);
  v196 = &v151 - v12;
  v185 = sub_2B0C(&qword_22C790, &qword_1C6FF0);
  v163 = *(v185 - 8);
  __chkstk_darwin(v185);
  v195 = &v151 - v13;
  v172 = sub_2B0C(&qword_22C798, &qword_1C6FF8);
  v161 = *(v172 - 8);
  __chkstk_darwin(v172);
  v194 = &v151 - v14;
  v15 = sub_2B0C(&qword_22C7A0, &qword_1C7000);
  v183 = *(v15 - 8);
  v184 = v15;
  __chkstk_darwin(v15);
  v193 = &v151 - v16;
  v171 = sub_2B0C(&qword_22C7A8, &qword_1C7008);
  v160 = *(v171 - 8);
  __chkstk_darwin(v171);
  v204 = &v151 - v17;
  v170 = sub_2B0C(&qword_22C7B0, &qword_1C7010);
  v159 = *(v170 - 8);
  __chkstk_darwin(v170);
  v192 = &v151 - v18;
  v19 = sub_2B0C(&qword_22C7B8, &qword_1C7018);
  v168 = *(v19 - 8);
  v169 = v19;
  __chkstk_darwin(v19);
  v191 = &v151 - v20;
  v203 = sub_2B0C(&qword_22C7C0, &unk_1C7020);
  v206 = *(v203 - 8);
  __chkstk_darwin(v203);
  v210 = &v151 - v21;
  v207 = type metadata accessor for CollectionRecommendation(0);
  v22 = __chkstk_darwin(v207);
  v167 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v158 = &v151 - v25;
  v26 = __chkstk_darwin(v24);
  v157 = &v151 - v27;
  v28 = __chkstk_darwin(v26);
  v156 = &v151 - v29;
  v30 = __chkstk_darwin(v28);
  v189 = &v151 - v31;
  v32 = __chkstk_darwin(v30);
  v188 = &v151 - v33;
  v34 = __chkstk_darwin(v32);
  v187 = &v151 - v35;
  v36 = __chkstk_darwin(v34);
  v190 = &v151 - v37;
  v38 = __chkstk_darwin(v36);
  v186 = &v151 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v151 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v151 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v151 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v151 - v50;
  __chkstk_darwin(v49);
  v53 = &v151 - v52;
  v54 = a1[3];
  v208 = a1;
  sub_2698(a1, v54);
  sub_11B5FC();
  v55 = v209;
  sub_1B5864();
  if (v55)
  {
    return sub_2BF8(v208);
  }

  v152 = v51;
  v153 = v48;
  v154 = v42;
  v155 = v45;
  v57 = v204;
  v56 = v205;
  v58 = v207;
  v209 = v53;
  v59 = v203;
  v60 = v210;
  v61 = sub_1B5444();
  v62 = (2 * *(v61 + 16)) | 1;
  v212 = v61;
  v213 = v61 + 32;
  v214 = 0;
  v215 = v62;
  v63 = sub_9CAB4();
  if (v214 != v215 >> 1)
  {
LABEL_5:
    v70 = sub_1B5114();
    swift_allocError();
    v72 = v71;
    sub_2B0C(&qword_22ADB8, &qword_1C2520);
    *v72 = v58;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v70 - 8) + 104))(v72, enum case for DecodingError.typeMismatch(_:), v70);
    swift_willThrow();
    (*(v206 + 8))(v60, v59);
    swift_unknownObjectRelease();
    return sub_2BF8(v208);
  }

  switch(v63)
  {
    case 0:
      v211[0] = 0;
      sub_11BD1C();
      v64 = v191;
      sub_1B5304();
      sub_11BE78();
      v65 = v169;
      sub_1B5404();
      v66 = (v206 + 8);
      v180 = 0;
      (*(v168 + 8))(v64, v65);
      (*v66)(v60, v59);
      swift_unknownObjectRelease();
      v67 = *&v211[16];
      v68 = v152;
      *v152 = *v211;
      *(v68 + 1) = v67;
      v69 = *&v211[48];
      *(v68 + 2) = *&v211[32];
      *(v68 + 3) = v69;
      goto LABEL_38;
    case 1:
      v211[0] = 1;
      sub_11BCC8();
      v107 = v192;
      v108 = v59;
      sub_1B5304();
      sub_2B0C(&qword_228F38, &qword_1BCB50);
      sub_11BD70();
      v109 = v153;
      v110 = v170;
      sub_1B5404();
      v111 = v107;
      v112 = v206;
      v180 = 0;
      (*(v159 + 8))(v111, v110);
      (*(v112 + 8))(v60, v108);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v136 = v109;
      goto LABEL_39;
    case 2:
      v211[0] = 2;
      sub_11BB9C();
      v93 = v59;
      sub_1B5304();
      v94 = v57;
      v95 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      v96 = v171;
      sub_1B5404();
      v205 = sub_2B0C(&qword_228F40, &unk_1BB360);
      v133 = *(v205 + 48);
      v211[0] = 1;
      sub_90CE0();
      sub_1B5404();
      v201 = v133;
      sub_2B0C(&qword_22C730, &qword_1C6FB0);
      v180 = 0;
      v216 = 2;
      sub_11BF74();
      v84 = v155;
      v141 = v180;
      sub_1B5404();
      if (v141)
      {
        (*(v160 + 8))(v94, v96);
        (*(v206 + 8))(v60, v93);
        swift_unknownObjectRelease();
        memcpy(v211, &v201[v84], sizeof(v211));
        sub_2601C(v211);
        (*(*(v95 - 8) + 8))(v84, v95);
        return sub_2BF8(v208);
      }

      v180 = 0;
      (*(v160 + 8))(v94, v96);
      (*(v206 + 8))(v60, v93);
      swift_unknownObjectRelease();
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v136 = v84;
      goto LABEL_39;
    case 3:
      v211[0] = 3;
      sub_11BB48();
      v97 = v193;
      v98 = v59;
      sub_1B5304();
      v99 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      v100 = v154;
      sub_1B5404();
      v101 = v206;
      v211[0] = 1;
      v134 = sub_1B5434();
      v180 = 0;
      v142 = v100;
      *&v100[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)] = v134;
      v211[0] = 2;
      sub_11BF20();
      v143 = v184;
      v144 = v180;
      sub_1B5404();
      if (v144)
      {
        (*(v183 + 8))(v97, v143);
        (*(v101 + 8))(v60, v98);
        swift_unknownObjectRelease();
        (*(*(v99 - 8) + 8))(v142, v99);
        return sub_2BF8(v208);
      }

      v180 = 0;
      (*(v183 + 8))(v97, v143);
      (*(v101 + 8))(v60, v98);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v136 = v142;
      goto LABEL_39;
    case 4:
      v211[0] = 4;
      sub_11BAF4();
      v78 = v194;
      v79 = v59;
      sub_1B5304();
      v80 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      v81 = v172;
      sub_1B5404();
      v82 = v206;
      sub_2B0C(&qword_229770, &qword_1C6F30);
      v180 = 0;
      v211[0] = 1;
      sub_11BF20();
      v132 = v180;
      sub_1B5404();
      if (v132)
      {
        (*(v161 + 8))(v78, v81);
        (*(v82 + 8))(v60, v79);
        swift_unknownObjectRelease();
        (*(*(v80 - 8) + 8))(v186, v80);
        return sub_2BF8(v208);
      }

      v180 = 0;
      (*(v161 + 8))(v78, v81);
      (*(v82 + 8))(v60, v79);
      swift_unknownObjectRelease();
      v68 = v186;
      goto LABEL_38;
    case 5:
      v211[0] = 5;
      sub_11BAA0();
      v113 = v195;
      v114 = v59;
      sub_1B5304();
      sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      sub_1B5404();
      v115 = v113;
      v116 = v206;
      v211[0] = 1;
      v145 = sub_1B5434();
      v146 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v147 = *(v146 + 48);
      v205 = *(v146 + 64);
      *&v190[v147] = v145;
      v211[0] = 2;
      sub_11BF20();
      v148 = v185;
      sub_1B5404();
      v180 = 0;
      (*(v163 + 8))(v115, v148);
      (*(v116 + 8))(v60, v114);
      swift_unknownObjectRelease();
      v68 = v190;
      goto LABEL_38;
    case 6:
      v211[0] = 6;
      sub_11BA4C();
      v117 = v196;
      v118 = v59;
      sub_1B5304();
      v119 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      v120 = v173;
      sub_1B5404();
      v121 = v206;
      sub_2B0C(&qword_229770, &qword_1C6F30);
      v180 = 0;
      v211[0] = 1;
      sub_11BF20();
      v137 = v180;
      sub_1B5404();
      if (v137)
      {
        (*(v162 + 8))(v117, v120);
        (*(v121 + 8))(v60, v118);
        swift_unknownObjectRelease();
        (*(*(v119 - 8) + 8))(v187, v119);
        return sub_2BF8(v208);
      }

      v180 = 0;
      (*(v162 + 8))(v117, v120);
      (*(v121 + 8))(v60, v118);
      swift_unknownObjectRelease();
      v68 = v187;
      goto LABEL_38;
    case 7:
      v211[0] = 7;
      sub_11B9F8();
      v102 = v197;
      v103 = v59;
      sub_1B5304();
      v104 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      v105 = v176;
      sub_1B5404();
      v106 = v206;
      sub_2B0C(&qword_229770, &qword_1C6F30);
      v180 = 0;
      v211[0] = 1;
      sub_11BF20();
      v135 = v180;
      sub_1B5404();
      if (v135)
      {
        (*(v164 + 8))(v102, v105);
        (*(v106 + 8))(v60, v103);
        swift_unknownObjectRelease();
        (*(*(v104 - 8) + 8))(v188, v104);
        return sub_2BF8(v208);
      }

      v180 = 0;
      (*(v164 + 8))(v102, v105);
      (*(v106 + 8))(v60, v103);
      swift_unknownObjectRelease();
      v68 = v188;
      goto LABEL_38;
    case 8:
      v211[0] = 8;
      sub_11B950();
      v123 = v199;
      v124 = v59;
      sub_1B5304();
      v127 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v211[0] = 0;
      sub_11BD70();
      v128 = v179;
      sub_1B5404();
      v129 = v206;
      sub_2B0C(&qword_229770, &qword_1C6F30);
      v180 = 0;
      v211[0] = 1;
      sub_11BF20();
      v140 = v180;
      sub_1B5404();
      if (v140)
      {
        (*(v165 + 8))(v123, v128);
        (*(v129 + 8))(v60, v124);
        swift_unknownObjectRelease();
        (*(*(v127 - 8) + 8))(v189, v127);
        return sub_2BF8(v208);
      }

      v180 = 0;
      (*(v165 + 8))(v123, v128);
      (*(v129 + 8))(v60, v124);
      swift_unknownObjectRelease();
      v68 = v189;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v136 = v68;
LABEL_39:
      v149 = v209;
      sub_11FE3C(v136, v209, type metadata accessor for CollectionRecommendation);
      v150 = v208;
      sub_11FE3C(v149, v202, type metadata accessor for CollectionRecommendation);
      result = sub_2BF8(v150);
      break;
    case 9:
      v211[0] = 9;
      sub_11B8A8();
      v87 = v198;
      sub_1B5304();
      sub_11BECC();
      v88 = v175;
      sub_1B5404();
      v89 = (v206 + 8);
      v180 = 0;
      (*(v174 + 8))(v87, v88);
      (*v89)(v60, v59);
      swift_unknownObjectRelease();
      v90 = *&v211[48];
      v68 = v156;
      *(v156 + 2) = *&v211[32];
      *(v68 + 3) = v90;
      v91 = *&v211[80];
      *(v68 + 4) = *&v211[64];
      *(v68 + 5) = v91;
      v92 = *&v211[16];
      *v68 = *v211;
      *(v68 + 1) = v92;
      goto LABEL_38;
    case 10:
      v211[0] = 10;
      sub_11B854();
      v122 = v56;
      sub_1B5304();
      sub_11BE78();
      v125 = v178;
      sub_1B5404();
      v126 = (v206 + 8);
      v180 = 0;
      (*(v177 + 8))(v122, v125);
      (*v126)(v60, v59);
      swift_unknownObjectRelease();
      v138 = *&v211[16];
      v68 = v157;
      *v157 = *v211;
      *(v68 + 1) = v138;
      v139 = *&v211[48];
      *(v68 + 2) = *&v211[32];
      *(v68 + 3) = v139;
      goto LABEL_38;
    case 11:
      v211[0] = 11;
      sub_11B800();
      v74 = v201;
      sub_1B5304();
      sub_11BE78();
      v75 = v181;
      sub_1B5404();
      v76 = (v180 + 8);
      v77 = (v206 + 8);
      v180 = 0;
      (*v76)(v74, v75);
      (*v77)(v60, v59);
      swift_unknownObjectRelease();
      v130 = *&v211[16];
      v68 = v158;
      *v158 = *v211;
      *(v68 + 1) = v130;
      v131 = *&v211[48];
      *(v68 + 2) = *&v211[32];
      *(v68 + 3) = v131;
      goto LABEL_38;
    case 12:
      v211[0] = 12;
      sub_11B650();
      v83 = v200;
      sub_1B5304();
      sub_2B0C(&qword_228F38, &qword_1BCB50);
      sub_11BD70();
      v84 = v167;
      v85 = v182;
      sub_1B5404();
      v86 = v206;
      v180 = 0;
      (*(v166 + 8))(v83, v85);
      (*(v86 + 8))(v60, v59);
      swift_unknownObjectRelease();
      goto LABEL_21;
    default:
      goto LABEL_5;
  }

  return result;
}

uint64_t CollectionRecommendation.count.getter()
{
  v1 = v0;
  v2 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-v4 - 8];
  v6 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xCu:
      goto LABEL_2;
    case 2u:
      v10 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v13, &v8[*(v10 + 48)], 0x231uLL);
      sub_2601C(v13);

LABEL_2:
      (*(v3 + 32))(v5, v8, v2);
      v9 = sub_1B4374();
      (*(v3 + 8))(v5, v2);
      break;
    case 9u:
      sub_5DC0C(v8);
      v9 = 0;
      break;
    default:
      sub_5DC0C(v8);
      v9 = 1;
      break;
  }

  return v9;
}

uint64_t CollectionRecommendation.debugDescription.getter()
{
  CollectionRecommendation.count.getter();
  v1 = v0;
  v2 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  CollectionRecommendation.collectionRecommendationType.getter(&v9);
  sub_1B51F4();
  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_1B48D4(v13);
  v3 = CollectionRecommendation.mediaTypes.getter();
  sub_FF280(v3);

  v4 = sub_1B4AD4();
  v6 = v5;

  v14._countAndFlagsBits = v4;
  v14._object = v6;
  sub_1B48D4(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  sub_1B48D4(v15);
  if (v1)
  {
    v7._countAndFlagsBits = 0;
  }

  else
  {
    v9 = 40;
    v10 = 0xE100000000000000;
    v16._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v16);

    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    sub_1B48D4(v17);
    v7._countAndFlagsBits = v9;
    v2 = v10;
  }

  v7._object = v2;
  sub_1B48D4(v7);

  return v11;
}

uint64_t sub_107D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_107E10(uint64_t a1)
{
  v2 = sub_11C04C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_107E4C(uint64_t a1)
{
  v2 = sub_11C04C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationResponse.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C800, &qword_1C7030);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_2698(a1, a1[3]);
  sub_11C04C();

  sub_1B5884();
  v9[1] = v7;
  sub_2B0C(&qword_22C810, &qword_1C7038);
  sub_11C0A0(&qword_22C818, &qword_22C820, &protocol conformance descriptor for CollectionRecommendation, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();

  return (*(v4 + 8))(v6, v3);
}

uint64_t CollectionRecommendationResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22C828, &qword_1C7040);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_2698(a1, a1[3]);
  sub_11C04C();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_22C810, &qword_1C7038);
    sub_11C0A0(&qword_22C830, &qword_22C838, &protocol conformance descriptor for CollectionRecommendation, &protocol conformance descriptor for <A> [A]);
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_2BF8(a1);
}

uint64_t InternalCollectionRecommendationResponse.bookClusteringRequest.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x4B0uLL);
  memcpy(a1, (v1 + 24), 0x4B0uLL);
  return sub_43050(__dst, v4, &qword_22C840, &qword_1C7048);
}

void *InternalCollectionRecommendationResponse.bookClusteringRequest.setter(const void *a1)
{
  memcpy(__dst, (v1 + 24), 0x4B0uLL);
  sub_42F48(__dst, &qword_22C840, &qword_1C7048);
  return memcpy((v1 + 24), a1, 0x4B0uLL);
}

uint64_t InternalCollectionRecommendationResponse.bookClusteringResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 1224);
  v3 = *(v1 + 1232);
  *a1 = v2;
  a1[1] = v3;
  return sub_11C184(v2, v3);
}

uint64_t InternalCollectionRecommendationResponse.bookClusteringResult.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_11C1C4(*(v1 + 1224), *(v1 + 1232));
  *(v1 + 1224) = v2;
  *(v1 + 1232) = v3;
  return result;
}

unint64_t sub_10834C()
{
  v1 = *v0;
  v2 = 0x6E656D6D6F636572;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001FLL;
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

uint64_t sub_108408@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_11F50C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_108430(uint64_t a1)
{
  v2 = sub_11C204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10846C(uint64_t a1)
{
  v2 = sub_11C204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InternalCollectionRecommendationResponse.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C848, &qword_1C7050);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v8 = *v1;
  v7 = v1[1];
  v16 = v1[2];
  v17 = v7;
  memcpy(v23, v1 + 3, 0x4B0uLL);
  v9 = v1[154];
  v14 = v1[153];
  v15 = v9;
  sub_2698(a1, a1[3]);
  sub_11C204();

  sub_1B5884();
  v22[0] = v8;
  v21[0] = 0;
  sub_2B0C(&qword_22C810, &qword_1C7038);
  sub_11C0A0(&qword_22C818, &qword_22C820, &protocol conformance descriptor for CollectionRecommendation, &protocol conformance descriptor for <A> [A]);
  v10 = v24;
  sub_1B5544();
  if (v10)
  {
  }

  else
  {
    v11 = v16;

    v22[0] = v17;
    v21[0] = 1;
    sub_2B0C(&qword_22C858, &qword_1C7058);
    sub_11C258(&qword_22C860, &qword_22C868, &protocol conformance descriptor for SeedBasedRecommendationRequest, &protocol conformance descriptor for <A> [A]);
    sub_1B54B4();
    v22[0] = v11;
    v21[0] = 2;
    sub_2B0C(&qword_22A410, &qword_1C0110);
    sub_11C2F4();
    sub_1B54B4();
    memcpy(v22, v23, sizeof(v22));
    v21[1207] = 3;
    sub_43050(v23, v21, &qword_22C840, &qword_1C7048);
    sub_11C488();
    sub_1B54B4();
    memcpy(v21, v22, 0x4B0uLL);
    sub_42F48(v21, &qword_22C840, &qword_1C7048);
    v19 = v14;
    v20 = v15;
    v18 = 4;
    sub_11C184(v14, v15);
    sub_11C4DC();
    sub_1B54B4();
    sub_11C1C4(v19, v20);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InternalCollectionRecommendationResponse.init(from:)(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v20 = sub_2B0C(&qword_22C8A0, &qword_1C7060);
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - v6;
  sub_11C530(v27);
  memcpy(v26, v27, sizeof(v26));
  sub_2698(v2, v2[3]);
  sub_11C204();
  sub_1B5864();
  if (v1)
  {
    sub_2BF8(v2);
    memcpy(v22, v26, 0x4B0uLL);
    sub_42F48(v22, &qword_22C840, &qword_1C7048);
    return sub_11C1C4(0, 0);
  }

  else
  {
    v8 = v5;
    v9 = v4;
    sub_2B0C(&qword_22C810, &qword_1C7038);
    LOBYTE(v21[0]) = 0;
    sub_11C0A0(&qword_22C830, &qword_22C838, &protocol conformance descriptor for CollectionRecommendation, &protocol conformance descriptor for <A> [A]);
    v10 = v20;
    sub_1B5404();
    v19 = v22[0];
    sub_2B0C(&qword_22C858, &qword_1C7058);
    LOBYTE(v21[0]) = 1;
    sub_11C258(&qword_22C8A8, &qword_22C8B0, &protocol conformance descriptor for SeedBasedRecommendationRequest, &protocol conformance descriptor for <A> [A]);
    sub_1B5374();
    v11 = v8;
    v18 = v22[0];
    sub_2B0C(&qword_22A410, &qword_1C0110);
    LOBYTE(v21[0]) = 2;
    sub_11C538();
    sub_1B5374();
    v12 = v22[0];
    v27[1223] = 3;
    sub_11C6CC();
    sub_1B5374();
    memcpy(v23, v25, sizeof(v23));
    memcpy(v24, v26, sizeof(v24));
    sub_42F48(v24, &qword_22C840, &qword_1C7048);
    memcpy(v26, v23, sizeof(v26));
    v27[1222] = 4;
    sub_11C720();
    sub_1B5374();
    (*(v11 + 8))(v7, v10);
    v13 = v22[155];
    v14 = v22[156];
    sub_11C1C4(0, 0);
    v15 = v18;
    v16 = v19;
    v21[0] = v19;
    v21[1] = v18;
    v21[2] = v12;
    memcpy(&v21[3], v23, 0x4B0uLL);
    v21[153] = v13;
    v21[154] = v14;
    memcpy(v9, v21, 0x4D8uLL);
    sub_11C774(v21, v22);
    sub_2BF8(v2);
    v22[0] = v16;
    v22[1] = v15;
    v22[2] = v12;
    memcpy(&v22[3], v23, 0x4B0uLL);
    v22[153] = v13;
    v22[154] = v14;
    return sub_11C7AC(v22);
  }
}

uint64_t sub_108DD4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 9336) = v2;
  *(v3 + 9328) = a1;
  v5 = type metadata accessor for CollectionRecommendation(0);
  *(v3 + 9344) = v5;
  *(v3 + 9352) = *(v5 - 8);
  *(v3 + 9360) = swift_task_alloc();
  *(v3 + 9368) = swift_task_alloc();
  *(v3 + 9376) = swift_task_alloc();
  v6 = sub_1B4644();
  *(v3 + 9384) = v6;
  *(v3 + 9392) = *(v6 - 8);
  *(v3 + 9400) = swift_task_alloc();
  v7 = sub_2B0C(&qword_228460, &qword_1B6370);
  *(v3 + 9408) = v7;
  *(v3 + 9416) = *(v7 - 8);
  *(v3 + 9424) = swift_task_alloc();
  v8 = a2[9];
  *(v3 + 7880) = a2[8];
  *(v3 + 7896) = v8;
  *(v3 + 7907) = *(a2 + 155);
  v9 = a2[5];
  *(v3 + 7816) = a2[4];
  *(v3 + 7832) = v9;
  v10 = a2[7];
  *(v3 + 7848) = a2[6];
  *(v3 + 7864) = v10;
  v11 = a2[1];
  *(v3 + 7752) = *a2;
  *(v3 + 7768) = v11;
  v12 = a2[3];
  *(v3 + 7784) = a2[2];
  *(v3 + 7800) = v12;

  return _swift_task_switch(sub_108FB8, 0, 0);
}

uint64_t sub_108FB8()
{
  v21 = v0;
  sub_1B4234();
  if (sub_1B4224())
  {
    v1 = *(v0 + 7896);
    *(v0 + 8584) = *(v0 + 7880);
    *(v0 + 8600) = v1;
    *(v0 + 8611) = *(v0 + 7907);
    v2 = *(v0 + 7832);
    *(v0 + 8520) = *(v0 + 7816);
    *(v0 + 8536) = v2;
    v3 = *(v0 + 7864);
    *(v0 + 8552) = *(v0 + 7848);
    *(v0 + 8568) = v3;
    v4 = *(v0 + 7768);
    *(v0 + 8456) = *(v0 + 7752);
    *(v0 + 8472) = v4;
    v5 = *(v0 + 7800);
    *(v0 + 8488) = *(v0 + 7784);
    *(v0 + 8504) = v5;
    sub_101924(v0 + 7752, v0 + 8632);
    v6 = sub_1B4834();
    v8 = v7;
    v9 = sub_1B4894();
    if (v9 >= 1)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        v12 = v11 + 1000;
        v13 = __OFADD__(v11, 1000);
        v20 = v11;
        sub_10CD10(&v20, v6, v8, 1000);
        if (v13)
        {
          break;
        }

        v11 += 1000;
      }

      while (v12 < v10);
    }
  }

  v14 = *(v0 + 9336);
  v15 = v14[5];
  v16 = v14[6];
  sub_2698(v14 + 2, v15);
  v19 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  *(v0 + 9432) = v17;
  *v17 = v0;
  v17[1] = sub_1091C8;

  return v19(v0 + 4576, v15, v16);
}

uint64_t sub_1091C8()
{
  *(*v1 + 9440) = v0;

  if (v0)
  {
    v2 = sub_10BFAC;
  }

  else
  {
    v2 = sub_1092DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1092DC()
{
  v58 = v0;
  v1 = *(v0 + 9336);
  memcpy((v0 + 3456), (v0 + 4576), 0x460uLL);
  v2 = *(v0 + 7896);
  v50[10] = *(v0 + 7880);
  v51[0] = v2;
  *(v51 + 11) = *(v0 + 7907);
  v3 = *(v0 + 7832);
  v50[6] = *(v0 + 7816);
  v50[7] = v3;
  v4 = *(v0 + 7864);
  v50[8] = *(v0 + 7848);
  v50[9] = v4;
  v5 = *(v0 + 7768);
  v50[2] = *(v0 + 7752);
  v50[3] = v5;
  v6 = *(v0 + 7800);
  v50[4] = *(v0 + 7784);
  v50[5] = v6;
  v7 = *(v0 + 5144);
  v9 = *(v0 + 5160);
  v8 = *(v0 + 5176);
  *(v0 + 9096) = v9;
  *(v0 + 9112) = v8;
  *(v0 + 9121) = *(v0 + 5185);
  v10 = *(v0 + 5112);
  *(v0 + 9032) = *(v0 + 5096);
  *(v0 + 9048) = v10;
  v11 = *(v0 + 5144);
  v13 = *(v0 + 5096);
  v12 = *(v0 + 5112);
  v14 = *(v0 + 5128);
  *(v0 + 9064) = v14;
  *(v0 + 9080) = v11;
  v15 = *(v0 + 5176);
  v56 = v9;
  v57[0] = v15;
  *(v57 + 9) = *(v0 + 5185);
  v52 = v13;
  v53 = v12;
  v54 = v14;
  v55 = v7;
  sub_71E60(v0 + 9032, v0 + 8808);
  v16 = sub_10CEDC(&v41, &v52);
  *(v0 + 9448) = v16;
  v17 = v57[0];
  *(v0 + 8984) = v56;
  *(v0 + 9000) = v17;
  *(v0 + 9009) = *(v57 + 9);
  v18 = v53;
  *(v0 + 8920) = v52;
  *(v0 + 8936) = v18;
  v19 = v55;
  *(v0 + 8952) = v54;
  *(v0 + 8968) = v19;
  sub_725F0(v0 + 8920);
  v20 = v50[0];
  v21 = v49;
  v22 = v50[0];
  *(v0 + 8232) = v49;
  *(v0 + 8248) = v20;
  *(v0 + 8259) = *(v50 + 11);
  v23 = v46;
  v24 = v45;
  v25 = v46;
  *(v0 + 8168) = v45;
  *(v0 + 8184) = v23;
  v26 = v48;
  v28 = v47;
  v27 = v48;
  *(v0 + 8200) = v47;
  *(v0 + 8216) = v26;
  v29 = v42;
  v30 = v41;
  v31 = v42;
  *(v0 + 8104) = v41;
  *(v0 + 8120) = v29;
  v32 = v44;
  v34 = v43;
  v33 = v44;
  *(v0 + 8136) = v43;
  *(v0 + 8152) = v32;
  *(v0 + 7512) = v21;
  *(v0 + 7528) = v22;
  *(v0 + 7539) = *(v50 + 11);
  *(v0 + 7448) = v24;
  *(v0 + 7464) = v25;
  *(v0 + 7480) = v28;
  *(v0 + 7496) = v27;
  *(v0 + 7384) = v30;
  *(v0 + 7400) = v31;
  *(v0 + 7416) = v34;
  *(v0 + 7432) = v33;
  *(v0 + 7560) = v16;
  *(v0 + 9304) = _swiftEmptyArrayStorage;
  *(v0 + 9288) = _swiftEmptySetSingleton;
  v35 = *(v0 + 3880);
  v36 = v1[31];
  v37 = v1[32];
  sub_2698(v1 + 28, v36);
  memcpy((v0 + 1216), (v0 + 3456), 0x460uLL);
  v40 = (*(v37 + 8) + **(v37 + 8));
  v38 = swift_task_alloc();
  *(v0 + 9456) = v38;
  *v38 = v0;
  v38[1] = sub_1095D8;

  return v40(v0 + 1216, v35, v36, v37);
}

uint64_t sub_1095D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 9464) = a1;
  *(v3 + 9472) = v1;

  if (v1)
  {
    sub_42F48(v3 + 7384, &qword_22CD40, &unk_1C9160);
    v4 = sub_10C050;
  }

  else
  {
    v4 = sub_10970C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_10970C()
{
  v47 = v0;
  v0[1185] = OBJC_IVAR____TtC20BooksPersonalization39InternalCollectionRecommendationService_logger;

  v1 = sub_1B4624();
  v2 = sub_1B4DB4();

  v45 = v0;
  v41 = v0 + 512;
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[1183];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    v6 = sub_10D63C(v3);
    v8 = sub_60FF4(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "seedBooksByID=%s", v4, 0xCu);
    sub_2BF8(v5);
  }

  v9 = v0[1177];
  v10 = sub_15A438(v0[1183]);

  sub_2B0C(&qword_228468, &qword_1B6378);
  result = sub_1B5294();
  v12 = result;
  v13 = 0;
  v0[1186] = result;
  v15 = v10 + 64;
  v14 = *(v10 + 64);
  v43 = result;
  v44 = v10;
  v16 = 1 << *(v10 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v42 = result + 8;
  if ((v17 & v14) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_12:
      v23 = v20 | (v13 << 6);
      v24 = v0[1178];
      v25 = v45[1176];
      v26 = *(*(v44 + 48) + v23);
      (*(v9 + 16))(v24, *(v44 + 56) + *(v9 + 72) * v23, v25);
      sub_1B4394();
      v0 = v45;
      result = (*(v9 + 8))(v24, v25);
      *(v42 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v43[6] + v23) = v26;
      *(v43[7] + 8 * v23) = v45[1162];
      v27 = v43[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v12 = v43;
      v43[2] = v29;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v19)
      {
        break;
      }

      v22 = *(v15 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    v30 = sub_1B4624();
    v31 = sub_1B4DB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315650;
      *(v32 + 4) = sub_60FF4(0x6E656D6D6F636572, 0xEF293A726F662864, &v46);
      *(v32 + 12) = 2048;
      v34 = *(v12 + 16);
      if (v34)
      {
        v35 = sub_3A9D8(0);
        if (v36)
        {
          v34 = *(*(*(v12 + 56) + 8 * v35) + 16);
        }

        else
        {
          v34 = 0;
        }
      }

      *(v32 + 14) = v34;
      *(v32 + 22) = 2048;
      v37 = *(v12 + 16);
      if (v37)
      {
        v38 = sub_3A9D8(1);
        if (v39)
        {
          v37 = *(*(*(v12 + 56) + 8 * v38) + 16);
        }

        else
        {
          v37 = 0;
        }
      }

      *(v32 + 24) = v37;

      _os_log_impl(&dword_0, v30, v31, "%s\nseed books=%ld\nseed audiobooks=%ld", v32, 0x20u);
      sub_2BF8(v33);

      v0 = v45;
    }

    else
    {
    }

    memcpy(v0 + 712, v0 + 432, 0x460uLL);
    *(v41 + 3281) = *(v41 + 3792);
    v40 = swift_task_alloc();
    v0[1187] = v40;
    *v40 = v0;
    v40[1] = sub_109C04;

    return sub_132A78(v12, (v0 + 712), v41 + 3281);
  }

  return result;
}

uint64_t sub_109C04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 9504) = a1;
  *(v3 + 9512) = v1;

  if (v1)
  {
    sub_42F48(v3 + 7384, &qword_22CD40, &unk_1C9160);

    v4 = sub_10C0FC;
  }

  else
  {

    v4 = sub_109D6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_109D6C()
{
  v74 = v0;
  v1 = (v0 + 9144);
  *(v0 + 9176) = 0;
  *(v0 + 9144) = 0u;
  *(v0 + 9160) = 0u;
  sub_43050(v0 + 7384, v0 + 7568, &qword_22CD40, &unk_1C9160);

  v2 = *(v0 + 8248);
  *(v0 + 8056) = *(v0 + 8232);
  *(v0 + 8072) = v2;
  *(v0 + 8083) = *(v0 + 8259);
  v3 = *(v0 + 8184);
  *(v0 + 7992) = *(v0 + 8168);
  *(v0 + 8008) = v3;
  v4 = *(v0 + 8216);
  *(v0 + 8024) = *(v0 + 8200);
  *(v0 + 8040) = v4;
  v5 = *(v0 + 8120);
  *(v0 + 7928) = *(v0 + 8104);
  *(v0 + 7944) = v5;
  v6 = *(v0 + 8152);
  *(v0 + 7960) = *(v0 + 8136);
  *(v0 + 7976) = v6;
  if (sub_72A74(v0 + 7928) == 1)
  {
    *(v0 + 9536) = 0;
    v7 = *(v0 + 9448);
    if (v7)
    {
      if (*(v7 + 16))
      {
        v71 = *(v0 + 9504);
        v8 = *(v0 + 9480);
        v9 = *(v0 + 9400);
        v10 = *(v0 + 9392);
        v11 = *(v0 + 9384);
        v12 = *(v0 + 9336);
        v69 = *(v0 + 9288);
        sub_2B0C(&qword_22CD50, &unk_1C9178);
        v13 = swift_allocObject();
        *(v0 + 9544) = v13;
        *(v13 + 16) = xmmword_1C00D0;
        *(v13 + 32) = 1;
        *(v13 + 40) = sub_A0D1C(&off_2134A8);
        *(v13 + 48) = 2;
        *(v13 + 56) = sub_A0D1C(&off_2134D0);
        *(v13 + 64) = 4;
        *(v13 + 72) = sub_A0D1C(&off_2134F8);
        *(v13 + 80) = 5;
        *(v13 + 88) = sub_A0D1C(&off_213520);
        sub_404C4(v12 + 264, v0 + 9184);
        (*(v10 + 16))(v9, v12 + v8, v11);
        v14 = sub_2B0C(&qword_22B498, &qword_1C3A60);
        v15 = sub_2B0C(&qword_22C810, &qword_1C7038);
        v16 = swift_task_alloc();
        *(v0 + 9552) = v16;
        v16[2] = v13;
        v16[3] = v7;
        v16[4] = v71;
        v16[5] = v69;
        v16[6] = v0 + 9184;
        v16[7] = v0 + 3456;
        v16[8] = v9;
        v17 = swift_task_alloc();
        *(v0 + 9560) = v17;
        *v17 = v0;
        v17[1] = sub_10B64C;
        v76 = v15;

        return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 9312, v14, v15, 0, 0, &unk_1C9190, v16, v14);
      }

      sub_2B54(v0 + 3456);
      sub_5F428(_swiftEmptyArrayStorage);
    }

    else
    {

      sub_2B54(v0 + 3456);
    }

    v26 = *(v0 + 9304);
    v27 = *(v26 + 16);
    if (*(v0 + 9536))
    {
      if (!v27)
      {

        swift_willThrow();
        sub_42F48(v0 + 9144, &qword_22CD48, &qword_1C9170);

        v28 = *(v0 + 8);
LABEL_39:

        return v28();
      }
    }

    else if (!v27)
    {
      v30 = _swiftEmptyArrayStorage;
      goto LABEL_28;
    }

    v29 = *(v0 + 9352);
    *&v73 = _swiftEmptyArrayStorage;
    sub_375B4(0, v27, 0);
    v30 = _swiftEmptyArrayStorage;
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = v26 + v31;
    v33 = *(v29 + 72);
    while (2)
    {
      v34 = *(v0 + 9368);
      v35 = *(v0 + 9360);
      sub_FF9B8(v32, v34);
      sub_FF9B8(v34, v35);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v36 = *(v0 + 9360);
          v45 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy((v0 + 6816), (v36 + *(v45 + 48)), 0x231uLL);
          sub_2601C(v0 + 6816);

          goto LABEL_20;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v36 = *(v0 + 9360);
LABEL_20:
          v37 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v37 - 8) + 8))(v36, v37);
          goto LABEL_21;
        case 8u:
          v41 = *(v0 + 9376);
          v42 = *(v0 + 9368);
          v43 = *(v0 + 9360);
          v44 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v44 - 8) + 8))(v43, v44);
          sub_10E834(v41);
          sub_5DC0C(v42);
          goto LABEL_22;
        default:
          sub_5DC0C(*(v0 + 9360));
LABEL_21:
          sub_11FE3C(*(v0 + 9368), *(v0 + 9376), type metadata accessor for CollectionRecommendation);
LABEL_22:
          *&v73 = v30;
          v39 = v30[2];
          v38 = v30[3];
          if (v39 >= v38 >> 1)
          {
            sub_375B4((v38 > 1), v39 + 1, 1);
            v30 = v73;
          }

          v40 = *(v0 + 9376);
          v30[2] = v39 + 1;
          sub_11FE3C(v40, v30 + v31 + v39 * v33, type metadata accessor for CollectionRecommendation);
          v32 += v33;
          if (--v27)
          {
            continue;
          }

          v1 = (v0 + 9144);
          break;
      }

      break;
    }

LABEL_28:

    v46 = *(v0 + 9168);
    if (v46)
    {
      v47 = *(v0 + 9176);
      v48 = sub_2698(v1, *(v0 + 9168));
      v49 = *(v46 - 8);
      v50 = swift_task_alloc();
      (*(v49 + 16))(v50, v48, v46);
      v72 = (*(v47 + 32))(v46, v47);
      (*(v49 + 8))(v50, v46);

      v51 = *(v0 + 9168);
      if (v51)
      {
        v52 = *(v0 + 9176);
        v53 = sub_2698(v1, *(v0 + 9168));
        v54 = *(v51 - 8);
        v55 = swift_task_alloc();
        (*(v54 + 16))(v55, v53, v51);
        v46 = (*(v52 + 40))(v51, v52);
        (*(v54 + 8))(v55, v51);

        v56 = *(v0 + 9168);
        if (v56)
        {
          v57 = *(v0 + 9176);
          v58 = sub_2698(v1, *(v0 + 9168));
          v59 = *(v56 - 8);
          v60 = swift_task_alloc();
          (*(v59 + 16))(v60, v58, v56);
          (*(v57 + 16))(v56, v57);
          (*(v59 + 8))(v60, v56);

LABEL_35:
          v61 = *(v0 + 9168);
          if (v61)
          {
            v62 = *(v0 + 9176);
            v63 = sub_2698(v1, *(v0 + 9168));
            v64 = v1;
            v65 = *(v61 - 8);
            v66 = swift_task_alloc();
            (*(v65 + 16))(v66, v63, v61);
            (*(v62 + 24))(&v73, v61, v62);

            (*(v65 + 8))(v66, v61);
            v70 = v73;
          }

          else
          {

            v70 = 0u;
            v64 = v1;
          }

          v67 = *(v0 + 9328);
          *v67 = v30;
          *(v67 + 8) = v72;
          *(v67 + 16) = v46;
          memcpy((v67 + 24), (v0 + 16), 0x4B0uLL);
          *(v67 + 1224) = v70;
          sub_42F48(v64, &qword_22CD48, &qword_1C9170);

          v28 = *(v0 + 8);
          goto LABEL_39;
        }
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v72 = 0;
    }

    sub_11C530((v0 + 16));
    goto LABEL_35;
  }

  v18 = *(v0 + 8072);
  *(v0 + 8408) = *(v0 + 8056);
  *(v0 + 8424) = v18;
  *(v0 + 8435) = *(v0 + 8083);
  v19 = *(v0 + 8008);
  *(v0 + 8344) = *(v0 + 7992);
  *(v0 + 8360) = v19;
  v20 = *(v0 + 8040);
  *(v0 + 8376) = *(v0 + 8024);
  *(v0 + 8392) = v20;
  v21 = *(v0 + 7944);
  *(v0 + 8280) = *(v0 + 7928);
  *(v0 + 8296) = v21;
  v22 = *(v0 + 7976);
  *(v0 + 8312) = *(v0 + 7960);
  *(v0 + 8328) = v22;
  memcpy((v0 + 2336), (v0 + 3456), 0x460uLL);
  *(v0 + 9248) = &type metadata for InternalCollectionRecommendationResponse;
  *(v0 + 9256) = sub_11FADC();
  v23 = swift_allocObject();
  *(v0 + 9224) = v23;
  v24 = swift_task_alloc();
  *(v0 + 9520) = v24;
  *v24 = v0;
  v24[1] = sub_10A8E8;
  v25 = *(v0 + 9504);

  return sub_10D8D0(v23 + 16, (v0 + 8280), (v0 + 2336), v25);
}

uint64_t sub_10A8E8()
{
  v2 = *v1;
  *(*v1 + 9528) = v0;

  if (v0)
  {
    v3 = sub_10C1A8;
  }

  else
  {
    sub_42F48(v2 + 8104, &qword_22CD68, &unk_1C91A8);
    v3 = sub_10AA18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10AA18()
{
  v72 = v0;
  sub_11FD10((v0 + 1153), (v0 + 1143));
  v1 = v0[1146];
  if (v1)
  {
    v2 = v0[1147];
    v3 = sub_2698(v0 + 1143, v0[1146]);
    v4 = *(v1 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v1);
    v6 = (*(*(v2 + 8) + 24))(v1);
    (*(v4 + 8))(v5, v1);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_5F428(v6);
  v7 = v0[1146];
  if (v7)
  {
    v8 = v0[1147];
    v9 = sub_2698(v0 + 1143, v0[1146]);
    v10 = *(v7 - 8);
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11, v9, v7);
    (*(v8 + 24))(&v71, v7, v8);
    (*(v10 + 8))(v11, v7);
    v12 = v71;
    if (v71)
    {
      v13 = *(&v71 + 1);

      sub_11C1C4(v12, v13);

      sub_492E8(v13);
      sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
    }

    else
    {
      sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
    }
  }

  else
  {
    sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
  }

  v0[1192] = 0;
  v14 = v0[1181];
  if (v14)
  {
    if (*(v14 + 16))
    {
      v69 = v0[1188];
      v15 = v0[1185];
      v16 = v0[1175];
      v17 = v0[1174];
      v18 = v0[1173];
      v19 = v0[1167];
      v67 = v0[1161];
      sub_2B0C(&qword_22CD50, &unk_1C9178);
      v20 = swift_allocObject();
      v0[1193] = v20;
      *(v20 + 16) = xmmword_1C00D0;
      *(v20 + 32) = 1;
      *(v20 + 40) = sub_A0D1C(&off_2134A8);
      *(v20 + 48) = 2;
      *(v20 + 56) = sub_A0D1C(&off_2134D0);
      *(v20 + 64) = 4;
      *(v20 + 72) = sub_A0D1C(&off_2134F8);
      *(v20 + 80) = 5;
      *(v20 + 88) = sub_A0D1C(&off_213520);
      sub_404C4(v19 + 264, (v0 + 1148));
      (*(v17 + 16))(v16, v19 + v15, v18);
      v21 = sub_2B0C(&qword_22B498, &qword_1C3A60);
      v22 = sub_2B0C(&qword_22C810, &qword_1C7038);
      v23 = swift_task_alloc();
      v0[1194] = v23;
      v23[2] = v20;
      v23[3] = v14;
      v23[4] = v69;
      v23[5] = v67;
      v23[6] = v0 + 1148;
      v23[7] = v0 + 432;
      v23[8] = v16;
      v24 = swift_task_alloc();
      v0[1195] = v24;
      *v24 = v0;
      v24[1] = sub_10B64C;
      v74 = v22;

      return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1164, v21, v22, 0, 0, &unk_1C9190, v23, v21);
    }

    sub_2B54((v0 + 432));
    sub_5F428(_swiftEmptyArrayStorage);
  }

  else
  {

    sub_2B54((v0 + 432));
  }

  v25 = v0[1163];
  v26 = *(v25 + 16);
  if (!v0[1192])
  {
    if (v26)
    {
      goto LABEL_20;
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_32:

    v45 = v0[1146];
    if (v45)
    {
      v46 = v0[1147];
      v47 = sub_2698(v0 + 1143, v0[1146]);
      v48 = *(v45 - 8);
      v49 = swift_task_alloc();
      (*(v48 + 16))(v49, v47, v45);
      v70 = (*(v46 + 32))(v45, v46);
      (*(v48 + 8))(v49, v45);

      v50 = v0[1146];
      if (v50)
      {
        v51 = v0[1147];
        v52 = sub_2698(v0 + 1143, v0[1146]);
        v53 = *(v50 - 8);
        v54 = swift_task_alloc();
        (*(v53 + 16))(v54, v52, v50);
        v45 = (*(v51 + 40))(v50, v51);
        (*(v53 + 8))(v54, v50);

        v55 = v0[1146];
        if (v55)
        {
          v56 = v0[1147];
          v57 = sub_2698(v0 + 1143, v0[1146]);
          v58 = *(v55 - 8);
          v59 = swift_task_alloc();
          (*(v58 + 16))(v59, v57, v55);
          (*(v56 + 16))(v55, v56);
          (*(v58 + 8))(v59, v55);

LABEL_39:
          v60 = v0[1146];
          if (v60)
          {
            v61 = v0[1147];
            v62 = sub_2698(v0 + 1143, v0[1146]);
            v63 = *(v60 - 8);
            v64 = swift_task_alloc();
            (*(v63 + 16))(v64, v62, v60);
            (*(v61 + 24))(&v71, v60, v61);

            (*(v63 + 8))(v64, v60);
            v68 = v71;
          }

          else
          {

            v68 = 0u;
          }

          v65 = v0[1166];
          *v65 = v29;
          *(v65 + 8) = v70;
          *(v65 + 16) = v45;
          memcpy((v65 + 24), v0 + 2, 0x4B0uLL);
          *(v65 + 1224) = v68;
          sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

          v27 = v0[1];
          goto LABEL_43;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    sub_11C530(v0 + 2);
    goto LABEL_39;
  }

  if (v26)
  {
LABEL_20:
    v28 = v0[1169];
    *&v71 = _swiftEmptyArrayStorage;
    sub_375B4(0, v26, 0);
    v29 = v71;
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = v25 + v30;
    v32 = *(v28 + 72);
    while (2)
    {
      v33 = v0[1171];
      v34 = v0[1170];
      sub_FF9B8(v31, v33);
      sub_FF9B8(v33, v34);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v35 = v0[1170];
          v44 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v0 + 852, (v35 + *(v44 + 48)), 0x231uLL);
          sub_2601C((v0 + 852));

          goto LABEL_24;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v35 = v0[1170];
LABEL_24:
          v36 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v36 - 8) + 8))(v35, v36);
          goto LABEL_25;
        case 8u:
          v40 = v0[1172];
          v41 = v0[1171];
          v42 = v0[1170];
          v43 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v43 - 8) + 8))(v42, v43);
          sub_10E834(v40);
          sub_5DC0C(v41);
          goto LABEL_26;
        default:
          sub_5DC0C(v0[1170]);
LABEL_25:
          sub_11FE3C(v0[1171], v0[1172], type metadata accessor for CollectionRecommendation);
LABEL_26:
          *&v71 = v29;
          v38 = v29[2];
          v37 = v29[3];
          if (v38 >= v37 >> 1)
          {
            sub_375B4((v37 > 1), v38 + 1, 1);
            v29 = v71;
          }

          v39 = v0[1172];
          v29[2] = v38 + 1;
          sub_11FE3C(v39, v29 + v30 + v38 * v32, type metadata accessor for CollectionRecommendation);
          v31 += v32;
          if (!--v26)
          {
            goto LABEL_32;
          }

          continue;
      }
    }
  }

  swift_willThrow();
  sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

  v27 = v0[1];
LABEL_43:

  return v27();
}

uint64_t sub_10B64C()
{

  swift_setDeallocating();
  sub_2B0C(&qword_22CD58, &qword_1C9198);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10B7C0, 0, 0);
}

uint64_t sub_10B7C0()
{
  v47 = v0;
  v1 = v0[1164];
  (*(v0[1174] + 8))(v0[1175], v0[1173]);
  sub_2BF8(v0 + 1148);

  sub_2B54((v0 + 432));
  sub_5F428(v1);
  v2 = v0[1163];
  v3 = *(v2 + 16);
  if (!v0[1192])
  {
    if (v3)
    {
      goto LABEL_5;
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_17:

    v22 = v0[1146];
    if (v22)
    {
      v23 = v0[1147];
      v24 = sub_2698(v0 + 1143, v0[1146]);
      v25 = *(v22 - 8);
      v26 = swift_task_alloc();
      (*(v25 + 16))(v26, v24, v22);
      v45 = (*(v23 + 32))(v22, v23);
      (*(v25 + 8))(v26, v22);

      v27 = v0[1146];
      if (v27)
      {
        v28 = v0[1147];
        v29 = sub_2698(v0 + 1143, v0[1146]);
        v30 = *(v27 - 8);
        v31 = swift_task_alloc();
        (*(v30 + 16))(v31, v29, v27);
        v22 = (*(v28 + 40))(v27, v28);
        (*(v30 + 8))(v31, v27);

        v32 = v0[1146];
        if (v32)
        {
          v33 = v0[1147];
          v34 = sub_2698(v0 + 1143, v0[1146]);
          v35 = *(v32 - 8);
          v36 = swift_task_alloc();
          (*(v35 + 16))(v36, v34, v32);
          (*(v33 + 16))(v32, v33);
          (*(v35 + 8))(v36, v32);

LABEL_24:
          v37 = v0[1146];
          if (v37)
          {
            v38 = v0[1147];
            v39 = sub_2698(v0 + 1143, v0[1146]);
            v40 = *(v37 - 8);
            v41 = swift_task_alloc();
            (*(v40 + 16))(v41, v39, v37);
            (*(v38 + 24))(&v46, v37, v38);

            (*(v40 + 8))(v41, v37);
            v44 = v46;
          }

          else
          {

            v44 = 0u;
          }

          v42 = v0[1166];
          *v42 = v6;
          *(v42 + 8) = v45;
          *(v42 + 16) = v22;
          memcpy((v42 + 24), v0 + 2, 0x4B0uLL);
          *(v42 + 1224) = v44;
          sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

          v4 = v0[1];
          goto LABEL_28;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v45 = 0;
    }

    sub_11C530(v0 + 2);
    goto LABEL_24;
  }

  if (v3)
  {
LABEL_5:
    v5 = v0[1169];
    *&v46 = _swiftEmptyArrayStorage;
    sub_375B4(0, v3, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = v2 + v7;
    v9 = *(v5 + 72);
    while (2)
    {
      v10 = v0[1171];
      v11 = v0[1170];
      sub_FF9B8(v8, v10);
      sub_FF9B8(v10, v11);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v12 = v0[1170];
          v21 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v0 + 852, (v12 + *(v21 + 48)), 0x231uLL);
          sub_2601C((v0 + 852));

          goto LABEL_9;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v12 = v0[1170];
LABEL_9:
          v13 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v13 - 8) + 8))(v12, v13);
          goto LABEL_10;
        case 8u:
          v17 = v0[1172];
          v18 = v0[1171];
          v19 = v0[1170];
          v20 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v20 - 8) + 8))(v19, v20);
          sub_10E834(v17);
          sub_5DC0C(v18);
          goto LABEL_11;
        default:
          sub_5DC0C(v0[1170]);
LABEL_10:
          sub_11FE3C(v0[1171], v0[1172], type metadata accessor for CollectionRecommendation);
LABEL_11:
          *&v46 = v6;
          v15 = v6[2];
          v14 = v6[3];
          if (v15 >= v14 >> 1)
          {
            sub_375B4((v14 > 1), v15 + 1, 1);
            v6 = v46;
          }

          v16 = v0[1172];
          v6[2] = v15 + 1;
          sub_11FE3C(v16, v6 + v7 + v15 * v9, type metadata accessor for CollectionRecommendation);
          v8 += v9;
          if (!--v3)
          {
            goto LABEL_17;
          }

          continue;
      }
    }
  }

  swift_willThrow();
  sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

  v4 = v0[1];
LABEL_28:

  return v4();
}

uint64_t sub_10BFAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10C050()
{
  sub_2B54(v0 + 3456);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10C0FC()
{
  sub_2B54(v0 + 3456);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10C1A8()
{
  v70 = v0;
  v1 = (v0 + 432);
  v2 = v0[1191];
  sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
  sub_11FCC0(v0 + 1153);
  swift_errorRetain();
  v3 = sub_1B4624();
  v4 = sub_1B4D94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v69[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B5794();
    v9 = v8;

    v10 = sub_60FF4(v7, v9, v69);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "Error deriving recommendations %s", v5, 0xCu);
    sub_2BF8(v6);

    v1 = (v0 + 432);
  }

  else
  {
  }

  sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
  v0[1192] = v2;
  v11 = v0[1181];
  if (v11)
  {
    if (*(v11 + 16))
    {
      v67 = v0[1188];
      v12 = v0[1185];
      v13 = v0[1175];
      v14 = v0[1174];
      v65 = v1;
      v15 = v0[1173];
      v16 = v0[1167];
      v17 = v0[1161];
      sub_2B0C(&qword_22CD50, &unk_1C9178);
      v18 = swift_allocObject();
      v0[1193] = v18;
      *(v18 + 16) = xmmword_1C00D0;
      *(v18 + 32) = 1;
      *(v18 + 40) = sub_A0D1C(&off_2134A8);
      *(v18 + 48) = 2;
      *(v18 + 56) = sub_A0D1C(&off_2134D0);
      *(v18 + 64) = 4;
      *(v18 + 72) = sub_A0D1C(&off_2134F8);
      *(v18 + 80) = 5;
      *(v18 + 88) = sub_A0D1C(&off_213520);
      sub_404C4(v16 + 264, (v0 + 1148));
      (*(v14 + 16))(v13, v16 + v12, v15);
      v19 = sub_2B0C(&qword_22B498, &qword_1C3A60);
      v20 = sub_2B0C(&qword_22C810, &qword_1C7038);
      v21 = swift_task_alloc();
      v0[1194] = v21;
      v21[2] = v18;
      v21[3] = v11;
      v21[4] = v67;
      v21[5] = v17;
      v21[6] = v0 + 1148;
      v21[7] = v65;
      v21[8] = v13;
      v22 = swift_task_alloc();
      v0[1195] = v22;
      *v22 = v0;
      v22[1] = sub_10B64C;
      v72 = v20;

      return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1164, v19, v20, 0, 0, &unk_1C9190, v21, v19);
    }

    sub_2B54(v1);
    sub_5F428(_swiftEmptyArrayStorage);
  }

  else
  {

    sub_2B54(v1);
  }

  v23 = v0[1163];
  v24 = *(v23 + 16);
  if (!v0[1192])
  {
    if (v24)
    {
      goto LABEL_15;
    }

    v27 = _swiftEmptyArrayStorage;
LABEL_27:

    v43 = v0[1146];
    if (v43)
    {
      v44 = v0[1147];
      v45 = sub_2698(v0 + 1143, v0[1146]);
      v46 = *(v43 - 8);
      v47 = swift_task_alloc();
      (*(v46 + 16))(v47, v45, v43);
      v68 = (*(v44 + 32))(v43, v44);
      (*(v46 + 8))(v47, v43);

      v48 = v0[1146];
      if (v48)
      {
        v49 = v0[1147];
        v50 = sub_2698(v0 + 1143, v0[1146]);
        v51 = *(v48 - 8);
        v52 = swift_task_alloc();
        (*(v51 + 16))(v52, v50, v48);
        v43 = (*(v49 + 40))(v48, v49);
        (*(v51 + 8))(v52, v48);

        v53 = v0[1146];
        if (v53)
        {
          v54 = v0[1147];
          v55 = sub_2698(v0 + 1143, v0[1146]);
          v56 = *(v53 - 8);
          v57 = swift_task_alloc();
          (*(v56 + 16))(v57, v55, v53);
          (*(v54 + 16))(v53, v54);
          (*(v56 + 8))(v57, v53);

LABEL_34:
          v58 = v0[1146];
          if (v58)
          {
            v59 = v0[1147];
            v60 = sub_2698(v0 + 1143, v0[1146]);
            v61 = *(v58 - 8);
            v62 = swift_task_alloc();
            (*(v61 + 16))(v62, v60, v58);
            (*(v59 + 24))(v69, v58, v59);

            (*(v61 + 8))(v62, v58);
            v66 = *v69;
          }

          else
          {

            v66 = 0u;
          }

          v63 = v0[1166];
          *v63 = v27;
          *(v63 + 8) = v68;
          *(v63 + 16) = v43;
          memcpy((v63 + 24), v0 + 2, 0x4B0uLL);
          *(v63 + 1224) = v66;
          sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

          v25 = v0[1];
          goto LABEL_38;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v68 = 0;
    }

    sub_11C530(v0 + 2);
    goto LABEL_34;
  }

  if (v24)
  {
LABEL_15:
    v26 = v0[1169];
    v69[0] = _swiftEmptyArrayStorage;
    sub_375B4(0, v24, 0);
    v27 = v69[0];
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = v23 + v28;
    v30 = *(v26 + 72);
    while (2)
    {
      v31 = v0[1171];
      v32 = v0[1170];
      sub_FF9B8(v29, v31);
      sub_FF9B8(v31, v32);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v33 = v0[1170];
          v42 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v0 + 852, (v33 + *(v42 + 48)), 0x231uLL);
          sub_2601C((v0 + 852));

          goto LABEL_19;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v33 = v0[1170];
LABEL_19:
          v34 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v34 - 8) + 8))(v33, v34);
          goto LABEL_20;
        case 8u:
          v38 = v0[1172];
          v39 = v0[1171];
          v40 = v0[1170];
          v41 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v41 - 8) + 8))(v40, v41);
          sub_10E834(v38);
          sub_5DC0C(v39);
          goto LABEL_21;
        default:
          sub_5DC0C(v0[1170]);
LABEL_20:
          sub_11FE3C(v0[1171], v0[1172], type metadata accessor for CollectionRecommendation);
LABEL_21:
          v69[0] = v27;
          v36 = v27[2];
          v35 = v27[3];
          if (v36 >= v35 >> 1)
          {
            sub_375B4((v35 > 1), v36 + 1, 1);
            v27 = v69[0];
          }

          v37 = v0[1172];
          v27[2] = v36 + 1;
          sub_11FE3C(v37, v27 + v28 + v36 * v30, type metadata accessor for CollectionRecommendation);
          v29 += v30;
          if (!--v24)
          {
            goto LABEL_27;
          }

          continue;
      }
    }
  }

  swift_willThrow();
  sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

  v25 = v0[1];
LABEL_38:

  return v25();
}

void sub_10CD10(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = sub_1B48C4();
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2;
  }

  v8 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = v8 | (v7 << 16);
  v10 = sub_1B48B4();
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1B4964();
    v13 = sub_1B4864();
    v15 = v14;

    v16 = sub_1B4624();
    v17 = sub_1B4DB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      v20 = sub_60FF4(v13, v15, &v21);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_0, v16, v17, "CollectionRecommendationRequest=%s", v18, 0xCu);
      sub_2BF8(v19);
    }

    else
    {
    }
  }
}

void *sub_10CEDC(_OWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v84 = *(a2 + 32);
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[6];
  v117 = v2[7];
  *v118 = v5;
  *&v118[16] = v6;
  *&v118[27] = *(v2 + 155);
  v8 = v2[5];
  v114 = v2[4];
  v115 = v8;
  v116 = v7;
  v9 = v2[1];
  v110 = *v2;
  v111 = v9;
  v10 = v2[3];
  v112 = v2[2];
  v113 = v10;
  v109 = _swiftEmptySetSingleton;
  v11 = *v118;
  v12 = *v118 + 64;
  v13 = 1 << *(*v118 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(*v118 + 64);
  v16 = (v13 + 63) >> 6;
  v85 = v4;
  v91 = v4 + 32;
  v83 = v3;
  v88 = v3 + 32;

  v17 = 0;
  v18 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    v87 = v18;
    if (v15)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_6:
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v19 >= v16)
      {

        v62 = v109;
        v97 = v112;
        v98 = v113;
        v92 = *(&v114 + 1);
        v99 = v114;
        v95 = v110;
        v96 = v111;
        v63 = v117;
        *&v94[15] = *&v118[39];
        v93 = *&v118[8];
        *v94 = *&v118[24];
        v64 = v11;
        v65 = *(&v115 + 1);
        v66 = v115;
        v67 = v116;

        sub_101924(&v110, &v100);

        v68 = sub_11F82C(v65, v62);

        swift_bridgeObjectRelease_n();

        v69 = sub_11F82C(v64, v62);

        swift_bridgeObjectRelease_n();
        v102 = v97;
        v103 = v98;
        v100 = v95;
        v101 = v96;
        *(&v108[2] + 7) = *&v94[15];
        *(&v108[1] + 8) = *v94;
        *&v104 = v99;
        *(&v104 + 1) = v92;
        *&v105 = v66;
        *(&v105 + 1) = v68;
        v106 = v67;
        v107 = v63;
        *&v108[0] = v69;
        *(v108 + 8) = v93;
        AuthorRecommendationSource.id.getter();
        v70 = v108[1];
        a1[8] = v108[0];
        a1[9] = v70;
        *(a1 + 155) = *(&v108[1] + 11);
        v71 = v105;
        a1[4] = v104;
        a1[5] = v71;
        v72 = v107;
        a1[6] = v106;
        a1[7] = v72;
        v73 = v101;
        *a1 = v100;
        a1[1] = v73;
        v74 = v103;
        a1[2] = v102;
        a1[3] = v74;
        return v87;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
    }

    while (!v15);
    v17 = v19;
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = *(*(v11 + 48) + v21);
      v23 = *(v11 + 56) + 24 * v21;
      v24 = v118[42];
      if (v118[42] != 7)
      {
        if (v118[42] != 8)
        {
          v79 = *v23;
          v80 = *(v23 + 8);
          goto LABEL_51;
        }

        if (v22 <= 6)
        {
          if (v22 > 3 && v22 != 5)
          {
            v79 = *v23;
            v80 = *(v23 + 8);
            if (v22 == 4)
            {
              v24 = 1;
            }

            else
            {
              v24 = 2;
            }

            goto LABEL_51;
          }

          goto LABEL_29;
        }

        if ((v22 - 9) >= 4)
        {
          break;
        }
      }

LABEL_29:

LABEL_30:
      sub_112BEC(&v100, v22);

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    if (v22 != 7)
    {
      if ((v84 & 1) == 0)
      {
        v79 = *v23;
        v80 = *(v23 + 8);
        v24 = 5;
LABEL_51:

        goto LABEL_52;
      }

      goto LABEL_29;
    }

    v79 = *v23;
    v80 = *(v23 + 8);
    v81 = *(v23 + 16);

    v25 = sub_1B4CC4();
    v26 = v25;
    v89 = *(v85 + 16);
    if (v89)
    {
      v77 = v11;
      v27 = 0;
      v28 = v25 + 56;
      do
      {
        while (1)
        {
          v29 = *(v91 + 8 * v27++);
          v30 = sub_1B57E4();
          v31 = -1 << *(v26 + 32);
          v32 = v30 & ~v31;
          if ((*(v28 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            break;
          }

LABEL_22:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v100 = v26;
          sub_115EFC(v29, v32, isUniquelyReferenced_nonNull_native);
          v26 = v100;
          if (v27 == v89)
          {
            goto LABEL_34;
          }

          v28 = v100 + 56;
        }

        v33 = ~v31;
        while (*(*(v26 + 48) + 8 * v32) != v29)
        {
          v32 = (v32 + 1) & v33;
          if (((*(v28 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      while (v27 != v89);
LABEL_34:

      v18 = v87;
      v11 = v77;
      v36 = *(v26 + 16);
      if (!v36)
      {
LABEL_37:

        v37 = sub_1B4CC4();
        v26 = v37;
        v90 = *(v83 + 16);
        if (v90)
        {
          v76 = v36;
          v78 = v11;
          v38 = 0;
          v39 = v37 + 56;
          do
          {
            while (1)
            {
              v40 = *(v88 + 8 * v38++);
              v41 = sub_1B57E4();
              v42 = -1 << *(v26 + 32);
              v43 = v41 & ~v42;
              if ((*(v39 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
              {
                break;
              }

LABEL_44:
              v45 = swift_isUniquelyReferenced_nonNull_native();
              *&v100 = v26;
              sub_115EFC(v40, v43, v45);
              v26 = v100;
              if (v38 == v90)
              {
                goto LABEL_46;
              }

              v39 = v100 + 56;
            }

            v44 = ~v42;
            while (*(*(v26 + 48) + 8 * v43) != v40)
            {
              v43 = (v43 + 1) & v44;
              if (((*(v39 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_44;
              }
            }
          }

          while (v38 != v90);
LABEL_46:

          v18 = v87;
          v36 = v76;
          v11 = v78;
        }

        else
        {
        }
      }
    }

    else
    {

      v36 = *(v26 + 16);
      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v46 = sub_FFA1C(10016, v26, v36 != 0);

    if (v46)
    {
      goto LABEL_30;
    }

    v24 = 4;
    v47 = v81;
LABEL_52:
    v82 = v47;

    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v100 = v18;
    v49 = sub_3B1C8(v24);
    v51 = v18[2];
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      goto LABEL_68;
    }

    v55 = v50;
    if (v18[3] >= v54)
    {
      if ((v48 & 1) == 0)
      {
        v61 = v49;
        sub_187944();
        v49 = v61;
      }

LABEL_58:
      v18 = v100;
      if (v55)
      {
        v57 = *(v100 + 56) + 24 * v49;
        *v57 = v79;
        *(v57 + 8) = v80;
        *(v57 + 16) = v82;
      }

      else
      {
        *(v100 + 8 * (v49 >> 6) + 64) |= 1 << v49;
        *(v18[6] + v49) = v24;
        v58 = v18[7] + 24 * v49;
        *v58 = v79;
        *(v58 + 8) = v80;
        *(v58 + 16) = v82;
        v59 = v18[2];
        v53 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v53)
        {
          goto LABEL_69;
        }

        v18[2] = v60;
      }

      continue;
    }

    break;
  }

  sub_1825FC(v54, v48);
  v49 = sub_3B1C8(v24);
  if ((v55 & 1) == (v56 & 1))
  {
    goto LABEL_58;
  }

LABEL_70:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_10D63C(uint64_t a1)
{
  v24 = 0x202020200A5BLL;
  v25 = 0xE600000000000000;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_3503C(*(a1 + 16), 0);
    v4 = sub_43128();

    sub_417B8(v22[0]);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v22[0] = v3;
  sub_A2B24(v22);
  v5 = v22[0];
  v6 = *(v22[0] + 2);
  if (v6)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_3747C(0, v6, 0);
    if (*(a1 + 16))
    {
      v7 = v23;
      v8 = 32;
      while (1)
      {
        v9 = sub_43124(*&v5[v8]);
        if ((v10 & 1) == 0)
        {
          break;
        }

        memcpy(v22, (*(a1 + 56) + 568 * v9), 0x231uLL);
        v11 = sub_14B190();
        v23 = v7;
        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          v16 = v11;
          v17 = v12;
          sub_3747C((v13 > 1), v14 + 1, 1);
          v12 = v17;
          v11 = v16;
          v7 = v23;
        }

        v7[2] = v14 + 1;
        v15 = &v7[2 * v14];
        v15[4] = v11;
        v15[5] = v12;
        if (!--v6)
        {

          goto LABEL_16;
        }

        v8 += 8;
        if (!*(a1 + 16))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
LABEL_16:
    v22[0] = v7;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
    v18 = sub_1B4764();
    v20 = v19;

    v26._countAndFlagsBits = v18;
    v26._object = v20;
    sub_1B48D4(v26);

    v27._countAndFlagsBits = 93;
    v27._object = 0xE100000000000000;
    sub_1B48D4(v27);
    return v24;
  }

  return result;
}

uint64_t sub_10D8D0(uint64_t a1, _OWORD *a2, void *__src, uint64_t a4)
{
  v6 = a2[6];
  *(v5 + 9616) = a2[7];
  v7 = a2[9];
  *(v5 + 9632) = a2[8];
  *(v5 + 9648) = v7;
  v8 = a2[2];
  *(v5 + 9552) = a2[3];
  v9 = a2[5];
  *(v5 + 9568) = a2[4];
  *(v5 + 9584) = v9;
  *(v5 + 9600) = v6;
  v10 = a2[1];
  *(v5 + 9504) = *a2;
  *(v5 + 9520) = v10;
  *(v5 + 9920) = v4;
  *(v5 + 9912) = a4;
  *(v5 + 9904) = __src;
  *(v5 + 9896) = a1;
  *(v5 + 9536) = v8;
  *(v5 + 9659) = *(a2 + 155);
  memcpy((v5 + 2416), __src, 0x460uLL);

  return _swift_task_switch(sub_10D99C, 0, 0);
}

uint64_t sub_10D99C()
{
  v14 = v0;
  memcpy((v0 + 9136), (*(v0 + 9904) + 88), 0x16BuLL);
  if (*(v0 + 9672))
  {
    if (*(*(v0 + 9632) + 16) && (sub_3AA80(2), (v1 & 1) != 0))
    {
      if (*(v0 + 2792) <= *(v0 + 9576))
      {
        v2 = *(v0 + 9576);
      }

      else
      {
        v2 = *(v0 + 2792);
      }
    }

    else
    {
      v2 = *(v0 + 2792);
    }
  }

  else
  {
    v2 = *(v0 + 9664);
  }

  v3 = *(v0 + 9920);
  v4 = *(v0 + 9912);
  v5 = swift_task_alloc();
  v5[2] = v0 + 9504;
  v5[3] = v2;
  v5[4] = v0 + 9136;
  v6 = sub_11AAD0(v4, sub_11FD80, v5);
  *(v0 + 9928) = v6;

  if (*(v0 + 9673) == 2)
  {
    v7 = *(v0 + 2441);
  }

  else
  {
    v7 = *(v0 + 9673);
  }

  sub_2698((v3 + 184), *(v3 + 208));
  v13[0] = v7 & 1;
  sub_16C6D8(v13, v0 + 9848);
  v8 = *(v0 + 9872);
  v9 = *(v0 + 9880);
  sub_2698((v0 + 9848), v8);
  memcpy((v0 + 3536), (v0 + 2416), 0x460uLL);
  v12 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  *(v0 + 9936) = v10;
  *v10 = v0;
  v10[1] = sub_10DC38;

  return v12(v6, v0 + 3536, v8, v9);
}

uint64_t sub_10DC38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 9944) = a1;
  *(v3 + 9952) = v1;

  if (v1)
  {

    v4 = sub_10E740;
  }

  else
  {
    v4 = sub_10DD58;
  }

  return _swift_task_switch(v4, 0, 0);
}

char *sub_10DD58()
{
  v1 = v0[1239];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        result = sub_5EF0C(v9);
      }

      while (v4);
      continue;
    }
  }

  v0[1245] = _swiftEmptyArrayStorage;
  v10 = v0[1204];
  v0[1236] = v10;
  v11 = *(v10 + 16);

  v42 = v1 + 64;
  v43 = v1;
  if (!v11)
  {
    goto LABEL_16;
  }

  sub_3AA80(10);
  if (v12)
  {
    v41 = 1;
    goto LABEL_17;
  }

  if (*(v10 + 16))
  {
    sub_3AA80(11);
    v41 = v13;
  }

  else
  {
LABEL_16:
    v41 = 0;
  }

LABEL_17:
  v14 = v0[1243];
  v15 = v0[1240];
  sub_404C4(v15 + 104, (v0 + 2));
  sub_404C4(v15 + 304, (v0 + 7));
  memcpy(v0 + 12, v0 + 302, 0x460uLL);
  v16 = v14 + 64;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v14 + 64);
  v44 = v14;
  swift_bridgeObjectRetain_n();
  result = sub_84BC0((v0 + 302), (v0 + 582));
  v20 = 0;
  v21 = (63 - v17) >> 6;
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v0[1246] = v22;
    if (!v19)
    {
      break;
    }

LABEL_27:
    v24 = *(*(v44 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    v25 = *(v24 + 16);
    v26 = *(v22 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_55;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v27 > *(v22 + 3) >> 1)
    {
      if (v26 <= v27)
      {
        v28 = v26 + v25;
      }

      else
      {
        v28 = v26;
      }

      result = sub_33358(result, v28, 1, v22);
      v22 = result;
    }

    v19 &= v19 - 1;
    if (*(v24 + 16))
    {
      if ((*(v22 + 3) >> 1) - *(v22 + 2) < v25)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v29 = *(v22 + 2);
        v30 = __OFADD__(v29, v25);
        v31 = v29 + v25;
        if (v30)
        {
          goto LABEL_58;
        }

        *(v22 + 2) = v31;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_56;
      }
    }
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v32 = -1;
      v33 = -1 << *(v43 + 32);
      if (-v33 < 64)
      {
        v32 = ~(-1 << -v33);
      }

      v34 = v32 & *(v43 + 64);
      v35 = (63 - v33) >> 6;

      v36 = 0;
      if (v34)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_54;
        }

        if (v37 >= v35)
        {
          break;
        }

        v34 = *(v42 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          do
          {
LABEL_47:
            v34 &= v34 - 1;

            result = sub_5EF0C(v38);
          }

          while (v34);
          continue;
        }
      }

      v0[1247] = _swiftEmptyArrayStorage;
      v39 = v0[1196];
      v40 = swift_task_alloc();
      v0[1248] = v40;
      *v40 = v0;
      v40[1] = sub_10E1B8;

      return sub_18A3F0(v22, _swiftEmptyArrayStorage, v41 & 1, v39);
    }

    v19 = *(v16 + 8 * v23);
    ++v20;
    if (v19)
    {
      v20 = v23;
      goto LABEL_27;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10E1B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 9992) = v1;

  if (v1)
  {

    v5 = sub_10E7A8;
  }

  else
  {
    *(v4 + 10000) = a1;

    v5 = sub_10E328;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10E328()
{
  sub_2698((v0[1240] + 144), *(v0[1240] + 168));
  memcpy(v0 + 862, v0 + 302, 0x460uLL);
  v1 = swift_task_alloc();
  v0[1251] = v1;
  *v1 = v0;
  v1[1] = sub_10E3EC;

  return GenreMetadataServiceDepthMapGenerator.generateGenreDepthMap(configuration:)((v0 + 862));
}

uint64_t sub_10E3EC(uint64_t a1)
{
  *(*v1 + 10016) = a1;

  return _swift_task_switch(sub_10E4EC, 0, 0);
}

uint64_t sub_10E4EC()
{
  v28 = v0;
  v1 = *(v0 + 1199);
  *(v0 + 605) = *(v0 + 1197);
  v2 = v0[1252];
  v3 = v0[1250];
  v4 = v0[1245];
  v18 = v0[1243];
  v16 = v3;
  v17 = v0[1241];
  v5 = v0[1240];
  v6 = v0[1237];
  v0[1216] = v0[1203];
  *(v0 + 606) = v1;
  *(v0 + 607) = *(v0 + 1201);
  memcpy(v0 + 722, v0 + 302, 0x460uLL);
  v7 = *(v0 + 1199);
  *(v0 + 1217) = *(v0 + 1197);
  *(v0 + 1219) = v7;
  *(v0 + 1221) = *(v0 + 1201);
  v0[1223] = v0[1203];
  v8 = v5[10];
  v9 = v5[11];
  sub_2698(v5 + 7, v8);
  v21[0] = v3;
  v21[1] = v4;
  memcpy(v22, v0 + 722, sizeof(v22));
  v10 = *(v0 + 1219);
  v23 = *(v0 + 1217);
  v24 = v10;
  v25 = *(v0 + 1221);
  v26 = v0[1223];
  v27 = v2;
  v11 = v2;
  v12 = *(v9 + 8);
  sub_84BC0((v0 + 302), (v0 + 1002));
  sub_11FDE0((v0 + 1210), (v0 + 1224));
  v12(&v20, v21, v8, v9);
  sub_42F48((v0 + 1236), &qword_22C580, &qword_1C6F00);
  sub_11FD8C((v0 + 2));
  v19 = v20;
  v0[152] = v16;
  v0[153] = v4;
  memcpy(v0 + 154, v0 + 722, 0x460uLL);
  v13 = *(v0 + 1219);
  *(v0 + 147) = *(v0 + 1217);
  *(v0 + 148) = v13;
  *(v0 + 149) = *(v0 + 1221);
  v0[300] = v0[1223];
  v0[301] = v11;
  AuthorRecommendationSource.id.getter();
  *v6 = v19;
  *(v6 + 8) = v17;
  *(v6 + 16) = v18;
  memcpy((v6 + 24), v0 + 152, 0x4B0uLL);
  *(v6 + 1224) = v19;

  sub_2BF8(v0 + 1231);
  v14 = v0[1];

  return v14();
}

uint64_t sub_10E740()
{
  sub_2BF8((v0 + 9848));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E7A8()
{
  sub_42F48(v0 + 9888, &qword_22C580, &qword_1C6F00);
  sub_11FD8C(v0 + 16);
  sub_2BF8((v0 + 9848));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_FF9B8(v2, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xCu:
      (*(v5 + 32))(v7, v10, v4);
      sub_1B4364();
      (*(v5 + 8))(v7, v4);
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v20 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v33, v10 + *(v20 + 48), 0x231uLL);
      v21 = *(v10 + *(v20 + 64));
      (*(v5 + 32))(v7, v10, v4);
      v22 = *(v20 + 48);
      v23 = *(v20 + 64);
      sub_1B4364();
      (*(v5 + 8))(v7, v4);
      memcpy((a1 + v22), v33, 0x231uLL);
      *(a1 + v23) = v21;
      return swift_storeEnumTagMultiPayload();
    case 3u:
    case 5u:
      v24 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v32 = *(v10 + *(v24 + 48));
      v25 = *(v10 + *(v24 + 64));
      (*(v5 + 32))(v7, v10, v4);
      v26 = *(v24 + 48);
      v27 = *(v24 + 64);
      sub_1B4364();
      (*(v5 + 8))(v7, v4);
      *(a1 + v26) = v32;
      *(a1 + v27) = v25;
      return swift_storeEnumTagMultiPayload();
    case 4u:
    case 6u:
    case 7u:
    case 8u:
      v28 = sub_2B0C(&qword_229770, &qword_1C6F30);
      v29 = *(v10 + *(v28 + 48));
      (*(v5 + 32))(v7, v10, v4);
      v30 = *(v28 + 48);
      sub_1B4364();
      (*(v5 + 8))(v7, v4);
      *(a1 + v30) = v29;
      return swift_storeEnumTagMultiPayload();
    case 9u:
      sub_5DC0C(v10);
      return sub_FF9B8(v2, a1);
    default:
      v11 = v10[1];
      v33[0] = *v10;
      v33[1] = v11;
      v12 = v10[3];
      v33[2] = v10[2];
      v33[3] = v12;
      v13 = *&v33[0];
      v14 = BYTE8(v33[0]);
      v15 = *&v33[1];
      v16 = *&v33[2];
      v17 = BYTE8(v33[1]);
      sub_43688(*&v33[1], SBYTE8(v33[1]));

      sub_43FF4(v33);
      v18 = *(&v33[3] + 1);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = v17;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = v16;
      *(a1 + 56) = v18;
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_10EFF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v11 = sub_1B40F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1B40E4();
  v16 = a3 + 9;
  if (*(a3 + 152))
  {
    v16 = (a5 + 296);
  }

  v17 = *v16;
  v18 = *a3;
  v28 = a3[1];
  v29 = v18;
  v19 = *(a3 + 32);
  v20 = *(a3 + 5);
  v21 = *(a3 + 48);
  (*(v12 + 32))(a6, v14, v11);
  v22 = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(a6 + v22[5]) = a2;
  v23 = v28;
  *(a6 + v22[6]) = v29;
  *(a6 + v22[7]) = v23;
  *(a6 + v22[8]) = v15;
  *(a6 + v22[9]) = v19;
  *(a6 + v22[10]) = v20;
  *(a6 + v22[11]) = v21;
  *(a6 + v22[12]) = _swiftEmptySetSingleton;
  *(a6 + v22[13]) = v26;
  *(a6 + v22[14]) = v17;
  sub_11FEA4(&v29, v27);
  sub_11FF00(&v28, v27);
}

uint64_t sub_10F1A0(char *a1, uint64_t a2)
{
  v3 = sub_9EABC(off_21D728[*a1]);
  v4 = v3;
  v5 = v3 + 56;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v8)
  {
    v13 = v8;
LABEL_10:
    v8 = (v13 - 1) & v13;
    if (*(a2 + 16))
    {
      result = sub_3A9D8(*(*(v4 + 48) + (__clz(__rbit64(v13)) | (v11 << 6))));
      if (v15)
      {
        v16 = *(*(a2 + 56) + 8 * result);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_34958(0, v12[2] + 1, 1, v12);
          v12 = result;
        }

        v17 = v12[2];
        v18 = v12[3];
        v19 = v17 + 1;
        if (v17 >= v18 >> 1)
        {
          v26 = v17 + 1;
          v20 = v12;
          v21 = v12[2];
          result = sub_34958((v18 > 1), v17 + 1, 1, v20);
          v17 = v21;
          v19 = v26;
          v12 = result;
        }

        v12[2] = v19;
        v12[v17 + 4] = v16;
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v9)
    {
      break;
    }

    v13 = *(v5 + 8 * v14);
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_10;
    }
  }

  v22 = v12[2];
  if (!v22)
  {
LABEL_21:

    return _swiftEmptySetSingleton;
  }

  v23 = 0;
  while (v23 < v12[2])
  {
    v24 = v23 + 1;

    result = sub_494D8(v25);
    v23 = v24;
    if (v22 == v24)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10F38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[155] = v16;
  v8[154] = a8;
  v8[153] = a7;
  v8[152] = a6;
  v8[151] = a5;
  v8[150] = a4;
  v8[149] = a3;
  v8[148] = a2;
  v8[147] = a1;
  v9 = sub_2B0C(&qword_22B498, &qword_1C3A60);
  v8[156] = v9;
  v8[157] = *(v9 - 8);
  v8[158] = swift_task_alloc();
  v10 = type metadata accessor for CollectionRecommendation(0);
  v8[159] = v10;
  v8[160] = *(v10 - 8);
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v11 = sub_1B4644();
  v8[163] = v11;
  v12 = *(v11 - 8);
  v8[164] = v12;
  v8[165] = *(v12 + 64);
  v8[166] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v8[167] = swift_task_alloc();
  sub_2B0C(&qword_22CD70, &qword_1C91B8);
  v8[168] = swift_task_alloc();
  v13 = sub_2B0C(&qword_22CD78, &qword_1C91C0);
  v8[169] = v13;
  v8[170] = *(v13 - 8);
  v8[171] = swift_task_alloc();

  return _swift_task_switch(sub_10F624, 0, 0);
}

uint64_t sub_10F624()
{
  v79 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_59:
    sub_1B4C04();
    *(v74 + 1376) = _swiftEmptyArrayStorage;
    v47 = swift_task_alloc();
    *(v74 + 1384) = v47;
    *v47 = v74;
    v47[1] = sub_10FD88;
    v20 = *(v74 + 1352);
    v17 = *(v74 + 1344);
    v18 = 0;
    v19 = 0;

    return TaskGroup.Iterator.next(isolation:)(v17, v18, v19, v20);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = *(v74 + 1200);
  v66 = *(v74 + 1312);
  v65 = *(v74 + 1216);
  v68 = v1 + 32;
  v69 = *(v1 + 16);
  v67 = v5;
  while (1)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_4;
    }

    v6 = (v4 + 16 * v3);
    v7 = *v6;
    v8 = *(v6 + 1);

    v9 = sub_3B1C8(v7);
    if (v10)
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v3 == v2)
    {
      goto LABEL_59;
    }
  }

  v70 = v7;
  v71 = v3;
  v11 = *(*(v5 + 56) + 24 * v9 + 16);
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v8 + 56);
  v16 = (63 - v13) >> 6;
  v77 = v11 + 56;

  v21 = 0;
  v76 = v8;
LABEL_11:
  if (v15)
  {
    v22 = v15;
    goto LABEL_17;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v16)
    {

      v4 = v68;
      v2 = v69;
      v3 = v71;
      v5 = v67;
      goto LABEL_3;
    }

    v22 = *(v12 + 8 * v23);
    ++v21;
    if (v22)
    {
      v21 = v23;
LABEL_17:
      v15 = (v22 - 1) & v22;
      if (!*(v11 + 16))
      {
        goto LABEL_11;
      }

      v24 = *(*(v8 + 48) + (__clz(__rbit64(v22)) | (v21 << 6)));
      v25 = v24;
      sub_1B57F4();

      sub_1B4884();

      v26 = sub_1B5844();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      if (((*(v77 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {

        v8 = v76;
        goto LABEL_11;
      }

      v72 = v24;
      v75 = v15;
      v29 = ~v27;
      while (2)
      {
        if (*(*(v11 + 48) + v28))
        {
          if (*(*(v11 + 48) + v28) == 1)
          {
            v30 = 0x6F6F626F69647561;
            v31 = 0xE90000000000006BLL;
            if (!v25)
            {
LABEL_34:
              v33 = 0xE500000000000000;
              if (v30 == 0x6B6F6F6265)
              {
LABEL_35:
                if (v31 == v33)
                {

LABEL_42:

                  v15 = v75;
                  v8 = v76;
                  v35 = v72;
                  if (v25)
                  {
                    if (v25 == 1)
                    {
                      v35 = 1;
                      goto LABEL_45;
                    }

                    goto LABEL_11;
                  }

LABEL_45:
                  v36 = *(v74 + 1208);
                  v78[0] = v25;
                  v37 = sub_10F1A0(v78, v36);
                  if (v70 <= 2)
                  {
                    if (v70)
                    {
                      v73 = v35;

                      if (v70 == 1)
                      {
                        v38 = v55 & 0x101;
                        v53 = v53 & 1 | 0x2000000000000000;
                        v63 = v53;
                        v64 = v65;
                        v59 = 5;
                        v55 &= 0x101u;
                      }

                      else
                      {
                        v38 = v58 & 0x101;
                        v56 = v56 & 1 | 0x4000000000000000;
                        v63 = v56;
                        v64 = v65;
                        v58 &= 0x101u;
                        v59 = 5;
                      }

                      goto LABEL_57;
                    }
                  }

                  else if (v70 <= 5)
                  {
                    if (v70 == 3)
                    {
                      v73 = v35;

                      v38 = v52 & 0x101;
                      v49 = v49 & 1 | 0x6000000000000000;
                      v63 = v49;
                      v64 = v65;
                      v59 = 5;
                      v52 &= 0x101u;
                    }

                    else if (v70 == 4)
                    {

                      v38 = v57 & 0x101;
                      v63 = v51 & 1 | 0x8000000000000000;
                      v51 &= 1u;
                      v73 = v65;
                      v64 = 5;
                      v57 &= 0x101u;
                    }

                    else
                    {
                      v73 = v35;
                      v38 = v54 & 0x101;
                      v63 = v50 & 1 | 0xA000000000000000;
                      v64 = v37;
                      v50 &= 1u;
                      v59 = v65;
                      v54 &= 0x101u;
                    }

LABEL_57:
                    v62 = v38;
                    v39 = *(v74 + 1336);
                    v40 = *(v74 + 1328);
                    v41 = *(v74 + 1304);
                    v42 = *(v74 + 1240);
                    __src = *(v74 + 1232);
                    v43 = *(v74 + 1224);
                    v61 = *(v74 + 1216);
                    v44 = sub_1B4C54();
                    (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
                    sub_404C4(v43, v74 + 1136);
                    (*(v66 + 16))(v40, v42, v41);
                    v45 = (*(v66 + 80) + 1273) & ~*(v66 + 80);
                    v46 = swift_allocObject();
                    *(v46 + 16) = 0;
                    *(v46 + 24) = 0;
                    sub_264B8((v74 + 1136), v46 + 32);
                    *(v46 + 72) = v73;
                    *(v46 + 80) = v64;
                    *(v46 + 88) = v59;
                    *(v46 + 96) = 5;
                    *(v46 + 104) = v62;
                    *(v46 + 120) = v63;
                    memcpy((v46 + 144), __src, 0x460uLL);
                    *(v46 + 1264) = v61;
                    *(v46 + 1272) = v70;
                    (*(v66 + 32))(v46 + v45, v40, v41);
                    swift_bridgeObjectRetain_n();
                    sub_84BC0(__src, v74 + 16);
                    sub_FF550(v39, &unk_1C91D0, v46);
                    v17 = sub_42F48(v39, &qword_2296C0, &qword_1C3800);
                    goto LABEL_39;
                  }

                  goto LABEL_11;
                }
              }

LABEL_36:
              v34 = sub_1B5604();

              if (v34)
              {
                goto LABEL_42;
              }

              v28 = (v28 + 1) & v29;
              if (((*(v77 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
              {

LABEL_39:
                v15 = v75;
                v8 = v76;
                goto LABEL_11;
              }

              continue;
            }
          }

          else
          {
            v31 = 0xE500000000000000;
            v30 = 0x646578696DLL;
            if (!v25)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          v31 = 0xE500000000000000;
          v30 = 0x6B6F6F6265;
          if (!v25)
          {
            goto LABEL_34;
          }
        }

        break;
      }

      if (v25 == 1)
      {
        v32 = 0x6F6F626F69647561;
      }

      else
      {
        v32 = 0x646578696DLL;
      }

      if (v25 == 1)
      {
        v33 = 0xE90000000000006BLL;
      }

      else
      {
        v33 = 0xE500000000000000;
      }

      if (v30 == v32)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v17, v18, v19, v20);
}

uint64_t sub_10FD88()
{

  return _swift_task_switch(sub_10FE84, 0, 0);
}

uint64_t sub_10FE84()
{
  v1 = v0[168];
  if ((*(v0[157] + 48))(v1, 1, v0[156]) == 1)
  {
    v2 = v0[172];
    v3 = v0[147];
    (*(v0[170] + 8))(v0[171], v0[169]);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[160];
    v7 = v0[159];
    v8 = v0[158];
    sub_11FF5C(v1, v8);
    if ((*(v6 + 48))(v8, 1, v7) == 1)
    {
      sub_42F48(v0[158], &qword_22B498, &qword_1C3A60);
    }

    else
    {
      v9 = v0[162];
      v10 = v0[161];
      sub_11FE3C(v0[158], v9, type metadata accessor for CollectionRecommendation);
      sub_FF9B8(v9, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v0[172];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_33474(0, v12[2] + 1, 1, v0[172]);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = sub_33474((v13 > 1), v14 + 1, 1, v12);
      }

      v15 = v0[161];
      v16 = v0[160];
      sub_5DC0C(v0[162]);
      v12[2] = v14 + 1;
      sub_11FE3C(v15, v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, type metadata accessor for CollectionRecommendation);
      v0[172] = v12;
    }

    v17 = swift_task_alloc();
    v0[173] = v17;
    *v17 = v0;
    v17[1] = sub_10FD88;
    v18 = v0[169];
    v19 = v0[168];

    return TaskGroup.Iterator.next(isolation:)(v19, 0, 0, v18);
  }
}

uint64_t sub_11016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 1416) = v12;
  *(v8 + 1522) = a8;
  *(v8 + 1408) = a7;
  *(v8 + 1400) = a6;
  *(v8 + 1392) = a5;
  *(v8 + 1384) = a4;
  *(v8 + 1376) = a1;
  sub_2B0C(&qword_22B498, &qword_1C3A60);
  *(v8 + 1424) = swift_task_alloc();
  sub_2B0C(&qword_2296F0, &unk_1C3A10);
  *(v8 + 1432) = swift_task_alloc();
  v9 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  *(v8 + 1440) = v9;
  *(v8 + 1448) = *(v9 - 8);
  *(v8 + 1456) = swift_task_alloc();

  return _swift_task_switch(sub_1102C8, 0, 0);
}

uint64_t sub_1102C8()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = type metadata accessor for CollectionRecommendation(0);
  *(v0 + 1464) = v5;
  v6 = *(v5 - 8);
  *(v0 + 1472) = v6;
  v7 = *(v6 + 56);
  *(v0 + 1480) = v7;
  *(v0 + 1488) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v4, 1, 1, v5);
  sub_2698(v3, v3[3]);
  *(v0 + 1136) = *v2;
  v9 = *(v2 + 32);
  v8 = *(v2 + 48);
  v10 = *(v2 + 64);
  *(v0 + 1152) = *(v2 + 16);
  *(v0 + 1200) = v10;
  *(v0 + 1184) = v8;
  *(v0 + 1168) = v9;
  memcpy((v0 + 16), v1, 0x460uLL);
  *(v0 + 1521) = 5;
  v11 = swift_task_alloc();
  *(v0 + 1496) = v11;
  *v11 = v0;
  v11[1] = sub_110438;

  return sub_15F0F0(v0 + 1520, (v0 + 1136), v0 + 16, (v0 + 1521));
}

uint64_t sub_110438(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1504) = a1;
  *(v3 + 1512) = v1;

  if (v1)
  {
    v4 = sub_110938;
  }

  else
  {
    v4 = sub_110550;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_110550()
{
  v39 = v0;
  v1 = *(v0 + 1504);
  v36 = *(v0 + 1520);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 1208);
    v5 = *(v0 + 1408);
    v6 = v5 + 56;
    while (v3 < *(v1 + 16))
    {
      v7 = (v1 + 32 + (v3 << 6));
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v4[2] = v7[2];
      v4[3] = v10;
      *v4 = v8;
      v4[1] = v9;
      ++v3;
      if (*(v5 + 16) && (v11 = *v4, v12 = sub_1B57E4(), v13 = -1 << *(v5 + 32), v14 = v12 & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (*(*(v5 + 48) + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        if (v3 == v2)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_10:
        sub_42BA4(v4, v0 + 1272);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_375F8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_375F8((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[8 * v17];
        v19 = *v4;
        v20 = v4[1];
        v21 = v4[3];
        v18[4] = v4[2];
        v18[5] = v21;
        v18[2] = v19;
        v18[3] = v20;
        v0 = v37;
        if (v3 == v2)
        {
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    if (_swiftEmptyArrayStorage[2])
    {
      v22 = *(v0 + 1448);
      v23 = *(v0 + 1440);
      v24 = *(v0 + 1432);
      *(v0 + 1368) = _swiftEmptyArrayStorage;
      sub_2B0C(&qword_229500, &unk_1BC580);
      sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
      sub_1B43C4();
      if ((*(v22 + 48))(v24, 1, v23) == 1)
      {
        sub_42F48(*(v0 + 1432), &qword_2296F0, &unk_1C3A10);
      }

      else
      {
        v25 = *(v0 + 1472);
        v26 = *(v0 + 1464);
        v27 = *(v0 + 1456);
        v28 = *(v0 + 1448);
        v29 = *(v0 + 1440);
        v30 = *(v0 + 1424);
        (*(v28 + 32))(v27, *(v0 + 1432), v29);
        v38 = v36;
        sub_10232C(v27, &v38, v30);
        (*(v28 + 8))(v27, v29);
        if ((*(v25 + 48))(v30, 1, v26) == 1)
        {
          sub_42F48(*(v0 + 1424), &qword_22B498, &qword_1C3A60);
        }

        else
        {
          v31 = *(v0 + 1480);
          v32 = *(v0 + 1464);
          v33 = *(v0 + 1424);
          v34 = *(v0 + 1376);
          sub_42F48(v34, &qword_22B498, &qword_1C3A60);
          sub_11FE3C(v33, v34, type metadata accessor for CollectionRecommendation);
          v31(v34, 0, 1, v32);
        }
      }
    }

    else
    {
    }

    v35 = *(v0 + 8);

    v35();
  }
}

uint64_t sub_110938()
{
  v11 = v0;
  swift_errorRetain();
  v1 = sub_1B4624();
  v2 = sub_1B4D94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_1B5794();
    v7 = sub_60FF4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "Error fetching legacy MAPI collection: %s", v3, 0xCu);
    sub_2BF8(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

char *sub_110ADC()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);

  sub_2BF8(v0 + 13);
  sub_2BF8(v0 + 18);
  sub_2BF8(v0 + 23);
  sub_2BF8(v0 + 28);
  sub_2BF8(v0 + 33);
  sub_2BF8(v0 + 38);
  v1 = OBJC_IVAR____TtC20BooksPersonalization39InternalCollectionRecommendationService_logger;
  v2 = sub_1B4644();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t sub_110B84()
{
  sub_110ADC();

  return swift_deallocClassInstance();
}

uint64_t sub_110BDC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return sub_108DD4(a1, a2);
}

uint64_t sub_110C88(uint64_t a1, _OWORD *a2)
{
  *(v2 + 1432) = a1;
  v3 = a2[9];
  *(v2 + 1384) = a2[8];
  *(v2 + 1400) = v3;
  *(v2 + 1411) = *(a2 + 155);
  v4 = a2[5];
  *(v2 + 1320) = a2[4];
  *(v2 + 1336) = v4;
  v5 = a2[7];
  *(v2 + 1352) = a2[6];
  *(v2 + 1368) = v5;
  v6 = a2[1];
  *(v2 + 1256) = *a2;
  *(v2 + 1272) = v6;
  v7 = a2[3];
  *(v2 + 1288) = a2[2];
  *(v2 + 1304) = v7;
  v8 = swift_task_alloc();
  *(v2 + 1440) = v8;
  *v8 = v2;
  v8[1] = sub_110D5C;

  return sub_108DD4(v2 + 16, (v2 + 1256));
}

uint64_t sub_110D5C()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_110F0C;
  }

  else
  {
    v2 = sub_110E70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_110E70()
{
  v1 = v0[179];
  v1[3] = &type metadata for InternalCollectionRecommendationResponse;
  v1[4] = sub_11CAD4();
  v2 = swift_allocObject();
  *v1 = v2;
  memcpy((v2 + 16), v0 + 2, 0x4D8uLL);
  v3 = v0[1];

  return v3();
}

uint64_t sub_110F24()
{
  if (*v0)
  {
    return 0x6F6C61646E617473;
  }

  else
  {
    return 0x64657669726564;
  }
}

uint64_t sub_110F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657669726564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEA0000000000656ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_111048(uint64_t a1)
{
  v2 = sub_11C7DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_111084(uint64_t a1)
{
  v2 = sub_11C7DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1110C0(uint64_t a1)
{
  v2 = sub_11C8D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1110FC(uint64_t a1)
{
  v2 = sub_11C8D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_111138(uint64_t a1)
{
  v2 = sub_11C830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_111174(uint64_t a1)
{
  v2 = sub_11C830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationSource.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C8E8, &qword_1C7068);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v16 - v4;
  v5 = sub_2B0C(&qword_22C8F0, &qword_1C7070);
  v16 = *(v5 - 8);
  v17 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_2B0C(&qword_22C8F8, &qword_1C7078);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = *v1;
  sub_2698(a1, a1[3]);
  sub_11C7DC();
  sub_1B5884();
  if (v12 == 7)
  {
    v21 = 0;
    sub_11C8D8();
    sub_1B5454();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_11C830();
    v14 = v18;
    sub_1B5454();
    v22 = v12;
    sub_11C884();
    v15 = v20;
    sub_1B5544();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t CollectionRecommendationSource.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2B0C(&qword_22C920, &qword_1C7080);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_2B0C(&qword_22C928, &qword_1C7088);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_2B0C(&qword_22C930, &qword_1C7090);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v37 = a1;
  sub_2698(a1, v14);
  sub_11C7DC();
  v15 = v36;
  sub_1B5864();
  if (!v15)
  {
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B5444();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_A1170();
    if (v20 == 2 || v40 != v41 >> 1)
    {
      v24 = sub_1B5114();
      swift_allocError();
      v26 = v25;
      sub_2B0C(&qword_22ADB8, &qword_1C2520);
      *v26 = &type metadata for CollectionRecommendationSource;
      sub_1B5314();
      sub_1B50E4();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        v42 = 1;
        sub_11C830();
        v21 = v13;
        v22 = v6;
        sub_1B5304();
        v23 = v36;
        sub_11C92C();
        v29 = v22;
        v30 = v32;
        sub_1B5404();
        (*(v33 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v42;
      }

      else
      {
        v42 = 0;
        sub_11C8D8();
        sub_1B5304();
        v28 = v36;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = 7;
      }

      *v16 = v31;
    }
  }

  return sub_2BF8(v37);
}

uint64_t sub_1119D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v6 = *(a1 + 24);
  *(a2 + 24) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = v4;
  *(a2 + 56) = v5;
  sub_43688(v3, v6);
}

uint64_t sub_111A38(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B57F4();
  sub_1B4884();
  v8 = sub_1B5844();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B5604() & 1) != 0)
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

    sub_115C0C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_111BC0(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_1B57F4();
  sub_1B5804(a2);
  v12 = sub_1B5844();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_115D8C(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_111CE0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1B57E4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_115EFC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_111DC0(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, 0x231uLL);
  v6 = *v3;
  memcpy(v21, a2, 0x231uLL);
  sub_1B57F4();
  SeedBook.hash(into:)(v19);
  v7 = sub_1B5844();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48);
      v12 = 568 * v9;
      memcpy(v19, (v11 + 568 * v9), 0x231uLL);
      memcpy(__src, (v11 + 568 * v9), 0x231uLL);
      sub_4299C(v19, v17);
      LOBYTE(v11) = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(__src, __dst);
      memcpy(v21, __src, 0x231uLL);
      sub_2601C(v21);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    memcpy(v17, __dst, 0x231uLL);
    sub_2601C(v17);
    v15 = *(v6 + 48);
    memcpy(__src, (v15 + v12), 0x231uLL);
    memcpy(a1, (v15 + v12), 0x231uLL);
    sub_4299C(__src, &v16);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    memcpy(v21, __dst, 0x231uLL);
    __src[0] = *v3;
    sub_4299C(v21, v19);
    sub_11601C(v21, v9, isUniquelyReferenced_nonNull_native);
    *v3 = __src[0];
    memcpy(a1, __dst, 0x231uLL);
    return 1;
  }
}

uint64_t sub_111FB0(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1B57F4();
  v18 = a2;
  if (a2)
  {
    v5 = 0x6F6F626F69647561;
  }

  else
  {
    v5 = 0x6B6F6F6265;
  }

  if (a2)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  sub_1B4884();

  v7 = sub_1B5844();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v12 = *(*(v4 + 48) + v9) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_1B5604();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_116200(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_112174(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B57F4();
  sub_1B4884();
  v8 = sub_1B5844();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B5604() & 1) != 0)
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

    sub_116424(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1122FC(_BYTE *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *v5;
  sub_1B57F4();
  v21 = a2;
  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x6168637275706F63;
  }

  if (a2)
  {
    v9 = 0x80000000001D49B0;
  }

  else
  {
    v9 = 0xEA00000000006573;
  }

  sub_1B4884();

  v10 = sub_1B5844();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v7 + 48) + v12) ? 0xD000000000000011 : 0x6168637275706F63;
      v15 = *(*(v7 + 48) + v12) ? 0x80000000001D49B0 : 0xEA00000000006573;
      if (v14 == v8 && v15 == v9)
      {
        break;
      }

      v17 = sub_1B5604();

      if (v17)
      {
        goto LABEL_23;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v19 = *(*(v7 + 48) + v12);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;
    v19 = v21 & 1;
    sub_1165A4(v21 & 1, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v25 = v27;
    result = 1;
  }

  *a1 = v19;
  return result;
}

uint64_t sub_1124D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4414();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
  v33 = a2;
  v11 = sub_1B4744();
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
      sub_11C13C(&qword_22CD90, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
      v21 = sub_1B4784();
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
    sub_1167D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1127B0(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, sizeof(__dst));
  v6 = *v3;
  memcpy(v21, a2, 0x231uLL);
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v19);
  v7 = sub_1B5844();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48);
      v12 = 568 * v9;
      memcpy(v19, (v11 + 568 * v9), 0x231uLL);
      memcpy(__src, (v11 + 568 * v9), 0x231uLL);
      sub_5EE34(v19, v17);
      LOBYTE(v11) = _s20BooksPersonalization17ScorableAttributeO2eeoiySbAC_ACtFZ_0(__src);
      memcpy(v21, __src, 0x231uLL);
      sub_5EE90(v21);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    memcpy(v17, __dst, 0x231uLL);
    sub_5EE90(v17);
    v15 = *(v6 + 48);
    memcpy(__src, (v15 + v12), 0x231uLL);
    memcpy(a1, (v15 + v12), 0x231uLL);
    sub_5EE34(__src, &v16);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    memcpy(v21, __dst, 0x231uLL);
    __src[0] = *v3;
    sub_5EE34(v21, v19);
    sub_116C50(v21, v9, isUniquelyReferenced_nonNull_native);
    *v3 = __src[0];
    memcpy(a1, __dst, 0x231uLL);
    return 1;
  }
}

uint64_t sub_1129A0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B57F4();
  v18 = v2;
  v19 = a1;
  sub_1B4884();

  v6 = sub_1B5844();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_116E34(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE500000000000000;
    v10 = 0x6B6F6F6265;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6F6F626F69647561;
    }

    else
    {
      v13 = 0x646578696DLL;
    }

    if (v12 == 1)
    {
      v14 = 0xE90000000000006BLL;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_1B5604();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6F6F626F69647561;
    v11 = 0xE90000000000006BLL;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v11 = 0xE500000000000000;
  v10 = 0x646578696DLL;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE500000000000000;
  if (v10 != 0x6B6F6F6265)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *v19 = a2;
  return result;
}

uint64_t sub_112BEC(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B57F4();
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();

  v6 = sub_1B5844();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1170D0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    result = 1;
    goto LABEL_49;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 1802465122;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE500000000000000;
        v11 = 0x736B6F6F62;
        break;
      case 2:
        v11 = 0xD000000000000010;
        v10 = 0x80000000001D4FE0;
        break;
      case 3:
        v11 = 0x417942736B6F6F62;
        v10 = 0xED0000726F687475;
        break;
      case 4:
        v11 = 0xD000000000000017;
        v10 = 0x80000000001D4740;
        break;
      case 5:
        v11 = 0x476E49736B6F6F62;
        v10 = 0xEC00000065726E65;
        break;
      case 6:
        v11 = 0xD000000000000011;
        v10 = 0x80000000001D4760;
        break;
      case 7:
        v11 = 0xD000000000000011;
        v10 = 0x80000000001D4780;
        break;
      case 8:
        v11 = 0xD000000000000013;
        v10 = 0x80000000001D47A0;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x736569726573;
        break;
      case 0xA:
        v12 = 1954047342;
        goto LABEL_15;
      case 0xB:
        v12 = 1701998445;
LABEL_15:
        v11 = v12 | 0x65536E4900000000;
        v10 = 0xEC00000073656972;
        break;
      case 0xC:
        v11 = 0x6867696C68676968;
        v10 = 0xEA00000000007374;
        break;
      default:
        break;
    }

    v13 = 0xE400000000000000;
    v14 = 1802465122;
    switch(a2)
    {
      case 1:
        v13 = 0xE500000000000000;
        if (v11 == 0x736B6F6F62)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      case 2:
        v13 = 0x80000000001D4FE0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 3:
        v13 = 0xED0000726F687475;
        if (v11 != 0x417942736B6F6F62)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 4:
        v13 = 0x80000000001D4740;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 5:
        v15 = 0x476E49736B6F6F62;
        v16 = 1701998181;
        goto LABEL_34;
      case 6:
        v13 = 0x80000000001D4760;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 7:
        v13 = 0x80000000001D4780;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 8:
        v13 = 0x80000000001D47A0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 9:
        v13 = 0xE600000000000000;
        if (v11 != 0x736569726573)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 10:
        v14 = 0x65536E497478656ELL;
        v13 = 0xEC00000073656972;
        goto LABEL_39;
      case 11:
        v15 = 0x65536E4965726F6DLL;
        v16 = 1936025970;
LABEL_34:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v15)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 12:
        v13 = 0xEA00000000007374;
        if (v11 != 0x6867696C68676968)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      default:
LABEL_39:
        if (v11 != v14)
        {
          goto LABEL_41;
        }

LABEL_40:
        if (v10 != v13)
        {
LABEL_41:
          v17 = sub_1B5604();

          if (v17)
          {
            goto LABEL_48;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_46;
          }

          continue;
        }

LABEL_48:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_49:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1130F8(uint64_t a1, Swift::UInt *a2)
{
  v5 = *v2;
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  sub_1B57F4();
  sub_1B5804(v6);
  sub_1B5834(v7);
  v9 = a2[3];
  v10 = *(a2 + 32);
  sub_1B5814(v8 & 1);
  v24 = a1;
  if (v10 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v9);
  }

  v11 = sub_1B5844();
  v12 = -1 << *(v5 + 32);
  v13 = v11 & ~v12;
  if (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    sub_117614(a2, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v25;
    v23 = *(a2 + 1);
    *v24 = *a2;
    *(v24 + 16) = v23;
    *(v24 + 32) = *(a2 + 32);
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v16 = *(v5 + 48) + 40 * v13;
    if (*v16 != v6 || *(v16 + 8) != v7)
    {
      goto LABEL_10;
    }

    v18 = *(v16 + 16);
    if ((v18 ^ v8))
    {
      goto LABEL_10;
    }

    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    if (v20)
    {
      break;
    }

    if (v19 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_10:
    v13 = (v13 + 1) & v14;
    if (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = v19;
LABEL_20:
  result = 0;
  *v24 = v6;
  *(v24 + 8) = v7;
  *(v24 + 16) = v18;
  *(v24 + 24) = v9;
  *(v24 + 32) = v20;
  return result;
}

uint64_t sub_1132B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_229260, &qword_1BC340);
  result = sub_1B5044();
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
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
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

uint64_t sub_113514(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_2B0C(a2, a3);
  result = sub_1B5044();
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
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1B57F4();
      sub_1B5804(v19);
      result = sub_1B5844();
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
      *(*(v7 + 48) + v15) = v19;
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

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_11375C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_2292D0, &qword_1BC390);
  result = sub_1B5044();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1B57E4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_113980(uint64_t a1)
{
  v2 = *v1;
  sub_2B0C(&qword_2293D0, &qword_1BC470);
  v3 = sub_1B5044();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v56 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v59 = v2;
    v60 = v3 + 56;
    v58 = v9;
    v61 = v3;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v64 = (v8 - 1) & v8;
LABEL_15:
      v65 = v5;
      v19 = *(v2 + 48) + 568 * (v15 | (v5 << 6));
      v20 = *v19;
      v21 = *(v19 + 56);
      v87 = *(v19 + 40);
      v88 = v21;
      v89 = *(v19 + 72);
      v90 = *(v19 + 88);
      v22 = *(v19 + 24);
      v85 = *(v19 + 8);
      v86 = v22;
      v23 = *(v19 + 96);
      v24 = *(v19 + 112);
      v84 = *(v19 + 128);
      v83 = v24;
      v82 = v23;
      v25 = *(v19 + 144);
      v81 = *(v19 + 152);
      memcpy(__src, (v19 + 168), sizeof(__src));
      v79[0] = *(v19 + 545);
      *(v79 + 3) = *(v19 + 548);
      v26 = *(v19 + 552);
      v27 = *(v19 + 560);
      sub_1B57F4();
      v62 = v20;
      sub_1B5834(v20);
      __dst[2] = v87;
      __dst[3] = v88;
      __dst[4] = v89;
      *&__dst[5] = v90;
      __dst[0] = v85;
      __dst[1] = v86;
      Book.Metadata.hash(into:)(v77);
      if (v25 >> 1 == 0xFFFFFFFF)
      {
        sub_1B5814(0);
      }

      else
      {
        v73 = v82;
        v74 = v83;
        v75 = v84;
        *&v76[8] = v81;
        *v76 = v25;
        sub_1B5814(1u);
        v71[0] = v82;
        v71[1] = v83;
        v71[2] = v84;
        *&v71[3] = v25;
        *(&v71[3] + 8) = v81;
        sub_42CD4(v71, __dst);
        InternalAffinitySource.hash(into:)(v77);
        __dst[2] = v75;
        __dst[3] = *v76;
        *&__dst[4] = *&v76[16];
        __dst[0] = v73;
        __dst[1] = v74;
        sub_42D30(__dst);
      }

      memcpy(__dst, __src, 0x179uLL);
      v63 = v25;
      v66 = v27;
      if (sub_42D84(__dst) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        memcpy(v71, __src, 0x179uLL);
        sub_1B5814(1u);
        BookHistory.hash(into:)();
      }

      v28 = v26 + 64;
      v29 = 1 << *(v26 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v26 + 64);
      v32 = (v29 + 63) >> 6;

      v33 = 0;
      v34 = 0;
      v68 = v26 + 64;
      v69 = v26;
      v67 = v32;
      while (1)
      {
        if (!v31)
        {
          while (1)
          {
            v35 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v35 >= v32)
            {
              goto LABEL_50;
            }

            v31 = *(v28 + 8 * v35);
            ++v34;
            if (v31)
            {
              v34 = v35;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_68;
        }

LABEL_31:
        v36 = *(*(v26 + 56) + 8 * (__clz(__rbit64(v31)) | (v34 << 6)));

        if (!v36)
        {
          break;
        }

        v70 = v33;
        v31 &= v31 - 1;
        v71[2] = v77[2];
        v71[3] = v77[3];
        *&v71[4] = v78;
        v71[0] = v77[0];
        v71[1] = v77[1];
        sub_1B4884();

        sub_1B5804(*(v36 + 16));
        v37 = *(v36 + 16);
        if (v37)
        {
          v38 = (v36 + 80);
          do
          {
            v41 = *(v38 - 4);
            v42 = *(v38 - 3);
            v44 = *(v38 - 2);
            v43 = *(v38 - 1);
            v45 = *v38;

            sub_1B4884();
            if (v41 == 0.0)
            {
              v46 = 0.0;
            }

            else
            {
              v46 = v41;
            }

            sub_1B5834(*&v46);
            if (v42 == 0.0)
            {
              v47 = 0.0;
            }

            else
            {
              v47 = v42;
            }

            sub_1B5834(*&v47);
            if (v45 == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              sub_1B5814(1u);
              if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v39 = v44;
              }

              else
              {
                v39 = 0;
              }

              sub_1B5834(v39);
              if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v40 = v43;
              }

              else
              {
                v40 = 0;
              }

              sub_1B5834(v40);
            }

            v38 += 7;
            --v37;
          }

          while (v37);
        }

        result = sub_1B5844();
        v26 = v69;
        v33 = result ^ v70;
        v32 = v67;
        v28 = v68;
      }

LABEL_50:

      sub_1B5804(v33);
      if (v66 == 12)
      {
        sub_1B5814(0);
      }

      else
      {
        LOBYTE(v71[0]) = v66;
        sub_1B5814(1u);
        PositiveAffinitySource.hash(into:)(v77);
      }

      result = sub_1B5844();
      v4 = v61;
      v48 = -1 << *(v61 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v60 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v60 + 8 * v50);
          if (v54 != -1)
          {
            v10 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_69;
      }

      v10 = __clz(__rbit64((-1 << v49) & ~*(v60 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v60 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = *(v61 + 48) + 568 * v10;
      *v11 = v62;
      v12 = v88;
      *(v11 + 40) = v87;
      *(v11 + 56) = v12;
      *(v11 + 72) = v89;
      *(v11 + 88) = v90;
      v13 = v86;
      *(v11 + 8) = v85;
      *(v11 + 24) = v13;
      v14 = v83;
      *(v11 + 96) = v82;
      *(v11 + 112) = v14;
      *(v11 + 128) = v84;
      *(v11 + 144) = v63;
      *(v11 + 152) = v81;
      memcpy((v11 + 168), __src, 0x179uLL);
      *(v11 + 545) = v79[0];
      *(v11 + 548) = *(v79 + 3);
      *(v11 + 552) = v26;
      *(v11 + 560) = v66;
      ++*(v61 + 16);
      v9 = v58;
      v2 = v59;
      v8 = v64;
      v5 = v65;
    }

    v16 = v5;
    result = v56;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        v55 = 1 << *(v2 + 32);
        if (v55 >= 64)
        {
          bzero(v56, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v56 = -1 << v55;
        }

        *(v2 + 16) = 0;
        goto LABEL_66;
      }

      v18 = v56[v5];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v64 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
LABEL_66:

    *v57 = v4;
  }

  return result;
}