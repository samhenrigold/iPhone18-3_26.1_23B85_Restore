uint64_t sub_1BC6CEABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54 = v4;
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v51 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_1BC759EE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6F0, &qword_1BC767040);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v52 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v49 - v24;
  v56 = a1;
  PolicyProperty.wrappedValue.getter(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
    v25 = 1;
    v26 = v51;
    v27 = v60;
  }

  else
  {
    v49 = v5;
    v28 = *(v15 + 32);
    v28(v20, v13, v14);
    sub_1BC759E80();
    sub_1BC6330EC(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
    v29 = sub_1BC75C170();
    v30 = *(v15 + 8);
    v30(v18, v14);
    if (v29)
    {
      v31 = 0xEF50554E574F5247;
    }

    else
    {
      v31 = 0xEF454E4F454D4F53;
    }

    v32 = 0x5F4547415353454DLL;
    SCLocalizedStringKey.init(stringLiteral:)(*(&v31 - 1));
    (*(v15 + 16))(v18, v20, v14);
    v33 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v34 = swift_allocObject();
    v28((v34 + v33), v18, v14);
    v35 = v50;
    sub_1BC651F0C(v62, sub_1BC6D2178, v34);
    v30(v20, v14);
    v26 = v51;
    v27 = v60;
    v5 = v49;
    (*(v51 + 32))(v60, v35, v49);
    v25 = 0;
  }

  (*(v26 + 56))(v27, v25, 1, v5);
  v36._object = 0x80000001BC772F70;
  v36._countAndFlagsBits = 0xD000000000000024;
  SCLocalizedStringKey.init(stringLiteral:)(v36);
  v61[0] = v62[0];
  v61[1] = v62[1];
  v37 = v55;
  sub_1BC6D1EF8(v56, v55);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = swift_allocObject();
  sub_1BC6D1F5C(v37, v39 + v38);
  v40 = v57;
  sub_1BC651F0C(v61, sub_1BC6D20A4, v39);
  v41 = v27;
  v42 = v52;
  sub_1BC660024(v41, v52, &qword_1EBCDD6F0, &qword_1BC767040);
  v43 = *(v26 + 16);
  v44 = v58;
  v43(v58, v40, v5);
  v45 = v59;
  sub_1BC660024(v42, v59, &qword_1EBCDD6F0, &qword_1BC767040);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD708, &qword_1BC767078);
  v43((v45 + *(v46 + 48)), v44, v5);
  v47 = *(v26 + 8);
  v47(v40, v5);
  sub_1BC66008C(v60, &qword_1EBCDD6F0, &qword_1BC767040);
  v47(v44, v5);
  return sub_1BC66008C(v42, &qword_1EBCDD6F0, &qword_1BC767040);
}

uint64_t sub_1BC6CF14C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1BC759EE0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  PolicyProperty.wrappedValue.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_1BC66008C(v4, &unk_1EBCDBD90, &unk_1BC75F850);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_1BC759E80();
    sub_1BC6330EC(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
    v17 = sub_1BC75C170();
    v18 = *(v6 + 8);
    v18(v9, v5);
    if (v17)
    {
      v19 = 0x80000001BC772F40;
      v20 = 0xD000000000000027;
    }

    else
    {
      v20 = 0xD00000000000002FLL;
      v19 = 0x80000001BC772F10;
    }

    object = SCLocalizedStringKey.init(stringLiteral:)(*&v20).localized._object;
    v13 = sub_1BC651E78(&v27, object, v22);
    v14 = v23;
    v25 = v24;
    v16 = v26;
    result = (v18)(v11, v5);
    v15 = v25 & 1;
  }

  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  return result;
}

uint64_t sub_1BC6CF3FC(uint64_t a1)
{
  v2 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BC6CDE84();
  if (v6 == -1)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = v6;
    v8 = v5;
    v9 = Array<A>.partitionByIsFromMeFlag.getter(v5);
    sub_1BC638C1C(v8, v7);
  }

  v13[1] = v9;
  sub_1BC6D1EF8(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1BC6D1F5C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6F0, &qword_1BC767040);
  sub_1BC633C54(&qword_1EBCDD6F8, &qword_1EBCDC8E8, &unk_1BC762EC0, MEMORY[0x1E69E6338]);
  sub_1BC635BB4();
  sub_1BC6330EC(&qword_1EBCDD700, MEMORY[0x1E697B460], MEMORY[0x1E697B480]);
  return sub_1BC75B780();
}

uint64_t sub_1BC6CF60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_1BC759D00();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - v8;
  v9 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - v14;
  v15 = sub_1BC759FE0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + *(type metadata accessor for _SensitiveContentInPreviousCallTipView(0) + 40));
  v20 = a1;
  sub_1BC759CC0();
  if (!*(v19 + 16) || (v21 = sub_1BC639118(v18), (v22 & 1) == 0))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_6;
  }

  v23 = (*(v19 + 56) + 16 * v21);
  v24 = *v23;
  v25 = v23[1];
  sub_1BC635800(*v23, v25);
  (*(v16 + 8))(v18, v15);
  if (!v24)
  {
LABEL_6:
    v41 = 1;
    v40 = v50;
    return (*(v13 + 56))(v40, v41, 1, v12);
  }

  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v44 = v25;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  v27 = v20;
  sub_1BC759CD0();

  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v52);

  v28._countAndFlagsBits = 0x4F4C425F50495420;
  v28._object = 0xEE00454E4F5F4B43;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  SCLocalizedStringKey.init(stringInterpolation:)(v11, &v52._countAndFlagsBits);
  v51 = v52;
  v29 = v46;
  sub_1BC75A630();
  v30 = sub_1BC75A650();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v32 = v47;
  v31 = v48;
  v33 = v27;
  v34 = v49;
  (*(v48 + 16))(v47, v33, v49);
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = swift_allocObject();
  v37 = v44;
  *(v36 + 16) = v24;
  *(v36 + 24) = v37;
  (*(v31 + 32))(v36 + v35, v32, v34);
  v38 = v45;
  sub_1BC651F70(&v51, v29, sub_1BC6D2040, v36);
  v39 = v50;
  (*(v13 + 32))(v50, v38, v12);
  v40 = v39;
  v41 = 0;
  return (*(v13 + 56))(v40, v41, 1, v12);
}

uint64_t sub_1BC6CFAB8(void (*a1)(char *))
{
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759CC0();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BC6CFB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_1BC75BDE0();
  *(v4 + 56) = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6CFC34, v6, v5);
}

uint64_t sub_1BC6CFC34()
{
  v1 = *(v0 + 48);

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  v4 = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 65) = (v4 & 1) == 0;
  sub_1BC75B650();

  v5 = *(v0 + 8);

  return v5();
}

char *sub_1BC6CFD08()
{
  v0 = sub_1BC759D00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = sub_1BC6CDE84();
  if (v14 == -1)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = v14;
    v16 = v13;
    v17 = Array<A>.partitionByIsFromMeFlag.getter(v13);
    sub_1BC638C1C(v16, v15);
  }

  v18 = v17[2];

  switch(v18)
  {
    case 2uLL:
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
      result = sub_1BC6CDE84();
      if (v30 != 0xFF)
      {
        v7 = v30;
        v31 = result;
        v32 = Array<A>.partitionByIsFromMeFlag.getter(result);
        result = sub_1BC638C1C(v31, v7);
        if (!*(v32 + 2))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_13:
        v18 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v52 = *(v1 + 16);
        v52(v3, &v32[v18], v0);

        swift_getKeyPath();
        sub_1BC759CD0();

        v51 = *(v1 + 8);
        v51(v3, v0);
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

        v33._countAndFlagsBits = 32;
        v33._object = 0xE100000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
        result = sub_1BC6CDE84();
        if (v34 != -1)
        {
          v35 = v34;
          v36 = result;
          v37 = Array<A>.partitionByIsFromMeFlag.getter(result);
          result = sub_1BC638C1C(v36, v35);
LABEL_26:
          if (*(v37 + 2) < 2uLL)
          {
            __break(1u);
            goto LABEL_34;
          }

          v52(v3, &v37[v18 + *(v1 + 72)], v0);

          swift_getKeyPath();
          sub_1BC759CD0();

          v51(v3, v0);
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

          v48._countAndFlagsBits = 0x4F4C425F50495420;
          v48._object = 0xEE004F57545F4B43;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
          v28 = v10;
LABEL_31:
          SCLocalizedStringKey.init(stringInterpolation:)(v28, &v54._countAndFlagsBits);
          goto LABEL_32;
        }

LABEL_25:
        v37 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

LABEL_21:
      v32 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    case 1uLL:
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
      result = sub_1BC6CDE84();
      if (v24 == -1)
      {
        v26 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v25 = v24;
        v7 = result;
        v26 = Array<A>.partitionByIsFromMeFlag.getter(result);
        result = sub_1BC638C1C(v7, v25);
        if (v26[2])
        {
LABEL_10:
          (*(v1 + 16))(v3, v26 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

          swift_getKeyPath();
          sub_1BC759CD0();

          (*(v1 + 8))(v3, v0);
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

          v27._countAndFlagsBits = 0x4F4C425F50495420;
          v27._object = 0xEE00454E4F5F4B43;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
          v28 = v12;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_21;
    case 0uLL:
      v19._countAndFlagsBits = 0x6874206B636F6C42;
      v19._object = 0xEE006C6C61206D65;
      object = SCLocalizedStringKey.init(stringLiteral:)(v19).localized._object;
LABEL_32:
      v53 = v54;
      return sub_1BC651E78(&v53, object, v21);
  }

  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
  result = sub_1BC6CDE84();
  if (v39 != 0xFF)
  {
    v10 = v39;
    v40 = result;
    v41 = Array<A>.partitionByIsFromMeFlag.getter(result);
    result = sub_1BC638C1C(v40, v10);
    if (*(v41 + 2))
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  v41 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v42 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v52 = *(v1 + 16);
  v52(v3, &v41[v42], v0);

  swift_getKeyPath();
  sub_1BC759CD0();

  v51 = *(v1 + 8);
  v51(v3, v0);
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

  v43._countAndFlagsBits = 32;
  v43._object = 0xE100000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
  result = sub_1BC6CDE84();
  if (v44 == -1)
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v45 = v44;
    v46 = result;
    v47 = Array<A>.partitionByIsFromMeFlag.getter(result);
    result = sub_1BC638C1C(v46, v45);
  }

  if (*(v47 + 2) >= 2uLL)
  {
    v52(v3, &v47[v42 + *(v1 + 72)], v0);

    swift_getKeyPath();
    sub_1BC759CD0();

    v51(v3, v0);
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

    v49._countAndFlagsBits = 0x4F4C425F50495420;
    v49._object = 0xEF45524F4D5F4B43;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
    v28 = v7;
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1BC6D041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1BC75BE10();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BC6D1EF8(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC75BDE0();
  v12 = sub_1BC75BDD0();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BC6D1F5C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1BC652910(0, 0, v10, a3, v14);
}

uint64_t sub_1BC6D05D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1BC759FE0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_1BC759D00();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[15] = sub_1BC75BDD0();
  v8 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6D0738, v8, v7);
}

uint64_t sub_1BC6D0738()
{

  v1 = sub_1BC6CDE84();
  if (v2 == -1)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = v2;
    v4 = v1;
    v5 = Array<A>.partitionByIsFromMeFlag.getter(v1);
    sub_1BC638C1C(v4, v3);
  }

  v6 = v5[2];

  v7 = *(v0 + 48);
  if (v6 >= 2)
  {
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    *(v0 + 16) = v8;
    *(v0 + 24) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    sub_1BC75B640();
    v10 = *(v0 + 128);
    *(v0 + 32) = v8;
    *(v0 + 40) = v9;
    *(v0 + 129) = (v10 & 1) == 0;
    sub_1BC75B650();

    goto LABEL_16;
  }

  v11 = sub_1BC6CDE84();
  if (v12 == -1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = v12;
    v14 = v11;
    v15 = Array<A>.partitionByIsFromMeFlag.getter(v11);
    sub_1BC638C1C(v14, v13);
    if (v15[2])
    {
LABEL_8:
      v16 = *(v0 + 104);
      v17 = *(v0 + 112);
      v18 = *(v0 + 88);
      v19 = *(v0 + 96);
      v20 = *(v0 + 48);
      (*(v19 + 16))(v16, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);

      (*(v19 + 32))(v17, v16, v18);
      v21 = *(v20 + *(type metadata accessor for _SensitiveContentInPreviousCallTipView(0) + 40));
      sub_1BC759CC0();
      if (*(v21 + 16) && (v22 = sub_1BC639118(*(v0 + 80)), (v23 & 1) != 0))
      {
        v24 = *(v0 + 80);
        v25 = *(v0 + 56);
        v26 = *(v0 + 64);
        v27 = (*(v21 + 56) + 16 * v22);
        v28 = *v27;
        v29 = v27[1];
        sub_1BC635800(*v27, v29);
        v30 = *(v26 + 8);
        v30(v24, v25);
        v31 = *(v0 + 88);
        v32 = *(v0 + 96);
        if (v28)
        {
          v33 = *(v0 + 72);
          v34 = *(v0 + 56);
          v40 = *(v0 + 112);
          sub_1BC759CC0();
          v28(v33);
          sub_1BC635484(v28, v29);
          v30(v33, v34);
          (*(v32 + 8))(v40, v31);
        }

        else
        {
          (*(v32 + 8))(*(v0 + 112), v31);
        }
      }

      else
      {
        v35 = *(v0 + 112);
        v36 = *(v0 + 88);
        v37 = *(v0 + 96);
        (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
        (*(v37 + 8))(v35, v36);
      }

      goto LABEL_16;
    }
  }

LABEL_16:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1BC6D0A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v30 = a1;
  v9 = sub_1BC759FE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1BC639118(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1BC6D0D08();
      goto LABEL_9;
    }

    sub_1BC639370(v18, a4 & 1);
    v21 = sub_1BC639118(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1BC75C640();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v30;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v30;
    v25[1] = a2;

    return sub_1BC635484(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1BC6D0C48(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1BC6D0C48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1BC759FE0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_1BC6D0D08()
{
  v1 = v0;
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
  v5 = *v0;
  v6 = sub_1BC75C400();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = sub_1BC635800(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1BC6D0F94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC6D0FB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BC6D0FB4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD728, &qword_1BC7670E8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
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

void sub_1BC6D11A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC210, &qword_1BC761190);
      v7 = *(sub_1BC759D00() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
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
        sub_1BC759D00();
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

uint64_t sub_1BC6D1388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6D1420(uint64_t *a1, int a2)
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

uint64_t sub_1BC6D1468(uint64_t result, int a2, int a3)
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

void sub_1BC6D14AC(uint64_t a1)
{
  sub_1BC759FE0();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BC6D1C8C(319, &qword_1EDDCDFD8, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC6D1568(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BC759FE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFD)
  {
    v13 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v15 = v12 + (v14 & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v8 == v13)
      {
        v23 = *(v7 + 48);

        return v23(a1);
      }

      else
      {
        v24 = (a1 + v14) & ~v11;
        if (v10 == v13)
        {
          v25 = *(v9 + 48);

          return v25(v24, v10);
        }

        else
        {
          v26 = *(v24 + v12);
          if (v26 >= 2)
          {
            v27 = (v26 + 2147483646) & 0x7FFFFFFF;
          }

          else
          {
            v27 = -1;
          }

          if (v27 + 1 >= 2)
          {
            return v27;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v12 + (v14 & ~v11) == -1)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = v12 + (v14 & ~v11) + 1;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1BC6D17EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BC759FE0() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFD)
  {
    v15 = 253;
  }

  v16 = v12 + v13;
  v17 = v14 + ((v12 + v13) & ~v13) + 1;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 == v15)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v25 = &a1[v16] & ~v13;
    if (v11 == v15)
    {
      v26 = *(v10 + 56);

      v26(v25, a2, v11);
    }

    else
    {
      *(v25 + v14) = a2 + 2;
    }
  }
}

unint64_t sub_1BC6D1AE0()
{
  result = qword_1EBCDD650;
  if (!qword_1EBCDD650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD658, &qword_1BC766F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD640, &qword_1BC766DF8);
    sub_1BC759D90();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD638, &qword_1BC766DF0);
    type metadata accessor for _SensitiveContentInPreviousCallTipView(255);
    sub_1BC633BF8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BC6330EC(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD650);
  }

  return result;
}

void sub_1BC6D1C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI0aB21InPreviousCallTipViewV5Entry33_696580390F2FF1D604A03851C83390A1LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BC6D1CF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC6D1D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BC6D1D9C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1BC6D1DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD690;
  if (!qword_1EBCDD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD690);
  }

  return result;
}

unint64_t sub_1BC6D1E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD698;
  if (!qword_1EBCDD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD698);
  }

  return result;
}

unint64_t sub_1BC6D1E74()
{
  result = qword_1EBCDD6D0;
  if (!qword_1EBCDD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6D0);
  }

  return result;
}

uint64_t sub_1BC6D1EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6D1F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6D1FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BC6CF60C(a1, v6, a2);
}

uint64_t sub_1BC6D2040()
{
  sub_1BC759D00();
  v1 = *(v0 + 16);

  return sub_1BC6CFAB8(v1);
}

uint64_t sub_1BC6D20A4()
{
  type metadata accessor for _SensitiveContentInPreviousCallTipView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  sub_1BC75B650();
}

uint64_t sub_1BC6D2178()
{
  sub_1BC759EE0();
  v0 = sub_1BC6F39FC();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v0;
  }

  v3 = type metadata accessor for DefaultImplementations();
  return (*(v3 + 80))(v2);
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_1BC638C10(*(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 65));
  v5 = v0 + v3 + *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = sub_1BC759EE0();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6D24C0()
{
  v2 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6D05D0(v4, v5, v6, v0 + v3);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  sub_1BC638C10(*(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 65));
  v5 = v0 + v3 + *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = sub_1BC759EE0();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6D279C()
{
  v2 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6CFB9C(v4, v5, v6, v0 + v3);
}

unint64_t sub_1BC6D2974()
{
  result = qword_1EBCDD738;
  if (!qword_1EBCDD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD740, &qword_1BC7670F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD680, &qword_1BC767008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6D8, &qword_1BC767038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD678, &qword_1BC767000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6B8, &qword_1BC767028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD670, &qword_1BC766FF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD668, &qword_1BC766FF0);
    v1 = sub_1BC633C54(&qword_1EBCDD6A0, &qword_1EBCDD668, &qword_1BC766FF0, MEMORY[0x1E6982A10]);
    sub_1BC635B08(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1BC635B5C(OpaqueTypeConformance2, v5, v6);
    v9 = swift_getOpaqueTypeConformance2();
    sub_1BC651EB8(v9, v7, v8);
    sub_1BC633C54(&qword_1EBCDD6C8, &qword_1EBCDD6B8, &qword_1BC767028, MEMORY[0x1E6981F48]);
    sub_1BC6D1E74();
    swift_getOpaqueTypeConformance2();
    sub_1BC635D18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD738);
  }

  return result;
}

uint64_t static HPKE.Ciphersuite.reportToApple.getter()
{
  v0 = sub_1BC75B960();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC75B940();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC75B950();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 104))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6966518]);
  (*(v5 + 104))(v7, *MEMORY[0x1E6966508], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E6966530], v0);
  return sub_1BC75B920();
}

uint64_t ProgressTracker.__allocating_init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  ProgressTracker.init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(a1, a2 & 1, a3, a4 & 1, a5, a6 & 1);
  return v12;
}

uint64_t HPKE.Sender.writeChunkedEncryptedCSV(from:to:progress:chunkSizeInBytes:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v56 = a4;
  v59 = a2;
  v57 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v6 = sub_1BC759680();
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75BA10();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC759800();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v61;
  sub_1BC759880();
  if (!v17)
  {
    v52 = v8;
    v51 = v6;
    v53 = v12;
    v54 = v10;
    v61 = v9;
    v18 = v60;
    sub_1BC6D5C98();
    (*(v14 + 16))(v16, a3, v13);
    v19 = sub_1BC6D549C(v16, &selRef_fileHandleForWritingToURL_error_);
    v62 = 0;
    *(&v49 - 2) = MEMORY[0x1EEE9AC00](v19);
    *(&v49 - 1) = &v62;
    v20 = v53;
    v21 = sub_1BC75BA00();
    v49 = &v49;
    MEMORY[0x1EEE9AC00](v21);
    *(&v49 - 4) = v20;
    *(&v49 - 3) = v18;
    *(&v49 - 2) = sub_1BC6D5CE4;
    *(&v49 - 1) = (&v49 - 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD750, &qword_1BC767118);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC761600;
    v23 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v24 = v23;
    sub_1BC6D74AC(inited);
    swift_setDeallocating();
    sub_1BC6D76A0(inited + 32);
    v25 = v52;
    sub_1BC759740();
    v50 = 0;

    v29 = sub_1BC759670();
    v30 = v25;
    v32 = v31;
    v33 = (*(v58 + 8))(v30, v51);
    if (v32)
    {
      v59 = &v49;
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      *&v64 = 0;
      *(&v64 + 6) = 0;
      v34 = sub_1BC75B8E0();
      v63 = xmmword_1BC767100;
      v64 = xmmword_1BC767100;
      sub_1BC6D774C(v34, v35, v36);
      v37 = v50;
      v38 = sub_1BC75B990();
      v50 = v37;
      v26 = v54;
      if (v37)
      {
        sub_1BC6AE140(v63, *(&v63 + 1));
        goto LABEL_4;
      }

      v43 = v38;
      v44 = v39;
      sub_1BC6AE140(v63, *(&v63 + 1));
      v45 = sub_1BC759810();
      v47 = v46;
      *&v64 = v45;
      *(&v64 + 1) = v46;
      sub_1BC6AE090(v45, v46);
      v48 = v50;
      sub_1BC75BF20();
      v50 = v48;
      if (v48)
      {
        sub_1BC6AE140(v64, *(&v64 + 1));
        sub_1BC6AE140(v45, v47);
        sub_1BC6AE140(v43, v44);
        goto LABEL_4;
      }

      sub_1BC6AE140(v64, *(&v64 + 1));
      sub_1BC6AE140(v45, v47);
      sub_1BC6AE140(v43, v44);
      v62 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v33);
      v40 = v55;
      v41 = v56;
      *(&v49 - 6) = v59;
      *(&v49 - 5) = v40;
      *(&v49 - 4) = v41;
      *(&v49 - 3) = v29;
      *(&v49 - 2) = sub_1BC6D5EEC;
      *(&v49 - 1) = (&v49 - 6);
      v42 = v50;
      (*(*v41 + 264))(v29);
      v50 = v42;
      if (v42)
      {
        v26 = v54;
LABEL_4:
        v27 = *(v26 + 8);
        a3 = v26 + 8;
        v27(v20, v61);
        [v19 closeFile];

        return a3;
      }

      v26 = v54;
    }

    sub_1BC75B9F0();
    (*(v26 + 8))(v20, v61);
    a3 = v62;
    [v19 closeFile];
  }

  return a3;
}

uint64_t HPKE.Sender.encryptChunks(from:ofSize:progress:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v35 = a2;
  v39 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v38 = sub_1BC759680();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC75BA10();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75BA00();
  v44 = v14;
  v45 = v6;
  v46 = a4;
  v47 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD750, &qword_1BC767118);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC761600;
  v16 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v17 = v16;
  sub_1BC6D74AC(inited);
  swift_setDeallocating();
  sub_1BC6D76A0(inited + 32);
  v18 = v40;
  sub_1BC759740();
  if (v18)
  {

    return (*(v41 + 8))(v14, v42);
  }

  else
  {
    v40 = a1;
    v34 = a4;

    v20 = sub_1BC759670();
    v22 = v21;
    v23 = (*(v37 + 8))(v11, v38);
    if (v22)
    {
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      *&v49 = 0;
      *(&v49 + 6) = 0;
      v24 = v42;
      v25 = sub_1BC75B8E0();
      v48 = xmmword_1BC767100;
      v49 = xmmword_1BC767100;
      sub_1BC6D774C(v25, v26, v27);
      v30 = sub_1BC75B990();
      v32 = v31;
      sub_1BC6AE140(v48, *(&v48 + 1));
      v34(0, 1, v30, v32);
      sub_1BC6AE140(v30, v32);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v23);
      v28 = v35;
      *(&v33 - 6) = v40;
      *(&v33 - 5) = v28;
      v29 = v36;
      *(&v33 - 4) = v36;
      *(&v33 - 3) = v20;
      *(&v33 - 2) = sub_1BC6D7EC4;
      *(&v33 - 1) = &v43;
      (*(*v29 + 264))(v20);
      v24 = v42;
    }

    sub_1BC75B9F0();
    return (*(v41 + 8))(v14, v24);
  }
}

uint64_t sub_1BC6D39E0(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void, uint64_t, unint64_t))
{
  sub_1BC6AE090(a3, a4);
  sub_1BC6D71EC(a3, a4, a5);
  v14 = sub_1BC6AE140(a3, a4);
  sub_1BC6D774C(v14, v15, v16);
  v17 = sub_1BC75B990();
  v19 = v18;
  result = sub_1BC6AE140(0, 0xC000000000000000);
  if (!v7)
  {
    a7(a1, a2 & 1, v17, v19);
    return sub_1BC6AE140(v17, v19);
  }

  return result;
}

uint64_t sub_1BC6D3B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v7 = sub_1BC759680();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD750, &qword_1BC767118);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC761600;
  v12 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v13 = v12;
  sub_1BC6D74AC(inited);
  swift_setDeallocating();
  sub_1BC6D76A0(inited + 32);
  sub_1BC759740();

  if (!v4)
  {
    v15 = v23;
    v21[1] = 0;
    v16 = sub_1BC759670();
    v18 = v17;
    v19 = (*(v8 + 8))(v10, v7);
    if (v18)
    {
      sub_1BC75BA10();
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      v24[0] = 0;
      *(v24 + 6) = 0;
      return sub_1BC75B8E0();
    }

    else
    {
      MEMORY[0x1EEE9AC00](v19);
      v21[-6] = a3;
      v21[-5] = v15;
      v20 = v22;
      v21[-4] = v22;
      v21[-3] = v16;
      v21[-2] = sub_1BC6D7DE0;
      v21[-1] = &v25;
      return (*(*v20 + 264))(v16, v15, sub_1BC6D7EDC);
    }
  }

  return result;
}

void HPKE.Recipient.decryptChunkedEncryptedCSV(_:to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1BC759800();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759880();
  if (!v3)
  {
    sub_1BC6D5C98();
    (*(v8 + 16))(v10, a2, v7);
    v11 = sub_1BC6D549C(v10, &selRef_fileHandleForWritingToURL_error_);
    v12 = v11;
    *(&v13 - 2) = MEMORY[0x1EEE9AC00](v11);
    sub_1BC6D3F90(44, 0xE100000000000000, 0x100000, a1, sub_1BC6D77B8, (&v13 - 4), v4);
    [v12 closeFile];
  }
}

void sub_1BC6D3F90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  v114 = a5;
  v115 = a7;
  v113 = a6;
  v104 = a2;
  v103 = a1;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD768, &qword_1BC767120);
  v10 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v102 = &v92 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD770, &qword_1BC767128);
  MEMORY[0x1EEE9AC00](v101);
  v13 = &v92 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD778, &unk_1BC767130);
  v14 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v92 - v15;
  v16 = sub_1BC75BBA0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v105 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BC759800();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a3;
  if (a3 < 1)
  {
    sub_1BC6D7804(v20, v21, v22);
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    return;
  }

  v112 = v13;
  sub_1BC6D5C98();
  (*(v19 + 16))(v24, a4, v18);
  v25 = sub_1BC6D549C(v24, &selRef_fileHandleForReadingFromURL_error_);
  v26 = v7;
  if (!v7)
  {
    v27 = v25;
    v120 = 0;
    v121 = 0xE000000000000000;
    v96 = 0xE000000000000000;
    v28 = MEMORY[0x1BFB27470]();
    v30 = sub_1BC75BF10();
    v95 = (v10 + 16);
    v94 = (v10 + 8);
    v92 = (v14 + 8);
    v100 = xmmword_1BC767100;
    v32 = v31;
    v93 = v27;
    while (1)
    {
      objc_autoreleasePoolPop(v28);
      if (v32 >> 60 == 15)
      {
        break;
      }

      v33 = MEMORY[0x1BFB27470]();
      sub_1BC75BB90();
      v34 = sub_1BC75BB70();
      if (!v35)
      {
        sub_1BC6D7804(v34, 0, v36);
        swift_allocError();
        *v83 = 1;
        swift_willThrow();
LABEL_26:
        objc_autoreleasePoolPop(v33);
        sub_1BC6AE12C(v30, v32);
        goto LABEL_27;
      }

      v37 = v35;
      v97 = v33;
      v98 = v32;
      v99 = v30;
      v117 = v103;
      v118 = v104;
      MEMORY[0x1EEE9AC00](v34);
      *(&v92 - 2) = &v117;
      v111 = v38;
      sub_1BC6D6D04(sub_1BC6D7EF4, (&v92 - 4), v38, v37);
      v116 = v26;
      v39 = v102;
      sub_1BC75C760();
      v40 = v112;
      v41 = v122;
      (*v95)(v112, v39, v122);
      v42 = *(v101 + 36);
      sub_1BC633C54(&qword_1EBCDD788, &qword_1EBCDD768, &qword_1BC767120, MEMORY[0x1E69E7BC8]);
      sub_1BC75BE90();
      (*v94)(v39, v41);
      sub_1BC75BEA0();
      if (*(v40 + v42) != v117)
      {
        v58 = 15;
        v106 = v42;
        v107 = v37;
        while (1)
        {
          v59 = sub_1BC75BEC0();
          v61 = *v60;
          v43 = v60[1];
          v59(&v117, 0);
          sub_1BC75BEB0();
          if (v61 >> 14 < v58 >> 14)
          {
            break;
          }

          v62 = sub_1BC75BC50();
          v63 = MEMORY[0x1BFB267B0](v62);
          v65 = v64;

          MEMORY[0x1BFB267E0](v63, v65);

          v66 = HIBYTE(v121) & 0xF;
          if ((v121 & 0x2000000000000000) == 0)
          {
            v66 = v120 & 0xFFFFFFFFFFFFLL;
          }

          if (v66)
          {
            v67 = sub_1BC759830();
            if (v68 >> 60 == 15)
            {
              sub_1BC6D7804(v67, v68, v69);
              swift_allocError();
              *v77 = 1;
              swift_willThrow();
LABEL_25:

              v30 = v99;
              sub_1BC6D7874(v112);
              (*v92)(v109, v110);
              v27 = v93;
              v32 = v98;
              v33 = v97;
              goto LABEL_26;
            }

            v70 = v67;
            v71 = v68;
            v117 = v67;
            v118 = v68;
            v119 = v100;
            sub_1BC6D774C(v67, v68, v69);
            v72 = v116;
            v73 = sub_1BC75B9B0();
            if (v72)
            {
              sub_1BC6AE140(v119, *(&v119 + 1));
              sub_1BC6AE12C(v70, v71);
              goto LABEL_25;
            }

            v75 = v73;
            v76 = v74;
            sub_1BC6AE140(v119, *(&v119 + 1));
            v114(v75, v76);
            v116 = 0;
            sub_1BC6AE140(v75, v76);
            sub_1BC6AE12C(v70, v71);

            v120 = 0;
            v121 = 0xE000000000000000;
            v40 = v112;
          }

          sub_1BC75BEA0();
          v37 = v107;
          v58 = v43;
          if (*(v40 + v106) == v117)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      v43 = 15;
LABEL_9:
      sub_1BC6D7874(v40);
      v44 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v44 = v111 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v44 < v43 >> 14)
      {
        goto LABEL_41;
      }

      v45 = sub_1BC75BC50();
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v52 = MEMORY[0x1BFB267B0](v45, v47, v49, v51);
      v54 = v53;

      MEMORY[0x1BFB267E0](v52, v54);

      (*v92)(v109, v110);
      objc_autoreleasePoolPop(v97);
      v55 = sub_1BC6AE12C(v99, v98);
      v28 = MEMORY[0x1BFB27470](v55);
      v27 = v93;
      v56 = v116;
      v30 = sub_1BC75BF10();
      v32 = v57;
      v26 = v56;
      if (v56)
      {
        v96 = v121;
        objc_autoreleasePoolPop(v28);
LABEL_27:

        [v27 closeFile];

        return;
      }
    }

    v78 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v78 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v79 = sub_1BC759830();
      if (v80 >> 60 == 15)
      {
        sub_1BC6D7804(v79, v80, v81);
        swift_allocError();
        *v82 = 1;
        swift_willThrow();
      }

      else
      {
        v84 = v79;
        v117 = v79;
        v118 = v80;
        v85 = v80;
        v119 = v100;
        sub_1BC6D774C(v79, v80, v81);
        v86 = sub_1BC75B9B0();
        if (v26)
        {
          v89 = *(&v119 + 1);
          v88 = v119;
        }

        else
        {
          v90 = v86;
          v91 = v87;
          sub_1BC6AE140(v119, *(&v119 + 1));
          v114(v90, v91);
          v88 = v90;
          v89 = v91;
        }

        sub_1BC6AE140(v88, v89);
        sub_1BC6AE12C(v84, v85);
      }
    }

    goto LABEL_27;
  }
}

void URL.splitUTF8(separator:readSize:block:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v81 = a5;
  v82 = a4;
  v75 = a1;
  v76 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD768, &qword_1BC767120);
  v8 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v74 = &v64 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD770, &qword_1BC767128);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v64 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD778, &unk_1BC767130);
  v12 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v64 - v13;
  v14 = sub_1BC75BBA0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BC759800();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a3;
  if (a3 < 1)
  {
    sub_1BC6D7804(v18, v19, v20);
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
    return;
  }

  sub_1BC6D5C98();
  (*(v17 + 16))(v22, v5, v16);
  v23 = sub_1BC6D549C(v22, &selRef_fileHandleForReadingFromURL_error_);
  if (!v6)
  {
    v24 = v23;
    v86 = 0;
    v87 = 0xE000000000000000;
    v69 = 0xE000000000000000;
    v25 = MEMORY[0x1BFB27470]();
    v27 = sub_1BC75BF10();
    v29 = v28;
    v68 = (v8 + 16);
    v67 = (v8 + 8);
    v65 = (v12 + 8);
    v66 = v24;
    while (1)
    {
      objc_autoreleasePoolPop(v25);
      if (v29 >> 60 == 15)
      {
        break;
      }

      v30 = MEMORY[0x1BFB27470]();
      sub_1BC75BB90();
      v31 = sub_1BC75BB70();
      if (!v33)
      {
        sub_1BC6D7804(v31, 0, v32);
        swift_allocError();
        *v63 = 1;
        swift_willThrow();
        objc_autoreleasePoolPop(v30);
        sub_1BC6AE12C(v27, v29);
LABEL_20:

        [v24 closeFile];

        return;
      }

      v70 = v30;
      v71 = v29;
      v72 = v27;
      v85[0] = v75;
      v85[1] = v76;
      MEMORY[0x1EEE9AC00](v31);
      *(&v64 - 2) = v85;
      v83 = v35;
      v84 = v34;
      sub_1BC6D6D04(sub_1BC6D7858, (&v64 - 4), v35, v34);
      v36 = v74;
      sub_1BC75C760();
      v37 = v88;
      (*v68)(v11, v36, v88);
      v38 = *(v73 + 36);
      sub_1BC633C54(&qword_1EBCDD788, &qword_1EBCDD768, &qword_1BC767120, MEMORY[0x1E69E7BC8]);
      sub_1BC75BE90();
      (*v67)(v36, v37);
      sub_1BC75BEA0();
      if (*&v11[v38] != v85[0])
      {
        v53 = 15;
        while (1)
        {
          v54 = sub_1BC75BEC0();
          v56 = *v55;
          v39 = v55[1];
          v54(v85, 0);
          sub_1BC75BEB0();
          if (v56 >> 14 < v53 >> 14)
          {
            break;
          }

          v57 = sub_1BC75BC50();
          v58 = MEMORY[0x1BFB267B0](v57);
          v60 = v59;

          MEMORY[0x1BFB267E0](v58, v60);

          v61 = HIBYTE(v87) & 0xF;
          if ((v87 & 0x2000000000000000) == 0)
          {
            v61 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (v61)
          {
            v82();

            v86 = 0;
            v87 = 0xE000000000000000;
          }

          sub_1BC75BEA0();
          v53 = v39;
          if (*&v11[v38] == v85[0])
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v39 = 15;
LABEL_9:
      sub_1BC6D7874(v11);
      v40 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v40 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v40 < v39 >> 14)
      {
        goto LABEL_29;
      }

      v41 = sub_1BC75BC50();
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v48 = MEMORY[0x1BFB267B0](v41, v43, v45, v47);
      v50 = v49;

      MEMORY[0x1BFB267E0](v48, v50);

      (*v65)(v79, v80);
      objc_autoreleasePoolPop(v70);
      v51 = sub_1BC6AE12C(v72, v71);
      v25 = MEMORY[0x1BFB27470](v51);
      v24 = v66;
      v27 = sub_1BC75BF10();
      v29 = v52;
    }

    v62 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v62 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v82();
    }

    goto LABEL_20;
  }
}

_OWORD *HPKE.Recipient.decryptMetadata(fromHPKEEnvelope:recipientPrivateKey:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC761600;
  sub_1BC75C290();

  *&v21[0] = 0xD00000000000001ELL;
  *(&v21[0] + 1) = 0x80000001BC772FC0;
  v3 = sub_1BC7597D0();
  v4 = v21;
  MEMORY[0x1BFB267E0](v3);

  v5 = v21[0];
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v5;
  sub_1BC75C6F0();

  v7 = sub_1BC759820();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_1BC759530();
    swift_allocObject();
    v11 = sub_1BC759520();
    sub_1BC6D78DC(v11, v12, v13);
    sub_1BC759510();

    v20[0] = v21[0];
    v20[1] = v21[1];
    v20[2] = v22;
    v20[3] = v23;
    v19 = v22;
    v14 = sub_1BC6AE090(v22, *(&v22 + 1));
    sub_1BC6D774C(v14, v15, v16);
    v4 = sub_1BC75B9B0();
    sub_1BC6AE140(0, 0xC000000000000000);
    sub_1BC6AE140(v19, *(&v19 + 1));
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC761600;
    *(v18 + 56) = v6;
    *(v18 + 32) = 0xD000000000000020;
    *(v18 + 40) = 0x80000001BC772FE0;
    sub_1BC75C6F0();

    sub_1BC6D7930(v20);
    sub_1BC6AE140(v9, v10);
  }

  return v4;
}

id sub_1BC6D549C(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BC759770();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1BC759800();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1BC759720();

    swift_willThrow();
    v11 = sub_1BC759800();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_1BC6D55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BOOL8, uint64_t, unint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v35 = a4;
  v10 = sub_1BC759800();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6D5C98();
  (*(v11 + 16))(v13, a1, v10);
  v14 = sub_1BC6D549C(v13, &selRef_fileHandleForReadingFromURL_error_);
  if (!v6)
  {
    v15 = v14;
    v31 = a3;
    v32 = a2;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = MEMORY[0x1BFB27470]();
      v19 = sub_1BC75BF10();
      v21 = v20;
      objc_autoreleasePoolPop(v18);
      if (v21 >> 60 == 15)
      {
LABEL_20:
        [v15 closeFile];

        return;
      }

      v22 = MEMORY[0x1BFB27470]();
      v23 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        v24 = v35;
        if (v23 == 2)
        {
          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          v28 = v26 - v27;
          if (__OFSUB__(v26, v27))
          {
            goto LABEL_23;
          }

          v25 = __OFADD__(v17, v28);
          v17 += v28;
          if (v25)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v24 = v35;
        if (v23)
        {
          v29 = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_25;
          }

          v25 = __OFADD__(v17, v29);
          v17 += v29;
          if (v25)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v25 = __OFADD__(v17, BYTE6(v21));
          v17 += BYTE6(v21);
          if (v25)
          {
            goto LABEL_24;
          }
        }
      }

      (*(*v31 + 272))();
      v30 = v17 >= v24;
      v33(v16, v30, v19, v21);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      objc_autoreleasePoolPop(v22);
      sub_1BC6AE12C(v19, v21);
      ++v16;
      if (v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1BC6D592C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6D59F4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1BC6D5A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6D5B4C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t ProgressTracker.init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *(v6 + 24) = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *(v6 + 32) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4 & 1;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6 & 1;
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = a1;
  }

  [*(v6 + 16) setTotalUnitCount_];
  return v6;
}

unint64_t sub_1BC6D5C98()
{
  result = qword_1EBCDD748;
  if (!qword_1EBCDD748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDD748);
  }

  return result;
}

uint64_t sub_1BC6D5CE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = sub_1BC759810();
  v10 = v9;
  v20 = v8;
  v21 = v9;
  if ((a2 & 1) == 0)
  {
    if (sub_1BC75C5E0())
    {
      v12 = 10;
LABEL_8:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD7E8, &qword_1BC7674A8);
      v19 = sub_1BC633C54(&qword_1EBCDD7F0, &qword_1EBCDD7E8, &qword_1BC7674A8, MEMORY[0x1E696A0B0]);
      LOBYTE(v16) = v12;
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      sub_1BC759850();
      __swift_destroy_boxed_opaque_existential_1(&v16);
      v8 = v20;
      v10 = v21;
      goto LABEL_9;
    }

    result = sub_1BC75BA80();
    if (result)
    {
      result = sub_1BC6D6908(0x2CuLL, 0xE100000000000000);
      if ((result & 0x100000000) != 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = sub_1BC6D6908(0x2CuLL, 0xE100000000000000);
        if ((result & 0x100000000) != 0)
        {
LABEL_19:
          __break(1u);
          return result;
        }

        v12 = result;
        if ((result & 0xFFFFFF00) == 0)
        {
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
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
    goto LABEL_16;
  }

LABEL_9:
  v16 = v8;
  v17 = v10;
  v13 = sub_1BC6AE090(v8, v10);
  sub_1BC6D774C(v13, v14, v15);
  sub_1BC75BF20();
  sub_1BC6AE140(v16, v17);
  result = sub_1BC6AE140(v8, v10);
  if (v5)
  {
    return result;
  }

  if (__OFADD__(*v7, 1))
  {
    goto LABEL_17;
  }

  ++*v7;
  return result;
}

void sub_1BC6D5F34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  *(v3 + 32) = a2;
  v5 = [objc_opt_self() progressWithTotalUnitCount_];
  [*(v3 + 16) addChild:v5 withPendingUnitCount:1];
  v6 = *(v3 + 24);
  *(v3 + 24) = v5;
  v7 = v5;

  v8 = (*(*v3 + 216))(v22);
  if (__OFADD__(*v9, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v9;
    v10 = v8(v22, 0);
    if ((*(v3 + 48) & 1) == 0)
    {
      v11 = *(v3 + 40);
      v10 = (*(*v3 + 200))(v10);
      if (v11 < v10)
      {
        sub_1BC6D7984(v10, v12, v13);
        swift_allocError();
        *v14 = v11;
        *(v14 + 8) = 0;
LABEL_9:
        swift_willThrow();
LABEL_11:
        [v7 setCompletedUnitCount_];

        return;
      }
    }

    if (*(v3 + 64))
    {
LABEL_10:
      a3(v10);
      goto LABEL_11;
    }

    v15 = *(v3 + 56);
    v10 = (*(*v3 + 224))(v10);
    v18 = *(v3 + 32);
    v19 = __OFADD__(v10, v18);
    v20 = v10 + v18;
    if (!v19)
    {
      if (v15 < v20)
      {
        sub_1BC6D7984(v10, v16, v17);
        swift_allocError();
        *v21 = v15;
        *(v21 + 8) = 1;
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

char *sub_1BC6D615C(uint64_t a1)
{
  result = (*(*v1 + 240))(v12);
  if (__OFADD__(*v4, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  *v4 += a1;
  (result)(v12, 0);
  result = [v1[3] setCompletedUnitCount_];
  if (v1[8])
  {
    return result;
  }

  v5 = v1[7];
  result = (*(*v1 + 224))(result);
  v8 = v1[4];
  v9 = __OFADD__(result, v8);
  v10 = &result[v8];
  if (v9)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v5 < v10)
  {
    sub_1BC6D7984(result, v6, v7);
    swift_allocError();
    *v11 = v5;
    *(v11 + 8) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t ProgressTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SHA256Digest.init(readingURL:inChunksOfSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_1BC75BA10();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75BA00();
  type metadata accessor for ProgressTracker();
  v9 = swift_allocObject();
  v10 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *(v9 + 16) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  v12 = v10;
  *(v9 + 24) = [v11 init];
  *(v9 + 32) = 0u;
  *(v9 + 56) = 0;
  *(v9 + 72) = 0u;
  *(v9 + 64) = 1;
  *(v9 + 48) = 1;
  [v12 setTotalUnitCount_];

  v13 = v17[3];
  sub_1BC6D3B00(a2, v9, a1, v8);
  if (v13)
  {
    v14 = sub_1BC759800();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {

    sub_1BC75B9F0();
    v15 = sub_1BC759800();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BC6D6510(uint64_t a1, id *a2)
{
  result = sub_1BC75BB40();
  *a2 = 0;
  return result;
}

uint64_t sub_1BC6D6588(uint64_t a1, id *a2)
{
  v3 = sub_1BC75BB50();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BC6D6608@<X0>(uint64_t *a2@<X8>)
{
  sub_1BC75BB60();
  v3 = sub_1BC75BB30();

  *a2 = v3;
  return result;
}

uint64_t sub_1BC6D664C()
{
  v0 = sub_1BC75BB60();
  v1 = MEMORY[0x1BFB26820](v0);

  return v1;
}

uint64_t sub_1BC6D6688(uint64_t a1)
{
  sub_1BC75BB60();
  sub_1BC75BBE0();
}

uint64_t sub_1BC6D66DC(uint64_t a1)
{
  sub_1BC75BB60();
  sub_1BC75C700();
  sub_1BC75BBE0();
  v1 = sub_1BC75C720();

  return v1;
}

uint64_t sub_1BC6D6750(void *a1, uint64_t *a2)
{
  v2 = sub_1BC75BB60();
  v4 = v3;
  if (v2 == sub_1BC75BB60() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BC75C5E0();
  }

  return v7 & 1;
}

uint64_t sub_1BC6D67D8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BC75BB30();

  *a2 = v3;
  return result;
}

uint64_t sub_1BC6D6820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75BB60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC6D684C(uint64_t a1)
{
  v2 = sub_1BC6D7D98(&qword_1EBCDD7C8, type metadata accessor for URLResourceKey, &unk_1BC767408);
  v3 = sub_1BC6D7D98(&qword_1EBCDD7D0, type metadata accessor for URLResourceKey, &unk_1BC7673A8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1BC6D6908(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BC6D6A58(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1BC75C280();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1BC75C310() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1BC6D6A58(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BC6D6AF0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BC6D6B64(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BC6D6AF0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BC6D6C88(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BC6D6B64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BC75C310();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1BC6D6C88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BC75BC30();
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
    v5 = MEMORY[0x1BFB26800](15, a1 >> 16);
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

unint64_t sub_1BC6D6D04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v42 = a1;
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v34 = 4 * v6;
  while (2)
  {
    v37 = v7;
    v8 = sub_1BC75BC50();
    v9 = v8 >> 14;
    v38 = v10 >> 14;
    if (v8 >> 14 == v10 >> 14)
    {
LABEL_27:

      return sub_1BC75C750();
    }

    v11 = v8;
    while (1)
    {
      v39 = v9;
      v40 = sub_1BC75C130();
      v41 = v12;
      v13 = v42(&v40);
      if (v5)
      {
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      v11 = sub_1BC75C120();
      v9 = v11 >> 14;
      v5 = 0;
      if (v11 >> 14 == v38)
      {
        goto LABEL_27;
      }
    }

    if (v34 < v39)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      break;
    }

    result = sub_1BC75BC50();
    v17 = v16;
    v19 = v18;
    v20 = result;
    v21 = v19 >> 14;
    v22 = result >> 14;
    if (result >> 14 == v19 >> 14)
    {
      v5 = 0;
    }

    else
    {
      v33 = result >> 14;
      v35 = v19 >> 14;
      while (1)
      {
        v36 = v22;
        v23 = v20;
        v24 = v19;
        v25 = v17;
        v40 = sub_1BC75C130();
        v41 = v26;
        v27 = v42(&v40);

        if ((v27 & 1) == 0)
        {
          break;
        }

        result = sub_1BC75C120();
        v17 = v25;
        v20 = v23;
        v19 = v24;
        v22 = result >> 14;
        v21 = v35;
        v5 = 0;
        if (result >> 14 == v35)
        {
          v22 = v33;
          goto LABEL_18;
        }
      }

      v5 = 0;
      v22 = v33;
      v21 = v36;
    }

LABEL_18:
    if (v21 < v22)
    {
      goto LABEL_31;
    }

    sub_1BC75C140();
    v29 = v28;

    if (v29 >> 14 >= v39)
    {
      v7 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BC6D70E8(0, *(v37 + 2) + 1, 1, v37);
      }

      v31 = *(v7 + 2);
      v30 = *(v7 + 3);
      if (v31 >= v30 >> 1)
      {
        v7 = sub_1BC6D70E8((v30 > 1), v31 + 1, 1, v7);
      }

      *(v7 + 2) = v31 + 1;
      v32 = &v7[16 * v31];
      *(v32 + 4) = v11;
      *(v32 + 5) = v29;
      if (v29 >> 14 < v34)
      {
        result = sub_1BC75BBF0();
        if (v34 >= result >> 14)
        {
          continue;
        }

        goto LABEL_33;
      }

      return sub_1BC75C750();
    }

    break;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

char *sub_1BC6D70E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD7D8, &qword_1BC767498);
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

uint64_t sub_1BC6D71EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1BC75BA10();
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1BC75B8E0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1BC6D73CC(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1BC6D73CC(v5, v6);
  }

  sub_1BC75BA10();
  sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1BC75B8E0();
}

uint64_t sub_1BC6D73CC(uint64_t a1, uint64_t a2)
{
  result = sub_1BC759620();
  if (!result || (result = sub_1BC759640(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BC759630();
      sub_1BC75BA10();
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1BC75B8E0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6D74AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD7E0, &qword_1BC7674A0);
    v3 = sub_1BC75C250();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1BC75BB60();
      sub_1BC75C700();
      v27 = v7;
      sub_1BC75BBE0();
      v8 = sub_1BC75C720();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1BC75BB60();
        v18 = v17;
        if (v16 == sub_1BC75BB60() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1BC75C5E0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BC6D76A0(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_1EBCDD7A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCDD7A8);
    }
  }
}

unint64_t sub_1BC6D774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD760;
  if (!qword_1EBCDD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD760);
  }

  return result;
}

unint64_t sub_1BC6D7804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD780;
  if (!qword_1EBCDD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD780);
  }

  return result;
}

uint64_t sub_1BC6D7874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD770, &qword_1BC767128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC6D78DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD790;
  if (!qword_1EBCDD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD790);
  }

  return result;
}

unint64_t sub_1BC6D7984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD798;
  if (!qword_1EBCDD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD798);
  }

  return result;
}

unint64_t sub_1BC6D79DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD7A0;
  if (!qword_1EBCDD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD7A0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProgressTracker.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressTracker.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BC6D7D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC6D7DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(v4 + 16);
  sub_1BC6AE090(a3, a4);
  sub_1BC6D71EC(a3, a4, v7);
  return sub_1BC6AE140(a3, a4);
}

uint64_t sub_1BC6D7E6C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BC75C5E0() & 1;
  }
}

uint64_t sub_1BC6D7F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BC759800();
  __swift_allocate_value_buffer(v3, qword_1EBCF4610);
  v4 = __swift_project_value_buffer(v3, qword_1EBCF4610);
  sub_1BC7597E0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6D8094()
{
  if (qword_1EDDD1880 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC759800();

  return __swift_project_value_buffer(v0, qword_1EBCF4610);
}

uint64_t sub_1BC6D8388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  if (a1)
  {

    v11 = a6(a1, a2);
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 1;
  }

  v14 = v11;
  sub_1BC75B220();

  return a7(v14, v13);
}

uint64_t View.clearSensitiveContentCallbacks()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1BC637F60(v3);
  sub_1BC75B220();

  v4[10] = v3[10];
  v4[11] = v3[11];
  v4[12] = v3[12];
  v4[6] = v3[6];
  v4[7] = v3[7];
  v4[8] = v3[8];
  v4[9] = v3[9];
  v4[2] = v3[2];
  v4[3] = v3[3];
  v4[4] = v3[4];
  v4[5] = v3[5];
  v4[0] = v3[0];
  v4[1] = v3[1];
  return sub_1BC69811C(v4);
}

id sub_1BC6D8538()
{
  if (qword_1EBCEAFC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EBCF4628;

  return v0;
}

uint64_t sub_1BC6D85BC()
{
  if (qword_1EBCEAFD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BC6D8628()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    sub_1BC63302C(*(v0 + 24), *(v0 + 32));
  }

  else
  {

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC6D87A0(v6, v5, 0, sub_1BC635480);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BC6D87A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1BC6D87B0@<X0>(void *a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RemoteView(0);
  sub_1BC660024(v1 + *(v10 + 24), v9, &qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BC75A830();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BC75BF70();
    v13 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t RemoteView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD888, &qword_1BC767948);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = type metadata accessor for RemoteView(0);
  v11 = *(v10 + 24);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  swift_storeEnumTagMultiPayload();
  v12 = sub_1BC759AD0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1BC660024(v9, v7, &qword_1EBCDD888, &qword_1BC767948);
  sub_1BC75B630();
  sub_1BC66008C(v9, &qword_1EBCDD888, &qword_1BC767948);
  return sub_1BC6D9E2C(a1, a2 + *(v10 + 32), type metadata accessor for InterventionConfig);
}

uint64_t RemoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemoteView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1 = sub_1BC75ACD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD898, &qword_1BC767958);
  sub_1BC6D8D4C(v1, a1 + *(v6 + 44));
  sub_1BC6D9DC4(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BC6D9E2C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RemoteView);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8A8, &qword_1BC767978) + 36));
  sub_1BC75A860();
  result = sub_1BC75BDF0();
  *v9 = &unk_1BC767970;
  v9[1] = v8;
  return result;
}

uint64_t sub_1BC6D8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for RemoteView(0);
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v4;
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for _RemoteView(0);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA00, &qword_1BC767BD0);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA08, &qword_1BC767BD8);
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDDA10, &qword_1BC767BE0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = (&v41 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD888, &qword_1BC767948);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_1BC759AD0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  sub_1BC75B640();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BC66008C(v13, &qword_1EBCDD888, &qword_1BC767948);
    v18 = sub_1BC75B520();
    v19 = v53;
    *v53 = v18;
    *(v19 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
    sub_1BC6DD810();
    sub_1BC633C54(&qword_1EDDCE160, &qword_1EBCDD2B8, &qword_1BC76DEE0, MEMORY[0x1E697DB78]);
    return sub_1BC75AE00();
  }

  else
  {
    v44 = v15;
    v21 = *(v15 + 32);
    v42 = v17;
    v43 = v14;
    v21(v17, v13, v14);
    (*(v15 + 16))(v6, v17, v14);
    v22 = v46;
    v23 = *(v46 + 24);
    v24 = a1 + *(v3 + 32);
    v41 = a1;
    sub_1BC6D9DC4(v24, &v6[v23], type metadata accessor for InterventionConfig);
    *&v55[0] = swift_getKeyPath();
    sub_1BC6A7104(v55);
    v25 = &v6[*(v22 + 20)];
    strcpy(v25, "EXDefaultScene");
    v25[15] = -18;
    v26 = &v6[*(v22 + 28)];
    v27 = v55[11];
    *(v26 + 10) = v55[10];
    *(v26 + 11) = v27;
    *(v26 + 12) = v55[12];
    v26[208] = v56;
    v28 = v55[7];
    *(v26 + 6) = v55[6];
    *(v26 + 7) = v28;
    v29 = v55[9];
    *(v26 + 8) = v55[8];
    *(v26 + 9) = v29;
    v30 = v55[3];
    *(v26 + 2) = v55[2];
    *(v26 + 3) = v30;
    v31 = v55[5];
    *(v26 + 4) = v55[4];
    *(v26 + 5) = v31;
    v32 = v55[1];
    *v26 = v55[0];
    *(v26 + 1) = v32;
    v33 = v51;
    sub_1BC6D9DC4(a1, v51, type metadata accessor for RemoteView);
    v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v45 = v9;
    v35 = swift_allocObject();
    sub_1BC6D9E2C(v33, v35 + v34, type metadata accessor for RemoteView);
    v36 = sub_1BC6DCA70(&qword_1EBCDD918, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);
    v37 = v48;
    View.onShowContent(_:)(sub_1BC6DD9B0, v35, v22, v36);

    sub_1BC6DC948(v6, type metadata accessor for _RemoteView);
    sub_1BC6D9DC4(v41, v33, type metadata accessor for RemoteView);
    v38 = swift_allocObject();
    sub_1BC6D9E2C(v33, v38 + v34, type metadata accessor for RemoteView);
    v39 = sub_1BC6DD8C8();
    v40 = v47;
    View.onInterventionHeeded(_:)(sub_1BC6DD9C8, v38, v49, v39);

    sub_1BC66008C(v37, &qword_1EBCDDA00, &qword_1BC767BD0);
    sub_1BC660024(v40, v53, &qword_1EBCDDA08, &qword_1BC767BD8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
    sub_1BC6DD810();
    sub_1BC633C54(&qword_1EDDCE160, &qword_1EBCDD2B8, &qword_1BC76DEE0, MEMORY[0x1E697DB78]);
    sub_1BC75AE00();
    sub_1BC66008C(v40, &qword_1EBCDDA08, &qword_1BC767BD8);
    return (*(v44 + 8))(v42, v43);
  }
}

uint64_t sub_1BC6D953C(uint64_t *a1)
{
  v2 = sub_1BC75ABB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BC75A830();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC6D87B0(v9);
  sub_1BC75A820();
  (*(v7 + 8))(v9, v6);
  v10 = *a1;
  v11 = a1[1];
  if (*(a1 + 16) != 1)
  {

    sub_1BC75BF70();
    v13 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC6D87A0(v10, v11, 0, sub_1BC635480);
    result = (*(v3 + 8))(v5, v2);
    v10 = v16;
    if (v16 == 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  v16 = *a1;
  v17 = v11;
  result = sub_1BC63302C(v10, v11);
  if (v10 != 1)
  {
LABEL_5:
    v14 = v10;
    v15 = v17;
    OnShowContentCallback.callAsFunction()();
    return sub_1BC635484(v14, v15);
  }

  return result;
}

uint64_t (*sub_1BC6D9784())(void)
{
  v0 = sub_1BC75A830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC6D87B0(v3);
  sub_1BC75A820();
  (*(v1 + 8))(v3, v0);
  result = sub_1BC6D8628();
  if (result != 1)
  {
    v6 = result;
    v7 = v5;
    sub_1BC71CC90(result);
    return sub_1BC635468(v6, v7);
  }

  return result;
}

uint64_t sub_1BC6D9884(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD888, &qword_1BC767948);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  v1[5] = sub_1BC75BDE0();
  v1[6] = sub_1BC75BDD0();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_1BC6D9980;

  return sub_1BC6C6640(v2);
}

uint64_t sub_1BC6D9980()
{
  *(*v1 + 64) = v0;

  v3 = sub_1BC75BD80();
  if (v0)
  {
    v4 = sub_1BC6D9C08;
  }

  else
  {
    v4 = sub_1BC6D9ADC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BC6D9ADC()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_1BC759AD0();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  type metadata accessor for RemoteView(0);
  sub_1BC660024(v1, v2, &qword_1EBCDD888, &qword_1BC767948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  sub_1BC75B650();
  sub_1BC66008C(v1, &qword_1EBCDD888, &qword_1BC767948);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC6D9C08()
{

  if (qword_1EBCEB060 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1BC75A4E0();
  __swift_project_value_buffer(v2, qword_1EBCF4638);
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v4, v5, "Failed to get extension identity %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BC6D9DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6D9E2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6D9E94()
{
  v2 = *(type metadata accessor for RemoteView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6D9884(v0 + v3);
}

uint64_t sub_1BC6D9F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  *a2 = sub_1BC75ACD0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD898, &qword_1BC767958);
  sub_1BC6D8D4C(v2, a2 + *(v6 + 44));
  sub_1BC6D9DC4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BC6D9E2C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RemoteView);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8A8, &qword_1BC767978) + 36));
  sub_1BC75A860();
  result = sub_1BC75BDF0();
  *v9 = &unk_1BC767B90;
  v9[1] = v8;
  return result;
}

uint64_t sub_1BC6DA0F8@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(type metadata accessor for _RemoteView(0) + 28));
  v8 = v7[11];
  v9 = v7[9];
  v72 = v7[10];
  v73 = v8;
  v10 = v7[11];
  v74 = v7[12];
  v11 = v7[7];
  v12 = v7[5];
  v68 = v7[6];
  v69 = v11;
  v13 = v7[7];
  v14 = v7[9];
  v70 = v7[8];
  v71 = v14;
  v15 = v7[3];
  v16 = v7[1];
  v64 = v7[2];
  v65 = v15;
  v17 = v7[3];
  v18 = v7[5];
  v66 = v7[4];
  v67 = v18;
  v19 = v7[1];
  v62 = *v7;
  v63 = v19;
  v76[10] = v72;
  v76[11] = v10;
  v76[12] = v7[12];
  v76[6] = v68;
  v76[7] = v13;
  v76[8] = v70;
  v76[9] = v9;
  v76[2] = v64;
  v76[3] = v17;
  v76[4] = v66;
  v76[5] = v12;
  v75 = *(v7 + 208);
  v77 = *(v7 + 208);
  v76[0] = v62;
  v76[1] = v16;
  if (sub_1BC6A78D4(v76) == 1)
  {
    nullsub_1();
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v47 = v75;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v43 = v71;
    v36 = v64;
    v37 = v65;
    v38 = v66;
    v39 = v67;
    v34 = v62;
    v35 = v63;
    nullsub_1();
    *a1 = *v20;
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[4];
    a1[3] = v20[3];
    a1[4] = v23;
    a1[1] = v21;
    a1[2] = v22;
    v24 = v20[5];
    v25 = v20[6];
    v26 = v20[8];
    a1[7] = v20[7];
    a1[8] = v26;
    a1[5] = v24;
    a1[6] = v25;
    v27 = v20[9];
    v28 = v20[10];
    v29 = v20[12];
    a1[11] = v20[11];
    a1[12] = v29;
    a1[9] = v27;
    a1[10] = v28;
    v61 = v75;
    v59 = v73;
    v60 = v74;
    v57 = v71;
    v58 = v72;
    v55 = v69;
    v56 = v70;
    v53 = v67;
    v54 = v68;
    v51 = v65;
    v52 = v66;
    v49 = v63;
    v50 = v64;
    v48 = v62;
    nullsub_1();
    return sub_1BC6362BC(v30, v33);
  }

  else
  {
    nullsub_1();
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v47 = v75;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v43 = v71;
    v36 = v64;
    v37 = v65;
    v38 = v66;
    v39 = v67;
    v34 = v62;
    v35 = v63;
    nullsub_1();
    v48 = v62;
    v49 = v63;
    v52 = v66;
    v53 = v67;
    v50 = v64;
    v51 = v65;
    v56 = v70;
    v57 = v71;
    v54 = v68;
    v55 = v69;
    v61 = v75;
    v59 = v73;
    v60 = v74;
    v58 = v72;
    nullsub_1();

    sub_1BC75BF70();
    v32 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v62, &qword_1EBCDD8B0, &qword_1BC764368);
    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1BC6DA468(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  sub_1BC6D9DC4(a1, &v3[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config], type metadata accessor for RemoteView.Config);
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1BC6DC948(a1, type metadata accessor for RemoteView.Config);
  return v6;
}

void sub_1BC6DA558(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - v8;
  aBlock[0] = 0;
  v10 = [a1 makeXPCConnectionWithError_];
  v13 = aBlock[0];
  if (v10)
  {
    sub_1BC6DC408(v10, v11, v12);
    v14 = v13;
    sub_1BC75A0B0();
    aBlock[0] = v1;
    v15 = v1;
    v16 = sub_1BC75A0C0();
    sub_1BC75A080();

    (*(v7 + 16))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v17 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
    swift_beginAccess();
    sub_1BC6DC45C(v5, v15 + v17);
    swift_endAccess();
    v18 = sub_1BC75A0C0();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BC6DC4CC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC67768C;
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v20);

    sub_1BC75A0E0();
    v21 = aBlock[0];
    sub_1BC7595D0();
    swift_allocObject();
    sub_1BC7595C0();
    type metadata accessor for RemoteView.Config(0);
    sub_1BC6DCA70(&qword_1EBCDD8D8, type metadata accessor for RemoteView.Config, &protocol conformance descriptor for RemoteView.Config);
    v32 = sub_1BC7595A0();
    v34 = v33;

    v35 = sub_1BC759860();
    sub_1BC6AE140(v32, v34);
    [v21 configureRemoteViewWith_];
    swift_unknownObjectRelease();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v22 = aBlock[0];
    v23 = sub_1BC759720();

    swift_willThrow();
    if (qword_1EBCEB060 != -1)
    {
      swift_once();
    }

    v24 = sub_1BC75A4E0();
    __swift_project_value_buffer(v24, qword_1EBCF4638);
    v25 = v23;
    v26 = sub_1BC75A4C0();
    v27 = sub_1BC75BF60();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1BC630000, v26, v27, "Failed to establish XPC connection with SCARemoteView: %@", v28, 0xCu);
      sub_1BC66008C(v29, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v29, -1, -1);
      MEMORY[0x1BFB27EF0](v28, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1BC6DAAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (qword_1EBCEB060 != -1)
  {
    swift_once();
  }

  v5 = sub_1BC75A4E0();
  __swift_project_value_buffer(v5, qword_1EBCF4638);
  v6 = sub_1BC75A4C0();
  v7 = sub_1BC75BF60();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BC630000, v6, v7, "Connection invalidated, forcing intervention heeded...", v8, 2u);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  v9 = sub_1BC75BE10();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1BC75BDE0();

  v10 = sub_1BC75BDD0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  sub_1BC6DAF18(0, 0, v4, &unk_1BC767BA8, v11);
}

uint64_t sub_1BC6DACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a1;
  v4[32] = a4;
  type metadata accessor for RemoteView.Config(0);
  v4[33] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[34] = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6DAD84, v6, v5);
}

uint64_t sub_1BC6DAD84()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 264);
    sub_1BC6D9DC4(Strong + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config, v3, type metadata accessor for RemoteView.Config);
    v4 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48));
    *(v0 + 16) = *v4;
    v5 = v4[9];
    v6 = v4[10];
    v7 = v4[12];
    *(v0 + 192) = v4[11];
    *(v0 + 208) = v7;
    *(v0 + 160) = v5;
    *(v0 + 176) = v6;
    v8 = v4[5];
    v9 = v4[6];
    v10 = v4[8];
    *(v0 + 128) = v4[7];
    *(v0 + 144) = v10;
    *(v0 + 96) = v8;
    *(v0 + 112) = v9;
    v11 = v4[1];
    v12 = v4[2];
    v13 = v4[4];
    *(v0 + 64) = v4[3];
    *(v0 + 80) = v13;
    *(v0 + 32) = v11;
    *(v0 + 48) = v12;
    sub_1BC6DC948(v3, type metadata accessor for InterventionConfig);
    v14 = *(v0 + 32);
    if (v14 == 1)
    {

      sub_1BC69811C(v0 + 16);
    }

    else
    {
      v15 = *(v0 + 40);
      sub_1BC635800(*(v0 + 32), v15);
      sub_1BC71CC90(v14);

      sub_1BC69811C(v0 + 16);
      sub_1BC635468(v14, v15);
    }
  }

  **(v0 + 248) = v2 == 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BC6DAF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BC660024(a3, v25 - v10, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v12 = sub_1BC75BE10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BC66008C(v11, &qword_1EBCDBB20, &qword_1BC75F0D0);
  }

  else
  {
    sub_1BC75BE00();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BC75BD80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BC75BBC0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD9F8, &qword_1BC767BC0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD9F8, &qword_1BC767BC0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BC6DB304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC761600;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x80000001BC773180;
  sub_1BC75C6F0();
}

uint64_t sub_1BC6DB458(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteView.Config(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6D9DC4(v2 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config, v5, type metadata accessor for RemoteView.Config);
  v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48)];
  v7 = *(v6 + 11);
  v43 = *(v6 + 10);
  v44 = v7;
  v45 = *(v6 + 12);
  v8 = *(v6 + 7);
  v39 = *(v6 + 6);
  v40 = v8;
  v9 = *(v6 + 9);
  v41 = *(v6 + 8);
  v42 = v9;
  v10 = *(v6 + 5);
  v37 = *(v6 + 4);
  v38 = v10;
  v11 = *(v6 + 3);
  v35 = *(v6 + 2);
  v36 = v11;
  v12 = *(v6 + 1);
  v33 = *v6;
  v34 = v12;
  sub_1BC6DC948(v5, type metadata accessor for InterventionConfig);
  sub_1BC759530();
  swift_allocObject();
  v13 = sub_1BC759520();
  sub_1BC6DC9A8(v13, v14, v15);
  sub_1BC759510();

  v16 = v20;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v20 = v33;
  v21 = v34;
  v19 = v16;
  Callbacks.handleXPCMessage(_:)(&v19);
  return sub_1BC69811C(&v33);
}

id _RemoteView.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _RemoteView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _RemoteView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _RemoteView.makeCoordinator()()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RemoteView.Config(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48)];
  v9 = type metadata accessor for _RemoteView(0);
  sub_1BC6D9DC4(v0 + *(v9 + 24), v7, type metadata accessor for InterventionConfig);
  v10 = (v0 + *(v9 + 28));
  v11 = v10[11];
  v12 = v10[9];
  v66 = v10[10];
  v67 = v11;
  v13 = v10[11];
  v68 = v10[12];
  v14 = v10[7];
  v15 = v10[5];
  v62 = v10[6];
  v63 = v14;
  v16 = v10[7];
  v17 = v10[9];
  v64 = v10[8];
  v65 = v17;
  v18 = v10[3];
  v19 = v10[1];
  v58 = v10[2];
  v59 = v18;
  v20 = v10[3];
  v21 = v10[5];
  v60 = v10[4];
  v61 = v21;
  v22 = v10[1];
  v56 = *v10;
  v57 = v22;
  v70[10] = v66;
  v70[11] = v13;
  v70[12] = v10[12];
  v70[6] = v62;
  v70[7] = v16;
  v70[8] = v64;
  v70[9] = v12;
  v70[2] = v58;
  v70[3] = v20;
  v70[4] = v60;
  v70[5] = v15;
  v69 = *(v10 + 208);
  v71 = *(v10 + 208);
  v70[0] = v56;
  v70[1] = v19;
  if (sub_1BC6A78D4(v70) == 1)
  {
    nullsub_1();
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v44 = v58;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v42 = v56;
    v43 = v57;
    nullsub_1();
    *v8 = *v23;
    v24 = v23[4];
    v26 = v23[1];
    v25 = v23[2];
    v8[3] = v23[3];
    v8[4] = v24;
    v8[1] = v26;
    v8[2] = v25;
    v27 = v23[8];
    v29 = v23[5];
    v28 = v23[6];
    v8[7] = v23[7];
    v8[8] = v27;
    v8[5] = v29;
    v8[6] = v28;
    v30 = v23[12];
    v32 = v23[9];
    v31 = v23[10];
    v8[11] = v23[11];
    v8[12] = v30;
    v8[9] = v32;
    v8[10] = v31;
    sub_1BC6362BC(v23, v40);
  }

  else
  {
    nullsub_1();
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v44 = v58;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v42 = v56;
    v43 = v57;
    nullsub_1();

    sub_1BC75BF70();
    v33 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v56, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v2 + 8))(v4, v1);
  }

  v34 = type metadata accessor for _RemoteView.Coordinator(0);
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v37 - 8) + 56))(&v35[v36], 1, 1, v37);
  sub_1BC6D9DC4(v7, &v35[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config], type metadata accessor for RemoteView.Config);
  v41.receiver = v35;
  v41.super_class = v34;
  v38 = objc_msgSendSuper2(&v41, sel_init);
  sub_1BC6DC948(v7, type metadata accessor for RemoteView.Config);
  return v38;
}

id _RemoteView.makeViewController(context:)()
{
  v1 = sub_1BC759AD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8F8, &qword_1BC7679C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  type metadata accessor for HostViewController();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v2 + 16))(v4, v0, v1);
  type metadata accessor for _RemoteView(0);
  v9 = v8;

  sub_1BC75BFA0();
  v10 = sub_1BC75BFB0();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_1BC75BFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD900, &qword_1BC7679D0);
  sub_1BC75AFB0();
  v11 = v14;
  [v9 setDelegate_];

  return v9;
}

uint64_t sub_1BC6DBF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC6DCA70(&unk_1EBCDD9E8, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);

  return ViewControllerRepresentableType.makeUIViewController(context:)(a1, a2, v4);
}

uint64_t sub_1BC6DBFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6DCA70(&unk_1EBCDD9E8, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);

  return ViewControllerRepresentableType.updateUIViewController(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_1BC6DC060@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for RemoteView.Config(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48);
  sub_1BC6D9DC4(v2 + *(a1 + 24), v7, type metadata accessor for InterventionConfig);
  sub_1BC6DA0F8(&v7[v8]);
  v9 = type metadata accessor for _RemoteView.Coordinator(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  sub_1BC6D9DC4(v7, &v10[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config], type metadata accessor for RemoteView.Config);
  v15.receiver = v10;
  v15.super_class = v9;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  result = sub_1BC6DC948(v7, type metadata accessor for RemoteView.Config);
  *a2 = v13;
  return result;
}

uint64_t sub_1BC6DC1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BC6DC280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BC6DC314(uint64_t a1)
{
  sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);
  sub_1BC75AF80();
  __break(1u);
}

uint64_t sub_1BC6DC36C()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4638);
  __swift_project_value_buffer(v0, qword_1EBCF4638);
  return sub_1BC75A4D0();
}

unint64_t sub_1BC6DC408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD8D0;
  if (!qword_1EBCDD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD8D0);
  }

  return result;
}

uint64_t sub_1BC6DC45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC6DC4EC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BC6DC5E0;

  return v5(v2 + 32);
}

uint64_t sub_1BC6DC5E0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1BC6DC6F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  v12 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  swift_beginAccess();
  sub_1BC660024(v1 + v12, v11, &unk_1EBCDD8C0, &qword_1BC7679B8);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1BC66008C(v11, &unk_1EBCDD8C0, &qword_1BC7679B8);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1BC66008C(v11, &unk_1EBCDD8C0, &qword_1BC7679B8);
    sub_1BC75A0D0();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v9, 1, 1, v2);
  swift_beginAccess();
  sub_1BC6DC45C(v9, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_1BC6DC948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6DC9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD8F0;
  if (!qword_1EBCDD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD8F0);
  }

  return result;
}

uint64_t sub_1BC6DCA18(uint64_t a1)
{
  result = sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC6DCA70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC6DCB28(uint64_t a1)
{
  sub_1BC6DCF94(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BC6DCF94(319, &qword_1EBCDD930, &qword_1EBCDD938, &qword_1BC767B40, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1BC6DCC78(319);
      if (v3 <= 0x3F)
      {
        sub_1BC6DCF94(319, &qword_1EBCDD948, &qword_1EBCDD888, &qword_1BC767948, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for InterventionConfig(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC6DCC78(uint64_t a1)
{
  if (!qword_1EBCDD940)
  {
    sub_1BC75A830();
    v1 = sub_1BC75A720();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDD940);
    }
  }
}

void sub_1BC6DCCF8(uint64_t a1)
{
  sub_1BC759AD0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for InterventionConfig(319);
    if (v2 <= 0x3F)
    {
      sub_1BC6A8C64();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC6DCDA4(uint64_t a1)
{
  type metadata accessor for InterventionConfig(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    sub_1BC6DCF94(319, &qword_1EBCDD9C0, &qword_1EBCDD8B8, &qword_1BC7679B0, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v4[5] = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BC6DCF94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BC6DCFF8()
{
  result = qword_1EBCDD9C8;
  if (!qword_1EBCDD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD8A8, &qword_1BC767978);
    sub_1BC633C54(&qword_1EBCDD9D0, &unk_1EBCDD9D8, &qword_1BC767B88, MEMORY[0x1E6981870]);
    sub_1BC6DCA70(qword_1EDDCEEC0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD9C8);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for RemoteView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC6D87A0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), sub_1BC635480);
  sub_1BC6D87A0(*(v5 + 24), *(v5 + 32), *(v5 + 40), sub_1BC635480);
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BC75A830();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[7];
  v9 = sub_1BC759AD0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);

  v11 = v5 + v1[8];
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v14 = sub_1BC759D00();
      (*(*(v14 - 8) + 8))(v11, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_19;
      }

      v13 = sub_1BC759CA0();
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v13 = sub_1BC759DE0();
LABEL_14:
      (*(*(v13 - 8) + 8))(v11, v13);
      goto LABEL_19;
    }
  }

LABEL_19:
  v15 = type metadata accessor for InterventionConfig(0);
  v16 = *(v15 + 20);
  v17 = sub_1BC759EE0();
  v18 = *(*(v17 - 8) + 8);
  v18(v11 + v16, v17);

  v19 = v11 + *(v15 + 32);
  v20 = sub_1BC759940();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = type metadata accessor for AnalyticsUIContext(0);

  v18(v19 + *(v21 + 24), v17);
  v22 = *(v21 + 48);
  v23 = sub_1BC759C70();
  (*(*(v23 - 8) + 8))(v19 + v22, v23);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC6DD534()
{
  v2 = *(type metadata accessor for RemoteView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6D9884(v0 + v3);
}

uint64_t sub_1BC6DD600(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC660280;

  return sub_1BC6DACC0(a1, v5, v6, v4);
}

uint64_t sub_1BC6DD6A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC660280;

  return sub_1BC6DC4EC(a1, v4);
}

uint64_t sub_1BC6DD758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC65281C;

  return sub_1BC6DC4EC(a1, v4);
}

unint64_t sub_1BC6DD810()
{
  result = qword_1EBCDDA20;
  if (!qword_1EBCDDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDA08, &qword_1BC767BD8);
    sub_1BC6DD8C8();
    sub_1BC633C54(&qword_1EDDCE7A0, &qword_1EBCDD800, &qword_1BC7677E8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA20);
  }

  return result;
}

unint64_t sub_1BC6DD8C8()
{
  result = qword_1EBCDDA28;
  if (!qword_1EBCDDA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDA00, &qword_1BC767BD0);
    sub_1BC6DCA70(&qword_1EBCDD918, type metadata accessor for _RemoteView, &protocol conformance descriptor for _RemoteView);
    sub_1BC633C54(&unk_1EDDCEEB0, &qword_1EBCDD7F8, &qword_1BC7677E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA28);
  }

  return result;
}

uint64_t sub_1BC6DD9E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RemoteView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t InterventionConfig.Layout.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BC759D00();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759DE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759CA0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC6E6C80(v1, v15, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v20 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
        v22 = v46;
        v21 = v47;
        (*(v46 + 32))(v4, v15, v47);
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_1BC75C290();
        v23 = 0x4364656E696F6A2ELL;
        v24 = 0xEC000000286C6C61;
        goto LABEL_17;
      }

      v42 = *v15;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1BC75C290();

      v48 = 0xD00000000000001BLL;
      v49 = 0x80000001BC773220;
      v27 = sub_1BC759FE0();
      v26 = v42;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v29 = *v15;
      v28 = v15[1];
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1BC75C290();

      v48 = 0xD00000000000001BLL;
      v49 = 0x80000001BC773220;
      v30 = MEMORY[0x1BFB268F0](v29, v47);
      v32 = v31;

      MEMORY[0x1BFB267E0](v30, v32);

      MEMORY[0x1BFB267E0](8236, 0xE200000000000000);
      v33 = sub_1BC759FE0();
      v34 = MEMORY[0x1BFB268F0](v28, v33);
      v36 = v35;

      v37 = v34;
LABEL_23:
      MEMORY[0x1BFB267E0](v37, v36);

      MEMORY[0x1BFB267E0](41, 0xE100000000000000);
      return v48;
    }

    if (EnumCaseMultiPayload == 8)
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
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(v6 + 32))(v8, v15, v5);
          v48 = 0;
          v49 = 0xE000000000000000;
          sub_1BC75C290();
          MEMORY[0x1BFB267E0](0xD000000000000019, 0x80000001BC773260);
          sub_1BC75C3A0();
          MEMORY[0x1BFB267E0](41, 0xE100000000000000);
          v17 = v48;
          (*(v6 + 8))(v8, v5);
          return v17;
        }

        v20 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
        v22 = v46;
        v21 = v47;
        (*(v46 + 32))(v4, v15, v47);
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_1BC75C290();
        v23 = 0xD000000000000011;
        v24 = 0x80000001BC773240;
LABEL_17:
        MEMORY[0x1BFB267E0](v23, v24);
        sub_1BC75C3A0();
        MEMORY[0x1BFB267E0](8236, 0xE200000000000000);
        v38 = sub_1BC759FE0();
        v39 = MEMORY[0x1BFB268F0](v20, v38);
        v41 = v40;

        MEMORY[0x1BFB267E0](v39, v41);

        MEMORY[0x1BFB267E0](41, 0xE100000000000000);
        v17 = v48;
        (*(v22 + 8))(v4, v21);
        return v17;
      }

      v25 = *v15;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1BC75C290();

      v48 = 0xD000000000000015;
      v49 = 0x80000001BC773280;
      v26 = v25;
      v27 = v5;
LABEL_22:
      v43 = MEMORY[0x1BFB268F0](v26, v27);
      v36 = v44;

      v37 = v43;
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v10 + 32))(v12, v15, v9);
      v48 = 0;
      v49 = 0xE000000000000000;
      v18 = 0x697669656365722ELL;
      v19 = 0xEB0000000028676ELL;
    }

    else
    {
      (*(v10 + 32))(v12, v15, v9);
      v48 = 0;
      v49 = 0xE000000000000000;
      v18 = 0x676E69646E65732ELL;
      v19 = 0xE900000000000028;
    }

    MEMORY[0x1BFB267E0](v18, v19);
    sub_1BC75C3A0();
    MEMORY[0x1BFB267E0](41, 0xE100000000000000);
    v17 = v48;
    (*(v10 + 8))(v12, v9);
  }

  return v17;
}

uint64_t sub_1BC6DE188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_1BC6E6674(v31, v32, v33);
    v25 = sub_1BC75BAB0();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6DE38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E680C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E680C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

unint64_t sub_1BC6DE404(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v1 = 0x614364656E696F6ALL;
    v5 = 0xD000000000000019;
    if (a1 != 8)
    {
      v5 = 0x6F54676E69797274;
    }

    if (a1 != 7)
    {
      v1 = v5;
    }

    v3 = 0xD000000000000017;
    if (a1 != 5)
    {
      v3 = 0x6956676E69727564;
    }

    v4 = a1 <= 6u;
  }

  else
  {
    v1 = 0x676E69646E6573;
    v2 = 0x6E69766965636572;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    v4 = a1 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BC6DE564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC6E6CE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6DE58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6464(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6464(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6764(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6764(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE67C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1BC6DE6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6710(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6710(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E69BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E69BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6A10(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6A10(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6914(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6914(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6968(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DE8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E6968(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DE910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BC75C5E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC773420 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BC75C5E0();

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

uint64_t sub_1BC6DE9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E64B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DEA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E64B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DEA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001BC773440 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BC6DEB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E66BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DEB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E66BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6DEB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BC6DEC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E67B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6DEC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E67B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InterventionConfig.Layout.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA30, &qword_1BC767BE8);
  v126 = *(v2 - 8);
  v127 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v125 = &v95 - v3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA38, &qword_1BC767BF0);
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA40, &qword_1BC767BF8);
  v123 = *(v5 - 8);
  v124 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA48, &qword_1BC767C00);
  v120 = *(v7 - 8);
  v121 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v95 - v8;
  v9 = sub_1BC759D00();
  v132 = *(v9 - 8);
  v133 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v129 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v95 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA50, &qword_1BC767C08);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v95 - v13;
  v113 = sub_1BC759DE0();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA58, &qword_1BC767C10);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v95 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA60, &qword_1BC767C18);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v95 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA68, &qword_1BC767C20);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v95 - v17;
  v18 = sub_1BC759CA0();
  v130 = *(v18 - 8);
  v131 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v100 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v95 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA70, &qword_1BC767C28);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v23 = &v95 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA78, &qword_1BC767C30);
  v96 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  v27 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA80, &qword_1BC767C38);
  v135 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v31 = &v95 - v30;
  v32 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6E6464(v32, v33, v34);
  v137 = v31;
  sub_1BC75C740();
  sub_1BC6E6C80(v134, v29, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v52 = v130;
      v51 = v131;
      if (EnumCaseMultiPayload)
      {
        v53 = v100;
        v91 = (*(v130 + 32))(v100, v29, v131);
        LOBYTE(v141) = 3;
        sub_1BC6E6914(v91, v92, v93);
        v57 = v104;
        v46 = v137;
        v45 = v138;
        sub_1BC75C4E0();
        sub_1BC6E6674(&qword_1EBCDDAC0, MEMORY[0x1E697B448], MEMORY[0x1E697B450]);
        v58 = v107;
        sub_1BC75C560();
        v59 = &v138;
      }

      else
      {
        v53 = v99;
        v54 = (*(v130 + 32))(v99, v29, v131);
        LOBYTE(v141) = 2;
        sub_1BC6E6968(v54, v55, v56);
        v57 = v101;
        v46 = v137;
        v45 = v138;
        sub_1BC75C4E0();
        sub_1BC6E6674(&qword_1EBCDDAC0, MEMORY[0x1E697B448], MEMORY[0x1E697B450]);
        v58 = v103;
        sub_1BC75C560();
        v59 = &v134;
      }

      (*(*(v59 - 32) + 8))(v57, v58);
      (*(v52 + 8))(v53, v51);
      return (*(v135 + 8))(v46, v45);
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v38 = v112;
        v39 = v110;
        v40 = v113;
        v41 = (*(v112 + 32))(v110, v29, v113);
        LOBYTE(v141) = 5;
        sub_1BC6E67B8(v41, v42, v43);
        v44 = v111;
        v46 = v137;
        v45 = v138;
        sub_1BC75C4E0();
        sub_1BC6E6674(&qword_1EBCDDAA8, MEMORY[0x1E697B4F0], MEMORY[0x1E697B4F8]);
        v47 = v115;
        sub_1BC75C560();
        (*(v114 + 8))(v44, v47);
        (*(v38 + 8))(v39, v40);
        return (*(v135 + 8))(v46, v45);
      }

      v134 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
      v61 = v132;
      v60 = v133;
      v62 = v128;
      v85 = (*(v132 + 32))(v128, v29, v133);
      LOBYTE(v141) = 6;
      sub_1BC6E6764(v85, v86, v87);
      v66 = v118;
      v67 = v137;
      v68 = v138;
      sub_1BC75C4E0();
      LOBYTE(v141) = 0;
      sub_1BC6E6674(&qword_1EBCDDA90, MEMORY[0x1E697B460], MEMORY[0x1E697B468]);
      v69 = v121;
      v88 = v136;
      sub_1BC75C560();
      if (v88)
      {

        v71 = v120;
        goto LABEL_21;
      }

      v141 = v134;
      v139 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
      sub_1BC6E65C0();
      sub_1BC75C560();
      (*(v120 + 8))(v66, v69);
      (*(v61 + 8))(v128, v60);
LABEL_30:
      (*(v135 + 8))(v137, v138);
    }

    v72 = *v29;
    LOBYTE(v141) = 4;
    sub_1BC6E680C(EnumCaseMultiPayload, v36, v37);
    v73 = v105;
    v75 = v137;
    v74 = v138;
    sub_1BC75C4E0();
    v141 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAB0, &qword_1BC767C40);
    sub_1BC6E6860();
    v76 = v109;
    sub_1BC75C560();
    v77 = &v140;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v134 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
      v61 = v132;
      v60 = v133;
      v62 = v129;
      v63 = (*(v132 + 32))(v129, v29, v133);
      LOBYTE(v141) = 7;
      sub_1BC6E6710(v63, v64, v65);
      v66 = v122;
      v67 = v137;
      v68 = v138;
      sub_1BC75C4E0();
      LOBYTE(v141) = 0;
      sub_1BC6E6674(&qword_1EBCDDA90, MEMORY[0x1E697B460], MEMORY[0x1E697B468]);
      v69 = v124;
      v70 = v136;
      sub_1BC75C560();
      if (v70)
      {

        v71 = v123;
LABEL_21:
        (*(v71 + 8))(v66, v69);
        (*(v61 + 8))(v62, v60);
        return (*(v135 + 8))(v67, v68);
      }

      v141 = v134;
      v139 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
      sub_1BC6E65C0();
      sub_1BC75C560();
      (*(v123 + 8))(v66, v69);
      (*(v61 + 8))(v129, v60);
      goto LABEL_30;
    }

    v94 = *v29;
    LOBYTE(v141) = 8;
    sub_1BC6E66BC(EnumCaseMultiPayload, v36, v37);
    v73 = v116;
    v75 = v137;
    v74 = v138;
    sub_1BC75C4E0();
    v141 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
    sub_1BC6E65C0();
    v76 = v119;
    sub_1BC75C560();
    v77 = &v142;
LABEL_27:
    (*(*(v77 - 32) + 8))(v73, v76);
    (*(v135 + 8))(v75, v74);
  }

  if (EnumCaseMultiPayload == 7)
  {
    v79 = *v29;
    v78 = v29[1];
    LOBYTE(v141) = 9;
    sub_1BC6E64B8(EnumCaseMultiPayload, v36, v37);
    v80 = v125;
    v82 = v137;
    v81 = v138;
    sub_1BC75C4E0();
    v141 = v79;
    v139 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC6E650C();
    v83 = v127;
    v84 = v136;
    sub_1BC75C560();

    if (!v84)
    {
      v141 = v78;
      v139 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
      sub_1BC6E65C0();
      sub_1BC75C560();
    }

    (*(v126 + 8))(v80, v83);
    (*(v135 + 8))(v82, v81);
  }

  if (EnumCaseMultiPayload == 8)
  {
    LOBYTE(v141) = 0;
    sub_1BC6E6A10(EnumCaseMultiPayload, v36, v37);
    v48 = v137;
    v49 = v138;
    sub_1BC75C4E0();
    (*(v96 + 8))(v26, v24);
    return (*(v135 + 8))(v48, v49);
  }

  else
  {
    LOBYTE(v141) = 1;
    sub_1BC6E69BC(EnumCaseMultiPayload, v36, v37);
    v90 = v137;
    v89 = v138;
    sub_1BC75C4E0();
    (*(v97 + 8))(v23, v98);
    return (*(v135 + 8))(v90, v89);
  }
}

uint64_t InterventionConfig.Layout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAC8, &qword_1BC767C48);
  v117 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v126 = &v92 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAD0, &qword_1BC767C50);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v123 = &v92 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAD8, &qword_1BC767C58);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v133 = &v92 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAE0, &qword_1BC767C60);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v132 = &v92 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAE8, &qword_1BC767C68);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v122 = &v92 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAF0, &qword_1BC767C70);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v125 = &v92 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAF8, &qword_1BC767C78);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v124 = &v92 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB00, &qword_1BC767C80);
  v103 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v92 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB08, &qword_1BC767C88);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v121 = &v92 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB10, &qword_1BC767C90);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v120 = &v92 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB18, &qword_1BC767C98);
  v134 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v14 = &v92 - v13;
  v128 = type metadata accessor for InterventionConfig.Layout(0);
  v15 = MEMORY[0x1EEE9AC00](v128);
  v97 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v98 = (&v92 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v119 = &v92 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v118 = &v92 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v92 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v92 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v92 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v92 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v92 - v35;
  v37 = a1[3];
  v136 = a1;
  v38 = __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1BC6E6464(v38, v39, v40);
  v41 = v135;
  sub_1BC75C730();
  if (!v41)
  {
    v94 = v34;
    v95 = v31;
    v93 = v28;
    v96 = v25;
    v43 = v130;
    v42 = v131;
    v45 = v132;
    v44 = v133;
    v135 = v36;
    v46 = v129;
    v47 = v14;
    v48 = sub_1BC75C4D0();
    v51 = v48;
    v52 = v46;
    if (*(v48 + 16) == 1)
    {
      v53 = *(v48 + 32);
      if (v53 != 10)
      {
        if (*(v48 + 32) <= 4u)
        {
          if (*(v48 + 32) <= 1u)
          {
            v62 = v134;
            if (*(v48 + 32))
            {
              LOBYTE(v139) = 1;
              sub_1BC6E69BC(v48, v49, v50);
              v72 = v121;
              sub_1BC75C450();
              v64 = v127;
              (*(v101 + 8))(v72, v102);
            }

            else
            {
              LOBYTE(v139) = 0;
              sub_1BC6E6A10(v48, v49, v50);
              v63 = v120;
              sub_1BC75C450();
              v64 = v127;
              (*(v99 + 8))(v63, v100);
            }

            (*(v62 + 8))(v47, v46);
            swift_unknownObjectRelease();
            v91 = v135;
            swift_storeEnumTagMultiPayload();
            goto LABEL_29;
          }

          v126 = v48;
          v54 = v134;
          if (v53 == 2)
          {
            LOBYTE(v139) = 2;
            sub_1BC6E6968(v48, v49, v50);
            sub_1BC75C450();
            sub_1BC759CA0();
            sub_1BC6E6674(&qword_1EBCDDB50, MEMORY[0x1E697B448], MEMORY[0x1E697B458]);
            v75 = v94;
            sub_1BC75C4C0();
            (*(v103 + 8))(v43, v42);
            (*(v54 + 8))(v47, v46);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }

          if (v53 == 3)
          {
            LOBYTE(v139) = 3;
            sub_1BC6E6914(v48, v49, v50);
            sub_1BC75C450();
            sub_1BC759CA0();
            sub_1BC6E6674(&qword_1EBCDDB50, MEMORY[0x1E697B448], MEMORY[0x1E697B458]);
            v75 = v95;
            v76 = v105;
            v77 = v124;
            sub_1BC75C4C0();
            (*(v104 + 8))(v77, v76);
            (*(v54 + 8))(v47, v46);
            swift_unknownObjectRelease();
LABEL_27:
            swift_storeEnumTagMultiPayload();
            v87 = v75;
            goto LABEL_28;
          }

          LOBYTE(v139) = 4;
          sub_1BC6E680C(v48, v49, v50);
          sub_1BC75C450();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAB0, &qword_1BC767C40);
          sub_1BC6E6BCC();
          v78 = v107;
          v79 = v125;
          sub_1BC75C4C0();
          (*(v106 + 8))(v79, v78);
          (*(v54 + 8))(v47, v46);
          swift_unknownObjectRelease();
          v86 = v93;
          *v93 = v139;
LABEL_26:
          swift_storeEnumTagMultiPayload();
          v87 = v86;
LABEL_28:
          v91 = v135;
          sub_1BC6E7170(v87, v135, type metadata accessor for InterventionConfig.Layout);
          v64 = v127;
          goto LABEL_29;
        }

        if (*(v48 + 32) <= 6u)
        {
          if (v53 == 5)
          {
            LOBYTE(v139) = 5;
            sub_1BC6E67B8(v48, v49, v50);
            v65 = v122;
            sub_1BC75C450();
            sub_1BC759DE0();
            sub_1BC6E6674(&qword_1EBCDDB40, MEMORY[0x1E697B4F0], MEMORY[0x1E697B508]);
            v75 = v96;
            v66 = v109;
            sub_1BC75C4C0();
            (*(v108 + 8))(v65, v66);
            (*(v134 + 8))(v47, v46);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }

          LOBYTE(v139) = 6;
          sub_1BC6E6764(v48, v49, v50);
          v73 = v45;
          v74 = v46;
          sub_1BC75C450();
          sub_1BC759D00();
          LOBYTE(v139) = 0;
          sub_1BC6E6674(&qword_1EBCDDB28, MEMORY[0x1E697B460], MEMORY[0x1E697B478]);
          v82 = v113;
          sub_1BC75C4C0();
          v83 = v73;
          v84 = v134;
          v126 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
          LOBYTE(v139) = 1;
          sub_1BC6E6B18();
          v85 = v118;
          sub_1BC75C4C0();
          (*(v112 + 8))(v83, v82);
          (*(v84 + 8))(v47, v74);
          swift_unknownObjectRelease();
        }

        else
        {
          if (v53 != 7)
          {
            v59 = v134;
            if (v53 != 8)
            {
              LOBYTE(v139) = 9;
              sub_1BC6E64B8(v48, v49, v50);
              v71 = v52;
              sub_1BC75C450();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
              LOBYTE(v138) = 0;
              sub_1BC6E6A64();
              v80 = v116;
              v81 = v126;
              sub_1BC75C4C0();
              v88 = v139;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
              v137 = 1;
              sub_1BC6E6B18();
              sub_1BC75C4C0();
              (*(v117 + 8))(v81, v80);
              (*(v59 + 8))(v47, v71);
              swift_unknownObjectRelease();
              v89 = v138;
              v90 = v97;
              *v97 = v88;
              *(v90 + 8) = v89;
              swift_storeEnumTagMultiPayload();
              v91 = v135;
              sub_1BC6E7170(v90, v135, type metadata accessor for InterventionConfig.Layout);
              v64 = v127;
LABEL_29:
              sub_1BC6E7170(v91, v64, type metadata accessor for InterventionConfig.Layout);
              return __swift_destroy_boxed_opaque_existential_1(v136);
            }

            LOBYTE(v139) = 8;
            sub_1BC6E66BC(v48, v49, v50);
            v60 = v123;
            sub_1BC75C450();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
            sub_1BC6E6B18();
            v61 = v111;
            sub_1BC75C4C0();
            (*(v110 + 8))(v60, v61);
            (*(v59 + 8))(v47, v52);
            swift_unknownObjectRelease();
            v86 = v98;
            *v98 = v139;
            goto LABEL_26;
          }

          LOBYTE(v139) = 7;
          sub_1BC6E6710(v48, v49, v50);
          v67 = v46;
          sub_1BC75C450();
          v68 = v134;
          v69 = v44;
          sub_1BC759D00();
          LOBYTE(v139) = 0;
          sub_1BC6E6674(&qword_1EBCDDB28, MEMORY[0x1E697B460], MEMORY[0x1E697B478]);
          v70 = v115;
          sub_1BC75C4C0();
          v126 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
          LOBYTE(v139) = 1;
          sub_1BC6E6B18();
          v85 = v119;
          sub_1BC75C4C0();
          (*(v114 + 8))(v69, v70);
          (*(v68 + 8))(v47, v67);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v87 = v85;
        goto LABEL_28;
      }
    }

    v55 = sub_1BC75C300();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0);
    *v57 = v128;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    (*(v134 + 8))(v47, v46);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v136);
}

uint64_t InterventionConfig.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterventionConfig(0) + 20);
  v4 = sub_1BC759EE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterventionConfig.analyticsContext.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InterventionConfig(0) + 32);

  return sub_1BC65FD10(a1, v3);
}

uint64_t InterventionConfig.init(layout:policy:options:analyticsContext:contextDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v36 = a2;
  v31 = a1;
  v32 = a3;
  v8 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759EE0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for AnalyticsUIContext(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a4;
  sub_1BC660024(a4, v17, &qword_1EBCDBC50, &qword_1BC762D70);
  v22 = *(v19 + 48);
  v23 = v22(v17, 1, v18);
  v33 = v11;
  if (v23 == 1)
  {
    (*(v12 + 16))(v14, v36, v11);
    v24 = v31;
    sub_1BC6E6C80(v31, v10, type metadata accessor for InterventionConfig.Layout);
    sub_1BC6648A8(v14, &unk_1F3B2B328, v10, v21);
    if (v22(v17, 1, v18) != 1)
    {
      sub_1BC66008C(v17, &qword_1EBCDBC50, &qword_1BC762D70);
    }
  }

  else
  {
    sub_1BC6E7170(v17, v21, type metadata accessor for AnalyticsUIContext);
    v24 = v31;
  }

  v37 = 4;
  sub_1BC665984(&v37);
  sub_1BC6E6C80(v24, a6, type metadata accessor for InterventionConfig.Layout);
  v25 = type metadata accessor for InterventionConfig(0);
  v26 = v36;
  v27 = v33;
  (*(v12 + 16))(a6 + v25[5], v36, v33);
  *(a6 + v25[6]) = v32;
  v28 = v35;
  if (!v35)
  {
    v28 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  }

  sub_1BC66008C(v34, &qword_1EBCDBC50, &qword_1BC762D70);
  (*(v12 + 8))(v26, v27);
  sub_1BC6E722C(v24, type metadata accessor for InterventionConfig.Layout);
  *(a6 + v25[7]) = v28;
  return sub_1BC6E7170(v21, a6 + v25[8], type metadata accessor for AnalyticsUIContext);
}

SensitiveContentAnalysisUI::InterventionConfig::CodingKeys_optional __swiftcall InterventionConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x74756F79616CLL && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1BC75C5E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7963696C6F70 && object == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x736E6F6974706FLL && object == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001BC7732E0 == object)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_1BC75C5E0();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t InterventionConfig.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

unint64_t InterventionConfig.CodingKeys.stringValue.getter()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7963696C6F70;
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

unint64_t sub_1BC6E1EB0()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7963696C6F70;
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

uint64_t sub_1BC6E1F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E71D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6E1F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6E71D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InterventionConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB58, &qword_1BC767CB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6E71D8(v9, v10, v11);
  sub_1BC75C740();
  v17 = 0;
  type metadata accessor for InterventionConfig.Layout(0);
  sub_1BC6E6674(&qword_1EBCDDB68, type metadata accessor for InterventionConfig.Layout, &protocol conformance descriptor for InterventionConfig.Layout);
  sub_1BC75C560();
  if (!v2)
  {
    v12 = type metadata accessor for InterventionConfig(0);
    v16 = 1;
    sub_1BC759EE0();
    sub_1BC6E6674(&qword_1EBCDBFA8, MEMORY[0x1E697B510], MEMORY[0x1E697B518]);
    sub_1BC75C560();
    v15 = *(v3 + *(v12 + 24));
    v14[15] = 2;
    type metadata accessor for SCUIInterventionOptions(0);
    sub_1BC6E6674(&qword_1EBCDDB70, type metadata accessor for SCUIInterventionOptions, &protocol conformance descriptor for SCUIInterventionOptions);
    sub_1BC75C560();
    v14[14] = 3;
    type metadata accessor for AnalyticsUIContext(0);
    sub_1BC6E6674(&qword_1EBCDDB78, type metadata accessor for AnalyticsUIContext, &protocol conformance descriptor for AnalyticsUIContext);
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InterventionConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC759EE0();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB80, &unk_1BC767CB8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v37 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BC6E71D8(v16, v17, v18);
  v35 = v11;
  v19 = v36;
  sub_1BC75C730();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v20 = v14;
  v21 = v31;
  v42 = 0;
  sub_1BC6E6674(&qword_1EBCDDB88, type metadata accessor for InterventionConfig.Layout, &protocol conformance descriptor for InterventionConfig.Layout);
  sub_1BC75C4C0();
  v22 = v20;
  sub_1BC6E7170(v34, v20, type metadata accessor for InterventionConfig.Layout);
  v41 = 1;
  sub_1BC6E6674(&qword_1EBCDC008, MEMORY[0x1E697B510], MEMORY[0x1E697B530]);
  sub_1BC75C4C0();
  (*(v21 + 32))(v20 + v12[5], v6, v4);
  type metadata accessor for SCUIInterventionOptions(0);
  v40 = 2;
  sub_1BC6E6674(&qword_1EBCDDB90, type metadata accessor for SCUIInterventionOptions, &protocol conformance descriptor for SCUIInterventionOptions);
  sub_1BC75C4C0();
  *(v20 + v12[6]) = v38;
  v39 = 3;
  sub_1BC6E6674(&qword_1EBCDDB98, type metadata accessor for AnalyticsUIContext, &protocol conformance descriptor for AnalyticsUIContext);
  v23 = v30;
  sub_1BC75C4C0();
  v24 = v32;
  sub_1BC6E7170(v23, v22 + v12[8], type metadata accessor for AnalyticsUIContext);
  v25 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  (*(v24 + 8))(v35, v33);
  *(v22 + v12[7]) = v25;
  sub_1BC6E6C80(v22, v28, type metadata accessor for InterventionConfig);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1BC6E722C(v22, type metadata accessor for InterventionConfig);
}

uint64_t static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1BC759CA0();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BC759D00();
  v10 = *(v58 - 8);
  v11 = MEMORY[0x1EEE9AC00](v58);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1BC75A160();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v55 = *(a1 + 16)) != 0)
  {
    sub_1BC660024(a3, v16, &qword_1EBCDC868, &qword_1BC762D30);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1BC66008C(v16, &qword_1EBCDC868, &qword_1BC762D30);
      v21 = v47;
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      v25 = sub_1BC75A150();
      (*(v18 + 8))(v20, v17);
      v21 = v47;
      if ((v25 & 1) == 0)
      {
        v43 = type metadata accessor for InterventionConfig.Layout(0);
        return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
      }
    }

    v45 = a2;
    v46 = a4;
    v26 = 0;
    v28 = *(v10 + 16);
    v27 = v10 + 16;
    v49 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v29 = a1 + v49;
    v30 = *(v27 + 56);
    v52 = (v54 + 8);
    v53 = v28;
    v48 = (v27 - 8);
    v54 = v27;
    v51 = (v27 + 16);
    v31 = MEMORY[0x1E69E7CC0];
    v50 = v8;
    for (result = v28(v21, v29, v58); ; result = v53(v21, v29, v58))
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return result;
      }

      v33 = v57;
      sub_1BC759CF0();
      v34 = sub_1BC759BB0();
      (*v52)(v33, v8);
      if (v34)
      {
        v35 = *v51;
        (*v51)(v56, v21, v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6701E8(0, *(v31 + 16) + 1, 1);
          v21 = v47;
          v31 = v59;
        }

        v38 = *(v31 + 16);
        v37 = *(v31 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1BC6701E8((v37 > 1), v38 + 1, 1);
          v21 = v47;
          v31 = v59;
        }

        *(v31 + 16) = v38 + 1;
        v35((v31 + v49 + v38 * v30), v56, v58);
        v8 = v50;
      }

      else
      {
        (*v48)(v21, v58);
      }

      ++v26;
      v29 += v30;
      if (v32 == v55)
      {
        break;
      }
    }

    if (*(v31 + 16))
    {
      v40 = v45;
      v39 = v46;
      *v46 = v31;
      v39[1] = v40;
      v41 = type metadata accessor for InterventionConfig.Layout(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v41 - 8) + 56))(v39, 0, 1, v41);
    }

    else
    {
      v42 = type metadata accessor for InterventionConfig.Layout(0);
      (*(*(v42 - 8) + 56))(v46, 1, 1, v42);
    }
  }

  else
  {
    v22 = type metadata accessor for InterventionConfig.Layout(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a4, 1, 1, v22);
  }
}

uint64_t static InterventionConfig.Layout.addingToSharedAlbum(validating:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1BC759CA0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  sub_1BC660024(a1, v9, &qword_1EBCDC998, &qword_1BC7641A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BC66008C(v9, &qword_1EBCDC998, &qword_1BC7641A0);
    v17 = type metadata accessor for InterventionConfig.Layout(0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBA0, &qword_1BC767CC8);
    sub_1BC759DE0();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC761600;
    (*(v11 + 16))(v14, v16, v10);
    v20 = sub_1BC759D50();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    sub_1BC759DC0();
    (*(v11 + 8))(v16, v10);
    *a2 = v19;
    v21 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t static InterventionConfig.Layout.addingToSharedAlbum(validating:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = a1;
    v3 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    v5 = type metadata accessor for InterventionConfig.Layout(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t static InterventionConfig.Layout.viewingSharedAlbumAsset(validating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1BC759CA0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  sub_1BC660024(a1, v9, &qword_1EBCDC998, &qword_1BC7641A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BC66008C(v9, &qword_1EBCDC998, &qword_1BC7641A0);
    v17 = type metadata accessor for InterventionConfig.Layout(0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    v19 = sub_1BC759D50();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1BC759DC0();
    (*(v11 + 8))(v16, v10);
    v20 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }
}

uint64_t static InterventionConfig.Layout.viewingSharedAlbumAsset(validating:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBA8, &qword_1BC767CD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1BC759DE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC660024(a1, v6, &qword_1EBCDDBA8, &qword_1BC767CD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BC66008C(v6, &qword_1EBCDDBA8, &qword_1BC767CD0);
    v11 = type metadata accessor for InterventionConfig.Layout(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, v6, v7);
    v13(a2, v10, v7);
    v14 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }
}

uint64_t static InterventionConfig.duringVideoCall(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a2;
  v55 = a4;
  v58 = a3;
  v59 = a5;
  v52 = a1;
  v53 = type metadata accessor for AnalyticsUIContext(0);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v48 - v9;
  v62 = sub_1BC759EE0();
  v60 = *(v62 - 8);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = sub_1BC759CA0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BC759FE0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for InterventionConfig.Layout(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v48 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - v25;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
  (*(v19 + 16))(v21, v52, v18);
  v28 = v13;
  v29 = v50;
  v30 = v14;
  v31 = v53;
  (*(v15 + 16))(v17, v54, v30);
  sub_1BC759CB0();
  *&v26[v27] = MEMORY[0x1E69E7CC0];
  v32 = v61;
  swift_storeEnumTagMultiPayload();
  v33 = *(v60 + 16);
  v33(v28, v55, v62);
  (*(v29 + 56))(v32, 1, 1, v31);
  v34 = v51;
  sub_1BC660024(v32, v51, &qword_1EBCDBC50, &qword_1BC762D70);
  v35 = *(v29 + 48);
  v36 = v35(v34, 1, v31);
  v56 = v28;
  if (v36 == 1)
  {
    v37 = v33;
    v38 = v49;
    v37(v49, v28, v62);
    v39 = v48;
    sub_1BC6E6C80(v26, v48, type metadata accessor for InterventionConfig.Layout);
    v40 = v57;
    v41 = v38;
    v33 = v37;
    sub_1BC6648A8(v41, &unk_1F3B2B350, v39, v57);
    if (v35(v34, 1, v31) != 1)
    {
      sub_1BC66008C(v34, &qword_1EBCDBC50, &qword_1BC762D70);
    }
  }

  else
  {
    v40 = v57;
    sub_1BC6E7170(v34, v57, type metadata accessor for AnalyticsUIContext);
  }

  v63 = 4;
  sub_1BC665984(&v63);
  v42 = v59;
  sub_1BC6E6C80(v26, v59, type metadata accessor for InterventionConfig.Layout);
  v43 = type metadata accessor for InterventionConfig(0);
  v44 = v56;
  v45 = v62;
  v33((v42 + v43[5]), v56, v62);
  *(v42 + v43[6]) = v58;
  v46 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  sub_1BC66008C(v61, &qword_1EBCDBC50, &qword_1BC762D70);
  (*(v60 + 8))(v44, v45);
  sub_1BC6E722C(v26, type metadata accessor for InterventionConfig.Layout);
  *(v42 + v43[7]) = v46;
  return sub_1BC6E7170(v40, v42 + v43[8], type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC6E3EAC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v43 = a4;
  v51 = a1;
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v39 - v13;
  v50 = type metadata accessor for AnalyticsUIContext(0);
  v14 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig.Layout(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = type metadata accessor for InterventionConfig(0);
  v22 = v21[5];
  v46 = v10;
  v23 = *(v10 + 16);
  v48 = v9;
  v49 = a3;
  v23(a6 + v22, a3, v9);
  *(a6 + v21[6]) = v43;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  }

  *(a6 + v21[7]) = v24;
  v25 = v50;
  v26 = v45;
  if (v51 > 1)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    v37 = v51;

    sub_1BC75C290();

    v53 = 0xD000000000000011;
    v54 = 0x80000001BC773340;
    v52 = v37;
    v38 = sub_1BC75C590();
    MEMORY[0x1BFB267E0](v38);

    result = sub_1BC75C3D0();
    __break(1u);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BC6E6C80(v20, a6, type metadata accessor for InterventionConfig.Layout);
    v27 = v44;
    sub_1BC660024(v26, v44, &qword_1EBCDBC50, &qword_1BC762D70);
    v28 = *(v14 + 48);
    if (v28(v27, 1, v25) == 1)
    {
      v40 = v21;
      v29 = v42;
      v43 = a6;
      v31 = v48;
      v30 = v49;
      v23(v42, v49, v48);
      v32 = v41;
      sub_1BC6E6C80(v20, v41, type metadata accessor for InterventionConfig.Layout);
      v33 = v47;
      v34 = v29;
      v21 = v40;
      sub_1BC665098(v34, v51, v32, v47);
      sub_1BC66008C(v26, &qword_1EBCDBC50, &qword_1BC762D70);
      v35 = v30;
      a6 = v43;
      (*(v46 + 8))(v35, v31);
      sub_1BC6E722C(v20, type metadata accessor for InterventionConfig.Layout);
      if (v28(v27, 1, v50) != 1)
      {
        sub_1BC66008C(v27, &qword_1EBCDBC50, &qword_1BC762D70);
      }
    }

    else
    {
      sub_1BC66008C(v26, &qword_1EBCDBC50, &qword_1BC762D70);
      (*(v46 + 8))(v49, v48);
      sub_1BC6E722C(v20, type metadata accessor for InterventionConfig.Layout);
      v33 = v47;
      sub_1BC6E7170(v27, v47, type metadata accessor for AnalyticsUIContext);
    }

    return sub_1BC6E7170(v33, a6 + v21[8], type metadata accessor for AnalyticsUIContext);
  }

  return result;
}

uint64_t InterventionConfig.init(kind:policy:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a3;
  v36 = a2;
  v32 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759EE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SCUIInterventionKind._Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BC759DE0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v37 = a1;
  sub_1BC6E6C80(a1, v12, type metadata accessor for SCUIInterventionKind._Kind);
  v20 = 1 << swift_getEnumCaseMultiPayload();
  if ((v20 & 0x3B) != 0)
  {
    *a4 = *v12;
  }

  else if ((v20 & 0x84) != 0)
  {
    v21 = *(v14 + 32);
    v21(v19, v12, v13);
    v21(a4, v19, v13);
  }

  else
  {
    v29 = *(v14 + 32);
    v29(v17, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBA0, &qword_1BC767CC8);
    v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC761600;
    v29((v31 + v30), v17, v13);
    *a4 = v31;
  }

  swift_storeEnumTagMultiPayload();
  v22 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  v23 = type metadata accessor for InterventionConfig(0);
  *&a4[v23[7]] = v22;
  v24 = *(v8 + 16);
  v25 = v36;
  v24(&a4[v23[5]], v36, v7);
  v26 = v33;
  *&a4[v23[6]] = v34;
  v24(v26, v25, v7);
  v27 = v35;
  sub_1BC6E6C80(a4, v35, type metadata accessor for InterventionConfig.Layout);
  sub_1BC6648A8(v26, &unk_1F3B2B378, v27, &a4[v23[8]]);
  (*(v8 + 8))(v25, v7);
  return sub_1BC6E722C(v37, type metadata accessor for SCUIInterventionKind);
}

BOOL sub_1BC6E4800()
{
  v1 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E6C80(v0, v3, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_13;
      }

LABEL_11:
      sub_1BC6E722C(v3, type metadata accessor for InterventionConfig.Layout);
      return 0;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      v6 = sub_1BC759D00();
      (*(*(v6 - 8) + 8))(v3, v6);
      return 0;
    }

LABEL_15:
    sub_1BC6E722C(v3, type metadata accessor for InterventionConfig.Layout);
    return 1;
  }

  if (EnumCaseMultiPayload == 7)
  {
    goto LABEL_11;
  }

  return EnumCaseMultiPayload == 8;
}

uint64_t sub_1BC6E4990()
{
  type metadata accessor for InterventionConfig(0);
  result = sub_1BC6F39FC();
  if (v1)
  {
    return 2;
  }

  return result;
}

uint64_t sub_1BC6E49CC()
{
  v1 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E6C80(v0, v3, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload >= 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 7)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 5)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

    v6 = sub_1BC759D00();
    (*(*(v6 - 8) + 8))(v3, v6);
    return 1;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_8:
    sub_1BC6E722C(v3, type metadata accessor for InterventionConfig.Layout);
    return 0;
  }

  sub_1BC6E722C(v3, type metadata accessor for InterventionConfig.Layout);
  return 1;
}

uint64_t InterventionConfig.shouldRequireInterventionPasscode.getter()
{
  v1[2] = v0;
  v2 = sub_1BC759FE0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1BC75A140();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[8] = v4;
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_1BC6E4CA0;

  return MEMORY[0x1EEDD8D60](v4);
}

uint64_t sub_1BC6E4CA0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1BC6E4FD8;
  }

  else
  {
    v2 = sub_1BC6E4DB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC6E4DB4()
{
  v24 = v0;
  result = sub_1BC6A5D8C();
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v22 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v5 = v2 - 1;
    v6 = result;
    while (v3 < *(result + 16))
    {
      (*(v4 + 16))(v0[5], v22 + *(v4 + 72) * v3, v0[3]);
      v7 = sub_1BC759FA0();
      v8 = *(v7 + 16);
      if (v8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD170, &qword_1BC766448);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 17;
        }

        v9[2] = v8;
        v9[3] = 2 * (v11 >> 4);
        v12 = sub_1BC6BCE0C(&v23, v9 + 4, v8, v7);
        result = sub_1BC639AFC(v23);
        if (v12 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v13 = v0[5];
      v14 = v0[3];
      v15 = sub_1BC75A130();

      (*(v4 + 8))(v13, v14);
      result = v6;
      if ((v15 & 1) != 0 && v5 != v3++)
      {
        continue;
      }

      v17 = v15 ^ 1;
      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v17 = 1;
LABEL_15:
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);

    v21 = v0[1];

    return v21(v17 & 1);
  }

  return result;
}

uint64_t sub_1BC6E4FD8()
{
  if (qword_1EBCEB2C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1BC75A4E0();
  __swift_project_value_buffer(v2, qword_1EBCF4658);
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v4, v5, "No family information to bypass blocking. %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(1);
}

uint64_t sub_1BC6E53B4(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return MEMORY[0x1EEDD8BF8]();
    }

    else
    {
      if (a1 == 2)
      {
      }

      else
      {
        sub_1BC75C290();
        MEMORY[0x1BFB267E0](0xD00000000000001DLL, 0x80000001BC773360);
        type metadata accessor for SCUIInterventionType(0);
        sub_1BC75C3A0();
        sub_1BC75C3D0();
        __break(1u);
      }

      return MEMORY[0x1EEDD8BC8]();
    }
  }

  else
  {

    return sub_1BC759E80();
  }
}

uint64_t sub_1BC6E54B0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4658);
  __swift_project_value_buffer(v0, qword_1EBCF4658);
  return sub_1BC75A4D0();
}

uint64_t static SCUIInterventionKind.viewingSharedAlbumAsset(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1BC759CA0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC75BFE0();
  v5 = sub_1BC759D50();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1BC759DC0();
  type metadata accessor for SCUIInterventionKind._Kind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC6E5670@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1BC759DE0();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  type metadata accessor for SCUIInterventionKind._Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC6E5710@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for SCUIInterventionKind._Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t _s26SensitiveContentAnalysisUI18InterventionConfigV6LayoutO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v3 = sub_1BC759D00();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v85 - v6;
  v7 = sub_1BC759DE0();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759CA0();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v85 - v12;
  v13 = type metadata accessor for InterventionConfig.Layout(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v85 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v95 = &v85 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v94 = &v85 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v93 = &v85 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v85 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v85 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBE8, &unk_1BC768CC0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v85 - v36;
  v38 = (&v85 + *(v35 + 56) - v36);
  sub_1BC6E6C80(v100, &v85 - v36, type metadata accessor for InterventionConfig.Layout);
  v39 = a2;
  v40 = v38;
  sub_1BC6E6C80(v39, v38, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_1BC6E6C80(v37, v19, type metadata accessor for InterventionConfig.Layout);
        v79 = *v19;
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v62 = v37;
          v48 = sub_1BC6DE188(v79, *v38, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

          goto LABEL_35;
        }

LABEL_42:

        goto LABEL_43;
      }

      v51 = v37;
      v52 = v95;
      sub_1BC6E6C80(v37, v95, type metadata accessor for InterventionConfig.Layout);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
      v54 = *(v52 + v53);
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        (*(v96 + 8))(v52, v97);
        v37 = v51;
        goto LABEL_43;
      }

      v55 = *(v38 + v53);
      v56 = v96;
      v57 = v90;
      v58 = v97;
      (*(v96 + 32))(v90, v38, v97);
      v59 = MEMORY[0x1BFB248C0](v52, v57);
      v60 = *(v56 + 8);
      v60(v52, v58);
      if (v59)
      {
        v48 = sub_1BC6DE188(v54, v55, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

        v60(v57, v58);
LABEL_24:
        sub_1BC6E722C(v51, type metadata accessor for InterventionConfig.Layout);
        return v48 & 1;
      }

      v60(v57, v58);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          if (swift_getEnumCaseMultiPayload() != 8)
          {
            goto LABEL_43;
          }
        }

        else if (swift_getEnumCaseMultiPayload() != 9)
        {
LABEL_43:
          sub_1BC66008C(v37, &qword_1EBCDDBE8, &unk_1BC768CC0);
LABEL_44:
          v48 = 0;
          return v48 & 1;
        }

        sub_1BC6E722C(v37, type metadata accessor for InterventionConfig.Layout);
        v48 = 1;
        return v48 & 1;
      }

      sub_1BC6E6C80(v37, v16, type metadata accessor for InterventionConfig.Layout);
      v63 = *v16;
      v64 = v16[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        goto LABEL_42;
      }

      v51 = v37;
      v65 = v38[1];
      v66 = sub_1BC6DE188(v63, *v38, MEMORY[0x1E697B460], &qword_1EDDCEE88, MEMORY[0x1E697B460], MEMORY[0x1E697B470]);

      if (v66)
      {
        v48 = sub_1BC6DE188(v64, v65, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

        goto LABEL_24;
      }
    }

    sub_1BC6E722C(v51, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BC6E6C80(v37, v31, type metadata accessor for InterventionConfig.Layout);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v98;
        v46 = v99;
        v78 = v87;
        (*(v98 + 32))(v87, v38, v99);
        v47 = v37;
        v48 = sub_1BC759BF0();
        v49 = *(v77 + 8);
        v49(v78, v46);
        v50 = v31;
        goto LABEL_32;
      }

      (*(v98 + 8))(v31, v99);
    }

    else
    {
      sub_1BC6E6C80(v37, v33, type metadata accessor for InterventionConfig.Layout);
      if (!swift_getEnumCaseMultiPayload())
      {
        v82 = v98;
        v81 = v99;
        v83 = v86;
        (*(v98 + 32))(v86, v38, v99);
        v47 = v37;
        v48 = sub_1BC759BF0();
        v84 = *(v82 + 8);
        v84(v83, v81);
        v84(v33, v81);
        goto LABEL_47;
      }

      (*(v98 + 8))(v33, v99);
    }

    goto LABEL_43;
  }

  v42 = v38;
  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC6E6C80(v37, v28, type metadata accessor for InterventionConfig.Layout);
    v61 = *v28;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v62 = v37;
      v48 = sub_1BC6DE188(v61, *v40, MEMORY[0x1E697B4F0], &unk_1EBCDDBF0, MEMORY[0x1E697B4F0], MEMORY[0x1E697B500]);

LABEL_35:

      sub_1BC6E722C(v62, type metadata accessor for InterventionConfig.Layout);
      return v48 & 1;
    }

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v43 = v93;
    sub_1BC6E6C80(v37, v93, type metadata accessor for InterventionConfig.Layout);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v44 = v91;
      v45 = v88;
      v46 = v92;
      (*(v91 + 32))(v88, v38, v92);
      v47 = v37;
      v48 = MEMORY[0x1BFB24990](v43, v45);
      v49 = *(v44 + 8);
      v49(v45, v46);
      v50 = v43;
LABEL_32:
      v49(v50, v46);
LABEL_47:
      sub_1BC6E722C(v47, type metadata accessor for InterventionConfig.Layout);
      return v48 & 1;
    }

    (*(v91 + 8))(v43, v92);
    goto LABEL_43;
  }

  v67 = v94;
  sub_1BC6E6C80(v37, v94, type metadata accessor for InterventionConfig.Layout);
  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
  v69 = *(v67 + v68);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    (*(v96 + 8))(v67, v97);
    goto LABEL_43;
  }

  v70 = v37;
  v71 = *(v40 + v68);
  v73 = v96;
  v72 = v97;
  v74 = v89;
  (*(v96 + 32))(v89, v42, v97);
  v75 = MEMORY[0x1BFB248C0](v67, v74);
  v76 = *(v73 + 8);
  v76(v67, v72);
  if ((v75 & 1) == 0)
  {
    v76(v74, v72);

    sub_1BC6E722C(v70, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_44;
  }

  v48 = sub_1BC6DE188(v69, v71, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

  v76(v74, v72);
  sub_1BC6E722C(v70, type metadata accessor for InterventionConfig.Layout);
  return v48 & 1;
}

unint64_t sub_1BC6E6464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2C8;
  if (!qword_1EBCEB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2C8);
  }

  return result;
}

unint64_t sub_1BC6E64B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2D0;
  if (!qword_1EBCEB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2D0);
  }

  return result;
}

unint64_t sub_1BC6E650C()
{
  result = qword_1EBCDDA88;
  if (!qword_1EBCDDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC6E6674(&qword_1EBCDDA90, MEMORY[0x1E697B460], MEMORY[0x1E697B468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA88);
  }

  return result;
}

unint64_t sub_1BC6E65C0()
{
  result = qword_1EBCDDA98;
  if (!qword_1EBCDDA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    sub_1BC6E6674(&qword_1EBCDDAA0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA98);
  }

  return result;
}

uint64_t sub_1BC6E6674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC6E66BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2D8;
  if (!qword_1EBCEB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2D8);
  }

  return result;
}

unint64_t sub_1BC6E6710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2E0;
  if (!qword_1EBCEB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2E0);
  }

  return result;
}

unint64_t sub_1BC6E6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2E8;
  if (!qword_1EBCEB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2E8);
  }

  return result;
}

unint64_t sub_1BC6E67B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2F0;
  if (!qword_1EBCEB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2F0);
  }

  return result;
}

unint64_t sub_1BC6E680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB2F8;
  if (!qword_1EBCEB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2F8);
  }

  return result;
}

unint64_t sub_1BC6E6860()
{
  result = qword_1EBCDDAB8;
  if (!qword_1EBCDDAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDAB0, &qword_1BC767C40);
    sub_1BC6E6674(&qword_1EBCDDAA8, MEMORY[0x1E697B4F0], MEMORY[0x1E697B4F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDAB8);
  }

  return result;
}

unint64_t sub_1BC6E6914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB300;
  if (!qword_1EBCEB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB300);
  }

  return result;
}

unint64_t sub_1BC6E6968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB308;
  if (!qword_1EBCEB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB308);
  }

  return result;
}

unint64_t sub_1BC6E69BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB310;
  if (!qword_1EBCEB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB310);
  }

  return result;
}

unint64_t sub_1BC6E6A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEB318[0];
  if (!qword_1EBCEB318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEB318);
  }

  return result;
}

unint64_t sub_1BC6E6A64()
{
  result = qword_1EBCDDB20;
  if (!qword_1EBCDDB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC6E6674(&qword_1EBCDDB28, MEMORY[0x1E697B460], MEMORY[0x1E697B478]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB20);
  }

  return result;
}

unint64_t sub_1BC6E6B18()
{
  result = qword_1EBCDDB30;
  if (!qword_1EBCDDB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    sub_1BC6E6674(&qword_1EBCDDB38, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB30);
  }

  return result;
}

unint64_t sub_1BC6E6BCC()
{
  result = qword_1EBCDDB48;
  if (!qword_1EBCDDB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDAB0, &qword_1BC767C40);
    sub_1BC6E6674(&qword_1EBCDDB40, MEMORY[0x1E697B4F0], MEMORY[0x1E697B508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB48);
  }

  return result;
}

uint64_t sub_1BC6E6C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6E6CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001BC773380 == a2;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC7733A0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E6573 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69766965636572 && a2 == 0xE900000000000067 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC7733C0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BC7733E0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6956676E69727564 && a2 == 0xEF6C6C61436F6564 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x614364656E696F6ALL && a2 == 0xEA00000000006C6CLL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BC773400 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F54676E69797274 && a2 == 0xEC0000006C6C6143)
  {

    return 9;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1BC6E7034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBD8, &qword_1BC768CB0);
    v3 = sub_1BC75C420();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BC660024(v4, v13, &qword_1EBCDDBE0, &qword_1BC768CB8);
      result = sub_1BC65B7F4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1BC678BBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1BC6E7170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6E71D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDB60;
  if (!qword_1EBCDDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB60);
  }

  return result;
}

uint64_t sub_1BC6E722C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6E72D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDBB0;
  if (!qword_1EBCDDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDBB0);
  }

  return result;
}

unint64_t sub_1BC6E7328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDBB8;
  if (!qword_1EBCDDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDBB8);
  }

  return result;
}

unint64_t sub_1BC6E7380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDBC0;
  if (!qword_1EBCDDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDBC0);
  }

  return result;
}

void sub_1BC6E73D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC75BD70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InterventionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterventionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BC6E75A0(uint64_t a1)
{
  result = type metadata accessor for SCUIInterventionKind._Kind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC6E760C(uint64_t a1)
{
  sub_1BC6E73D4(319, &qword_1EDDCEE98, MEMORY[0x1E697B4F0]);
  if (v1 <= 0x3F)
  {
    sub_1BC759DE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1BC6E775C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEBB40[0];
  if (!qword_1EBCEBB40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEBB40);
  }

  return result;
}

unint64_t sub_1BC6E77B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEBD50[0];
  if (!qword_1EBCEBD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEBD50);
  }

  return result;
}

unint64_t sub_1BC6E780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEBF60[0];
  if (!qword_1EBCEBF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEBF60);
  }

  return result;
}

unint64_t sub_1BC6E7864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEC170[0];
  if (!qword_1EBCEC170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC170);
  }

  return result;
}

unint64_t sub_1BC6E78BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEC380[0];
  if (!qword_1EBCEC380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC380);
  }

  return result;
}

unint64_t sub_1BC6E7914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEC590[0];
  if (!qword_1EBCEC590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC590);
  }

  return result;
}

unint64_t sub_1BC6E796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEC7A0[0];
  if (!qword_1EBCEC7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC7A0);
  }

  return result;
}

unint64_t sub_1BC6E79C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEC9B0[0];
  if (!qword_1EBCEC9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC9B0);
  }

  return result;
}

unint64_t sub_1BC6E7A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCECDC0[0];
  if (!qword_1EBCECDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCECDC0);
  }

  return result;
}

unint64_t sub_1BC6E7A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCECF50;
  if (!qword_1EBCECF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCECF50);
  }

  return result;
}

unint64_t sub_1BC6E7ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCECF58[0];
  if (!qword_1EBCECF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCECF58);
  }

  return result;
}

unint64_t sub_1BC6E7B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCECFE0;
  if (!qword_1EBCECFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCECFE0);
  }

  return result;
}

unint64_t sub_1BC6E7B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCECFE8[0];
  if (!qword_1EBCECFE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCECFE8);
  }

  return result;
}

unint64_t sub_1BC6E7BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED070;
  if (!qword_1EBCED070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED070);
  }

  return result;
}

unint64_t sub_1BC6E7C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED078;
  if (!qword_1EBCED078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED078);
  }

  return result;
}

unint64_t sub_1BC6E7C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED100;
  if (!qword_1EBCED100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED100);
  }

  return result;
}

unint64_t sub_1BC6E7CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED108[0];
  if (!qword_1EBCED108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED108);
  }

  return result;
}

unint64_t sub_1BC6E7D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED190;
  if (!qword_1EBCED190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED190);
  }

  return result;
}

unint64_t sub_1BC6E7D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED198[0];
  if (!qword_1EBCED198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED198);
  }

  return result;
}

unint64_t sub_1BC6E7DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED220;
  if (!qword_1EBCED220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED220);
  }

  return result;
}

unint64_t sub_1BC6E7E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED228[0];
  if (!qword_1EBCED228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED228);
  }

  return result;
}

unint64_t sub_1BC6E7E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED2B0;
  if (!qword_1EBCED2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED2B0);
  }

  return result;
}

unint64_t sub_1BC6E7EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED2B8[0];
  if (!qword_1EBCED2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED2B8);
  }

  return result;
}

unint64_t sub_1BC6E7F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED340;
  if (!qword_1EBCED340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED340);
  }

  return result;
}

unint64_t sub_1BC6E7F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED348[0];
  if (!qword_1EBCED348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED348);
  }

  return result;
}

unint64_t sub_1BC6E7FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED3D0;
  if (!qword_1EBCED3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED3D0);
  }

  return result;
}

unint64_t sub_1BC6E804C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED3D8[0];
  if (!qword_1EBCED3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED3D8);
  }

  return result;
}

unint64_t sub_1BC6E80A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED460;
  if (!qword_1EBCED460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED460);
  }

  return result;
}

unint64_t sub_1BC6E80FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED468[0];
  if (!qword_1EBCED468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED468);
  }

  return result;
}

unint64_t sub_1BC6E8154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED4F0;
  if (!qword_1EBCED4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED4F0);
  }

  return result;
}

unint64_t sub_1BC6E81AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCED4F8[0];
  if (!qword_1EBCED4F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED4F8);
  }

  return result;
}

void (*sub_1BC6E8224(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BC6E82B4;
}

void sub_1BC6E82B4(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1BC6E8334()
{
  swift_getKeyPath();
  (*(*v0 + 216))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BC6E83BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6E8408(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1BC6E845C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 224))();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BC6E8554(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  v4[5] = OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC6EB3C4(&qword_1EBCDDC00, type metadata accessor for RemoteInterventionViewController.InnerState, &unk_1BC768DD8);
  sub_1BC759A70();

  v4[7] = sub_1BC6E8224(v4);
  return sub_1BC6E8690;
}

uint64_t type metadata accessor for RemoteInterventionViewController.InnerState(uint64_t a1)
{
  result = qword_1EDDCF590;
  if (!qword_1EDDCF590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC6E86E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6E87AC@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 216))();

  v3 = (v1 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_1BC6362BC(v23, v22);
}

__n128 sub_1BC6E88C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 184))(v9);
  v3 = v9[11];
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v3;
  *(a2 + 192) = v9[12];
  v4 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v4;
  v5 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v5;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BC6E894C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v28 = a1[10];
  v29 = v3;
  v4 = a1[11];
  v30 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v24 = a1[6];
  v25 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v26 = a1[8];
  v27 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v22 = a1[4];
  v23 = v12;
  v13 = a1[1];
  v19[0] = *a1;
  v19[1] = v13;
  v18[10] = v28;
  v18[11] = v4;
  v18[12] = a1[12];
  v18[6] = v24;
  v18[7] = v7;
  v18[8] = v26;
  v18[9] = v2;
  v18[2] = v20;
  v18[3] = v11;
  v18[4] = v22;
  v18[5] = v5;
  v14 = *a2;
  v18[0] = v19[0];
  v18[1] = v9;
  v15 = *(*v14 + 192);
  sub_1BC6362BC(v19, &v17);
  return v15(v18);
}

uint64_t sub_1BC6E8A20(_OWORD *a1)
{
  v2 = a1[11];
  v11[10] = a1[10];
  v11[11] = v2;
  v11[12] = a1[12];
  v3 = a1[7];
  v11[6] = a1[6];
  v11[7] = v3;
  v4 = a1[9];
  v11[8] = a1[8];
  v11[9] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  v6 = a1[5];
  v11[4] = a1[4];
  v11[5] = v6;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  swift_getKeyPath();
  v9 = v1;
  v10 = v11;
  (*(*v1 + 224))();
  sub_1BC69811C(v11);
}

uint64_t sub_1BC6E8AF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (v1 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  swift_beginAccess();
  v24[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v24[3] = v3[3];
  v24[4] = v6;
  v24[1] = v4;
  v24[2] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[8];
  v24[7] = v3[7];
  v24[8] = v9;
  v24[5] = v7;
  v24[6] = v8;
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[12];
  v24[11] = v3[11];
  v24[12] = v12;
  v24[9] = v10;
  v24[10] = v11;
  *v3 = *v2;
  v13 = v2[1];
  v14 = v2[2];
  v15 = v2[4];
  v3[3] = v2[3];
  v3[4] = v15;
  v3[1] = v13;
  v3[2] = v14;
  v16 = v2[5];
  v17 = v2[6];
  v18 = v2[8];
  v3[7] = v2[7];
  v3[8] = v18;
  v3[5] = v16;
  v3[6] = v17;
  v19 = v2[9];
  v20 = v2[10];
  v21 = v2[12];
  v3[11] = v2[11];
  v3[12] = v21;
  v3[9] = v19;
  v3[10] = v20;
  sub_1BC6362BC(v2, v23);
  return sub_1BC69811C(v24);
}

uint64_t (*sub_1BC6E8BE0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  v4[5] = OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC6EB3C4(&qword_1EBCDDC00, type metadata accessor for RemoteInterventionViewController.InnerState, &unk_1BC768DD8);
  sub_1BC759A70();

  v4[7] = sub_1BC6E874C(v4);
  return sub_1BC6E8D1C;
}

void sub_1BC6E8D28(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1BC759A60();

  free(v3);
}

uint64_t sub_1BC6E8DBC(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BC6E8E0C(a1, a2);
  return v4;
}