unint64_t sub_1D5C0B754()
{
  result = qword_1EDF05F48;
  if (!qword_1EDF05F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F48);
  }

  return result;
}

unint64_t sub_1D5C0B7A8()
{
  result = qword_1EDF05F60;
  if (!qword_1EDF05F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F60);
  }

  return result;
}

unint64_t sub_1D5C0B800()
{
  result = qword_1EDF05F50;
  if (!qword_1EDF05F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F50);
  }

  return result;
}

unint64_t sub_1D5C0B854()
{
  result = qword_1EDF05F58;
  if (!qword_1EDF05F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F58);
  }

  return result;
}

unint64_t sub_1D5C0B8AC()
{
  result = qword_1EDF05F70;
  if (!qword_1EDF05F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F70);
  }

  return result;
}

unint64_t sub_1D5C0B904()
{
  result = qword_1EDF2D5E8;
  if (!qword_1EDF2D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D5E8);
  }

  return result;
}

unint64_t sub_1D5C0B958()
{
  result = qword_1EDF2D5F0;
  if (!qword_1EDF2D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D5F0);
  }

  return result;
}

uint64_t sub_1D5C0B9B0()
{
  sub_1D5C0B9F0();
  v0 = sub_1D726357C();
  result = sub_1D726356C();
  qword_1EDF30C10 = v0;
  *algn_1EDF30C18 = result;
  return result;
}

unint64_t sub_1D5C0B9F0()
{
  result = qword_1EDF1A6A0[0];
  if (!qword_1EDF1A6A0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDF1A6A0);
  }

  return result;
}

unint64_t sub_1D5C0BAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1D5B69D90(a3, a4);
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
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_1D5C0BC70(v20, a5 & 1);
      v15 = sub_1D5B69D90(a3, a4);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1D6D7FBEC();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a6;

    return sub_1D5C08648(v27);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v25[6] + 16 * v15);
  *v29 = a3;
  v29[1] = a4;
  v30 = v25[7] + 24 * v15;
  *v30 = a1;
  *(v30 + 8) = a2;
  *(v30 + 16) = a6;
  v31 = v25[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v32;
}

uint64_t sub_1D5C0BC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D5C0C6D4();
  v38 = v4;
  result = sub_1D726410C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v39 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v38 & 1) == 0)
      {

        sub_1D5C07390(v26);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1D5C0BF40()
{
  result = qword_1EDF2F940;
  if (!qword_1EDF2F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F940);
  }

  return result;
}

void sub_1D5C0BFF0(uint64_t a1)
{
  if (!qword_1EDF19560)
  {
    sub_1D5BE1388();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19560);
    }
  }
}

uint64_t FeedCursorGroup.init(createdDate:group:config:serviceConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = sub_1D725891C();
  v29 = *(v27 - 8);
  (*(v29 + 16))(a7, a1, v27);
  v14 = type metadata accessor for FeedCursorGroup(0, a5, a6, v13);
  v15 = v14[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))(a7 + v15, a2, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = sub_1D725AA4C();
  v21 = v20;
  (*(*(v18 - 8) + 8))(a3, v18);
  (*(v17 + 8))(a2, AssociatedTypeWitness);
  (*(v29 + 8))(a1, v27);
  v22 = (a7 + v14[10]);
  *v22 = v19;
  v22[1] = v21;
  v23 = *(*(a5 - 8) + 32);
  v24 = a7 + v14[11];

  return v23(v24, a4, a5);
}

uint64_t sub_1D5C0C3EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *a5 = *a1;
  a5[1] = v6;
  a5[2] = v7;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  type metadata accessor for FeedJournal(0, a3, a4, a4);

  return FeedJournal.add(entry:)(v12);
}

uint64_t sub_1D5C0C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FeedJournal.add(entry:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = *v1;

  sub_1D5C07390(v3);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5C073A0(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_1D5C073A0((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = (v5 + 24 * v8);
  *(v9 + 4) = v2;
  *(v9 + 5) = v3;
  v9[6] = v4;
  *v1 = v5;
  if (*(v2 + 16))
  {
    sub_1D5C0C678(v2 + 32, &v19);
    v10 = v19;
    v11 = v20;

    sub_1D5C074F4(&v19);

    sub_1D5C07390(v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v1[1];
    sub_1D5C0BAC4(v2, v3, v10, v11, isUniquelyReferenced_nonNull_native, v4);

    v1[1] = v17;
    if (*(v2 + 16))
    {
      sub_1D5C0C678(v2 + 32, &v19);
      v13 = v19;
      v14 = v20;

      sub_1D5C074F4(&v19);
      v15 = *(v5 + 16) - 1;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v18 = v1[2];
      sub_1D5C0C734(v15, v13, v14, v16);

      v1[2] = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D5C0C6D4()
{
  if (!qword_1EDF1A4C8)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A4C8);
    }
  }
}

uint64_t sub_1D5C0C74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedHeadline(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D5C0C7D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  sub_1D5BF7980(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 64);
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v9;
  v17 = v11;
  v18 = v8;
  v19 = v13;
  v20 = v14;
  v21 = v16;
  v22 = v9;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v24 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v25 = sub_1D7261D2C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  v3 = sub_1D72589BC();
  if (v4)
  {
    if (v3 == 28261 && v4 == 0xE200000000000000)
    {

LABEL_6:
      v6 = [a1 fontName];
      v7 = sub_1D726207C();
      v9 = v8;

      sub_1D5BF4D9C();
      LOBYTE(v6) = sub_1D7263ABC();

      [a1 pointSize];
      if (v6)
      {
        [v2 setMinimumLineHeight_];
        [a1 pointSize];
        v12 = v11;
LABEL_12:
        [v2 setMaximumLineHeight_];
        goto LABEL_13;
      }

      v17 = 1.1;
LABEL_11:
      v12 = ceil(v10 * v17);
      [v2 setMinimumLineHeight_];
      goto LABEL_12;
    }

    v5 = sub_1D72646CC();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  v13 = [a1 fontName];
  v14 = sub_1D726207C();
  v16 = v15;

  v22 = v14;
  v23 = v16;
  v20 = 1802859076;
  v21 = 0xE400000000000000;
  sub_1D5BF4D9C();
  LOBYTE(v13) = sub_1D7263ABC();

  if (v13)
  {
    [a1 pointSize];
    v17 = 1.16;
    goto LABEL_11;
  }

LABEL_13:
  [v2 setLineBreakMode_];
  LODWORD(v18) = 1036831949;
  [v2 setHyphenationFactor_];
  return v2;
}

id sub_1D5C0CCE4(uint64_t a1, uint64_t a2)
{
  sub_1D5B5B2A0(0);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + 40) shortExcerpt];
  if (result)
  {
    v10 = result;
    v11 = sub_1D726207C();
    v13 = v12;

    sub_1D5B68374(a2, v24);
    v14 = sub_1D725891C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v13;
    sub_1D5C0B6D8(0);
    v16 = swift_allocObject();
    v16[2] = 0xC04E000000000000;
    v17 = v25;
    v18 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = *(v18 + 48);

    v20 = v19(v11, v13, v17, v18);

    *(v16 + *(*v16 + 120)) = v20;
    *(v16 + *(*v16 + 136)) = v20;
    v21 = v20;
    sub_1D725890C();
    LOBYTE(v13) = [objc_opt_self() isMainThread];
    __swift_destroy_boxed_opaque_existential_1(v24);
    *(v16 + qword_1EDF347F8) = v13;
    sub_1D5BE3054(v8, v16 + qword_1EDF347F0, sub_1D5B5B2A0);
    v22 = swift_allocObject();
    result = v16;
    v22[2] = sub_1D6A6C500;
    v22[3] = v15;
    v22[4] = v21;
    v16[3] = sub_1D6A6C5A0;
    v16[4] = v22;
  }

  return result;
}

uint64_t sub_1D5C0CF74()
{

  return swift_deallocObject();
}

id sub_1D5C0CFB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 24);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  sub_1D5BF7980(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 72);
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v9;
  v17 = v11;
  v18 = v8;
  v19 = v13;
  v20 = v14;
  v21 = v16;
  v22 = v9;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v24 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v25 = sub_1D7261D2C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id sub_1D5C0D254(uint64_t a1, uint64_t a2)
{
  sub_1D5BF7980(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v4 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7270C10;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = *(v2 + 40);
  v7 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = *(v2 + 88);
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v9;
  v10 = v5;
  v11 = v6;
  v12 = v8;
  v13 = v9;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v16 = sub_1D7261D2C();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

unint64_t sub_1D5C0D434()
{
  result = qword_1EDF05F68;
  if (!qword_1EDF05F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F68);
  }

  return result;
}

void sub_1D5C0D49C(uint64_t a1)
{
  sub_1D5B7B5E0(319, &qword_1EDF3BF68, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIContentSizeCategory(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D5C0D5A8()
{
  result = qword_1EDF2D600;
  if (!qword_1EDF2D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D600);
  }

  return result;
}

uint64_t sub_1D5C0D600(uint64_t a1, uint64_t a2)
{
  sub_1D5C0D694(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D5C0D694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1D5C0D6F8()
{
  sub_1D5B87E10((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  v1 = *(*v0 + 192);
  v2 = sub_1D725FACC();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 200);
  v4 = sub_1D725D34C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 208)]);
  v5 = *(*v0 + 216);
  v6 = sub_1D725E9DC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t sub_1D5C0D8A0()
{
  sub_1D5C0D6F8();

  return swift_deallocClassInstance();
}

uint64_t FeedItemLayoutAttributes.isPrefetchable.getter()
{
  v1 = sub_1D72604BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for FeedBannerAdViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v15 = 0;
  if (((1 << (v14 >> 60)) & 0x7F7) == 0)
  {
    if (v14 >> 60 == 3)
    {
      sub_1D5EF31B8(0);
      v17 = swift_projectBox();
      sub_1D6EB3C6C(v17, v13, type metadata accessor for FeedBannerAdViewLayout.Context);
      type metadata accessor for FeedBannerAd(0);
      sub_1D7260DBC();
      (*(v2 + 104))(v5, *MEMORY[0x1E69B3ED0], v1);
      v15 = MEMORY[0x1DA6F7B30](v9, v5);
      v18 = *(v2 + 8);
      v18(v5, v1);
      v18(v9, v1);
      sub_1D6EB3CD4(v13, type metadata accessor for FeedBannerAdViewLayout.Context);
    }

    else
    {
      v19[1] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v15 = FeedItemLayoutAttributes.isPrefetchable.getter();
    }
  }

  return v15 & 1;
}

uint64_t sub_1D5C0DB2C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = swift_beginAccess();
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v2(v4);
    return sub_1D5B74328(v2, v3);
  }

  else
  {
    v6 = sub_1D5C19EE8();
    v6();
  }
}

uint64_t sub_1D5C0DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D725D58C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5BF5A9C(0, &unk_1EDF3A988, MEMORY[0x1E69B42D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21[-v13];
  sub_1D5C0DDFC(&v21[-v13]);
  v15 = sub_1D7260BAC();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_1D7260C9C();
  v22 = a1;
  v23 = a4 + 16;
  sub_1D5C0DE90(sub_1D5C0DF0C);
  __swift_project_boxed_opaque_existential_1((a1 + *(*a1 + 208)), *(a1 + *(*a1 + 208) + 24));
  sub_1D725E61C();
  sub_1D725D55C();
  sub_1D5BE1620(v16, v17, v18, v19);
  sub_1D5BFD1C0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5C0DDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  swift_beginAccess();
  v4 = sub_1D7260BAC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D5C0DE90(void (*a1)(uint64_t))
{
  swift_beginAccess();

  a1(v2);
}

uint64_t sub_1D5C0DF14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v9 = *a3;

    sub_1D5C0DFE0(v9);
    (*(v7 + 8))(a1, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 **sub_1D5C0E028()
{
  v1 = *(*v0 + 144);
  v2 = sub_1D725FACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 152);
  v4 = sub_1D725D34C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = sub_1D725E9DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 168);
  v8 = sub_1D7260BAC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

__n128 **sub_1D5C0E1D4()
{
  v1 = *(*v0 + 144);
  v2 = sub_1D725FACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 152);
  v4 = sub_1D725D34C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = sub_1D725E9DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 184)));

  return v0;
}

uint64_t FeedNativeAdRequester.__deallocating_deinit()
{
  FeedNativeAdRequester.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedAdGroupDataProvider.__deallocating_deinit()
{
  FeedAdGroupDataProvider.deinit();

  return swift_deallocClassInstance();
}

__n128 **FeedAdGroupDataProvider.deinit()
{
  v1 = *(*v0 + 144);
  v2 = sub_1D725FACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 152);
  v4 = sub_1D725D34C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = sub_1D725E9DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1D5C0E5B4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v46 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D725E9DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v5 & v4) + 0x60);
  v10 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v47 = v10;
  v48 = v9;
  v40 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = AssociatedConformanceWitness;
  v50 = *((v5 & v4) + 0x70);
  v14 = v50;
  v44 = v4;
  v45 = v5;
  v49 = *((v5 & v4) + 0x78);
  v15 = v49;
  v16 = swift_getAssociatedConformanceWitness();
  *&v51 = AssociatedTypeWitness;
  *(&v51 + 1) = v12;
  v17 = v12;
  v52 = AssociatedConformanceWitness;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  v42 = type metadata accessor for FeedBannerAdBlueprintModifier(0, &v51);
  v18 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v39 = &v39 - v24;
  *(v3 + *((v5 & v4) + 0xB0)) = 1;
  v25 = MEMORY[0x1E69E7D40];
  sub_1D5B68374(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90), &v51);
  v26 = (v3 + *((*v25 & *v3) + 0x98));
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v27 = v46;

  v28 = v43;
  sub_1D725F44C();
  v29 = v39;
  v30 = v28;
  v32 = v40;
  v31 = v41;
  FeedBannerAdBlueprintModifier.init(updates:policyValidator:layoutCollection:)(v27, &v51, v30, v40, v17, v41, v50, v49, v39, v16);
  *&v51 = v32;
  *(&v51 + 1) = v17;
  v52 = v31;
  v53 = v16;
  sub_1D725D88C();
  v33 = v42;
  (*(v18 + 16))(v21, v29, v42);
  swift_getWitnessTable();
  *&v51 = sub_1D725D86C();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = v47;
  v36 = v45 & v44;
  v35[3] = *((v45 & v44) + 0x58);
  v35[4] = v48;
  v35[5] = *(v36 + 104);
  v37 = v49;
  v35[6] = v50;
  v35[7] = v37;
  v35[8] = v34;

  swift_getWitnessTable();
  sub_1D725D8DC();

  (*(v18 + 8))(v29, v33);
}

uint64_t sub_1D5C0EA78()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5C0EAB0()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C0EAEC()
{
  result = qword_1EDF2F930;
  if (!qword_1EDF2F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F930);
  }

  return result;
}

unint64_t sub_1D5C0EB44()
{
  result = qword_1EDF2F938;
  if (!qword_1EDF2F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F938);
  }

  return result;
}

void sub_1D5C0EBB0(uint64_t a1)
{
  sub_1D5C0ED14(319, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D5C0ECB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C0ED14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C0ED78(uint64_t a1)
{
  result = type metadata accessor for ImageRequestOptions(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5C0EDEC(uint64_t a1)
{
  sub_1D5BF51F8(319, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D5C0EEEC()
{
  result = qword_1EDF3B6C0;
  if (!qword_1EDF3B6C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B6C0);
  }

  return result;
}

uint64_t sub_1D5C0EF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C0F230(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, __n128), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t))
{
  v9 = v5;
  v10 = a2(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v27 - v14;
  v16 = *v5;
  a3(0, v13);
  result = sub_1D7263CBC();
  v18 = result;
  if (*(v16 + 16))
  {
    v28 = v9;
    v19 = 0;
    v20 = 1 << *(v16 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v16 + 56);
    for (i = (v20 + 63) >> 6; v22; result = a5(v15, v18))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_11:
      sub_1D5BE7354(*(v16 + 48) + *(v11 + 72) * (v24 | (v19 << 6)), v15, a4);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= i)
      {

        v9 = v28;
        goto LABEL_15;
      }

      v26 = *(v16 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_15:
    *v9 = v18;
  }

  return result;
}

uint64_t sub_1D5C0F40C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5C0F454()
{
  result = qword_1EDF1BDE8;
  if (!qword_1EDF1BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BDE8);
  }

  return result;
}

unint64_t sub_1D5C0F4A8()
{
  result = qword_1EDF1BDF0;
  if (!qword_1EDF1BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BDF0);
  }

  return result;
}

unint64_t sub_1D5C0F4FC()
{
  result = qword_1EDF1BCC8;
  if (!qword_1EDF1BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BCC8);
  }

  return result;
}

unint64_t sub_1D5C0F550(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C0F580();
  result = sub_1D5C0F5D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5C0F580()
{
  result = qword_1EDF1BCD0;
  if (!qword_1EDF1BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BCD0);
  }

  return result;
}

unint64_t sub_1D5C0F5D4()
{
  result = qword_1EDF1BCD8;
  if (!qword_1EDF1BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BCD8);
  }

  return result;
}

unint64_t sub_1D5C0F628()
{
  result = qword_1EDF1BC08;
  if (!qword_1EDF1BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BC08);
  }

  return result;
}

unint64_t sub_1D5C0F67C(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C0F6AC();
  result = sub_1D5C0F700();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5C0F6AC()
{
  result = qword_1EDF1BC10;
  if (!qword_1EDF1BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BC10);
  }

  return result;
}

unint64_t sub_1D5C0F700()
{
  result = qword_1EDF1BC18[0];
  if (!qword_1EDF1BC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1BC18);
  }

  return result;
}

unint64_t sub_1D5C0F754()
{
  result = qword_1EDF1BDD0;
  if (!qword_1EDF1BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BDD0);
  }

  return result;
}

unint64_t sub_1D5C0F7A8(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C14B30();
  result = sub_1D5C0F7D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5C0F7D8()
{
  result = qword_1EDF1BDE0;
  if (!qword_1EDF1BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BDE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23GroupLayoutFactoryErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 0xFu) <= 0xC)
  {
    return *(a1 + 40) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

void *sub_1D5C0F91C(void *a1, int64_t a2, char a3)
{
  result = sub_1D5BFBCE4(a1, a2, a3, *v3, &unk_1EDF199E8, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
  *v3 = result;
  return result;
}

uint64_t sub_1D5C0F980(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for FeedHeadline.State(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D5B49834(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5C0FAD4(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for FeedHeadline(0) - 8;
  MEMORY[0x1EEE9AC00](v3, v4);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v67 = (&v60 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v60 - v11);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v60 - v20;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v65 = v22;
  v63 = a1;
  v61 = v19;
  if (v22)
  {
    v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v25 = *(v19 + 72);
    v26 = a1 + v24;
    v64 = v24;
    do
    {
      sub_1D5BF04C4(v26, v21, type metadata accessor for FeedHeadline);
      if ((v21[33] & 0x10) != 0)
      {
        sub_1D5BDA904(v21, v16, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v23 + 16) + 1, 1);
          v24 = v64;
          v23 = v68;
        }

        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D5C0F91C((v28 > 1), v29 + 1, 1);
          v24 = v64;
          v23 = v68;
        }

        *(v23 + 16) = v29 + 1;
        sub_1D5BDA904(v16, v23 + v24 + v29 * v25, type metadata accessor for FeedHeadline);
      }

      else
      {
        sub_1D5C10040(v21);
      }

      v26 += v25;
      --v22;
    }

    while (v22);
  }

  v30 = *(v23 + 16);
  if (v30)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v30, 0);
    v31 = v68;
    v32 = v23 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v33 = *(v61 + 72);
    do
    {
      sub_1D5BF04C4(v32, v12, type metadata accessor for FeedHeadline);
      v34 = *v12;
      v35 = v12[1];

      sub_1D5C10040(v12);
      v68 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D5BFC364((v36 > 1), v37 + 1, 1);
        v31 = v68;
      }

      *(v31 + 16) = v37 + 1;
      v38 = v31 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v31 + 16);
  v41 = v63;
  if (v40 <= v62)
  {

LABEL_40:

    return v41;
  }

  if ((v62 & 0x8000000000000000) == 0)
  {
    sub_1D62DCAC8(v31 + 32, v62, (2 * v40) | 1);
    v43 = v42;

    if (v65)
    {
      v44 = 0;
      v45 = *(v61 + 72);
      v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v46 = v41 + v64;
      v47 = v43 + 56;
      v41 = MEMORY[0x1E69E7CC0];
      do
      {
        v48 = v41;
        sub_1D5BF04C4(v46 + v45 * v44, v67, type metadata accessor for FeedHeadline);
        if (*(v43 + 16) && (v49 = *v67, v50 = v67[1], sub_1D7264A0C(), sub_1D72621EC(), v51 = sub_1D7264A5C(), v52 = -1 << *(v43 + 32), v53 = v51 & ~v52, ((*(v47 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
        {
          v54 = ~v52;
          while (1)
          {
            v55 = (*(v43 + 48) + 16 * v53);
            v56 = *v55 == v49 && v55[1] == v50;
            if (v56 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v53 = (v53 + 1) & v54;
            if (((*(v47 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          sub_1D5C10040(v67);
          v41 = v48;
        }

        else
        {
LABEL_33:
          sub_1D5BDA904(v67, v66, type metadata accessor for FeedHeadline);
          v41 = v48;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v48;
          if ((v57 & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v48 + 16) + 1, 1);
            v41 = v69;
          }

          v59 = *(v41 + 16);
          v58 = *(v41 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1D5C0F91C((v58 > 1), v59 + 1, 1);
            v41 = v69;
          }

          *(v41 + 16) = v59 + 1;
          sub_1D5BDA904(v66, v41 + v64 + v59 * v45, type metadata accessor for FeedHeadline);
        }

        ++v44;
      }

      while (v44 != v65);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5C10040(uint64_t a1)
{
  v2 = type metadata accessor for FeedHeadline(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5C1009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FeedHeadline(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v50 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v50 - v18);
  v20 = sub_1D5C10554(a1, a2);
  v21 = *(v20 + 16);
  v22 = 32;
  do
  {
    if (!v21)
    {

      return 0;
    }

    v23 = *(v20 + v22);
    v22 += 8;
    --v21;
  }

  while (*(a3 + 16) < v23 && v23 != 0x7FFFFFFFFFFFFFFFLL);

  v25 = sub_1D5C10714(v23, a3);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if ((v30 & 1) == 0)
  {

LABEL_10:
    sub_1D5EC2A98(v25, v27, v29, v31);
    v33 = v32;
    goto LABEL_36;
  }

  v54 = v9;
  sub_1D72647AC();
  swift_unknownObjectRetain_n();

  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    swift_unknownObjectRelease();
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v34 + 16);

  if (__OFSUB__(v31 >> 1, v29))
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v35 != (v31 >> 1) - v29)
  {
LABEL_39:
    swift_unknownObjectRelease();
    v9 = v54;
    goto LABEL_10;
  }

  v33 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v9 = v54;
  if (v33)
  {
    v36 = *(a4 + 16);
    if (!v36)
    {
      return v33;
    }

    goto LABEL_18;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_36:
  swift_unknownObjectRelease();
  v36 = *(a4 + 16);
  if (!v36)
  {
    return v33;
  }

LABEL_18:
  v37 = 0;
  v38 = *(v9 + 72);
  v51 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v53 = v33 + v51;
  v54 = a4 + v51;
  v39 = MEMORY[0x1E69E7CC0];
  do
  {
    v40 = v54 + v38 * v37++;
    sub_1D5BE40E0(v40, v19, type metadata accessor for FeedHeadline);
    v41 = v33;
    v42 = *(v33 + 16) + 1;
    v43 = v53;
    while (--v42)
    {
      sub_1D5BE40E0(v43, v15, type metadata accessor for FeedHeadline);
      if (*v15 == *v19 && v15[1] == v19[1])
      {
        sub_1D5BE7B0C(v15, type metadata accessor for FeedHeadline);
LABEL_20:
        sub_1D5BE7B0C(v19, type metadata accessor for FeedHeadline);
        goto LABEL_21;
      }

      v43 += v38;
      v45 = sub_1D72646CC();
      sub_1D5BE7B0C(v15, type metadata accessor for FeedHeadline);
      if (v45)
      {
        goto LABEL_20;
      }
    }

    sub_1D5BDA904(v19, v52, type metadata accessor for FeedHeadline);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5C0F91C(0, *(v39 + 16) + 1, 1);
      v39 = v55;
    }

    v48 = *(v39 + 16);
    v47 = *(v39 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1D5C0F91C((v47 > 1), v48 + 1, 1);
      v39 = v55;
    }

    *(v39 + 16) = v48 + 1;
    sub_1D5BDA904(v52, v39 + v51 + v48 * v38, type metadata accessor for FeedHeadline);
LABEL_21:
    v33 = v41;
  }

  while (v37 != v36);
  return v33;
}

void *sub_1D5C104B8(uint64_t a1, uint64_t a2)
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

  sub_1D5B87DC0(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1D5C10554(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_19;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 == -1)
  {
    goto LABEL_6;
  }

  v5 = result;
  v6 = sub_1D5C104B8(v2 + 1, 0);
  result = sub_1D5C10670(&v14, (v6 + 4), v3, v5, a2);
  if (result != v3)
  {
    __break(1u);
LABEL_6:
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = v6[2];
  if (v7 >= 2)
  {
    v8 = v7 >> 1;
    v9 = v7 + 3;
    v10 = 4;
    do
    {
      if (v10 != v9)
      {
        v11 = v6[2];
        if (v10 - 4 >= v11)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if (v9 - 4 >= v11)
        {
          goto LABEL_18;
        }

        v12 = v6[v10];
        v13 = v6[v9];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D5EC3A38(v6);
          v6 = result;
        }

        v6[v10] = v13;
        v6[v9] = v12;
      }

      --v9;
      ++v10;
      --v8;
    }

    while (v8);
  }

  return v6;
}

uint64_t sub_1D5C10670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D5C1072C(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D5C107C4(uint64_t a1)
{
  v2 = type metadata accessor for FeedHeadline(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D5C10B78(v9, v6, type metadata accessor for FeedHeadline);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D5BD0BA0((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_1D5C10CB0(&qword_1EDF34AD0, 255, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_1D5C10B78(v6, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
      *(v8 + 16) = v12 + 1;
      sub_1D5B63F14(&v15, v8 + 40 * v12 + 32);
      sub_1D5C10CF8(v6, type metadata accessor for FeedHeadline);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_1D5C109CC(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    sub_1D5C10AB0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D5BD3920(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D5C10AB0()
{
  result = qword_1EDF3FA20;
  if (!qword_1EDF3FA20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3FA20);
  }

  return result;
}

uint64_t sub_1D5C10B14(uint64_t a1)
{
  result = sub_1D5BD3A4C(qword_1EDF1BEA0, type metadata accessor for A6_V1.Bound, &unk_1D729EEE4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5C10B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C10BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C10C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C10CB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5C10CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C10D58@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v118 = a2;
  v120 = a1;
  v104 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v121 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v133 = &v103 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v103 - v17;
  v19 = sub_1D725895C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for GroupLayoutContext(0);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v24);
  v117 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v103 - v28;
  v110 = &v103 - v28;
  v115 = type metadata accessor for GroupLayoutBindingContext(0);
  v111 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v30);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v109 = *v5;
  v34 = *(v5 + 1);
  v35 = v5[16];
  sub_1D5BE41B0(v120, v32, type metadata accessor for GroupLayoutBindingContext);
  v112 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE41B0(v118, v29, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v107 = sub_1D725893C();
  v106 = v36;
  (*(v20 + 8))(v23, v19);
  v131 = &type metadata for A6_V3;
  v108 = sub_1D5C0F4FC();
  v132 = v108;
  LOBYTE(v129) = v33;
  *(&v129 + 1) = v34;
  v130 = v35;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  sub_1D5BEE8A0(v34, v35);
  v122[0] = sub_1D7264C5C();
  v122[1] = v38;
  v127 = 95;
  v128 = 0xE100000000000000;
  v125 = 45;
  v126 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v39 = sub_1D7263A6C();
  v41 = v40;

  *(v37 + 16) = v39;
  *(v37 + 24) = v41;
  v42 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v43 = v106;
  *v42 = v107;
  v42[1] = v43;
  sub_1D5B68374(&v129, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v44 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDABDC(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v45 = v115;
  (*(v111 + 56))(v37 + v44, 0, 1, v115);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDABDC(v110, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v47 = *(v113 + 56);
  v113 = v37;
  v47(v37 + v46, 0, 1, v114);
  __swift_destroy_boxed_opaque_existential_1(&v129);
  v131 = &type metadata for A6_V3;
  v132 = v108;
  LOBYTE(v129) = v109;
  *(&v129 + 1) = v34;
  v130 = v35;
  sub_1D5BE41B0(v118, v117, v112);
  v48 = *(v45 + 56);
  v49 = *&v120[v48];
  v50 = *(v49 + 16);
  sub_1D5BEE8A0(v34, v35);
  if (v50 && (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v51 & 1) != 0) && (v52 = , v45 = sub_1D5C14D80(v52), , v45))
  {
    v114 = v48;
    v53 = *(v45 + 16);
    if (v53)
    {
      v54 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v49 = v119;
      v118 = *(v45 + 16);
      do
      {
        v55 = *(v45 + 16);
        if (v54 >= v55)
        {
          __break(1u);
          goto LABEL_60;
        }

        v56 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v48 = *(v49 + 72);
        sub_1D5BE41B0(v45 + v56 + v48 * v54, v18, type metadata accessor for FeedHeadline);
        if ((v18[32] & 4) != 0)
        {
          sub_1D5BDABDC(v18, v133, type metadata accessor for FeedHeadline);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v35 + 16) + 1, 1);
            v49 = v119;
            v35 = v122[0];
          }

          v34 = *(v35 + 16);
          v58 = *(v35 + 24);
          if (v34 >= v58 >> 1)
          {
            sub_1D5C0F91C((v58 > 1), v34 + 1, 1);
            v49 = v119;
            v35 = v122[0];
          }

          *(v35 + 16) = v34 + 1;
          sub_1D5BDABDC(v133, v35 + v56 + v34 * v48, type metadata accessor for FeedHeadline);
          v53 = v118;
        }

        else
        {
          sub_1D5BE7D4C(v18, type metadata accessor for FeedHeadline);
        }

        ++v54;
      }

      while (v53 != v54);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v63 = *&v120[*(v115 + 72)];
    v64 = *&v120[*(v115 + 76)];
    if (__OFSUB__(v63, v64))
    {
      __break(1u);
      goto LABEL_64;
    }

    v65 = sub_1D5C0FAD4(v35, v63 - v64);
    v66 = sub_1D5C11E10(&unk_1F5113838, v65, v45);

    v48 = v114;
    if (v66)
    {
      v133 = v66;

LABEL_27:
      strcpy(v122, "FeedHeadline");
      BYTE5(v122[1]) = 0;
      HIWORD(v122[1]) = -5120;
      v123 = 0;
      v124 = 0;

      v69 = sub_1D5C107C4(v68);

      sub_1D5BDACA8(v122, v69);

LABEL_28:
      v70 = swift_allocObject();
      *(v70 + 16) = 4;
      sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
      inited = swift_initStackObject();
      v72 = MEMORY[0x1E69E7CC0];
      v118 = inited;
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      v49 = inited + 16;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1D613DB68;
      *(v35 + 24) = v70;
      swift_beginAccess();

      v18 = sub_1D5C0F8FC(0, 1, 1, v72);
      v45 = *(v18 + 2);
      v55 = *(v18 + 3);
      v34 = v45 + 1;
      if (v45 >= v55 >> 1)
      {
        goto LABEL_62;
      }

      while (1)
      {
        *(v18 + 2) = v34;
        v73 = &v18[16 * v45];
        *(v73 + 4) = sub_1D71ED46C;
        *(v73 + 5) = v35;
        *v49 = v18;
        swift_endAccess();

        if (!*(*&v120[v48] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v74 & 1) == 0) || (v75 = , v76 = sub_1D5C14D80(v75), , !v76))
        {

          v82 = MEMORY[0x1E69E7CC0];
LABEL_42:
          v122[0] = v133;
          sub_1D5C122E4(v82);
          v83 = v122[0];
          v84 = type metadata accessor for A6_V3.Bound(0);
          v85 = v104;
          v104[3] = v84;
          v85[4] = sub_1D5C12378(&qword_1EDF1BDC0, type metadata accessor for A6_V3.Bound, &unk_1D73AEAC4);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
          *boxed_opaque_existential_1 = v113;
          sub_1D5B63F14(&v129, (boxed_opaque_existential_1 + 1));
          result = sub_1D5BDABDC(v117, boxed_opaque_existential_1 + *(v84 + 24), type metadata accessor for GroupLayoutContext);
          *(boxed_opaque_existential_1 + *(v84 + 28)) = v83;
          return result;
        }

        v34 = *(v76 + 16);
        if (!v34)
        {
          break;
        }

        v45 = 0;
        v18 = MEMORY[0x1E69E7CC0];
        v49 = v119;
        while (1)
        {
          v55 = *(v76 + 16);
          if (v45 >= v55)
          {
            break;
          }

          v48 = (*(v49 + 80) + 32) & ~*(v49 + 80);
          v77 = *(v49 + 72);
          v78 = v116;
          sub_1D5BE41B0(v76 + v48 + v77 * v45, v116, type metadata accessor for FeedHeadline);
          sub_1D5BDABDC(v78, v121, type metadata accessor for FeedHeadline);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = v18;
          if ((v79 & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v18 + 2) + 1, 1);
            v49 = v119;
            v18 = v122[0];
          }

          v81 = *(v18 + 2);
          v80 = *(v18 + 3);
          v35 = v81 + 1;
          if (v81 >= v80 >> 1)
          {
            sub_1D5C0F91C((v80 > 1), v81 + 1, 1);
            v49 = v119;
            v18 = v122[0];
          }

          ++v45;
          *(v18 + 2) = v35;
          sub_1D5BDABDC(v121, &v18[v48 + v81 * v77], type metadata accessor for FeedHeadline);
          if (v34 == v45)
          {
            goto LABEL_44;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v18 = sub_1D5C0F8FC((v55 > 1), v34, 1, v18);
      }

      v18 = MEMORY[0x1E69E7CC0];
LABEL_44:
      if ((*v120 & 1) == 0)
      {

        sub_1D62F071C(v18);
        v88 = v87;

        v18 = v88;
      }

      v89 = *&v120[*(v115 + 72)];
      v90 = *&v120[*(v115 + 76)];
      if (!__OFSUB__(v89, v90))
      {
        v91 = sub_1D5C0FAD4(v18, v89 - v90);
        v92 = sub_1D5C1009C(0, 2, v91, v76);

        if (v92)
        {

          strcpy(v122, "FeedHeadline");
          BYTE5(v122[1]) = 0;
          HIWORD(v122[1]) = -5120;
          v123 = 0;
          v124 = 0;

          v94 = sub_1D5C107C4(v93);

          sub_1D5BDACA8(v122, v94);
          swift_setDeallocating();

          v82 = v92;
          goto LABEL_42;
        }

        v95 = sub_1D5C1009C(0, 2, v18, v76);

        if (v95)
        {
          strcpy(v122, "FeedHeadline");
          BYTE5(v122[1]) = 0;
          HIWORD(v122[1]) = -5120;
          v123 = 0;
          v124 = 0;

          v97 = sub_1D5C107C4(v96);

          sub_1D5BDACA8(v122, v97);
          swift_setDeallocating();

          v82 = v95;
          goto LABEL_42;
        }

        goto LABEL_54;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v67 = sub_1D5C11E10(&unk_1F5113838, v35, v45);

    if (v67)
    {
      v133 = v67;
      goto LABEL_27;
    }

    v122[0] = &unk_1F5113838;
    v4 = v105;
    sub_1D5E239F4(v122);
    if (!v4)
    {

      v59 = v122[0];
      if (!*(v122[0] + 2))
      {
        __break(1u);
LABEL_54:
        sub_1D5BEE168(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
        v98 = swift_allocObject();
        v99 = _swift_stdlib_malloc_size(v98);
        v100 = v99 - 32;
        if (v99 < 32)
        {
          v100 = v99 - 25;
        }

        *(v98 + 16) = 3;
        *(v98 + 24) = 2 * (v100 >> 3);
        *(v98 + 32) = xmmword_1D7279980;
        *(v98 + 48) = 2;
        v122[0] = v98;
        v4 = v105;
        sub_1D5E239F4(v122);
        if (v4)
        {
          goto LABEL_66;
        }

        if (*(v122[0] + 2))
        {
          v101 = *(v122[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v102, "FeedHeadline");
          v102[13] = 0;
          *(v102 + 7) = -5120;
          *(v102 + 2) = 0;
          *(v102 + 3) = 0;
          *(v102 + 4) = 0;
          *(v102 + 5) = v101;
          *(v102 + 6) = 0;
          *(v102 + 7) = 0;
          v102[64] = 0;
          swift_willThrow();
          swift_setDeallocating();

          goto LABEL_19;
        }

        goto LABEL_65;
      }

LABEL_18:
      v60 = *(v59 + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v61, "FeedHeadline");
      v61[13] = 0;
      *(v61 + 7) = -5120;
      *(v61 + 2) = 0;
      *(v61 + 3) = 0;
      *(v61 + 4) = 4;
      *(v61 + 5) = v60;
      *(v61 + 6) = 0;
      *(v61 + 7) = 0;
      v61[64] = 0;
      swift_willThrow();
LABEL_19:
      sub_1D5BE7D4C(v117, type metadata accessor for GroupLayoutContext);
      return __swift_destroy_boxed_opaque_existential_1(&v129);
    }
  }

  else
  {
    if (!qword_1F5113858)
    {

      v133 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }

    v122[0] = &unk_1F5113838;
    v4 = v105;
    sub_1D5E239F4(v122);
    if (!v4)
    {

      v59 = v122[0];
      v55 = *(v122[0] + 2);
      if (!v55)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    }
  }

LABEL_66:

  __break(1u);
  return result;
}

uint64_t sub_1D5C11DC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C11E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FeedHeadline(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v50 - v12);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v50 - v16);

  v19 = sub_1D5C1222C(v18);
  v20 = *(v19 + 16);
  v21 = 32;
  do
  {
    if (!v20)
    {

      return 0;
    }

    v22 = *(v19 + v21);
    v21 += 8;
    --v20;
  }

  while (*(a2 + 16) < v22 && v22 != 0x7FFFFFFFFFFFFFFFLL);
  v54 = v6;
  v52 = v9;

  v24 = sub_1D5C10714(v22, a2);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if ((v29 & 1) == 0)
  {

LABEL_10:
    sub_1D5EC2A98(v24, v26, v28, v30);
    v32 = v31;
    goto LABEL_36;
  }

  sub_1D72647AC();
  swift_unknownObjectRetain_n();

  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v30 >> 1, v28))
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v34 != (v30 >> 1) - v28)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v32)
  {
    v35 = *(a3 + 16);
    if (!v35)
    {
      return v32;
    }

    goto LABEL_18;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_36:
  swift_unknownObjectRelease();
  v35 = *(a3 + 16);
  if (!v35)
  {
    return v32;
  }

LABEL_18:
  v36 = 0;
  v37 = *(v54 + 72);
  v51 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v53 = v32 + v51;
  v54 = a3 + v51;
  v38 = MEMORY[0x1E69E7CC0];
  do
  {
    v39 = v54 + v37 * v36++;
    sub_1D5BE40E0(v39, v17, type metadata accessor for FeedHeadline);
    v40 = v32;
    v41 = *(v32 + 16) + 1;
    v42 = v53;
    while (--v41)
    {
      sub_1D5BE40E0(v42, v13, type metadata accessor for FeedHeadline);
      if (*v13 == *v17 && v13[1] == v17[1])
      {
        sub_1D5BE7B0C(v13, type metadata accessor for FeedHeadline);
LABEL_20:
        sub_1D5BE7B0C(v17, type metadata accessor for FeedHeadline);
        goto LABEL_21;
      }

      v42 += v37;
      v44 = sub_1D72646CC();
      sub_1D5BE7B0C(v13, type metadata accessor for FeedHeadline);
      if (v44)
      {
        goto LABEL_20;
      }
    }

    v45 = v52;
    sub_1D5BDA904(v17, v52, type metadata accessor for FeedHeadline);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5C0F91C(0, *(v38 + 16) + 1, 1);
      v38 = v55;
    }

    v48 = *(v38 + 16);
    v47 = *(v38 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1D5C0F91C((v47 > 1), v48 + 1, 1);
      v38 = v55;
    }

    *(v38 + 16) = v48 + 1;
    sub_1D5BDA904(v45, v38 + v51 + v48 * v37, type metadata accessor for FeedHeadline);
LABEL_21:
    v32 = v40;
  }

  while (v36 != v35);
  return v32;
}

uint64_t sub_1D5C1222C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D5EC3A38(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for A6_V3.Bound(uint64_t a1)
{
  result = qword_1EDF1BDB0;
  if (!qword_1EDF1BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5C12378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C123C0(uint64_t a1)
{
  result = sub_1D5C12378(&qword_1EDF1BDC8, type metadata accessor for A6_V3.Bound, &unk_1D73AEA9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5C12418@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v262 = a2;
  v275 = a1;
  v225 = a3;
  sub_1D5C15644(0);
  v235 = v4;
  v234 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v246 = (&v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1D5C1445C(0, &unk_1EDF1ACB0, sub_1D5C15644, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v236 = &v218 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v247 = &v218 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v230 = &v218 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v242 = &v218 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v228 = &v218 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v229 = &v218 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v240 = &v218 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v245 = (&v218 - v31);
  sub_1D5C14518(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v219 = &v218 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v220 = &v218 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v221 = &v218 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v224 = &v218 - v43;
  v258 = type metadata accessor for FeedHeadline;
  sub_1D5C1445C(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v7);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v227 = &v218 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v232 = &v218 - v49;
  v233 = type metadata accessor for FeedHeadline(0);
  v256 = *(v233 - 8);
  v257 = (v233 - 8);
  v260 = v256;
  MEMORY[0x1EEE9AC00](v233 - 8, v50);
  v231 = &v218 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v237 = &v218 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v238 = &v218 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v239 = &v218 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v241 = &v218 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v244 = &v218 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v223 = &v218 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v222 = &v218 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v226 = &v218 - v75;
  v76 = sub_1D725895C();
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v78);
  v80 = &v218 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for GroupLayoutContext(0);
  v254 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255, v81);
  v259 = &v218 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v218 - v85;
  v251 = &v218 - v85;
  v261 = type metadata accessor for GroupLayoutBindingContext(0);
  v252 = *(v261 - 1);
  MEMORY[0x1EEE9AC00](v261, v87);
  v89 = &v218 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *v3;
  v90 = *(v3 + 8);
  v91 = *(v3 + 16);
  sub_1D5BE3ED8(v275, v89, type metadata accessor for GroupLayoutBindingContext);
  v253 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v262, v86, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v249 = sub_1D725893C();
  v248 = v92;
  (*(v77 + 8))(v80, v76);
  v272 = &type metadata for A6_V4;
  v250 = sub_1D5C0F628();
  v273 = v250;
  LOBYTE(v270) = v7;
  LOBYTE(v86) = v7;
  *(&v270 + 1) = v90;
  v271 = v91;
  type metadata accessor for GroupLayoutKey(0);
  v93 = swift_allocObject();
  v94 = v90;
  sub_1D5BEE8A0(v90, v91);
  v263[0] = sub_1D7264C5C();
  v263[1] = v95;
  v268 = 95;
  v269 = 0xE100000000000000;
  v266 = 45;
  v267 = 0xE100000000000000;
  v216 = sub_1D5BF4D9C();
  v217 = v216;
  v215[0] = MEMORY[0x1E69E6158];
  v215[1] = v216;
  v96 = sub_1D7263A6C();
  v98 = v97;

  *(v93 + 16) = v96;
  *(v93 + 24) = v98;
  v99 = (v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v100 = v248;
  *v99 = v249;
  v99[1] = v100;
  sub_1D5B68374(&v270, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v101 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDAB0C(v89, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v102 = v261;
  (*(v252 + 56))(v93 + v101, 0, 1, v261);
  v103 = 0xEC000000656E696CLL;
  v104 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  inited = v259;
  v106 = 0x6461654864656546;
  sub_1D5BDAB0C(v251, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v107 = *(v254 + 56);
  v254 = v93;
  v107(v93 + v104, 0, 1, v255);
  __swift_destroy_boxed_opaque_existential_1(&v270);
  v272 = &type metadata for A6_V4;
  v273 = v250;
  LOBYTE(v270) = v86;
  *(&v270 + 1) = v94;
  v271 = v91;
  sub_1D5BE3ED8(v262, inited, v253);
  sub_1D5C1445C(0, &unk_1EDF199E8, v258, MEMORY[0x1E69E6F90]);
  v108 = *(v256 + 72);
  v258 = ((*(v260 + 80) + 32) & ~*(v260 + 80));
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1D7273AE0;
  k = v102[14];
  v110 = *&v275[k];
  v111 = *(v110 + 16);
  sub_1D5BEE8A0(v94, v91);
  if (!v111)
  {
    goto LABEL_19;
  }

  v112 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_19;
  }

  v114 = *(*(v110 + 56) + 8 * v112);
  if (!*(v114 + 2))
  {
    goto LABEL_19;
  }

  v116 = v243;
  v117 = sub_1D5BF08EC(v115, 0, 0);
  if (v116)
  {

LABEL_20:
    sub_1D5BE780C(inited, type metadata accessor for GroupLayoutContext);
    *(v262 + 16) = 0;

    return __swift_destroy_boxed_opaque_existential_1(&v270);
  }

  v118 = sub_1D5C14D80(v117);

  if (!v118)
  {
LABEL_18:

LABEL_19:

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v134, "FeedHeadline");
    v134[13] = 0;
    *(v134 + 7) = -5120;
    *(v134 + 2) = 0;
    *(v134 + 3) = 0;
    *(v134 + 2) = xmmword_1D733D120;
    *(v134 + 6) = 0;
    *(v134 + 7) = 0;
    v134[64] = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  v252 = 0;
  j = *(v118 + 16);
  if (!j)
  {

    goto LABEL_18;
  }

  v120 = v261;
  v121 = v275;
  v122 = *&v275[v261[17]];
  v248 = v261[19];
  v123 = *&v275[v248];
  v124 = v247;
  v251 = v114;
  v249 = k;
  v250 = v123;
  v255 = v118;
  if (v123 < v122)
  {
    v257 = (v258 + v118);
    v114 = (v234 + 56);
    v103 = (v234 + 48);

    k = 0;
    inited = v235;
    v125 = &v268;
LABEL_10:
    if ((k & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v125 = *(v255 + 16);
      if (k < v125)
      {
        v126 = v257 + k * v108;
        v127 = *(inited + 48);
        v128 = v246;
        *v246 = k;
        sub_1D5BE3ED8(v126, v128 + v127, type metadata accessor for FeedHeadline);
        v129 = v128;
        v130 = v240;
        sub_1D5BDAB0C(v129, v240, sub_1D5C15644);
        v131 = 0;
        ++k;
        v124 = v247;
        while (1)
        {
          (*v114)(v130, v131, 1, inited);
          v106 = v245;
          sub_1D5C1516C(v130, v245);
          if ((*v103)(v106, 1, inited) == 1)
          {
            v118 = v255;

            v121 = v275;
            v120 = v261;
            v114 = v251;
            v123 = v250;
            goto LABEL_23;
          }

          v132 = *v106;
          v133 = v106 + *(inited + 48);
          v106 = v244;
          sub_1D5BDAB0C(v133, v244, type metadata accessor for FeedHeadline);
          if ((~*(v106 + 32) & 0x1004) == 0)
          {
            break;
          }

          sub_1D5BE780C(v106, type metadata accessor for FeedHeadline);
          v125 = &v274;
          v124 = v247;
          if (k != j)
          {
            goto LABEL_10;
          }

          v131 = 1;
          k = j;
        }

        v147 = v255;

        v263[0] = v147;
        v148 = v224;
        sub_1D5C17DC4(v132, v224);
        sub_1D5BE780C(v106, type metadata accessor for FeedHeadline);

        v149 = v223;
        sub_1D5BDAB0C(v148, v223, type metadata accessor for FeedHeadline);
        v150 = v149;
        v151 = v222;
        sub_1D5BDAB0C(v150, v222, type metadata accessor for FeedHeadline);
        v152 = v151;
        v153 = v232;
        v154 = v232;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

LABEL_23:
  v125 = *&v121[v120[18]];
  v116 = v125 - v123;
  if (__OFSUB__(v125, v123))
  {
    goto LABEL_106;
  }

  k = *(v118 + 16);
  v253 = (v258 + v118);
  v257 = (v234 + 56);
  v256 = v234 + 48;

  inited = v235;
  v103 = v230;
  v106 = v229;
  v125 = &v269;
  j = v241;
  if (v116 >= 1)
  {
    i = 0;
    v125 = &v260;
    v103 = v228;
    if (k)
    {
      goto LABEL_27;
    }

LABEL_26:
    v137 = 1;
    for (i = k; ; ++i)
    {
      (*v257)(v103, v137, 1, inited);
      sub_1D5C1516C(v103, v106);
      if ((*v256)(v106, 1, inited) == 1)
      {
        swift_bridgeObjectRelease_n();

        v153 = v232;
        (*(v260 + 56))(v232, 1, 1, v233);
        goto LABEL_60;
      }

      v124 = *v106;
      sub_1D5BDAB0C(v106 + *(inited + 48), j, type metadata accessor for FeedHeadline);
      if ((*(j + 32) & 4) != 0)
      {
        break;
      }

      sub_1D5BE780C(j, type metadata accessor for FeedHeadline);
      if (i == k)
      {
        goto LABEL_26;
      }

LABEL_27:
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      v125 = *(v255 + 16);
      if (i >= v125)
      {
        goto LABEL_100;
      }

      v138 = v253 + i * v108;
      v139 = *(inited + 48);
      v140 = v246;
      *v246 = i;
      sub_1D5BE3ED8(v138, v140 + v139, type metadata accessor for FeedHeadline);
      sub_1D5BDAB0C(v140, v103, sub_1D5C15644);
      v137 = 0;
      j = v241;
    }

    v155 = v255;

    v263[0] = v155;
    v156 = j;
    v157 = v221;
    sub_1D5C17DC4(v124, v221);
    sub_1D5BE780C(v156, type metadata accessor for FeedHeadline);

    v152 = v157;
    v153 = v232;
    v154 = v232;
LABEL_46:
    sub_1D5BDAB0C(v152, v154, type metadata accessor for FeedHeadline);
    v158 = v260;
    v159 = v233;
    (*(v260 + 56))(v153, 0, 1, v233);
LABEL_57:
    k = 0x6461654864656546;
    goto LABEL_58;
  }

  j = 0;
  if (k)
  {
    goto LABEL_36;
  }

LABEL_35:
  v141 = 1;
  for (j = k; ; ++j)
  {
    v114 = *v257;
    (*v257)(v103, v141, 1, inited);
    v106 = v242;
    sub_1D5C1516C(v103, v242);
    v145 = *v256;
    if ((*v256)(v106, 1, inited) == 1)
    {
      break;
    }

    v146 = *v106;
    v114 = v239;
    sub_1D5BDAB0C(v106 + *(inited + 48), v239, type metadata accessor for FeedHeadline);
    if ((*(v114 + 4) & 0x1004) == 4)
    {
      v169 = v255;

      v263[0] = v169;
      v170 = v220;
      sub_1D5C17DC4(v146, v220);
      sub_1D5BE780C(v114, type metadata accessor for FeedHeadline);

      v171 = v227;
      sub_1D5BDAB0C(v170, v227, type metadata accessor for FeedHeadline);
      v158 = v260;
      v172 = *(v260 + 56);
      v159 = v233;
      v172(v171, 0, 1, v233);
      v173 = v171;
      v153 = v232;
      sub_1D5BDAB0C(v173, v232, type metadata accessor for FeedHeadline);
      v172(v153, 0, 1, v159);
      goto LABEL_57;
    }

    sub_1D5BE780C(v114, type metadata accessor for FeedHeadline);
    v125 = &v274;
    v124 = v247;
    if (j == k)
    {
      goto LABEL_35;
    }

LABEL_36:
    if ((j & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    v125 = *(v255 + 16);
    if (j >= v125)
    {
      goto LABEL_102;
    }

    v142 = v253 + j * v108;
    v143 = *(inited + 48);
    v144 = v246;
    *v246 = j;
    sub_1D5BE3ED8(v142, v144 + v143, type metadata accessor for FeedHeadline);
    sub_1D5BDAB0C(v144, v103, sub_1D5C15644);
    v141 = 0;
    v124 = v247;
  }

  v160 = v255;

  v245 = *(v260 + 56);
  v244 = v260 + 56;
  v245(v227, 1, 1, v233);
  v103 = *(v160 + 16);

  k = 0;
  v125 = &v264;
  j = v236;
  if (v103)
  {
    goto LABEL_49;
  }

LABEL_48:
  v161 = 1;
  for (k = v103; ; ++k)
  {
    (v114)(j, v161, 1, inited);
    sub_1D5C1516C(j, v124);
    if (v145(v124, 1, inited) == 1)
    {
      swift_bridgeObjectRelease_n();
      v195 = 1;
      v153 = v232;
      goto LABEL_81;
    }

    v106 = v108;
    v166 = v124;
    v167 = *v124;
    v168 = v238;
    sub_1D5BDAB0C(v166 + *(inited + 48), v238, type metadata accessor for FeedHeadline);
    if ((*(v168 + 32) & 4) != 0)
    {
      break;
    }

    sub_1D5BE780C(v168, type metadata accessor for FeedHeadline);
    v125 = &v274;
    v124 = v247;
    v108 = v106;
    if (k == v103)
    {
      goto LABEL_48;
    }

LABEL_49:
    if ((k & 0x8000000000000000) != 0)
    {
      goto LABEL_104;
    }

    v125 = *(v255 + 16);
    if (k >= v125)
    {
      goto LABEL_105;
    }

    v162 = v253 + k * v108;
    v163 = *(inited + 48);
    v164 = v246;
    *v246 = k;
    sub_1D5BE3ED8(v162, v164 + v163, type metadata accessor for FeedHeadline);
    v165 = v164;
    j = v236;
    sub_1D5BDAB0C(v165, v236, sub_1D5C15644);
    v161 = 0;
    v124 = v247;
  }

  v196 = v255;

  v263[0] = v196;
  v197 = v219;
  sub_1D5C17DC4(v167, v219);
  sub_1D5BE780C(v168, type metadata accessor for FeedHeadline);

  v153 = v232;
  sub_1D5BDAB0C(v197, v232, type metadata accessor for FeedHeadline);
  v195 = 0;
  v108 = v106;
LABEL_81:
  v159 = v233;
  v245(v153, v195, 1, v233);
  v158 = v260;
  v198 = v227;
  k = 0x6461654864656546;
  if ((*(v260 + 48))(v227, 1, v159) != 1)
  {
    sub_1D69B359C(v198);
  }

LABEL_58:
  if ((*(v158 + 48))(v153, 1, v159) == 1)
  {

LABEL_60:
    sub_1D69B359C(v153);
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v174, "FeedHeadline");
    v174[13] = 0;
    *(v174 + 7) = -5120;
    *(v174 + 2) = 0;
    *(v174 + 3) = 0;
    *(v174 + 2) = xmmword_1D733D120;
    *(v174 + 6) = 0;
    *(v174 + 7) = 0;
    v174[64] = 0;
    swift_willThrow();
    inited = v259;
    goto LABEL_20;
  }

  v175 = v153;
  v176 = v226;
  v177 = sub_1D5BDAB0C(v175, v226, type metadata accessor for FeedHeadline);
  if ((*(v176 + 33) & 0x10) != 0)
  {
    if (__OFADD__(v250, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    *&v275[v248] = v250 + 1;
  }

  MEMORY[0x1EEE9AC00](v177, v178);
  v216 = v176;
  v116 = v252;
  v179 = sub_1D5BF5F6C(sub_1D5BF619C, v215, v251);
  v252 = v116;
  strcpy(v263, "FeedHeadline");
  BYTE5(v263[1]) = 0;
  HIWORD(v263[1]) = -5120;
  v264 = 0;
  v265 = 0;
  sub_1D5BDACA8(v263, v179);

  sub_1D5BDAB0C(v176, v258 + v262, type metadata accessor for FeedHeadline);
  v180 = swift_allocObject();
  *(v180 + 16) = 4;
  sub_1D5C1445C(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v181 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  j = inited + 16;
  v103 = swift_allocObject();
  *(v103 + 2) = sub_1D613DB68;
  *(v103 + 3) = v180;
  swift_beginAccess();

  v114 = sub_1D5C0F8FC(0, 1, 1, v181);
  v124 = *(v114 + 2);
  v125 = *(v114 + 3);
  v106 = v124 + 1;
  if (v124 >= v125 >> 1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    *(v114 + 2) = v106;
    v182 = &v114[16 * v124];
    *(v182 + 4) = sub_1D613DB70;
    *(v182 + 5) = v103;
    *j = v114;
    swift_endAccess();

    if (!*(*&v275[v249] + 16) || (sub_1D5BCF83C(k, 0xEC000000656E696CLL, 0, 0), (v183 & 1) == 0) || (v184 = , j = sub_1D5C14D80(v184), , !j))
    {

      v190 = MEMORY[0x1E69E7CC0];
LABEL_78:
      v191 = v225;
      v263[0] = v262;
      sub_1D5C122E4(v190);
      v192 = v263[0];
      v193 = type metadata accessor for A6_V4.Bound(0);
      v191[3] = v193;
      v191[4] = sub_1D5C14818(&qword_1EDF1BCB8, type metadata accessor for A6_V4.Bound, &unk_1D733D2A4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v191);
      *boxed_opaque_existential_1 = v254;
      sub_1D5B63F14(&v270, (boxed_opaque_existential_1 + 1));
      result = sub_1D5BDAB0C(v259, boxed_opaque_existential_1 + *(v193 + 24), type metadata accessor for GroupLayoutContext);
      *(boxed_opaque_existential_1 + *(v193 + 28)) = v192;
      return result;
    }

    v260 = inited;
    inited = *(j + 16);
    if (!inited)
    {
      break;
    }

    v124 = 0;
    v103 = v258 + j;
    v114 = MEMORY[0x1E69E7CC0];
    v185 = v231;
    while (1)
    {
      v125 = *(j + 16);
      if (v124 >= v125)
      {
        break;
      }

      v186 = v237;
      sub_1D5BE3ED8(v103, v237, type metadata accessor for FeedHeadline);
      sub_1D5BDAB0C(v186, v185, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v263[0] = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v114 + 2) + 1, 1);
        v185 = v231;
        v114 = v263[0];
      }

      v189 = *(v114 + 2);
      v188 = *(v114 + 3);
      v106 = v189 + 1;
      if (v189 >= v188 >> 1)
      {
        sub_1D5C0F91C((v188 > 1), v189 + 1, 1);
        v185 = v231;
        v114 = v263[0];
      }

      ++v124;
      *(v114 + 2) = v106;
      sub_1D5BDAB0C(v185, v258 + v114 + v189 * v108, type metadata accessor for FeedHeadline);
      v103 += v108;
      k = 0x6461654864656546;
      if (inited == v124)
      {
        goto LABEL_84;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    v114 = sub_1D5C0F8FC((v125 > 1), v106, 1, v114);
  }

  v114 = MEMORY[0x1E69E7CC0];
LABEL_84:
  if ((*v275 & 1) == 0)
  {

    sub_1D62F071C(v114);
    v200 = v199;

    v114 = v200;
  }

  v201 = *&v275[v261[18]];
  v202 = *&v275[v248];
  if (__OFSUB__(v201, v202))
  {
    goto LABEL_109;
  }

  v203 = sub_1D5C0FAD4(v114, v201 - v202);
  v204 = sub_1D5C1009C(0, 4, v203, j);

  if (v204)
  {

    v263[0] = k;
    v263[1] = 0xEC000000656E696CLL;
    v264 = 0;
    v265 = 0;

    v206 = sub_1D5C107C4(v205);

    sub_1D5BDACA8(v263, v206);
    swift_setDeallocating();

    v190 = v204;
    goto LABEL_78;
  }

  v207 = sub_1D5C1009C(0, 4, v114, j);

  if (v207)
  {
    v263[0] = k;
    v263[1] = 0xEC000000656E696CLL;
    v264 = 0;
    v265 = 0;

    v209 = sub_1D5C107C4(v208);

    sub_1D5BDACA8(v263, v209);
    swift_setDeallocating();

    v190 = v207;
    goto LABEL_78;
  }

  sub_1D5BEE168(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  v210 = swift_allocObject();
  v211 = _swift_stdlib_malloc_size(v210);
  v212 = v211 - 32;
  if (v211 < 32)
  {
    v212 = v211 - 25;
  }

  v210[2] = 5;
  v210[3] = 2 * (v212 >> 3);
  if (sub_1D5C10670(v263, (v210 + 4), 5, 0, 4) != 5)
  {
    goto LABEL_110;
  }

  v263[0] = v210;
  v116 = v252;
  sub_1D5E239F4(v263);
  if (!v116)
  {

    if (*(v263[0] + 2))
    {
      v213 = *(v263[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      *v214 = k;
      *(v214 + 8) = 0xEC000000656E696CLL;
      *(v214 + 16) = 0;
      *(v214 + 24) = 0;
      *(v214 + 32) = 0;
      *(v214 + 40) = v213;
      *(v214 + 48) = 0;
      *(v214 + 56) = 0;
      *(v214 + 64) = 0;
      swift_willThrow();
      swift_setDeallocating();

      sub_1D5BE780C(v259, type metadata accessor for GroupLayoutContext);
      return __swift_destroy_boxed_opaque_existential_1(&v270);
    }

    goto LABEL_111;
  }

LABEL_112:

  __break(1u);
  return result;
}

uint64_t sub_1D5C143A8()
{

  return swift_deallocObject();
}

void sub_1D5C143F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C1445C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C144C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D6D09A7C(255, a3, a4);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5C14518(uint64_t a1)
{
  if (!qword_1EDF34AF8)
  {
    type metadata accessor for FeedHeadline(255);
    sub_1D5C143F8(255, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF34AF8);
    }
  }
}

uint64_t sub_1D5C145D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FeedHeadline.State(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D5B49834(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

void sub_1D5C14724(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D5C1445C(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5C14818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D5C14860(void *a1, int64_t a2, char a3)
{
  result = sub_1D5B85CC4(a1, a2, a3, *v3, sub_1D5BF0880, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType);
  *v3 = result;
  return result;
}

void __swiftcall DefaultFontBook.headlineFontBook(heading:)(NewsFeed::HeadlineFontBook *__return_ptr retstr, NewsFeed::Heading heading)
{
  v3 = *heading;
  v4 = dbl_1D730E470[v3];
  v5 = qword_1E84CED20[v3];
  sub_1D5C14A38();
  v6 = sub_1D72633CC();
  v7 = objc_opt_self();
  v8 = *MEMORY[0x1E69DB978];
  v9 = [v7 systemFontOfSize:v4 weight:*MEMORY[0x1E69DB978]];
  v10 = [v7 systemFontOfSize:11.0 weight:*v5];
  v11 = [v7 systemFontOfSize_];
  v12 = [v7 systemFontOfSize:13.0 weight:v8];
  retstr->titleFont.super.isa = v6;
  retstr->excerptFont.super.isa = v9;
  retstr->accessoryFont.super.isa = v10;
  retstr->publisherFont.super.isa = v11;
  retstr->adBadgeFont.super.isa = v12;
}

unint64_t sub_1D5C14A38()
{
  result = qword_1EDF1A720;
  if (!qword_1EDF1A720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A720);
  }

  return result;
}

uint64_t sub_1D5C14A84(uint64_t a1)
{
  result = sub_1D5C0F40C(&qword_1EDF34AE8, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5C14ADC()
{
  result = qword_1EDF1BDF8[0];
  if (!qword_1EDF1BDF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1BDF8);
  }

  return result;
}

unint64_t sub_1D5C14B30()
{
  result = qword_1EDF1BDD8;
  if (!qword_1EDF1BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1BDD8);
  }

  return result;
}

void sub_1D5C14B84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C14BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C14C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C14CB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C14D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5C14D80(uint64_t a1)
{
  sub_1D5BDAC44(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v24 = &v23 - v13;
  v14 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D5C0F91C(0, v14, 0);
  v15 = v26;
  if (v14)
  {
    v16 = a1 + 32;
    v17 = (v7 + 56);
    while (1)
    {
      sub_1D5B68374(v16, v25);
      sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      (*v17)(v5, 0, 1, v6);
      v19 = v24;
      sub_1D5BF5B24(v5, v24, type metadata accessor for FeedHeadline);
      sub_1D5BF5B24(v19, v10, type metadata accessor for FeedHeadline);
      v26 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D5C0F91C((v20 > 1), v21 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v21 + 1;
      sub_1D5BF5B24(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for FeedHeadline);
      v16 += 40;
      --v14;
      v6 = v18;
      if (!v14)
      {
        return v15;
      }
    }

    (*v17)(v5, 1, 1, v6);
    sub_1D7152588(v5, qword_1EDF42030, type metadata accessor for FeedHeadline);
    return 0;
  }

  return v15;
}

void sub_1D5C15078(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D5BD3920(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5C1516C(uint64_t a1, uint64_t a2)
{
  sub_1D5C143F8(0, &unk_1EDF1ACB0, sub_1D5C15644, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for A6_V4.Bound(uint64_t a1)
{
  result = qword_1EDF1BCA8;
  if (!qword_1EDF1BCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5C1524C(uint64_t a1)
{
  result = sub_1D5C14818(&qword_1EDF1BCC0, type metadata accessor for A6_V4.Bound, &unk_1D733D27C);
  *(a1 + 8) = result;
  return result;
}

void *sub_1D5C152A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = sub_1D5C15304(v3, v4);
  *a2 = -v6;
  return result;
}

uint64_t sub_1D5C15304(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v5, a1);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 32))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D5C153A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *((*(v4 + 16))(v3, v4) + 16);

  *a2 = -v5;
  return result;
}

uint64_t sub_1D5C1540C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D725AA4C();
  v7 = v6;
  v8 = *(*a2 + 160);
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (!*(v9 + 16))
  {

    goto LABEL_5;
  }

  v10 = sub_1D5B69D90(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_5:
    result = swift_endAccess();
    v13 = 0;
    goto LABEL_6;
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  result = swift_endAccess();
LABEL_6:
  *a3 = v13;
  return result;
}

uint64_t FeedLayoutStylerFactory.styler(withHeading:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  LOBYTE(v23[0]) = v5;
  (*(v7 + 8))(v21, v23, v6, v7);
  v8 = v22;
  sub_1D5B68374((v3 + 7), v18);
  v9 = v3[12];
  v10 = type metadata accessor for HeadlineViewStyler();
  v11 = swift_allocObject();
  v12 = v21[1];
  *(v11 + 16) = v21[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v8;
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v14 + 16))(v23, v13, v14);
  v15 = v23[3];
  *(v11 + 88) = v23[2];
  *(v11 + 104) = v15;
  *(v11 + 120) = v23[4];
  *(v11 + 136) = v24;
  v16 = v23[1];
  *(v11 + 56) = v23[0];
  *(v11 + 72) = v16;
  sub_1D5B68374(v18, v11 + 152);
  *(v11 + 144) = v9;
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  a2[3] = v10;
  a2[4] = &off_1F51A7B08;
  *a2 = v11;
  return result;
}

uint64_t sub_1D5C156C4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D726035C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v24[2] = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_1D72604BC();
  v5 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0], v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D7260DDC();
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725894C();
  v18 = sub_1D725893C();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  sub_1D7260CEC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69B3EC8], v24[0]);

  sub_1D7260CCC();
  sub_1D7260D8C();
  v21 = type metadata accessor for FeedBannerAd(0);
  *&a1[v21[6]] = 0x2000;
  v22 = &a1[v21[7]];
  *v22 = 0;
  v22[8] = 1;
  *&a1[v21[8]] = xmmword_1D72830B0;
  *a1 = v18;
  *(a1 + 1) = v20;
  return (*(v9 + 32))(&a1[v21[5]], v12, v25);
}

void *FeedCursorReference.init(cursorContainer:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_1EDF37050 != -1)
  {
    v9 = *v1;
    swift_once();
    v4 = v9;
  }

  v5 = *(v4 + 80);
  v6 = *(v4 + 88);

  v7 = FeedCursorStoreManager.createToken<A>(cursorContainer:)(a1, v5, v6);

  if (v7)
  {
  }

  else
  {
    v7 = a1 | 0x4000000000000000;
  }

  v2[2] = v7;
  return v2;
}

BOOL _s8NewsFeed0B7ContextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for BundleSession(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5D924(0, &qword_1EDF33290, type metadata accessor for BundleSession);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v40 - v11);
  sub_1D5C1FDAC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
  if ((sub_1D726370C() & 1) == 0)
  {
    return 0;
  }

  v41 = type metadata accessor for FeedContext(0);
  v18 = v41[5];
  v19 = *(v14 + 48);
  sub_1D5B8866C(a1 + v18, v17);
  sub_1D5B8866C(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_1D5B8866C(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      sub_1D5E31B7C(&v17[v19], v8);
      v21 = _s8NewsFeed13BundleSessionV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_1D61A025C(v8, type metadata accessor for BundleSession);
      sub_1D61A025C(v12, type metadata accessor for BundleSession);
      sub_1D5BFC618(v17, &qword_1EDF33290, type metadata accessor for BundleSession);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1D61A025C(v12, type metadata accessor for BundleSession);
LABEL_7:
    sub_1D61A025C(v17, sub_1D5C1FDAC);
    return 0;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1D5BFC618(v17, &qword_1EDF33290, type metadata accessor for BundleSession);
LABEL_9:
  v22 = v41;
  if (*(a1 + v41[6]) != *(a2 + v41[6]))
  {
    return 0;
  }

  if (*(a1 + v41[7]) != *(a2 + v41[7]))
  {
    return 0;
  }

  if (*(a1 + v41[8]) != *(a2 + v41[8]))
  {
    return 0;
  }

  if (*(a1 + v41[9]) != *(a2 + v41[9]))
  {
    return 0;
  }

  if ((sub_1D5BFC390(*(a1 + v41[10]), *(a2 + v41[10])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5C15FFC(*(a1 + v22[11]), *(a2 + v22[11])) & 1) == 0)
  {
    return 0;
  }

  v23 = v22[12];
  v24 = *(a1 + v23 + 8);
  v44 = *(a1 + v23);
  v45 = v24;
  v25 = (a2 + v23);
  v27 = v25[1];
  v42 = *v25;
  v26 = v42;
  v43 = v27;
  sub_1D5B7CD94(v44, v24);
  sub_1D5B7CD94(v26, v27);
  LOBYTE(v26) = _s8NewsFeed0B8PlatformO2eeoiySbAC_ACtFZ_0(&v44, &v42);
  sub_1D5C39250(v42, v43);
  sub_1D5C39250(v44, v45);
  if ((v26 & 1) == 0 || *(a1 + v22[13]) != *(a2 + v22[13]))
  {
    return 0;
  }

  v29 = v22[14];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    sub_1D5B5A498(0, &unk_1EDF1A7F0, 0x1E69B5658);
    v32 = v31;
    v33 = v30;
    v34 = sub_1D726370C();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v35 = v22[15];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  return (sub_1D5C1FE40(v36, *v38) & 1) != 0 && (sub_1D5C3851C(v37, v39) & 1) != 0;
}

uint64_t static FeedModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1D7261FBC() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v12 = type metadata accessor for FeedModel(0, v21);
  if (!_s8NewsFeed0B7ContextV2eeoiySbAC_ACtFZ_0((a1 + v12[13]), (a2 + v12[13])))
  {
    goto LABEL_12;
  }

  v13 = v12[14];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_1D72646CC() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  if (v17)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = (*(a1 + v12[16]))(a1 + v12[15], a2 + v12[15]);
  return v19 & 1;
}

uint64_t sub_1D5C15FFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x1DA6FC080](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed0B8PlatformO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_1D5C39250(*a1, 1);
      sub_1D5C39250(v4, 1);
      return v5;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    if (v5 == 2)
    {
      sub_1D5C39250(*a1, 2);
      v6 = v4;
      v7 = 2;
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    if ((v5 - 1) >= 3)
    {
      if (v3)
      {
        if (!v5)
        {
          sub_1D5B7CD94(*a2, 0);
          v8 = v4;
          v9 = 0;
          goto LABEL_13;
        }

        if (v2 == v4 && v3 == v5)
        {
          sub_1D5B7CD94(*a1, v3);
          sub_1D5B7CD94(v2, v3);
          sub_1D5C39250(v2, v3);
          v6 = v2;
          v7 = v3;
          goto LABEL_8;
        }

        v11 = sub_1D72646CC();
        sub_1D5B7CD94(v4, v5);
        sub_1D5B7CD94(v2, v3);
        sub_1D5C39250(v2, v3);
        sub_1D5C39250(v4, v5);
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        sub_1D5B7CD94(v4, v5);
        sub_1D5B7CD94(v2, 0);
        sub_1D5C39250(v2, 0);
        sub_1D5C39250(v4, v5);
        if (v5)
        {
          goto LABEL_14;
        }
      }

      return 1;
    }

LABEL_12:
    v8 = *a2;
    v9 = a2[1];
LABEL_13:
    sub_1D5B7CD94(v8, v9);
    sub_1D5B7CD94(v2, v3);
    sub_1D5C39250(v2, v3);
LABEL_14:
    sub_1D5C39250(v4, v5);
    return 0;
  }

  if (v5 != 3)
  {
    goto LABEL_12;
  }

  sub_1D5C39250(*a1, 3);
  v6 = v4;
  v7 = 3;
LABEL_8:
  sub_1D5C39250(v6, v7);
  return 1;
}

uint64_t sub_1D5C16348(uint64_t result, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1D5BFBABC(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1D5C164A4(uint64_t a1)
{
  if (a1 == 1)
  {
    result = [v1 textAlignment];
    if (result == 2)
    {
      return result;
    }

    v3 = 2;
    goto LABEL_9;
  }

  if (a1)
  {
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  result = [v1 textAlignment];
  if (result)
  {
    result = [v1 textAlignment];
    if (result != 4)
    {
      v3 = 0;
LABEL_9:

      return [v1 setTextAlignment_];
    }
  }

  return result;
}

uint64_t sub_1D5C165B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C1661C(uint64_t a1)
{
  sub_1D5C16764(0, &qword_1EDF3B4D0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5C16694(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5C166FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5C16764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B49474(255, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5C167D4(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (((1 << a1) & 0x15) != 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    v6 = *(Strong + qword_1EDF33600);

    [v6 setAttributedText_];
    goto LABEL_7;
  }

  if (((1 << a1) & 0x22) != 0)
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v6 = *(v8 + qword_1EDF33600);

      type metadata accessor for HeadlineViewLayout.Context(0);
      v10 = a4;
      v11 = a4[3];
      v12 = __swift_project_boxed_opaque_existential_1(v10, v11);
      v15[3] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
      (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
      v14 = sub_1D5BF9C38(v15);
      __swift_destroy_boxed_opaque_existential_1(v15);
      [v6 setAttributedText_];

LABEL_7:
    }
  }
}

uint64_t type metadata accessor for ThumbnailProcessorRequest(uint64_t a1)
{
  result = qword_1EDF23E08;
  if (!qword_1EDF23E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5C169AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5C169F4()
{
  result = qword_1EDF1AB50;
  if (!qword_1EDF1AB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AB50);
  }

  return result;
}

uint64_t sub_1D5C16A40(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5C16AB0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D5C16AB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B49474(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C16B18(uint64_t a1)
{
  if (!qword_1EDF1B660)
  {
    sub_1D5B49474(255, &qword_1EDF3B6C0, MEMORY[0x1E69D7838]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B660);
    }
  }
}

uint64_t sub_1D5C16B90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BFFB80(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5C16C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C16C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C16CCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 52));
  *a2 = v3;
  return sub_1D5C00308(v3);
}

uint64_t _s8NewsFeed23FeatureAvailabilityTypePAAE019allowFollowingOfEndH16ArticlePublisherSbvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D726207C();
  v4 = v3;

  if (v2 == 0x6C7070612E6D6F63 && v4 == 0xEE007377656E2E65)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    return v6 & 1;
  }
}

uint64_t type metadata accessor for ArticleEntity(uint64_t a1)
{
  result = qword_1EDF333A0;
  if (!qword_1EDF333A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5C16E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C16E8C(uint64_t a1)
{
  v2 = type metadata accessor for ArticleEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5C16EFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

__n128 sub_1D5C16FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutBindingContext(0);
  v12 = *(v11 + 56);
  v40 = v3;
  v36 = v12;
  v37 = v11;
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v10, type metadata accessor for FeedHeadline);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v38 = a1;
  v39 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v42.n128_u64[1] = v7;
  v20 = sub_1D5B7EEE0(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  *&v43 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v10, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v41, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v10, type metadata accessor for FeedHeadline);

  v22 = v40;
  v23 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v22 + v23);
  v25 = v17;
  v26 = v39;
  sub_1D5BCF690(v25, 0x6461654864656546, 0xEC000000656E696CLL, v39, a3, isUniquelyReferenced_nonNull_native);

  *(v22 + v23) = v41;
  *(&v44 + 1) = v7;
  v45 = v20;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D5BD86D4(v38, v27, type metadata accessor for FeedHeadline);
  strcpy(&v41, "FeedHeadline");
  BYTE13(v41) = 0;
  HIWORD(v41) = -5120;
  v42.n128_u64[0] = v26;
  v42.n128_u64[1] = a3;
  v28 = *(v37 + 60);
  v29 = *(v22 + v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D5BCFD9C(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D5BCFD9C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[72 * v31];
  *(v32 + 2) = v41;
  result = v42;
  v34 = v43;
  v35 = v44;
  *(v32 + 12) = v45;
  *(v32 + 4) = v34;
  *(v32 + 5) = v35;
  *(v32 + 3) = result;
  *(v40 + v28) = v29;
  return result;
}

unint64_t sub_1D5C17320(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C0F4A8();
  result = sub_1D5C14ADC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5C17350()
{
  result = qword_1EDF26C98;
  if (!qword_1EDF26C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C98);
  }

  return result;
}

unint64_t sub_1D5C173A4()
{
  sub_1D5C0F84C(v0, &v31);
  v2 = v31;
  v1 = v32;
  switch(v36)
  {
    case 1:
      sub_1D7263D4C();

      *&v30[1] = 0xD000000000000017;
      v16 = UIContentSizeCategory.description.getter(v2);
      MEMORY[0x1DA6F9910](v16);

      MEMORY[0x1DA6F9910](0x757320746F6E2029, 0xEF646574726F7070);

      return *&v30[1];
    case 2:
      *&v30[1] = 0;
      sub_1D7263D4C();
      v9 = "Minimum viewport height of ";
      goto LABEL_13;
    case 3:
      *&v30[1] = 0;
      sub_1D7263D4C();
      v9 = "Maximum viewport height of ";
LABEL_13:
      MEMORY[0x1DA6F9910](0xD00000000000001BLL, (v9 - 32) | 0x8000000000000000);
      v10 = sub_1D7262A9C();
      MEMORY[0x1DA6F9910](v10);

      v11 = "Maximum viewport height of ";
      v12 = 0xD000000000000025;
      goto LABEL_23;
    case 4:
      *&v30[1] = 0;
      sub_1D7263D4C();
      v6 = "Minimum viewport width of ";
      goto LABEL_22;
    case 5:
      *&v30[1] = 0;
      sub_1D7263D4C();
      v6 = "Maximum viewport width of ";
LABEL_22:
      MEMORY[0x1DA6F9910](0xD00000000000001ALL, (v6 - 32) | 0x8000000000000000);
      v17 = sub_1D7262A9C();
      MEMORY[0x1DA6F9910](v17);

      v11 = "Maximum viewport width of ";
      v12 = 0xD000000000000024;
LABEL_23:
      MEMORY[0x1DA6F9910](v12, v11 | 0x8000000000000000);
      v18 = sub_1D7262A9C();
      MEMORY[0x1DA6F9910](v18);
      goto LABEL_63;
    case 6:
      *&v30[1] = 0;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73BE660);
      if (v1)
      {
        v19 = v2;
      }

      else
      {
        v19 = 7104878;
      }

      if (!v1)
      {
        v1 = 0xE300000000000000;
      }

      MEMORY[0x1DA6F9910](v19, v1);

      v14 = "xcluded identifiers ";
      v15 = 0xD000000000000027;
      goto LABEL_33;
    case 7:
      *&v30[1] = 0;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73BE660);
      if (v1)
      {
        v13 = v2;
      }

      else
      {
        v13 = 7104878;
      }

      if (!v1)
      {
        v1 = 0xE300000000000000;
      }

      MEMORY[0x1DA6F9910](v13, v1);

      v14 = "Bundle identifier '";
      v15 = 0xD000000000000024;
LABEL_33:
      MEMORY[0x1DA6F9910](v15, v14 | 0x8000000000000000);
      v20 = sub_1D7262B1C();
      v22 = v21;

      MEMORY[0x1DA6F9910](v20, v22);
      goto LABEL_63;
    case 8:
      *&v30[1] = 0;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x6D726F6674616C50, 0xEA00000000002720);
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          v23 = 0xE200000000000000;
          v24 = 30324;
          goto LABEL_60;
        }

        if (v2 != 3)
        {
          if (v2 == 5)
          {
            v23 = 0xE300000000000000;
            v24 = 6513005;
            goto LABEL_60;
          }

          goto LABEL_57;
        }

        v24 = 0x79616C50726163;
        v23 = 0xE700000000000000;
      }

      else
      {
        if (v2 == -1)
        {
          v24 = 0x6669636570736E75;
          v23 = 0xEB00000000646569;
          goto LABEL_60;
        }

        if (v2)
        {
          if (v2 == 1)
          {
            v23 = 0xE300000000000000;
            v24 = 6578544;
            goto LABEL_60;
          }

LABEL_57:
          v23 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E75;
          goto LABEL_60;
        }

        v23 = 0xE500000000000000;
        v24 = 0x656E6F6870;
      }

LABEL_60:
      MEMORY[0x1DA6F9910](v24, v23);

      v25 = "xcluded platforms ";
      v26 = 0xD000000000000025;
      goto LABEL_61;
    case 9:
      sub_1D7263D4C();

      *&v30[1] = 0x6D726F6674616C50;
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          v7 = 0xE200000000000000;
          v8 = 30324;
          goto LABEL_54;
        }

        if (v2 != 3)
        {
          if (v2 == 5)
          {
            v7 = 0xE300000000000000;
            v8 = 6513005;
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        v8 = 0x79616C50726163;
        v7 = 0xE700000000000000;
      }

      else
      {
        if (v2 == -1)
        {
          v8 = 0x6669636570736E75;
          v7 = 0xEB00000000646569;
          goto LABEL_54;
        }

        if (v2)
        {
          if (v2 == 1)
          {
            v7 = 0xE300000000000000;
            v8 = 6578544;
            goto LABEL_54;
          }

LABEL_51:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
          goto LABEL_54;
        }

        v7 = 0xE500000000000000;
        v8 = 0x656E6F6870;
      }

LABEL_54:
      MEMORY[0x1DA6F9910](v8, v7);

      v25 = "in include column systems ";
      v26 = 0xD000000000000022;
LABEL_61:
      MEMORY[0x1DA6F9910](v26, v25 | 0x8000000000000000);
      type metadata accessor for UIUserInterfaceIdiom(0);
      sub_1D5E4E35C();
LABEL_62:
      v27 = sub_1D7262B1C();
      v29 = v28;

      MEMORY[0x1DA6F9910](v27, v29);
LABEL_63:

      return *&v30[1];
    case 10:
      v30[8] = 0;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x73206E6D756C6F43, 0xEF27206D65747379);
      *v30 = v2 & 1;
      sub_1D7263F9C();
      v4 = "xcluded column systems ";
      v5 = 0xD00000000000002ALL;
      goto LABEL_35;
    case 11:
      v30[8] = 0;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x73206E6D756C6F43, 0xEF27206D65747379);
      *v30 = v2 & 1;
      sub_1D7263F9C();
      v4 = "equirement was not met '";
      v5 = 0xD000000000000027;
LABEL_35:
      MEMORY[0x1DA6F9910](v5, v4 | 0x8000000000000000);
      sub_1D5E4E308();
      goto LABEL_62;
    case 12:
      sub_1D7263D4C();

      *&v30[1] = 0xD000000000000028;
      MEMORY[0x1DA6F9910](v2, v1);

      MEMORY[0x1DA6F9910](39, 0xE100000000000000);
      return *&v30[1];
    case 13:
      if (v32 | v31 | v35 | v34 | v33)
      {
        return 0xD000000000000048;
      }

      else
      {
        return 0xD000000000000049;
      }

    default:
      __swift_destroy_boxed_opaque_existential_1(&v31);
      return 0xD00000000000001BLL;
  }
}

uint64_t sub_1D5C17C50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    sub_1D5C14CB0(255, a3, a4, MEMORY[0x1E69E6530]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D5C17CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C17D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_1D5C17E04(void *a1, int64_t a2, char a3)
{
  result = sub_1D5BFBCE4(a1, a2, a3, *v3, &qword_1EDF199F8, type metadata accessor for FeedBannerAd, type metadata accessor for FeedBannerAd);
  *v3 = result;
  return result;
}

void sub_1D5C17E54(uint64_t a1)
{
  if (!qword_1EDF3BF28)
  {
    type metadata accessor for FeedBannerAdViewLayout.Attributes(255);
    sub_1D5C20C7C();
    sub_1D5BF1388(&qword_1EDF37260, type metadata accessor for FeedBannerAdViewLayout.Attributes, &protocol conformance descriptor for FeedBannerAdViewLayout.Attributes);
    v1 = sub_1D725A4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BF28);
    }
  }
}

void sub_1D5C17F0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, int a6)
{
  v10 = sub_1D725CFDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      swift_beginAccess();
      v17 = swift_weakLoadStrong();
      if (v17)
      {
        v18 = v17;
        v29 = a5;
        v28 = a6;
        v19 = a1;
        if (a4)
        {
          a4(2);
        }

        __swift_project_boxed_opaque_existential_1((v18 + 32), *(v18 + 56));
        sub_1D725CFCC();
        v22 = sub_1D725E62C();
        (*(v11 + 8))(v14, v10);
        if (v22 & 1) != 0 && (v28)
        {
          v23 = swift_allocObject();
          v24 = v29;
          *(v23 + 16) = a4;
          *(v23 + 24) = v24;
          v25 = a1;
          sub_1D5DEA510(a4, v24);
          sub_1D725FB8C();
        }

        else
        {
          v26 = a1;
          sub_1D725FBBC();
          if (a4)
          {
            a4(4);
          }
        }

        return;
      }
    }
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D725FBBC();
  }

  if (a4)
  {
    a4(3);
  }
}

uint64_t sub_1D5C181A8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t ThumbnailProcessorRequest.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_1D5C18264(v0 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5C18264(uint64_t a1)
{
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_15Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void *sub_1D5C18360(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D72640FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v3 + 56) + 8 * v18);
        v23 = (*(v5 + 48) + 16 * v18);
        *v23 = v21;
        v23[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v22;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_1D5C184C4()
{
  result = qword_1EDF1B4C0;
  if (!qword_1EDF1B4C0)
  {
    sub_1D5BF662C(255, &qword_1EDF1B4C8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B4C0);
  }

  return result;
}

uint64_t sub_1D5C18558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C185A0(uint64_t a1)
{
  sub_1D5BDEE4C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = (v1 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = *(v4 + 32);
  v10 = v4[5];
  v11 = v4[6];
  *(v3 + 56) = &type metadata for FeedGap;
  *(v3 + 64) = sub_1D5BF1C9C();
  v12 = swift_allocObject();
  *(v3 + 32) = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;

  sub_1D5BF2DDC(v10, v11);
  return v3;
}

uint64_t sub_1D5C18668()
{

  if (*(v0 + 64) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C186C0@<X0>(_BYTE *a1@<X8>)
{
  v49 = a1;
  v2 = sub_1D725A36C();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s3GapV5BoundVMa(0);
  v6 = *(v5 + 20);
  v7 = (v1 + *(v5 + 24));
  v8 = *v7;
  v9 = v7[1];
  v44 = v7[2];
  v45 = v8;
  v43 = v7[3];
  v42 = *(v7 + 32);
  v11 = v7[5];
  v10 = v7[6];
  v39 = v9;
  v40 = v10;
  v41 = v1 + v6;
  v12 = *(*(v1 + v6 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 16);
  sub_1D5B68374(v12 + 16, &v54);
  sub_1D5B68374(v12 + 56, &v62);
  sub_1D5B63F14(&v54, v60);
  sub_1D5B63F14(&v62, v61);
  sub_1D5B68374(v61, &v64);
  v13 = type metadata accessor for GapViewStyler();
  v14 = swift_allocObject();
  v15 = v66;
  v16 = v67;
  __swift_project_boxed_opaque_existential_1(&v64, v66);
  v17 = *(v16 + 24);

  v18 = v40;
  sub_1D5BF2DDC(v11, v40);
  v17(&v59, v15, v16);
  *(v14 + 16) = v59;
  sub_1D5B63F14(&v64, v14 + 32);
  v71 = v13;
  v72 = &off_1F51E5360;
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v69 = v18;
  v70 = v14;
  *&v64 = v45;
  *(&v64 + 1) = v39;
  v65 = v44;
  v66 = v43;
  LOBYTE(v67) = v42;
  v68 = v11;
  v19 = sub_1D7259E9C();
  MEMORY[0x1DA6FA480](v19, 0.0, v20, v21, v22, v23);
  sub_1D7262E1C();
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v53 = v27;
  (*(v47 + 104))(v46, *MEMORY[0x1E69D7378], v48);
  sub_1D5C18B80(0);
  swift_allocObject();
  sub_1D725A4CC();
  sub_1D725A4DC();

  v28 = v54;
  v29 = v55;
  v30 = v56;
  v62 = v57;
  v63 = v58;
  sub_1D5C19108(0, &qword_1EDF19A30, &type metadata for FeedItemLayoutAttributes, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D7273AE0;
  v32 = swift_allocObject();
  sub_1D5C21540(&v64, v32 + 16);
  *(v32 + 112) = v28;
  *(v32 + 128) = v29;
  *(v32 + 136) = v30;
  v33 = v63;
  *(v32 + 144) = v62;
  *(v32 + 160) = v33;
  *(v31 + 32) = v32 | 0x1000000000000000;
  v34 = v49;
  *v49 = 0;
  *(v34 + 8) = v28;
  *(v34 + 3) = v29;
  *(v34 + 4) = v30;
  *&v59 = v31;
  sub_1D5C19108(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, MEMORY[0x1E69E62F8]);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();
  sub_1D5BDA528(&v64);

  v37 = MEMORY[0x1E69E7CC0];
  *(v34 + 5) = v35;
  *(v34 + 6) = v37;
  return result;
}

uint64_t sub_1D5C18B0C()
{

  if (*(v0 + 64) >= 0x12uLL)
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocObject();
}

void sub_1D5C18B80(uint64_t a1)
{
  if (!qword_1EDF3BF30)
  {
    sub_1D5C18CC8();
    sub_1D6320D50();
    v1 = sub_1D725A4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BF30);
    }
  }
}

void sub_1D5C18C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5C18C70(uint64_t a1)
{
  if (!qword_1EDF3C120)
  {
    sub_1D7259B8C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C120);
    }
  }
}

unint64_t sub_1D5C18CC8()
{
  result = qword_1EDF32E50;
  if (!qword_1EDF32E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E50);
  }

  return result;
}

uint64_t sub_1D5C18D1C(uint64_t *a1)
{
  sub_1D5C18C08(0, &qword_1EDF3BF08, sub_1D5C18CC8, &type metadata for GapViewLayout, MEMORY[0x1E69D74B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v14 - v6;
  sub_1D5C18C70(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a1;
  v12 = sub_1D7259B8C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  swift_getKeyPath();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7460], v3);
  sub_1D5C213A8(&qword_1EDF3C1E0, &qword_1EDF3C1D8, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  sub_1D5BEA9B4(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A6C();

  (*(v4 + 8))(v7, v3);
  return sub_1D5C18FC0(v11);
}

uint64_t sub_1D5C18FC0(uint64_t a1)
{
  sub_1D5C18C70(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5C1901C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D725A0EC();
  if (!v1)
  {
    v8 = v7;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    sub_1D725A11C();
    a1[3] = &type metadata for GapViewLayout.Attributes;
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = v11;
    *(result + 24) = v10;
    *(result + 32) = v9;
    *(result + 40) = v8;
    *(result + 48) = v12;
    *(result + 64) = v13;
  }

  return result;
}

uint64_t sub_1D5C190CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void sub_1D5C19108(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::Void __swiftcall FeedLayoutSolver.Cursor.commit()()
{
  v1 = sub_1D7259F5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7259CFC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v0 + *(*v0 + 112), v6, v9);
  (*(v2 + 16))(v5, v0 + *(*v0 + 120), v1);
  v12 = sub_1D7259CCC();
  sub_1D7259E6C();
  v14 = v13;
  v16 = v15;
  sub_1D7259E7C();
  v18 = v17;
  v20 = v19;
  sub_1D7259E8C();
  v22 = v21;
  v24 = v23;
  sub_1D7259E9C();
  v26 = v25;
  v28 = v27;
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v11, v6);
  v29 = (v0 + *(*v0 + 104));
  v30 = v29[3];
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v30);
  swift_beginAccess();
  v34[0] = v12;
  v34[1] = v14;
  v34[2] = v16;
  v34[3] = v18;
  v34[4] = v20;
  v34[5] = v22;
  v34[6] = v24;
  v34[7] = v26;
  v34[8] = v28;
  v32 = *(v31 + 32);

  v32(v33, v34, v30, v31);
}

uint64_t sub_1D5C19444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C1948C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLayoutCacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C194F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLayoutCacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C19568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

BOOL _s8NewsFeed0B19LayoutCacheFixedKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *a1 == *a2 && *(a1 + 48) == *(a2 + 48))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 56) == *(a2 + 56);
    return v6 == *(a2 + 64) && v7;
  }

  return result;
}

uint64_t sub_1D5C1968C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
  sub_1D725A19C();
  sub_1D5BE7188(&qword_1EDF3BFA0, MEMORY[0x1E69D7280], MEMORY[0x1E69D72A0]);
  sub_1D726257C();
  sub_1D726257C();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v7 = sub_1D72646CC();

    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (*(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
  {
    v10 = v6[9];
    v11 = *(a1 + v10);
    v12 = *(a2 + v10);

    v8 = sub_1D5BF4A94(v11, v12);

    return v8 & 1;
  }

LABEL_17:
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1D5C19848(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t FeedLayoutSolver.Cursor.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104)));
  v1 = *(*v0 + 112);
  v2 = sub_1D7259CFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = sub_1D7259F5C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1D5BE67B4(v0 + *(*v0 + 128), type metadata accessor for FeedLayoutSolverOptions);

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 144)));

  sub_1D5BE67B4(v0 + *(*v0 + 184), type metadata accessor for FeedContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 192)));

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 224)));
  return v0;
}

uint64_t FeedItemLayoutAttributes.visualRankValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 60;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {
        goto LABEL_3;
      }

      if (v4 != 10)
      {
        return FeedItemLayoutAttributes.visualRankValue.getter(a1);
      }

      sub_1D6EB21C8(0, &qword_1EDF11FE0, type metadata accessor for PluginLayout.Context, &type metadata for PluginLayout.Metadata);
      v8 = *(swift_projectBox() + *(v7 + 48) + 32);
LABEL_17:
      *a1 = v8;
      v5 = MEMORY[0x1E69D75C8];
      goto LABEL_18;
    }

    if (v4 == 6)
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C8);
      goto LABEL_17;
    }

    if (v4 != 7)
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x180);
      goto LABEL_17;
    }

    sub_1D6CCCC8C(0);
LABEL_14:
    v8 = *(swift_projectBox() + *(v6 + 64));
    goto LABEL_17;
  }

  if (v4 >= 4)
  {
    if (v4 != 4)
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x318);
      goto LABEL_17;
    }

    sub_1D5BE5E28(0);
    goto LABEL_14;
  }

LABEL_3:
  v5 = MEMORY[0x1E69D75C0];
LABEL_18:
  v9 = *v5;
  v10 = sub_1D725CB0C();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

char *sub_1D5C19CF8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 4) = a1;
  *(v9 + 5) = a2;
  sub_1D5B63F14(a3, (v9 + 48));
  *(v9 + 11) = a4;
  sub_1D5B63F14(a5, &v9[*(*v9 + 208)]);
  *(v9 + 12) = a6;
  v18 = *(*v9 + 192);
  v19 = sub_1D725FACC();
  (*(*(v19 - 8) + 32))(&v9[v18], a7, v19);
  v20 = *(*v9 + 200);
  v21 = sub_1D725D34C();
  (*(*(v21 - 8) + 32))(&v9[v20], a8, v21);
  v22 = *(*v9 + 216);
  v23 = sub_1D725E9DC();
  (*(*(v23 - 8) + 32))(&v9[v22], a9, v23);
  return v9;
}

uint64_t (*sub_1D5C19EE8())()
{
  v1 = *v0;
  v2 = *v0;
  sub_1D5BE1514(0);
  v157 = v3;
  v172 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v156 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v155 = &v153 - v8;
  v9 = v1[11];
  v10 = v1[15];
  v173 = sub_1D725CE8C();
  v160 = sub_1D726393C();
  *&v171 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v11);
  v162 = &v153 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v159 = &v153 - v15;
  sub_1D5BF5A9C(0, &unk_1EDF3A930, MEMORY[0x1E69B43E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v161 = &v153 - v18;
  v163 = sub_1D7260DDC();
  v170 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v19);
  v158 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1D72605EC();
  v169 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v21);
  v154 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v191 = &v153 - v25;
  v219 = sub_1D7258DBC();
  v168 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v26);
  v204 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v1[10];
  *&v28 = v200;
  v195 = v9;
  *(&v28 + 1) = v9;
  v212 = v28;
  v29 = v1[14];
  *&v30 = v29;
  v203 = v10;
  *(&v30 + 1) = v10;
  v218 = v30;
  v226 = v28;
  v227 = v30;
  v31 = sub_1D725D68C();
  WitnessTable = swift_getWitnessTable();
  v32 = sub_1D7261ECC();
  v167 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v205 = &v153 - v34;
  v214 = v31;
  v166 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v164 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v197 = &v153 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v207 = &v153 - v43;
  swift_getWitnessTable();
  v178 = v32;
  v215 = sub_1D7263FAC();
  v165 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215, v44);
  v177 = &v153 - v45;
  v46 = *(v2 + 8);
  v208 = *(v2 + 6);
  v226 = v208;
  v227 = v46;
  v220 = v46;
  v47 = sub_1D725D34C();
  v180 = swift_getWitnessTable();
  v48 = sub_1D7261ECC();
  v181 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v49);
  v179 = (&v153 - v50);
  swift_getWitnessTable();
  v213 = v48;
  v189 = sub_1D7263FAC();
  v182 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v51);
  v216 = &v153 - v52;
  v209 = sub_1D725E9DC();
  v202 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v53);
  v199 = (&v153 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = v47;
  v55 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v56, v57);
  v196 = &v153 - v58;
  v226 = v212;
  v227 = v218;
  v59 = sub_1D725FACC();
  v201 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v153 - v61;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v63 = qword_1EDFFC830;
  v64 = sub_1D7262EDC();
  v153 = v63;
  sub_1D725C30C("Processing blueprint to create ad requests and build layout environment", 71, 2, &dword_1D5B42000, v63, v64, MEMORY[0x1E69E7CC0]);
  v226 = v212;
  v227 = v208;
  *&v65 = v29;
  v66 = v203;
  *(&v65 + 1) = v203;
  v228 = v65;
  v229 = v220;
  v211 = type metadata accessor for FeedAdLayoutEnvironmentBuilder(0, &v226);
  *&v212 = *(*v0 + 192);
  v67 = *(v201 + 16);
  v201 += 16;
  v183 = v67;
  v67(v62, v0 + v212, v59);
  v194 = *(*v0 + 200);
  *&v218 = v59;
  v68 = *(v55 + 16);
  v185 = v55 + 16;
  v69 = v196;
  v70 = v198;
  v68(v196, &v194[v0], v198);
  v186 = v68;
  v71 = *(*v0 + 216);
  v217 = v0;
  v193 = v29;
  v72 = *(v202 + 16);
  v202 += 16;
  v184 = v72;
  v73 = v71;
  v190 = v71;
  v74 = v199;
  v72(v199, v71 + v0, v209);
  v211 = sub_1D5C1BD0C(v62, v69, v74);
  *&v226 = v200;
  *(&v226 + 1) = v195;
  v227 = v208;
  *&v228 = v29;
  *(&v228 + 1) = v66;
  v229 = v220;
  v210 = type metadata accessor for FeedAdGroupDataProvider(0, &v226);
  v75 = v212;
  v76 = v183;
  v183(v62, v217 + v212, v218);
  v77 = v194;
  v78 = v69;
  v68(v69, &v194[v217], v70);
  v79 = v73 + v217;
  v80 = v199;
  v81 = v184;
  v184(v199, v79, v209);
  v82 = FeedAdGroupDataProvider.__allocating_init(blueprint:layoutBlueprint:layoutCollection:adjacentDistance:)(v62, v78, v80, 100.0);
  v188 = v82;
  *&v226 = v200;
  *(&v226 + 1) = v195;
  v227 = v208;
  *&v228 = v193;
  *(&v228 + 1) = v203;
  v229 = v220;
  v210 = type metadata accessor for FeedBannerAdRequestScheduler(0, &v226);
  v76(v62, v217 + v75, v218);
  v83 = &v77[v217];
  v84 = v196;
  v85 = v198;
  (v186)(v196, v83, v198);
  v86 = v199;
  v81(v199, v190 + v217, v209);
  v176 = *(v217 + 96);
  v87 = v176;
  v187 = *(v217 + 32);
  v88 = v187;
  *(&v227 + 1) = type metadata accessor for FeedBannerAdRequester();
  *&v228 = &protocol witness table for FeedBannerAdRequester;
  *&v226 = v88;
  v210 = sub_1D5C1C13C(v62, v84, v86, v82, v87, &v226);
  v89 = v200;
  v90 = v195;
  *&v226 = v200;
  *(&v226 + 1) = v195;
  v227 = v208;
  *&v228 = v193;
  *(&v228 + 1) = v203;
  v229 = v220;
  v175 = type metadata accessor for FeedPrerollAdRequestScheduler(0, &v226);
  v91 = v212;
  v92 = v62;
  v93 = v62;
  v174 = v62;
  v94 = v218;
  v95 = v183;
  v183(v92, v217 + v212, v218);
  v96 = v196;
  (v186)(v196, &v194[v217], v85);
  v184(v86, v190 + v217, v209);
  v97 = v217;
  v98 = v93;
  v99 = v188;
  v209 = sub_1D5C1C3E0(v98, v96, v86, v188, *(v217 + 40));
  *&v226 = v89;
  *(&v226 + 1) = v90;
  v227 = v208;
  *&v228 = v193;
  *(&v228 + 1) = v203;
  v229 = v220;
  type metadata accessor for FeedNativeAdRequester(0, &v226);
  v100 = v174;
  v95(v174, v97 + v91, v94);
  sub_1D5B68374(v97 + 48, &v226);
  swift_retain_n();

  *&v208 = FeedNativeAdRequester.__allocating_init(blueprint:groupDataProvider:adManager:)(v100, v99, &v226);
  sub_1D5C1C7A4();
  v186 = swift_allocObject();
  *(v186 + 16) = MEMORY[0x1E69E7CC0];
  v101 = v179;
  sub_1D7262CEC();
  v102 = v181;
  v103 = v216;
  v104 = v213;
  (*(v181 + 16))(v216, v101, v213);
  v105 = *(v189 + 36);
  sub_1D7261E9C();
  (*(v102 + 8))(v101, v104);
  v106 = v103;
  sub_1D7261EAC();
  v107 = *&v103[v105];
  v108 = v178;
  v109 = v177;
  if (v107 != v226)
  {
    v203 = (v166 + 8);
    v201 = v167 + 16;
    v200 = (v167 + 8);
    v114 = (v168 + 8);
    v199 = (v165 + 8);
    v194 = v169 + 88;
    LODWORD(v193) = *MEMORY[0x1E69B3FA8];
    v190 = (v169 + 8);
    v185 = v173 - 8;
    v184 = (v170 + 56);
    v183 = (v170 + 48);
    v179 = (v170 + 32);
    v176 = (v170 + 8);
    v175 = (v172 + 16);
    v174 = (v172 + 8);
    v170 = v172 + 32;
    v180 = MEMORY[0x1E69E7CC0];
    v181 = v171 + 8;
    v171 = xmmword_1D7273AE0;
    v202 = v105;
    do
    {
      *&v220 = v107;
      sub_1D7261EBC();
      swift_getWitnessTable();
      if (v220 >= sub_1D7262C8C())
      {
        goto LABEL_7;
      }

      FeedNativeAdRequester.processSection(at:)(v220);
      v115 = v207;
      sub_1D725FAFC();
      v116 = v205;
      v117 = v214;
      sub_1D7262CEC();
      v198 = *v203;
      v198(v115, v117);
      (*v201)(v109, v116, v108);
      v118 = *(v215 + 36);
      sub_1D7261E9C();
      (*v200)(v116, v108);
      sub_1D7261EAC();
      v119 = *&v109[v118];
      v120 = v114;
      for (i = v204; v119 != v226; v119 = *&v109[v118])
      {
        sub_1D7261EBC();
        MEMORY[0x1DA6F0420](v119, v220);
        sub_1D5C21600(i);
        sub_1D5C1D6AC(i);
        sub_1D5C21EEC(i);
        (*v120)(i, v219);
        sub_1D7261EAC();
      }

      (*v199)(v109, v215);
      v97 = v217;
      v105 = v202;
      v114 = v120;
      if (v220 < 1)
      {
        goto LABEL_7;
      }

      v196 = (v220 - 1);
      sub_1D725FAFC();
      sub_1D5B49474(0, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
      if (swift_dynamicCast())
      {
        sub_1D5B63F14(&v223, &v226);
        v122 = *(&v227 + 1);
        v123 = v228;
        __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
        v124 = v191;
        (*(v123 + 16))(v122, v123);
        v125 = *v194;
        v126 = v192;
        v127 = (*v194)(v124, v192);
        v128 = v124;
        v129 = *v190;
        (*v190)(v128, v126);
        if (v127 == v193)
        {
          v169 = v129;
          v178 = v114;
          v130 = v207;
          sub_1D725FAFC();
          v131 = v214;
          v177 = sub_1D725D62C();
          *&v220 = v132;
          v198(v130, v131);
          sub_1D725FAFC();
          if (swift_dynamicCast())
          {
            sub_1D5B63F14(v221, &v223);
            v133 = v162;
            sub_1D725FA3C();
            v134 = *(v173 - 8);
            if ((*(v134 + 48))(v133, 1, v173) == 1)
            {

              (*v181)(v133, v160);
              v135 = v161;
              (*v184)(v161, 1, 1, v163);
              goto LABEL_22;
            }

            sub_1D725CE7C();
            (*(v134 + 8))(v133, v173);
            v135 = v161;
            v136 = v163;
            v137 = swift_dynamicCast();
            (*v184)(v135, v137 ^ 1u, 1, v136);
            if ((*v183)(v135, 1, v136) == 1)
            {

LABEL_22:
              sub_1D70A8538(v135);
              __swift_destroy_boxed_opaque_existential_1(&v223);
              v97 = v217;
LABEL_23:
              v114 = v178;
              __swift_destroy_boxed_opaque_existential_1(&v226);
              goto LABEL_7;
            }

            v138 = v158;
            (*v179)(v158, v135, v136);
            v140 = *(&v224 + 1);
            v139 = v225;
            __swift_project_boxed_opaque_existential_1(&v223, *(&v224 + 1));
            v141 = v154;
            (*(v139 + 16))(v140, v139);
            v142 = v192;
            v143 = v125(v141, v192);
            if (v143 == v193)
            {
              (v169)(v141, v142);
              sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v144 = swift_allocObject();
              *(v144 + 16) = v171;
              *(v144 + 56) = MEMORY[0x1E69E6158];
              *(v144 + 64) = sub_1D5B7E2C0();
              v145 = v220;
              *(v144 + 32) = v177;
              *(v144 + 40) = v145;
              v146 = sub_1D7262EDC();
              sub_1D725C30C("Ad with identifier %@ is adjacent to another ad and has been requested to be dropped", 84, 2, &dword_1D5B42000, v153, v146, v144);

              v147 = v155;
              v97 = v217;
              sub_1D70A7AB4(v138, v155);
              (*v175)(v156, v147, v157);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v180 = sub_1D5C38FA4(0, v180[2] + 1, 1, v180);
              }

              v149 = v180[2];
              v148 = v180[3];
              if (v149 >= v148 >> 1)
              {
                v180 = sub_1D5C38FA4((v148 > 1), v149 + 1, 1, v180);
              }

              v150 = v172;
              v151 = v157;
              (*(v172 + 8))(v155, v157);
              (*v176)(v158, v163);
              v152 = v180;
              v180[2] = v149 + 1;
              (*(v150 + 32))(v152 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v149, v156, v151);
              *(v186 + 16) = v152;
              __swift_destroy_boxed_opaque_existential_1(&v223);
              goto LABEL_23;
            }

            (*v176)(v138, v136);

            (v169)(v141, v142);
            __swift_destroy_boxed_opaque_existential_1(&v223);
          }

          else
          {

            v222 = 0;
            memset(v221, 0, sizeof(v221));
            sub_1D5C38FD8(v221);
          }

          v97 = v217;
          goto LABEL_23;
        }

        __swift_destroy_boxed_opaque_existential_1(&v226);
        v97 = v217;
      }

      else
      {
        v225 = 0;
        v223 = 0u;
        v224 = 0u;
        sub_1D5C38FD8(&v223);
      }

LABEL_7:
      v106 = v216;
      sub_1D7261EAC();
      v107 = *&v106[v105];
    }

    while (v107 != v226);
  }

  (*(v182 + 8))(v106, v189);

  FeedBannerAdRequester.unscheduleRequests(where:)(sub_1D70A85C4, v97);

  v110 = swift_allocObject();
  v111 = v211;
  v110[2] = v97;
  v110[3] = v111;
  v112 = v186;
  v110[4] = v210;
  v110[5] = v112;
  v110[6] = v208;

  return sub_1D5C0DB1C;
}

uint64_t sub_1D5C1BC64()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C1BC9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C1BD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D5C1BD64(a1, a2, a3);
  return v6;
}

uint64_t *sub_1D5C1BD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7260B9C();
  v7 = *(*v3 + 144);
  v8 = sub_1D725FACC();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  v9 = *(*v3 + 152);
  v10 = sub_1D725D34C();
  (*(*(v10 - 8) + 32))(v3 + v9, a2, v10);
  v11 = *(*v3 + 160);
  v12 = sub_1D725E9DC();
  (*(*(v12 - 8) + 32))(v3 + v11, a3, v12);
  return v3;
}

uint64_t FeedAdGroupDataProvider.__allocating_init(blueprint:layoutBlueprint:layoutCollection:adjacentDistance:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  FeedAdGroupDataProvider.init(blueprint:layoutBlueprint:layoutCollection:adjacentDistance:)(a1, a2, a3, a4);
  return v8;
}

__n128 **FeedAdGroupDataProvider.init(blueprint:layoutBlueprint:layoutCollection:adjacentDistance:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(*v4 + 144);
  v10 = sub_1D725FACC();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = *(*v4 + 152);
  v12 = sub_1D725D34C();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  v13 = *(*v4 + 160);
  v14 = sub_1D725E9DC();
  (*(*(v14 - 8) + 32))(v4 + v13, a3, v14);
  *(v4 + *(*v4 + 168)) = a4;
  return v4;
}

uint64_t sub_1D5C1C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  sub_1D5C1C1BC(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t *sub_1D5C1C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *(v6 + *(*v6 + 192)) = MEMORY[0x1E69E7CC0];
  v13 = *(*v6 + 144);
  v14 = sub_1D725FACC();
  (*(*(v14 - 8) + 32))(v6 + v13, a1, v14);
  v15 = *(*v6 + 152);
  v16 = sub_1D725D34C();
  (*(*(v16 - 8) + 32))(v6 + v15, a2, v16);
  v17 = *(*v6 + 160);
  v18 = sub_1D725E9DC();
  (*(*(v18 - 8) + 32))(v6 + v17, a3, v18);
  *(v6 + *(*v6 + 168)) = a4;
  *(v6 + *(*v6 + 176)) = a5;
  sub_1D5B63F14(a6, v6 + *(*v6 + 184));
  return v6;
}

uint64_t sub_1D5C1C3E0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, __n128 *a5)
{
  v10 = swift_allocObject();
  sub_1D5C1C450(a1, a2, a3, a4, a5);
  return v10;
}

__n128 **sub_1D5C1C450(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, __n128 *a5)
{
  v11 = *(*v5 + 144);
  v12 = sub_1D725FACC();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = *(*v5 + 152);
  v14 = sub_1D725D34C();
  (*(*(v14 - 8) + 32))(v5 + v13, a2, v14);
  v15 = *(*v5 + 160);
  v16 = sub_1D725E9DC();
  (*(*(v16 - 8) + 32))(v5 + v15, a3, v16);
  *(v5 + *(*v5 + 168)) = a4;
  *(v5 + *(*v5 + 176)) = a5;
  return v5;
}

uint64_t FeedNativeAdRequester.__allocating_init(blueprint:groupDataProvider:adManager:)(uint64_t a1, __n128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  FeedNativeAdRequester.init(blueprint:groupDataProvider:adManager:)(a1, a2, a3);
  return v6;
}

__n128 **FeedNativeAdRequester.init(blueprint:groupDataProvider:adManager:)(uint64_t a1, __n128 *a2, __int128 *a3)
{
  v7 = *(*v3 + 168);
  *(v3 + v7) = dispatch_group_create();
  v8 = *(*v3 + 144);
  v9 = sub_1D725FACC();
  (*(*(v9 - 8) + 32))(v3 + v8, a1, v9);
  *(v3 + *(*v3 + 152)) = a2;
  sub_1D5B63F14(a3, v3 + *(*v3 + 160));
  return v3;
}

Swift::Void __swiftcall FeedNativeAdRequester.processSection(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = *v1;
  v90 = sub_1D725895C();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v5);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1D4A4(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  v91 = *(v7 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v92 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v96 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v100 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v94 = &v82 - v21;
  v22 = sub_1D726062C();
  v98 = *(v22 - 8);
  v99 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v97 = &v82 - v27;
  sub_1D5C1D4A4(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v101 = &v82 - v30;
  v31 = sub_1D7258DBC();
  v104 = *(v31 - 8);
  v105 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v95 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v4 + 80);
  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = *(v4 + 88);
  *&v38 = v34;
  *(&v38 + 1) = v37;
  v102 = v4;
  v106 = *(v4 + 112);
  v109 = v38;
  v110 = v106;
  v39 = sub_1D725D68C();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v82 - v42;
  *&v109 = v34;
  *(&v109 + 1) = v37;
  v110 = v106;
  sub_1D725FACC();
  v103 = at;
  sub_1D725FAFC();
  sub_1D725D61C();
  sub_1D5C2159C();
  if (!swift_dynamicCast())
  {
    v108 = 0;
    memset(v107, 0, sizeof(v107));
    (*(v40 + 8))(v43, v39);
    sub_1D5C1D4F8(v107, &qword_1EDF35BA0, sub_1D5C2159C);
    return;
  }

  v85 = v40;
  sub_1D5B63F14(v107, &v109);
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    goto LABEL_12;
  }

  v44 = *(&v110 + 1);
  v45 = v111;
  __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
  if (((*(v45 + 16))(v44, v45) & 1) == 0)
  {
    goto LABEL_12;
  }

  v46 = (v2 + *(*v2 + 160));
  v47 = v46[3];
  v48 = v46[4];
  v83 = v46;
  v84 = __swift_project_boxed_opaque_existential_1(v46, v47);
  v49 = sub_1D725D62C();
  v50 = (*(v48 + 8))(v49);

  if ((v50 & 1) == 0)
  {
    goto LABEL_12;
  }

  v51 = v101;
  sub_1D7010A5C(&v109, v103, v101, *(&v106 + 1));
  v53 = v104;
  v52 = v105;
  if ((*(v104 + 48))(v51, 1, v105) != 1)
  {
    v57 = v95;
    (*(v53 + 32))(v95, v51, v52);
    v58 = v94;
    sub_1D7010C48(v2, v57, v94);
    v60 = v98;
    v59 = v99;
    if ((*(v98 + 48))(v58, 1, v99) == 1)
    {
      (*(v53 + 8))(v57, v52);
      (*(v85 + 8))(v43, v39);
      v54 = &qword_1EDF3AA28;
      v55 = MEMORY[0x1E69B3FD8];
      v56 = v58;
      goto LABEL_10;
    }

    v61 = v60;
    v62 = *(v60 + 32);
    v101 = v60 + 32;
    v102 = v62;
    v62(v97, v58, v59);
    sub_1D7010DE4(&v109, v2, v57, v100);
    v63 = v96;
    sub_1D7011028(&v109, v2, v57, v96);
    v64 = v83[4];
    *&v106 = v83[3];
    v94 = v64;
    v103 = __swift_project_boxed_opaque_existential_1(v83, v106);
    v65 = v88;
    sub_1D725894C();
    v84 = sub_1D725893C();
    v83 = v66;
    (*(v89 + 8))(v65, v90);
    v90 = sub_1D725D62C();
    v89 = v67;
    v88 = *(v2 + *(*v2 + 168));
    sub_1D5B68374(&v109, v107);
    v68 = v61;
    v69 = *(v61 + 16);
    v70 = v87;
    v69(v87, v97, v59);
    v71 = v92;
    sub_1D70119C4(v100, v92);
    v72 = v93;
    sub_1D70119C4(v63, v93);
    v73 = (*(v68 + 80) + 56) & ~*(v68 + 80);
    v74 = *(v91 + 80);
    v75 = (v86 + v74 + v73) & ~v74;
    v76 = (v8 + v74 + v75) & ~v74;
    v77 = v57;
    v78 = swift_allocObject();
    sub_1D5B63F14(v107, v78 + 16);
    v79 = v70;
    v80 = v99;
    v102(v78 + v73, v79, v99);
    sub_1D7011A44(v71, v78 + v75);
    sub_1D7011A44(v72, v78 + v76);
    (*(v94 + 16))(v84, v83, v90, v89, v88, sub_1D7011AC4, v78, v106, v94);

    v81 = MEMORY[0x1E69B3FD8];
    sub_1D5C1D4F8(v96, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
    sub_1D5C1D4F8(v100, &qword_1EDF3AA28, v81);
    (*(v98 + 8))(v97, v80);
    (*(v104 + 8))(v77, v105);
LABEL_12:
    (*(v85 + 8))(v43, v39);
    goto LABEL_13;
  }

  (*(v85 + 8))(v43, v39);
  v54 = &qword_1EDF3C370;
  v55 = MEMORY[0x1E6969C28];
  v56 = v51;
LABEL_10:
  sub_1D5C1D4F8(v56, v54, v55);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(&v109);
}

uint64_t sub_1D5C1D2D4()
{
  v1 = sub_1D726062C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_1D5C1D4A4(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(*(v5 - 8) + 64) + v6 + v7) & ~v6;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v10 = *(v2 + 48);
  if (!v10(v0 + v7, 1, v1))
  {
    v9(v0 + v7, v1);
  }

  if (!v10(v0 + v8, 1, v1))
  {
    v9(v0 + v8, v1);
  }

  return swift_deallocObject();
}

void sub_1D5C1D4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5C1D4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C1D4A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D5C1D554()
{
  result = qword_1EDF37508[0];
  if (!qword_1EDF37508[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDF37508);
  }

  return result;
}

uint64_t BlueprintItem<>.feedItem.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725CE7C();
  (*(a2 + 8))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D5C1D6AC(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  v3 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v2[11];
  v7 = v2[15];
  v8 = sub_1D725CE8C();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1D5BB149C(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for FeedItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v32 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v33 = &v31 - v20;
  *&v21 = v2[14];
  *&v22 = v2[10];
  *(&v22 + 1) = v6;
  *(&v21 + 1) = v7;
  v23 = v34;
  v35 = v22;
  v36 = v21;
  sub_1D725FACC();
  sub_1D725FADC();
  sub_1D5B49474(0, qword_1EDF37508, &protocol descriptor for FeedItemRepresentable);
  if (!swift_dynamicCast())
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D5BFB774(&v37, &qword_1EC881258, qword_1EDF37508, &protocol descriptor for FeedItemRepresentable);
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_1D5C24BAC(v13, qword_1EDF34EF0, type metadata accessor for FeedItem);
  }

  v24 = *(&v38 + 1);
  v25 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  (*(v25 + 8))(v24, v25);
  (*(v15 + 56))(v13, 0, 1, v14);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1D5C24BAC(v13, qword_1EDF34EF0, type metadata accessor for FeedItem);
  }

  v26 = v33;
  sub_1D5C21AEC(v13, v33, type metadata accessor for FeedItem);
  v27 = v32;
  sub_1D5BC892C(v26, v32, type metadata accessor for FeedItem);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v28 = v27;
    v29 = v31;
    sub_1D5C21AEC(v28, v31, type metadata accessor for FeedHeadline);
    if ((*(v29 + 32) & 8) != 0)
    {
      sub_1D681C160(v29, v23);
    }

    sub_1D5BCA7AC(v29, type metadata accessor for FeedHeadline);
    return sub_1D5BCA7AC(v26, type metadata accessor for FeedItem);
  }

  else
  {
    sub_1D5BCA7AC(v26, type metadata accessor for FeedItem);
    return sub_1D5BCA7AC(v27, type metadata accessor for FeedItem);
  }
}

void sub_1D5C1DB4C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v134 = a2;
  v5 = *v3;
  v6 = sub_1D726062C();
  v113 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v107 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v106 = &v104 - v11;
  v12 = v5[6];
  v137 = v5[5];
  v138 = v12;
  v123 = v12;
  v13 = v5[8];
  v139 = v5[7];
  v140 = v13;
  v122 = v13;
  v14 = type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v137);
  WitnessTable = swift_getWitnessTable();
  v114 = v6;
  v109 = v14;
  v108 = WitnessTable;
  v16 = sub_1D7264ABC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v17);
  v129 = &v104 - v18;
  v118 = v16;
  v128 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v111 = (&v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v112 = &v104 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v124 = (&v104 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v125 = (&v104 - v30);
  v127 = sub_1D7260A9C();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v31);
  v132 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1D725E23C();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v33);
  v119 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v104 - v37;
  v39 = sub_1D72604BC();
  v133 = v39;
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v105 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v110 = &v104 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v104 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v104 - v52;
  v135 = *(type metadata accessor for FeedBannerAd(0) + 20);
  v136 = a1;
  sub_1D7260DBC();
  v54 = *(v40 + 104);
  v115 = *MEMORY[0x1E69B3EC8];
  v54(v49);
  LOBYTE(a1) = MEMORY[0x1DA6F7B30](v53, v49);
  v116 = v40;
  v55 = *(v40 + 8);
  v55(v49, v39);
  v131 = v55;
  v130 = v40 + 8;
  v55(v53, v39);
  if (a1 & 1) != 0 || (sub_1D7260DBC(), v56 = *MEMORY[0x1E69B3EA0], v57 = sub_1D72604AC(), (*(*(v57 - 8) + 104))(v49, v56, v57), v58 = v133, (v54)(v49, *MEMORY[0x1E69B3E98], v133), LOBYTE(v56) = MEMORY[0x1DA6F7B30](v53, v49), v59 = v131, v131(v49, v58), v59(v53, v58), (v56))
  {
    v60 = sub_1D725E9AC();
    if (v60)
    {
      v61 = v60;
      v137 = v123;
      v138 = v122;
      sub_1D725D34C();
      sub_1D725D30C();
      sub_1D725E22C();
      v62 = *(v120 + 8);
      v63 = v121;
      v62(v38, v121);
      v64 = v119;
      sub_1D725D30C();
      sub_1D725E18C();
      v62(v64, v63);
      sub_1D7262E2C();
      sub_1D725D30C();
      sub_1D725E22C();
      v62(v38, v63);
      sub_1D7260D7C();
      v65 = v132;
      sub_1D7260A7C();
      v66 = (v3 + *(*v3 + 184));
      v67 = v66[4];
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      v68 = sub_1D7260A8C();
      v69 = (*(v67 + 8))(v68);

      if (v69)
      {
        (*(v126 + 8))(v65, v127);

        return;
      }

      v70 = v134;
      FeedAdGroupDataProvider.groupData(before:)(v134, v125);
      v71 = v124;
      FeedAdGroupDataProvider.groupData(after:)(v70, v124);
      v72 = &v129[*(TupleTypeMetadata2 + 48)];
      v73 = *(v128 + 16);
      v74 = v129;
      v75 = v118;
      v73();
      (v73)(v72, v71, v75);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v76 = v61;
        v77 = v111;
        (v73)(v111, v74, v75);
        v79 = *v77;
        v78 = v77[1];
        v80 = v136;
        v81 = v110;
        sub_1D7260DBC();
        v82 = (*(v116 + 88))(v81, v133);
        if (v82 == v115)
        {
          v131(v81, v133);
          v83 = swift_allocError();
          *v84 = v79;
          v84[1] = v78;
          sub_1D5C25664(v80, v83);

          v85 = *(v128 + 8);
          v85(v124, v75);
          v85(v125, v75);
          (*(v126 + 8))(v132, v127);
        }

        else
        {

          sub_1D5F33294(v79, v78);
          v85 = *(v128 + 8);
          v85(v124, v75);
          v85(v125, v75);
          (*(v126 + 8))(v132, v127);
          v131(v81, v133);
        }

        v85(v72, v75);
      }

      else
      {
        v86 = v112;
        (v73)(v112, v74, v75);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v87 = v61;
          (*(v113 + 8))(v86, v114);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D72646BC();
            __break(1u);
            return;
          }

          v88 = *v72;
          v89 = v72[1];
          v90 = v136;
          v91 = v105;
          sub_1D7260DBC();
          v92 = (*(v116 + 88))(v91, v133);
          if (v92 == v115)
          {
            v131(v91, v133);
            v93 = swift_allocError();
            *v94 = v88;
            v94[1] = v89;
            sub_1D5C25664(v90, v93);

            v95 = *(v128 + 8);
            v95(v124, v75);
            v95(v125, v75);
            (*(v126 + 8))(v132, v127);

            v95(v129, v75);
            return;
          }

          sub_1D5F33294(v88, v89);
          v85 = *(v128 + 8);
          v85(v124, v75);
          v85(v125, v75);
          (*(v126 + 8))(v132, v127);
          v131(v91, v133);
        }

        else
        {
          v96 = v113;
          v97 = *(v113 + 32);
          v98 = v106;
          v99 = v61;
          v100 = v114;
          v97(v106, v86, v114);
          v101 = v107;
          v97(v107, v72, v100);
          v102 = v132;
          sub_1D5C20438(v136, v132, v99, v98, v101);

          v103 = *(v96 + 8);
          v103(v101, v100);
          v103(v98, v100);
          v85 = *(v128 + 8);
          v85(v124, v75);
          v85(v125, v75);
          (*(v126 + 8))(v102, v127);
        }
      }

      v85(v129, v75);
    }
  }
}

uint64_t sub_1D5C1E99C(uint64_t a1, uint64_t a2)
{

  v2 = sub_1D725AC7C();

  return v2 & 1;
}

uint64_t FeedAdGroupDataProvider.groupData(before:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = *v4;
  v8 = *v4;
  v9 = sub_1D72605EC();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 80);
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = *(v7 + 88);
  v16 = v8[7];
  *&v64 = v12;
  *(&v64 + 1) = v15;
  v60 = v16;
  v65 = v16;
  v17 = sub_1D725D68C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v52 - v20;
  if (sub_1D7258DAC() < 1)
  {
    *a2 = xmmword_1D7279980;
    sub_1D726062C();
    *&v64 = v12;
    *(&v64 + 1) = v15;
    v65 = v8[6];
    v66 = v60;
    v67 = v8[8];
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v64);
    swift_getWitnessTable();
    sub_1D7264ABC();
    return swift_storeEnumTagMultiPayload();
  }

  v58 = a2;
  v55 = a1;
  sub_1D5C23360(v22, a1, v4);
  *&v23 = v12;
  *(&v23 + 1) = v15;
  v64 = v23;
  v65 = v60;
  sub_1D725FACC();
  sub_1D725FAFC();
  sub_1D725D61C();
  (*(v18 + 8))(v21, v17);
  sub_1D5B49474(0, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
  v24 = v12;
  if (!swift_dynamicCast())
  {
    *&v66 = 0;
    v64 = 0u;
    v65 = 0u;
    sub_1D617D2E4(&v64, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
    sub_1D726062C();
    v44 = v58;
    *v58 = 0;
    v44[1] = 0;
    *&v64 = v12;
    *(&v64 + 1) = v15;
    v65 = v8[6];
    v66 = v60;
    v67 = v8[8];
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v64);
    swift_getWitnessTable();
    sub_1D7264ABC();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1D5B63F14(&v64, v61);
  v25 = v62;
  v26 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  (*(v26 + 8))(&v64, v25, v26);
  if ((v64 & 2) != 0)
  {
    v46 = v62;
    v47 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v47 + 16))(v46, v47);
    sub_1D5C2371C(v55, 0, 0);
    v48 = v62;
    v49 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v49 + 24))(v48, v49);
    v50 = v62;
    v51 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v51 + 32))(v50, v51);
    sub_1D72605FC();
    sub_1D726062C();
    *&v64 = v24;
    *(&v64 + 1) = v15;
    v65 = v8[6];
    v66 = v60;
    v67 = v8[8];
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v64);
    swift_getWitnessTable();
    sub_1D7264ABC();
  }

  else
  {
    v55 = v12;
    v54 = v15;
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v53 = qword_1EDFFC830;
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7273AE0;
    v28 = v62;
    v29 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v30 = v59;
    v31.n128_f64[0] = (*(v29 + 16))(v28, v29);
    sub_1D5C2560C(v31);
    v32 = v57;
    v33 = sub_1D72644BC();
    v35 = v34;
    v36 = *(v56 + 8);
    v36(v30, v32);
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D5B7E2C0();
    *(v27 + 32) = v33;
    *(v27 + 40) = v35;
    v37 = sub_1D7262EDC();
    sub_1D725C30C("Skipping request for placement because group does not allow ads to be inserted after group, kind=%{public}@", 107, 2, &dword_1D5B42000, v53, v37, v27);

    v38 = v62;
    v39 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v39 + 16))(v38, v39);
    v40 = sub_1D72644BC();
    v42 = v41;
    v36(v30, v32);
    v43 = v58;
    *v58 = v40;
    v43[1] = v42;
    sub_1D726062C();
    *&v64 = v55;
    *(&v64 + 1) = v54;
    v65 = v8[6];
    v66 = v60;
    v67 = v8[8];
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v64);
    swift_getWitnessTable();
    sub_1D7264ABC();
  }

  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

BOOL sub_1D5C1F1CC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

CGFloat sub_1D5C1F1FC(unsigned __int8 a1, id a2, uint64_t a3)
{
  v4 = a1;
  [a2 frame];
  if (v4 != 1)
  {
    return CGRectGetMinY(*&v5) - *(a3 + *(*a3 + 168));
  }

  return CGRectGetMaxY(*&v5);
}

double sub_1D5C1F278(char a1, uint64_t a2, id a3)
{
  v3 = *(a2 + *(*a2 + 168));
  if (!a1)
  {
    goto LABEL_4;
  }

  if (a1 != 1)
  {
    v3 = v3 + v3;
LABEL_4:
    [a3 frame];
    return v3 + CGRectGetHeight(v5);
  }

  return v3;
}

uint64_t FeedItem.headline.getter()
{
  v1 = v0;
  sub_1D5C1F744(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedHeadline(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v1, v18, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 3:
      sub_1D5BDDB20(v18, v14, type metadata accessor for FeedHeadline);
      v21 = *(v14 + 5);
      swift_unknownObjectRetain();
      sub_1D5BDDBE8(v14, type metadata accessor for FeedHeadline);
      result = v21;
      break;
    case 4:
      sub_1D5BDDB20(v18, v9, type metadata accessor for FeedWebEmbed);
      sub_1D5D62DB4(&v9[*(v6 + 48)], v5, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D5BDDBE8(v9, type metadata accessor for FeedWebEmbed);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {
        sub_1D5D206DC(v5, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5C1F744);
        goto LABEL_3;
      }

      v22 = *(v5 + 5);
      swift_unknownObjectRetain();
      sub_1D5BDDBE8(v5, type metadata accessor for FeedHeadline);
      result = v22;
      break;
    case 18:
      return result;
    default:
      sub_1D5BDDBE8(v18, type metadata accessor for FeedItem);
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

void sub_1D5C1F6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5C1F744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C1F7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5C1F7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C1F860@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v18 = MidX - CGRectGetMidX(v31);
  v32.origin.x = a6;
  v32.origin.y = a7;
  v32.size.width = a8;
  v32.size.height = a9;
  MidY = CGRectGetMidY(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  v20 = MidY - CGRectGetMidY(v33);
  v21 = sub_1D72605DC();
  v22 = *(*(v21 - 8) + 104);
  v23 = MEMORY[0x1E69B3F88];
  if (v20 > 0.0)
  {
    v23 = MEMORY[0x1E69B3FA0];
  }

  v24 = MEMORY[0x1E69B3F90];
  if (v18 > 0.0)
  {
    v24 = MEMORY[0x1E69B3F98];
  }

  if (v18 >= v20)
  {
    v23 = v24;
  }

  v25 = *v23;

  return v22(a1, v25, v21);
}

uint64_t sub_1D5C1F9A8(__n128 a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = *a3;
  v5 = *a3;
  v36 = sub_1D72605EC();
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v7);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v31 - v11;
  v12 = *(v4 + 88);
  v13 = *(v5 + 112);
  v15 = v14;
  *&v43 = v14;
  *(&v43 + 1) = v12;
  v40 = v13;
  v44 = v13;
  v37 = sub_1D725D68C();
  v16 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v17);
  v19 = &v31 - v18;
  result = sub_1D7258DAC();
  v21 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = (v16 + 8);
    v32 = v6;
    v34 = (v6 + 88);
    v33 = *MEMORY[0x1E69B3FA8];
    *&v23 = v15;
    *(&v23 + 1) = v12;
    v39 = v23;
    while (1)
    {
      v43 = v39;
      v44 = v40;
      sub_1D725FACC();
      swift_getWitnessTable();
      result = sub_1D7262C8C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      if (v21 >= result - 1)
      {
        return v21;
      }

      sub_1D725FAFC();
      v24 = v37;
      sub_1D725D61C();
      (*v22)(v19, v24);
      sub_1D5B49474(0, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v42 = 0;
        memset(v41, 0, sizeof(v41));
        sub_1D617D2E4(v41, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
        return v21;
      }

      v25 = v15;
      v26 = v3;
      sub_1D5B63F14(v41, &v43);
      v28 = *(&v44 + 1);
      v27 = v45;
      __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
      v29 = v35;
      (*(v27 + 16))(v28, v27);
      v30 = (*v34)(v29, v36);
      if (v30 != v33)
      {
        (*(v32 + 8))(v35, v36);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        return v21;
      }

      ++v21;
      __swift_destroy_boxed_opaque_existential_1(&v43);
      v3 = v26;
      v15 = v25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B19AdGroupDataProviderC13FailureReasonOyxq_q0_q1__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D5C1FDAC(uint64_t a1)
{
  if (!qword_1EDF33288)
  {
    sub_1D5B5D86C(255, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF33288);
    }
  }
}

uint64_t sub_1D5C1FE40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    v5 = *(a1 + 80);
    v28 = *(a1 + 88);
    v35 = *(a1 + 96);
    v34 = *(a1 + 40);
    v32 = *(a1 + 56);
    v33 = *(a2 + 40);
    v7 = *(a2 + 48);
    v30 = *(a1 + 72);
    v31 = *(a2 + 56);
    v8 = *(a2 + 64);
    v29 = *(a2 + 72);
    v9 = *(a2 + 80);
    v27 = *(a2 + 88);
    v11 = *(a2 + 96);
    result = sub_1D635D64C(*(a1 + 32), *(a2 + 32));
    if ((result & 1) == 0)
    {
      return 0;
    }

    v13 = a2 + 32;
    v14 = 1;
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v7 & 1 | (v34 != v33))
    {
      return 0;
    }

    while (1)
    {
      if (v4)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8 & 1 | (v32 != v31))
      {
        return 0;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9 & 1 | (v30 != v29))
      {
        return 0;
      }

      if (v35)
      {
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11 & 1 | (v28 != v27))
      {
        return 0;
      }

      if (v14 == v2)
      {
        break;
      }

      v15 = a1 + 32 + 72 * v14;
      v16 = *v15;
      v17 = (v13 + 72 * v14);
      v18 = *v17;
      v19 = *(*v15 + 16);
      if (v19 != *(*v17 + 16))
      {
        return 0;
      }

      v32 = *(v15 + 24);
      v4 = *(v15 + 32);
      v30 = *(v15 + 40);
      v5 = *(v15 + 48);
      v35 = *(v15 + 64);
      v33 = v17[1];
      v34 = *(v15 + 8);
      v7 = *(v17 + 16);
      v31 = v17[3];
      v8 = *(v17 + 32);
      v28 = *(v15 + 56);
      v29 = v17[5];
      v9 = *(v17 + 48);
      v27 = v17[7];
      if (v19)
      {
        v20 = v16 == v18;
      }

      else
      {
        v20 = 1;
      }

      v11 = *(v17 + 64);
      if (!v20)
      {
        v21 = v16 + 48;
        v22 = v18 + 48;
        while (v19)
        {
          result = *(v22 + 32);
          if (*(v21 - 8))
          {
            if (!*(v22 - 8))
            {
              return 0;
            }
          }

          else
          {
            if (*(v21 - 16) == *(v22 - 16))
            {
              v24 = *(v22 - 8);
            }

            else
            {
              v24 = 1;
            }

            if (v24)
            {
              return 0;
            }
          }

          if (*(v21 + 8))
          {
            if (!*(v22 + 8))
            {
              return 0;
            }
          }

          else
          {
            if (*v21 == *v22)
            {
              v25 = *(v22 + 8);
            }

            else
            {
              v25 = 1;
            }

            if (v25)
            {
              return 0;
            }
          }

          if (*(v21 + 24))
          {
            if (!*(v22 + 24))
            {
              return 0;
            }
          }

          else
          {
            if (*(v21 + 16) == *(v22 + 16))
            {
              v26 = *(v22 + 24);
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              return 0;
            }
          }

          if (*(v21 + 40))
          {
            if (!*(v22 + 40))
            {
              return 0;
            }
          }

          else
          {
            if (*(v21 + 32) == result)
            {
              v23 = *(v22 + 40);
            }

            else
            {
              v23 = 1;
            }

            if (v23)
            {
              return 0;
            }
          }

          v21 += 64;
          v22 += 64;
          if (!--v19)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        return result;
      }

LABEL_28:
      ++v14;
      if ((*(v15 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_8:
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1D5C201A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17[-v9];
  v19 = a1;
  v11 = swift_allocObject();
  v12 = (a2 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 24));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v11 + 16) = (*(v14 + 16))(v13, v14);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7488], v6);
  v18 = a2;
  v15 = MEMORY[0x1E69D6FA8];
  sub_1D5C203B4(0, &qword_1EDF3C100, MEMORY[0x1E69D6FA8]);
  sub_1D5BEAD60(&qword_1EDF3C108, &qword_1EDF3C100, v15, MEMORY[0x1E69D6FB0]);
  sub_1D72599EC();
  return (*(v7 + 8))(v10, v6);
}

void sub_1D5C203B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HeadlineViewLayout;
    v8[1] = &type metadata for HeadlineViewLayout.Attributes;
    v8[2] = sub_1D5BEB9A0();
    v8[3] = sub_1D5C0B958();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5C20438(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a4;
  v85 = a1;
  v86 = a2;
  sub_1D5BB13E4(0, &qword_1EDF3A918, sub_1D5C25550);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v89 = &v74 - v10;
  v84 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v84, v11);
  v87 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE1514(0);
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v75 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v88 = &v74 - v18;
  v19 = sub_1D726035C();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v83 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D72604BC();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v22);
  v76 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D7260DDC();
  v93 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v24);
  v78 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v92 = &v74 - v28;
  v29 = sub_1D726062C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v33 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v74 - v36;
  v90 = v5;
  v38 = (v5 + *(*v5 + 184));
  v39 = v38[4];
  v74 = v38[3];
  __swift_project_boxed_opaque_existential_1(v38, v74);
  [a3 frame];
  v41 = v40;
  v43 = v42;
  v44 = *(v30 + 16);
  v44(v37, v82, v29);
  v44(v33, a5, v29);
  v45 = *(v30 + 80);
  v46 = (v45 + 16) & ~v45;
  v47 = (v31 + v45 + v46) & ~v45;
  v48 = swift_allocObject();
  v49 = *(v30 + 32);
  v49(v48 + v46, v37, v29);
  v49(v48 + v47, v33, v29);
  v50 = *(v39 + 24);
  v51 = v85;
  v52 = v39;
  v53 = v80;
  v50(v85, v86, sub_1D5F33988, v48, v74, v52, v41, v43);

  v54 = v84;
  sub_1D7260D7C();
  sub_1D7260D1C();

  sub_1D7260D7C();
  (*(v77 + 104))(v76, *MEMORY[0x1E69B3ED0], v79);
  sub_1D7260D7C();
  sub_1D7260CCC();

  v55 = v92;
  sub_1D7260D8C();
  v56 = *v51;
  v57 = v51[1];
  v58 = v93;
  v59 = v78;
  v60 = v91;
  (*(v93 + 16))(v78, v55, v91);
  v61 = v87;
  *&v87[v54[6]] = 0x2000;
  v62 = &v61[v54[7]];
  *v62 = 0;
  v62[8] = 1;
  *&v61[v54[8]] = xmmword_1D72830B0;
  *v61 = v56;
  *(v61 + 1) = v57;
  v63 = v90;
  (*(v58 + 32))(&v61[v54[5]], v59, v60);
  sub_1D5C25550(0);
  (*(*(v64 - 8) + 56))(v89, 1, 1, v64);
  sub_1D5B48940(qword_1EDF42200, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);

  v65 = v88;
  sub_1D726051C();
  v66 = v75;
  v67 = v81;
  (*(v53 + 16))();
  v68 = *(*v63 + 192);
  swift_beginAccess();
  v69 = *(v63 + v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v63 + v68) = v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_1D5C38FA4(0, v69[2] + 1, 1, v69);
    *(v63 + v68) = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    v69 = sub_1D5C38FA4((v71 > 1), v72 + 1, 1, v69);
  }

  v69[2] = v72 + 1;
  (*(v53 + 32))(v69 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v72, v66, v67);
  *(v63 + v68) = v69;
  swift_endAccess();
  (*(v53 + 8))(v65, v67);
  return (*(v93 + 8))(v92, v91);
}

unint64_t sub_1D5C20C7C()
{
  result = qword_1EDF37120;
  if (!qword_1EDF37120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37120);
  }

  return result;
}

void sub_1D5C20CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FeedBannerAdViewLayout;
    v8[1] = type metadata accessor for FeedBannerAdViewLayout.Attributes(255);
    v8[2] = sub_1D5C20C7C();
    v8[3] = sub_1D5BEA96C(&qword_1EDF37260, type metadata accessor for FeedBannerAdViewLayout.Attributes, &protocol conformance descriptor for FeedBannerAdViewLayout.Attributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5C20DC8(uint64_t a1)
{
  if (!qword_1EDF3C078)
  {
    sub_1D5BF15B4(255);
    sub_1D7260CBC();
    sub_1D5C20C7C();
    sub_1D5BEA96C(&qword_1EDF3C188, sub_1D5BF15B4, MEMORY[0x1E69D6F60]);
    sub_1D5BEA96C(&unk_1EDF3A958, MEMORY[0x1E69B4388], MEMORY[0x1E69B4380]);
    v1 = sub_1D7259D3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C078);
    }
  }
}

uint64_t sub_1D5C20ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedBannerAd(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C20F38(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D5C18C08(0, &qword_1EDF3C0D0, sub_1D5C18CC8, &type metadata for GapViewLayout, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (v35 - v14);
  sub_1D5C18C08(0, &qword_1EDF3BF08, sub_1D5C18CC8, &type metadata for GapViewLayout, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = (v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v35 - v24;
  sub_1D5C18C70(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = a1;
  v30 = sub_1D7259B8C();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0x405E000000000000;
  *v21 = v31;
  (*(v18 + 104))(v21, *MEMORY[0x1E69D7488], v17);
  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  (*(v12 + 104))(v15, *MEMORY[0x1E69D7048], v11);
  sub_1D5C18CC8();
  sub_1D725A21C();
  (*(v12 + 8))(v15, v11);
  v32 = *(v18 + 8);
  v32(v21, v17);
  v33 = MEMORY[0x1E69D7150];
  sub_1D5C21324(0, &qword_1EDF3C028, MEMORY[0x1E69D7150]);
  sub_1D5C213A8(&qword_1EDF3C030, &qword_1EDF3C028, v33, MEMORY[0x1E69D7158]);
  sub_1D7259A1C();
  v32(v25, v17);
  return sub_1D5C18FC0(v29);
}

void sub_1D5C21324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for GapViewLayout;
    v8[1] = &type metadata for GapViewLayout.Attributes;
    v8[2] = sub_1D5C18CC8();
    v8[3] = sub_1D6320D50();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5C213A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C21324(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C213EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t GapViewLayout.fastDecode(decoder:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D725A0EC();
  if (!v1)
  {
    v8 = v7;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    sub_1D725A11C();
    a1[3] = &type metadata for GapViewLayout.Attributes;
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = v11;
    *(result + 24) = v10;
    *(result + 32) = v9;
    *(result + 40) = v8;
    *(result + 48) = v12;
    *(result + 64) = v13;
  }

  return result;
}

unint64_t sub_1D5C2159C()
{
  result = qword_1EDF35BA8;
  if (!qword_1EDF35BA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF35BA8);
  }

  return result;
}

uint64_t sub_1D5C21600(uint64_t a1)
{
  v33 = a1;
  v2 = *v1;
  v3 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v30 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v2[11];
  v7 = v2[15];
  v8 = sub_1D725CE8C();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1D5BB13E4(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for FeedItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v32 = &v30 - v20;
  *&v21 = v2[14];
  *&v22 = v2[10];
  *(&v22 + 1) = v6;
  *(&v21 + 1) = v7;
  v23 = v33;
  v34 = v22;
  v35 = v21;
  sub_1D725FACC();
  sub_1D725FADC();
  sub_1D5C1D554();
  if (!swift_dynamicCast())
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1D5F33238(&v36, &qword_1EC881258, sub_1D5C1D554);
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_1D5F33238(v13, qword_1EDF34EF0, type metadata accessor for FeedItem);
  }

  v24 = *(&v37 + 1);
  v25 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(v25 + 8))(v24, v25);
  (*(v15 + 56))(v13, 0, 1, v14);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1D5F33238(v13, qword_1EDF34EF0, type metadata accessor for FeedItem);
  }

  v26 = v32;
  sub_1D5C21A84(v13, v32, type metadata accessor for FeedItem);
  v27 = v31;
  sub_1D5BC8CF4(v26, v31);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v28 = v30;
    sub_1D5C21A84(v27, v30, type metadata accessor for FeedBannerAd);
    sub_1D5C1DB4C(v28, v23);
    sub_1D5C21E2C(v28, type metadata accessor for FeedBannerAd);
    return sub_1D5C21E2C(v26, type metadata accessor for FeedItem);
  }

  else
  {
    sub_1D5C21E2C(v26, type metadata accessor for FeedItem);
    return sub_1D5C21E2C(v27, type metadata accessor for FeedItem);
  }
}

uint64_t sub_1D5C21A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C21E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C21E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5C21EEC(void *a1)
{
  v140 = a1;
  v2 = *v1;
  v115 = sub_1D725C09C();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v3);
  v117 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D726096C();
  v116 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v5);
  v118 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for FeedEngagementBanner(0);
  MEMORY[0x1EEE9AC00](v113, v7);
  v129 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D725EC6C();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v9);
  v123 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v132 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1D726097C();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v14);
  v120 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D72604BC();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v16);
  v131 = (&v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v126, v18);
  v130 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C232F4(0, &qword_1EDF3B4C0, MEMORY[0x1E69D8450]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v135 = &v113 - v22;
  v23 = sub_1D725EF5C();
  v24 = *(v23 - 8);
  v138 = v23;
  v139 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v134 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2[11];
  v28 = v2[15];
  v29 = sub_1D725CE8C();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_1D5C232F4(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v113 - v33;
  v35 = type metadata accessor for FeedItem(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v133 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v137 = &v113 - v41;
  *&v42 = v2[14];
  v136 = v2;
  *&v43 = v2[10];
  *(&v43 + 1) = v27;
  v44 = v1;
  *(&v42 + 1) = v28;
  v141 = v43;
  v142 = v42;
  sub_1D725FACC();
  v45 = v140;
  sub_1D725FADC();
  sub_1D5B49474(0, qword_1EDF37508, &protocol descriptor for FeedItemRepresentable);
  if (!swift_dynamicCast())
  {
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    sub_1D5BFB774(&v143, &qword_1EC881258, qword_1EDF37508, &protocol descriptor for FeedItemRepresentable);
    (*(v36 + 56))(v34, 1, 1, v35);
    goto LABEL_6;
  }

  v46 = *(&v144 + 1);
  v47 = v145;
  __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
  (*(v47 + 8))(v46, v47);
  (*(v36 + 56))(v34, 0, 1, v35);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
LABEL_6:
    v54 = qword_1EDF34EF0;
    v55 = type metadata accessor for FeedItem;
    v56 = v34;
    return sub_1D5C24CC8(v56, v54, v55);
  }

  v48 = v137;
  sub_1D5C21CF4(v34, v137, type metadata accessor for FeedItem);
  v49 = v45;
  sub_1D7258DAC();
  v50 = *(v136 + 8);
  v143 = *(v136 + 6);
  v144 = v50;
  sub_1D725D34C();
  v51 = v135;
  sub_1D725D32C();
  v53 = v138;
  v52 = v139;
  if ((*(v139 + 48))(v51, 1, v138) == 1)
  {
    sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
    v54 = &qword_1EDF3B4C0;
    v55 = MEMORY[0x1E69D8450];
    v56 = v51;
    return sub_1D5C24CC8(v56, v54, v55);
  }

  v58 = v134;
  (*(v52 + 32))(v134, v51, v53);
  v59 = v133;
  sub_1D5BC8CF4(v48, v133);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v87 = v129;
      sub_1D5C21CF4(v59, v129, type metadata accessor for FeedEngagementBanner);
      v88 = sub_1D7258D9C();
      v89 = *(sub_1D725EF4C() + 16);

      if (v88 >= v89)
      {
        goto LABEL_30;
      }

      v90 = sub_1D725EF4C();
      result = sub_1D7258D9C();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      if (result >= *(v90 + 16))
      {
LABEL_53:
        __break(1u);
        return result;
      }

      v91 = v124;
      v92 = v123;
      v93 = v125;
      (*(v124 + 16))(v123, v90 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * result, v125);

      v94 = sub_1D725EC5C();
      (*(v91 + 8))(v92, v93);
      v58 = v134;
      if ((v94 & 1) == 0 || (v95 = sub_1D725E9AC()) == 0)
      {
LABEL_30:
        v108 = v87;
LABEL_31:
        sub_1D5BCAA4C(v108, type metadata accessor for FeedEngagementBanner);
        (*(v52 + 8))(v58, v53);
        return sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
      }

      v96 = v95;
      v97 = v117;
      sub_1D725C06C();
      v98 = v114;
      v99 = v115;
      v100 = (*(v114 + 88))(v97, v115);
      v101 = *MEMORY[0x1E69B56B0];
      v140 = v96;
      if (v100 == v101)
      {
        v102 = *MEMORY[0x1E69B4138];
        v103 = v116;
        v104 = *(v116 + 104);
        v105 = v118;
        v106 = v118;
        v107 = v119;
LABEL_36:
        v109 = v107;
LABEL_45:
        v104(v106, v102, v109);
LABEL_46:
        v111 = v120;
        (*(v103 + 16))(v120, v105, v107);
        v112 = v121;
        (*(v121 + 104))(v111, *MEMORY[0x1E69B4130], v122);
        [v140 frame];
        swift_beginAccess();
        sub_1D7260B8C();
        swift_endAccess();

        (*(v112 + 8))(v111, v122);
        (*(v103 + 8))(v118, v119);
        v108 = v129;
        goto LABEL_31;
      }

      v107 = v119;
      v103 = v116;
      if (v100 == *MEMORY[0x1E69B56B8])
      {
        (*(v98 + 8))(v117, v99);
        v102 = *MEMORY[0x1E69B4140];
        v104 = *(v103 + 104);
        v105 = v118;
        v106 = v118;
        goto LABEL_36;
      }

      if (v100 == *MEMORY[0x1E69B56C8])
      {
        v110 = MEMORY[0x1E69B4150];
      }

      else if (v100 == *MEMORY[0x1E69B56D0])
      {
        v110 = MEMORY[0x1E69B4158];
      }

      else
      {
        if (v100 != *MEMORY[0x1E69B56C0])
        {
          v104 = *(v116 + 104);
          if (v100 != *MEMORY[0x1E69B56E0])
          {
            v105 = v118;
            v104(v118, *MEMORY[0x1E69B4140], v119);
            (*(v98 + 8))(v117, v99);
            goto LABEL_46;
          }

          v102 = *MEMORY[0x1E69B4160];
          goto LABEL_44;
        }

        v110 = MEMORY[0x1E69B4148];
      }

      v102 = *v110;
      v104 = *(v116 + 104);
LABEL_44:
      v106 = v118;
      v109 = v119;
      v105 = v118;
      goto LABEL_45;
    case 3:
      v72 = v132;
      sub_1D5C21CF4(v59, v132, type metadata accessor for FeedHeadline);
      v73 = sub_1D7258D9C();
      v74 = *(sub_1D725EF4C() + 16);

      if (v73 >= v74)
      {
LABEL_29:
        (*(v52 + 8))(v58, v53);
        sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
        return sub_1D5BCAA4C(v72, type metadata accessor for FeedHeadline);
      }

      v75 = sub_1D725EF4C();
      result = sub_1D7258D9C();
      if ((result & 0x8000000000000000) == 0)
      {
        if (result < *(v75 + 16))
        {
          v76 = v124;
          v77 = v123;
          v78 = v125;
          (*(v124 + 16))(v123, v75 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * result, v125);

          v79 = sub_1D725EC5C();
          (*(v76 + 8))(v77, v78);
          v72 = v132;
          if (v79)
          {
            if ([*(v132 + 40) isDisplayingAsNativeAd])
            {
              v80 = sub_1D725E9AC();
              if (v80)
              {
                v81 = v80;
                v82 = *MEMORY[0x1E69B4128];
                v83 = sub_1D726095C();
                v84 = v120;
                (*(*(v83 - 8) + 104))(v120, v82, v83);
                v85 = v121;
                v86 = v122;
                (*(v121 + 104))(v84, *MEMORY[0x1E69B4168], v122);
                [v81 frame];
                swift_beginAccess();
                sub_1D7260B8C();
                swift_endAccess();

                (*(v85 + 8))(v84, v86);
                (*(v52 + 8))(v58, v53);
                sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
                return sub_1D5BCAA4C(v132, type metadata accessor for FeedHeadline);
              }
            }
          }

          goto LABEL_29;
        }

        goto LABEL_52;
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    case 2:
      v61 = v130;
      sub_1D5C21CF4(v59, v130, type metadata accessor for FeedBannerAd);
      v62 = v131;
      sub_1D7260DBC();
      v63 = v127;
      v64 = v128;
      if ((*(v127 + 88))(v62, v128) == *MEMORY[0x1E69B3ED8])
      {
        (*(v63 + 96))(v62, v64);
        v65 = sub_1D725E9AC();
        if (v65)
        {
          v66 = v65;
          sub_1D6E25058(v44, v49, v65);
          v67 = *MEMORY[0x1E69B4128];
          v68 = sub_1D726095C();
          v69 = v120;
          (*(*(v68 - 8) + 104))(v120, v67, v68);
          v70 = v121;
          v71 = v122;
          (*(v121 + 104))(v69, *MEMORY[0x1E69B4168], v122);
          swift_beginAccess();
          sub_1D7260B8C();
          swift_endAccess();

          (*(v70 + 8))(v69, v71);
          sub_1D5BCAA4C(v130, type metadata accessor for FeedBannerAd);
          (*(v52 + 8))(v58, v53);
          sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
          return __swift_destroy_boxed_opaque_existential_1(v131);
        }

        else
        {
          sub_1D5BCAA4C(v61, type metadata accessor for FeedBannerAd);
          (*(v52 + 8))(v58, v53);
          sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
          return __swift_destroy_boxed_opaque_existential_1(v62);
        }
      }

      else
      {
        sub_1D5BCAA4C(v61, type metadata accessor for FeedBannerAd);
        (*(v52 + 8))(v58, v53);
        sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
        return (*(v63 + 8))(v62, v64);
      }

    default:
      (*(v52 + 8))(v58, v53);
      sub_1D5BCAA4C(v48, type metadata accessor for FeedItem);
      return sub_1D5BCAA4C(v59, type metadata accessor for FeedItem);
  }
}

void sub_1D5C232F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5C23360(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a3;
  v31 = sub_1D72605EC();
  v27 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = *(v4 + 88);
  v12 = *(v5 + 112);
  v34 = v13;
  v38[0] = v13;
  v38[1] = v11;
  v33 = v12;
  v39 = v12;
  v14 = sub_1D725D68C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - v17;
  v19 = sub_1D7258DAC();
  result = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    v32 = *(*a3 + 144);
    if (result >= 1)
    {
      v30 = a3;
      v21 = (v15 + 8);
      v22 = (v27 + 88);
      v28 = *MEMORY[0x1E69B3FA8];
      *&v23 = v34;
      *(&v23 + 1) = v11;
      v29 = v23;
      while (1)
      {
        --v19;
        v35 = v29;
        v36 = v33;
        sub_1D725FACC();
        sub_1D725FAFC();
        sub_1D725D61C();
        (*v21)(v18, v14);
        sub_1D5B49474(0, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          sub_1D617D2E4(&v35, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
          return v19;
        }

        sub_1D5B63F14(&v35, v38);
        v25 = *(&v39 + 1);
        v24 = v40;
        __swift_project_boxed_opaque_existential_1(v38, *(&v39 + 1));
        (*(v24 + 16))(v25, v24);
        v26 = (*v22)(v8, v31);
        if (v26 != v28)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v38);
        if (v19 <= 1)
        {
          return 0;
        }
      }

      (*(v27 + 8))(v8, v31);
      __swift_destroy_boxed_opaque_existential_1(v38);
      return v19;
    }
  }

  return result;
}

uint64_t sub_1D5C2371C(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  LODWORD(v58) = a3;
  v6 = *v3;
  v7 = *(v6 + 128);
  v62 = *(v6 + 96);
  v63 = v7;
  v64 = v62;
  v65 = v7;
  v8 = sub_1D725E28C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = sub_1D726393C();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v10);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v48 - v14);
  v64 = v62;
  v65 = v63;
  v16 = sub_1D725D34C();
  WitnessTable = swift_getWitnessTable();
  v53 = sub_1D72640AC();
  MEMORY[0x1EEE9AC00](v53, v18);
  v52 = &v48 - v19;
  v56 = v16;
  v54 = WitnessTable;
  *&v62 = sub_1D726409C();
  v20 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v21);
  *&v63 = &v48 - v22;
  v61 = v8;
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v48 - v26;
  v28 = sub_1D725E9AC();
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = v28;
    v51 = v23;
    [v28 frame];
    MinX = CGRectGetMinX(v66);
    v32 = *(v4 + *(*v4 + 168));
    v33 = MinX - v32;
    v34 = sub_1D5C1F1FC(a2, v30, v4);
    [v30 frame];
    v35 = v32 + v32 + CGRectGetWidth(v67);
    v36 = sub_1D5C1F278(a2, v4, v30);
    v37 = swift_allocObject();
    v38 = v37;
    *(v37 + 16) = v29;
    v50 = v37 + 16;
    if (v58)
    {
      sub_1D7258DAC();
      sub_1D725D36C();
      v39 = sub_1D7258DAC();
      sub_1D5C23D30(v27, v39, v4, v38, v30, v33, v34, v35, v36);

      (*(v51 + 8))(v27, v61);
    }

    else
    {
      v57 = v37;
      v49 = v20;
      v58 = v30;
      v40 = v4;
      MEMORY[0x1DA6F9AD0](v56, v54);
      sub_1D726407C();
      v41 = (v55 + 32);
      v42 = (v51 + 32);
      for (i = (v51 + 8); ; (*i)(v27, v46))
      {
        v44 = v59;
        sub_1D726408C();
        (*v41)(v15, v44, v60);
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
        {
          break;
        }

        v45 = *v15;
        v46 = v61;
        (*v42)(v27, v15 + *(TupleTypeMetadata2 + 48), v61);
        sub_1D5C23D30(v27, v45, v40, v57, v58, v33, v34, v35, v36);
      }

      (*(v49 + 8))(v63, v62);

      v38 = v57;
    }

    swift_beginAccess();
    v29 = *(v38 + 16);
  }

  return v29;
}

uint64_t sub_1D5C23CF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C23D30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v94 = a5;
  v96 = a4;
  v123 = a2;
  v124 = a1;
  v14 = *a3;
  v15 = *a3;
  v16 = sub_1D72605DC();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v93 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D726061C();
  v98 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v19);
  v95 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a3;
  v21 = *(v14 + 120);
  v113 = *(v14 + 88);
  v112 = v21;
  v111 = sub_1D725CE8C();
  MEMORY[0x1EEE9AC00](v111, v22);
  v110 = &v89 - v23;
  sub_1D5C1F2DC(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v109 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for FeedItem(0);
  v103 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v27);
  v102 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D725EC6C();
  v29 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v30);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1D725EF5C();
  v117 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v33);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D7258DBC();
  v106 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v36);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v15 + 96);
  v114 = v15;
  v40 = *(v15 + 128);
  v129 = v39;
  v130 = v40;
  v41 = sub_1D725E28C();
  swift_getWitnessTable();
  v42 = sub_1D7261ECC();
  v118 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v89 - v44;
  swift_getWitnessTable();
  v46 = sub_1D7263FAC();
  v99 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v89 - v48;
  v121 = v41;
  sub_1D7262CEC();
  v50 = v118;
  (v118[2])(v49, v45, v42);
  v100 = v46;
  v101 = *(v46 + 36);
  sub_1D7261E9C();
  v50[1](v45, v42);
  v51 = *v104;
  v107 = *(*v104 + 144);
  v97 = *(v51 + 160);
  sub_1D7261EAC();
  v52 = v101;
  v53 = *&v49[v101];
  if (v53 == v129)
  {
    return (*(v99 + 8))(v49, v100);
  }

  v118 = (v117 + 1);
  v116 = v29 + 16;
  v115 = v29 + 8;
  v117 = (v106 + 1);
  v106 = (v103 + 7);
  v103 += 6;
  v91 = v98 + 32;
  v105 = v35;
  while (1)
  {
    v55 = v52;
    sub_1D7261EBC();
    MEMORY[0x1DA6F0420](v53, v123);
    sub_1D725E26C();
    v56 = sub_1D725EF4C();
    result = (*v118)(v35, v122);
    if ((v53 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v53 >= *(v56 + 16))
    {
      goto LABEL_30;
    }

    v57 = v56 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v53;
    v58 = v119;
    (*(v29 + 16))(v32, v57, v119);

    v59 = sub_1D725EC5C();
    (*(v29 + 8))(v32, v58);
    if (v59)
    {
      v60 = *(v114 + 112);
      v125 = *(v114 + 80);
      v126 = v113;
      v127 = v60;
      v128 = v112;
      sub_1D725FACC();
      sub_1D725FADC();
      sub_1D5B49474(0, qword_1EDF37508, &protocol descriptor for FeedItemRepresentable);
      if (!swift_dynamicCast())
      {
        (*v117)(v38, v120);
        v131 = 0;
        v129 = 0u;
        v130 = 0u;
        sub_1D617D2E4(&v129, &qword_1EC881258, qword_1EDF37508, &protocol descriptor for FeedItemRepresentable);
        v64 = v109;
        (*v106)(v109, 1, 1, v108);
        goto LABEL_13;
      }

      v62 = *(&v130 + 1);
      v61 = v131;
      __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
      v63 = v62;
      v64 = v109;
      (*(v61 + 8))(v63, v61);
      v65 = v108;
      (*v106)(v64, 0, 1, v108);
      __swift_destroy_boxed_opaque_existential_1(&v129);
      if ((*v103)(v64, 1, v65) == 1)
      {
        (*v117)(v38, v120);
LABEL_13:
        sub_1D5C24D24(v64, sub_1D5C1F2DC);
LABEL_14:
        v35 = v105;
        goto LABEL_5;
      }

      v66 = v102;
      sub_1D5C24B48(v64, v102);
      v67 = FeedItem.headline.getter();
      if (!v67)
      {
        sub_1D5C24D24(v66, type metadata accessor for FeedItem);
        (*v117)(v38, v120);
        goto LABEL_14;
      }

      if ([v67 isDisplayingAsNativeAd])
      {
        swift_unknownObjectRelease();
        sub_1D5C24D24(v102, type metadata accessor for FeedItem);
        (*v117)(v38, v120);
        goto LABEL_14;
      }

      v68 = sub_1D725E9AC();
      v35 = v105;
      if (!v68)
      {
        swift_unknownObjectRelease();
        sub_1D5C24D24(v102, type metadata accessor for FeedItem);
        (*v117)(v38, v120);
        return (*(v99 + 8))(v49, v100);
      }

      v69 = v68;
      [v68 frame];
      v133.origin.x = a6;
      v133.origin.y = a7;
      v133.size.width = a8;
      v133.size.height = a9;
      if (CGRectIntersectsRect(v132, v133))
      {
        swift_unknownObjectRetain();
        [v94 frame];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;
        v90 = v69;
        [v69 frame];
        sub_1D5C1F860(v93, v71, v73, v75, v77, v78, v79, v80, v81);
        sub_1D726060C();
        v82 = v96;
        swift_beginAccess();
        v83 = *(v82 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v82 + 16) = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = sub_1D5C24D84(0, v83[2] + 1, 1, v83);
          *(v96 + 16) = v83;
        }

        v86 = v83[2];
        v85 = v83[3];
        v87 = v86 + 1;
        if (v86 >= v85 >> 1)
        {
          v89 = v86 + 1;
          v88 = sub_1D5C24D84((v85 > 1), v86 + 1, 1, v83);
          v87 = v89;
          v83 = v88;
        }

        v83[2] = v87;
        (*(v98 + 32))(v83 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v86, v95, v92);
        *(v96 + 16) = v83;
        swift_endAccess();
      }

      else
      {
      }

      swift_unknownObjectRelease();
      sub_1D5C24D24(v102, type metadata accessor for FeedItem);
      (*v117)(v38, v120);
    }

    else
    {
      (*v117)(v38, v120);
    }

LABEL_5:
    sub_1D7261EAC();
    v52 = v55;
    v53 = *&v49[v55];
    if (v53 == v129)
    {
      return (*(v99 + 8))(v49, v100);
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D5C24B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C24BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BB149C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5C24C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C24C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C24CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C232F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5C24D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedAdGroupDataProvider.groupData(after:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v5 = *v3;
  v51 = sub_1D72605EC();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v6);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = *(v5 + 88);
  *&v12 = v8;
  *(&v12 + 1) = v11;
  v55 = v5;
  v57 = *(v5 + 112);
  v61 = v12;
  v62 = v57;
  v13 = sub_1D725D68C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - v16;
  v53 = a1;
  v18 = sub_1D7258DAC();
  *&v61 = v8;
  *(&v61 + 1) = v11;
  v54 = v11;
  v62 = v57;
  sub_1D725FACC();
  swift_getWitnessTable();
  v19 = sub_1D7262C8C();
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (v18 >= v19 - 1)
  {
    *v56 = xmmword_1D7279980;
    sub_1D726062C();
LABEL_9:
    *&v61 = v8;
    *(&v61 + 1) = v54;
    v62 = *(v55 + 96);
    v63 = v57;
    v64 = *(v55 + 128);
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v61);
    swift_getWitnessTable();
    sub_1D7264ABC();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1D5C1F9A8(v20, v53, v3);
  sub_1D725FAFC();
  sub_1D725D61C();
  (*(v14 + 8))(v17, v13);
  sub_1D5B49474(0, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
  if (!swift_dynamicCast())
  {
    *&v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_1D617D2E4(&v61, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
    sub_1D726062C();
    v41 = v56;
    *v56 = 0;
    *(v41 + 1) = 0;
    goto LABEL_9;
  }

  sub_1D5B63F14(&v61, v58);
  v21 = v59;
  v22 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  (*(v22 + 8))(&v61, v21, v22);
  if (v61)
  {
    v43 = v59;
    v44 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v44 + 16))(v43, v44);
    sub_1D5C2371C(v53, 1, 0);
    v45 = v59;
    v46 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v46 + 24))(v45, v46);
    v47 = v59;
    v48 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v48 + 32))(v47, v48);
    sub_1D72605FC();
    sub_1D726062C();
    *&v61 = v8;
    *(&v61 + 1) = v54;
    v62 = *(v55 + 96);
    v63 = v57;
    v64 = *(v55 + 128);
    type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v61);
    swift_getWitnessTable();
    sub_1D7264ABC();
    goto LABEL_11;
  }

  if (qword_1EDF1BB68 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v23 = qword_1EDFFC830;
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7273AE0;
  v25 = v59;
  v26 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v27 = v52;
  v28.n128_f64[0] = (*(v26 + 16))(v25, v26);
  sub_1D5C2560C(v28);
  v29 = v51;
  v30 = sub_1D72644BC();
  v32 = v31;
  v33 = *(v50 + 8);
  v33(v27, v29);
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1D5B7E2C0();
  *(v24 + 32) = v30;
  *(v24 + 40) = v32;
  v34 = sub_1D7262EDC();
  sub_1D725C30C("Skipping request for placement because group does not allow ads to be inserted before group, kind=%{public}@", 108, 2, &dword_1D5B42000, v23, v34, v24);

  v35 = v59;
  v36 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  (*(v36 + 16))(v35, v36);
  v37 = sub_1D72644BC();
  v39 = v38;
  v33(v27, v29);
  v40 = v56;
  *v56 = v37;
  *(v40 + 1) = v39;
  sub_1D726062C();
  *&v61 = v8;
  *(&v61 + 1) = v54;
  v62 = *(v55 + 96);
  v63 = v57;
  v64 = *(v55 + 128);
  type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v61);
  swift_getWitnessTable();
  sub_1D7264ABC();
LABEL_11:
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

void sub_1D5C25550(uint64_t a1)
{
  if (!qword_1EDF3A920)
  {
    sub_1D72609CC();
    sub_1D7260A9C();
    sub_1D5B48940(&qword_1EDF43930, MEMORY[0x1E69B41B0], MEMORY[0x1E69B41A8]);
    v1 = sub_1D7260E4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3A920);
    }
  }
}

unint64_t sub_1D5C2560C(__n128 a1)
{
  result = qword_1EDF3AA38;
  if (!qword_1EDF3AA38)
  {
    sub_1D72605EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3AA38);
  }

  return result;
}

uint64_t sub_1D5C25664(uint64_t *a1, uint64_t a2)
{
  v64 = a2;
  v54 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v54, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE1514(0);
  v68 = v7;
  v65 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v53 - v12;
  v13 = sub_1D726035C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D72604BC();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v16);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D7260DDC();
  v70 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v18);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v53 - v22;
  sub_1D5BB13E4(0, &qword_1EDF3A918, sub_1D5C25550);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v53 - v26;
  v59 = v2;
  v28 = *(v2 + *(*v2 + 176));
  sub_1D5C25550(0);
  v57 = v29;
  v30 = *(v29 - 8);
  v56 = *(v30 + 56);
  v58 = v30 + 56;
  v56(v27, 1, 1, v29);
  sub_1D7260D7C();
  v53 = v28;
  sub_1D7260CDC();

  sub_1D5F33238(v27, &qword_1EDF3A918, sub_1D5C25550);
  v64 = sub_1D7260D7C();
  v31 = *MEMORY[0x1E69B3EA0];
  v32 = sub_1D72604AC();
  v33 = v55;
  (*(*(v32 - 8) + 104))(v55, v31, v32);
  (*(v60 + 104))(v33, *MEMORY[0x1E69B3E98], v63);
  sub_1D7260D7C();
  sub_1D7260CCC();

  v34 = v65;
  v35 = v62;
  sub_1D7260D8C();
  v37 = *a1;
  v36 = a1[1];
  v38 = v70;
  v39 = *(v70 + 16);
  v40 = v61;
  v69 = v23;
  v39(v61, v23, v35);
  v41 = v54;
  *&v6[*(v54 + 24)] = 0x2000;
  v42 = &v6[v41[7]];
  *v42 = 0;
  v42[8] = 1;
  *&v6[v41[8]] = xmmword_1D72830B0;
  *v6 = v37;
  *(v6 + 1) = v36;
  (*(v38 + 32))(&v6[v41[5]], v40, v35);
  v43 = v59;
  v56(v27, 1, 1, v57);
  sub_1D5B48940(qword_1EDF42200, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);

  v44 = v66;
  v46 = v67;
  v45 = v68;
  sub_1D726051C();
  (*(v34 + 16))(v46, v44, v45);
  v47 = *(*v43 + 192);
  swift_beginAccess();
  v48 = *(v43 + v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + v47) = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_1D5C38FA4(0, v48[2] + 1, 1, v48);
    *(v43 + v47) = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_1D5C38FA4((v50 > 1), v51 + 1, 1, v48);
  }

  v48[2] = v51 + 1;
  (*(v34 + 32))(v48 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v51, v46, v45);
  *(v43 + v47) = v48;
  swift_endAccess();
  (*(v34 + 8))(v44, v45);
  return (*(v70 + 8))(v69, v35);
}