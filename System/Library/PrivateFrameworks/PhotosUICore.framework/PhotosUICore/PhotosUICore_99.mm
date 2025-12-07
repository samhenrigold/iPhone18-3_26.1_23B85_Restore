double sub_1A48EEF8C()
{
  v1 = sub_1A5243C94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5243A24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  type metadata accessor for LemonadeSearchCollectionResultCell(0);
  v20 = v0;
  sub_1A48F13BC(v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2780], v5);
  v12 = sub_1A5243A14();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  result = 1.0;
  if ((v12 & 1) == 0)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2898], v1, 1.0);
    sub_1A48F1678(&qword_1EB144CC0, MEMORY[0x1E69C28A0], MEMORY[0x1E69C28A8]);
    v15 = sub_1A524C594();
    (*(v2 + 8))(v4, v1);
    if (v15)
    {
      sub_1A52432C4();
      v16 = *(v21 + 16);
      v17 = *(v21 + 24);
      sub_1A46B1CB4(v16, *(v21 + 24));

      if (!v17)
      {
        sub_1A4267BB4(v16, 0);
        return 1.518;
      }

      if (v17 == 1)
      {
        sub_1A4267BB4(v16, 1);
        return 1.518;
      }

      sub_1A4267BB4(v16, 2);
      v18 = sub_1A52432E4();
      if (v18 >> 62)
      {
        v19 = sub_1A524E2B4();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 < 2)
      {
        return 1.518;
      }
    }

    sub_1A5243944();
  }

  return result;
}

unint64_t sub_1A48EF2C0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1A5243624();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40C6344(0);
  v42 = v5;
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A48ED79C(0, &qword_1EB144CF0, MEMORY[0x1E69C2928], sub_1A40C6344, MEMORY[0x1E697F948]);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1A5243834();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48F185C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_1A5243EC4();
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchCollectionResultCell(0);
  sub_1A52432C4();
  Kind = v44[1].Kind;
  Description_low = LOBYTE(v44[1].Description);
  sub_1A46B1CB4(Kind, v44[1].Description);

  if (Description_low == 1)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2530], v1);
    v19 = sub_1A3C36888();
    v20 = sub_1A3C30368();
    v21 = sub_1A3C5A374();
    v22 = v39;
    sub_1A414D324(Kind, v4, v20 & 1, v21 & 1, v39);
    (*(v2 + 8))(v4, v1);
    v23 = v40;
    v24 = v42;
    (*(v40 + 16))(v9, v22, v42);
    swift_storeEnumTagMultiPayload();
    sub_1A48F1678(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    *&v46 = &type metadata for LemonadePeopleShelfProvider;
    *(&v46 + 1) = v19;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    v25 = sub_1A4267BB4(Kind, 1);
    return (*(v23 + 8))(v22, v24, v25);
  }

  sub_1A4267BB4(Kind, Description_low);
  result = sub_1A52432E4();
  if (result >> 62)
  {
    v28 = result;
    v29 = sub_1A524E2B4();
    result = v28;
    if (!v29)
    {
      goto LABEL_9;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v46 = 0u;
    v47 = 0u;
    v48 = 1;
    v30 = sub_1A52429A4();
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
    (*(v34 + 104))(v36, *MEMORY[0x1E69C2678], v35);
    v31 = v37;
    sub_1A5243ED4();
    v32 = v38;
    (*(v38 + 16))(v9, v31, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A48F1678(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v33 = sub_1A3C36888();
    v44 = &type metadata for LemonadePeopleShelfProvider;
    v45 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v32 + 8))(v31, v15);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A48EF9CC()
{
  v1 = sub_1A5249234();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5243C94();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249A94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v50 = type metadata accessor for LemonadeSearchCollectionResultCell(0);
  v51 = v0;
  sub_1A3DC7F98(v21);
  (*(v6 + 104))(v18, *MEMORY[0x1E697FF38], v5);
  (*(v6 + 56))(v18, 0, 1, v5);
  v22 = *(v10 + 56);
  sub_1A48F15B0(v21, v12, sub_1A3DC7D88);
  sub_1A48F15B0(v18, &v12[v22], sub_1A3DC7D88);
  v23 = *(v6 + 48);
  if (v23(v12, 1, v5) != 1)
  {
    sub_1A48F15B0(v12, v15, sub_1A3DC7D88);
    if (v23(&v12[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v12[v22], v5);
      sub_1A48F1678(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      sub_1A524C594();
      v24 = *(v6 + 8);
      v24(v8, v5);
      sub_1A48F1618(v18, sub_1A3DC7D88);
      sub_1A48F1618(v21, sub_1A3DC7D88);
      v24(v15, v5);
      sub_1A48F1618(v12, sub_1A3DC7D88);
      goto LABEL_8;
    }

    sub_1A48F1618(v18, sub_1A3DC7D88);
    sub_1A48F1618(v21, sub_1A3DC7D88);
    (*(v6 + 8))(v15, v5);
    goto LABEL_6;
  }

  sub_1A48F1618(v18, sub_1A3DC7D88);
  sub_1A48F1618(v21, sub_1A3DC7D88);
  if (v23(&v12[v22], 1, v5) != 1)
  {
LABEL_6:
    sub_1A48F1618(v12, sub_1A3DD0DCC);
    goto LABEL_8;
  }

  sub_1A48F1618(v12, sub_1A3DC7D88);
LABEL_8:
  v26 = v50;
  v25 = v51;
  v28 = v48;
  v27 = v49;
  v29 = v47;
  (*(v48 + 16))(v47, v51 + *(v50 + 48), v49);
  result = (*(v28 + 88))(v29, v27);
  if (result != *MEMORY[0x1E69C2888] && result != *MEMORY[0x1E69C2890])
  {
    if (result == *MEMORY[0x1E69C2898])
    {
      v31 = *v25;
      if (*(v25 + 16) != 1)
      {
        v32 = *(v25 + 8);

        v33 = sub_1A524D254();
        v34 = sub_1A524A014();
        sub_1A5246DF4(v33, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v35 = v44;
        sub_1A5249224();
        swift_getAtKeyPath();
        v36 = sub_1A3F1B4C4(v31, v32, 0);
        (*(v45 + 8))(v35, v46, v36);
      }

      sub_1A48F01B0();
      v37 = [objc_opt_self() sharedInstance];
      [v37 interitemSpacing];

      sub_1A48F01B0();
      v38 = v25 + *(v26 + 40);
      v39 = *v38;
      if (*(v38 + 8) == 1)
      {
        LOBYTE(v54) = *v38;
      }

      else
      {

        v40 = sub_1A524D254();
        v41 = sub_1A524A014();
        sub_1A5246DF4(v40, &dword_1A3C1C000, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v42 = v44;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v39, 0);
        (*(v45 + 8))(v42, v46);
        LOBYTE(v39) = v54;
      }

      v53 = v39;
      v52 = 6;
      return static LemonadeHorizontalSizeClass.== infix(_:_:)(&v53, &v52);
    }

    else
    {
      return (*(v28 + 8))(v29, v27, INFINITY);
    }
  }

  return result;
}

uint64_t sub_1A48F01B0()
{
  v0 = sub_1A5249A94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  type metadata accessor for LemonadeSearchCollectionResultCell(0);
  sub_1A3DC7F98(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1A48F15B0(v15, v6, sub_1A3DC7D88);
  sub_1A48F15B0(v12, &v6[v16], sub_1A3DC7D88);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1A48F15B0(v6, v9, sub_1A3DC7D88);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_1A48F1678(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v20 = sub_1A524C594();
      v21 = *(v1 + 8);
      v21(v19, v0);
      sub_1A48F1618(v12, sub_1A3DC7D88);
      sub_1A48F1618(v15, sub_1A3DC7D88);
      v21(v9, v0);
      sub_1A48F1618(v6, sub_1A3DC7D88);
      if (v20)
      {
        return 13;
      }

      return 5;
    }

    sub_1A48F1618(v12, sub_1A3DC7D88);
    sub_1A48F1618(v15, sub_1A3DC7D88);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_1A48F1618(v6, sub_1A3DD0DCC);
    return 5;
  }

  sub_1A48F1618(v12, sub_1A3DC7D88);
  sub_1A48F1618(v15, sub_1A3DC7D88);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_1A48F1618(v6, sub_1A3DC7D88);
  return 13;
}

uint64_t sub_1A48F05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for LemonadeSearchCollectionResultCell(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[7];
  *(a5 + v13) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v14 = v10[8];
  *(a5 + v14) = swift_getKeyPath();
  sub_1A3F31578(0);
  swift_storeEnumTagMultiPayload();
  v15 = v10[9];
  *(a5 + v15) = swift_getKeyPath();
  sub_1A48ED4D8(0);
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v10[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(a5 + v10[11]) = a1;
  v17 = v10[12];
  v18 = sub_1A5243C94();
  (*(*(v18 - 8) + 32))(a5 + v17, a2, v18);
  v19 = v10[13];
  v20 = sub_1A5243C84();
  (*(*(v20 - 8) + 32))(a5 + v19, a3, v20);
  v21 = v10[14];
  v22 = sub_1A5243CE4();
  v23 = *(*(v22 - 8) + 32);

  return v23(a5 + v21, a4, v22);
}

uint64_t sub_1A48F0838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v4 = (a1 - 8);
  v24 = *(a1 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = sub_1A5243CE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5243C84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5243C94();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v4[14];
  v23 = *(v3 + v4[13]);
  v26 = v23;
  (*(v17 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v16, v14);
  (*(v10 + 16))(v12, v3 + v4[15], v9);
  (*(v7 + 16))(v22, v3 + v4[16], v6);
  sub_1A48F15B0(v3, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchCollectionResultCell);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_1A48F16C0(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LemonadeSearchCollectionResultCell);
  sub_1A4268040(0);
  sub_1A48F1728(0, &qword_1EB144BB8, sub_1A48ED640, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
  sub_1A48F1678(&qword_1EB144C20, sub_1A4268040, MEMORY[0x1E69C2400]);
  sub_1A48EDA1C();

  return sub_1A5243694();
}

void sub_1A48F0C30(uint64_t a1)
{
  sub_1A48F185C(319, &qword_1EB124690, type metadata accessor for CGSize, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A48F185C(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3C48CCC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A48F185C(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A48F185C(319, &qword_1EB144CA0, MEMORY[0x1E69C2788], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A3C48CCC(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A4268040(319);
              if (v7 <= 0x3F)
              {
                sub_1A5243C94();
                if (v8 <= 0x3F)
                {
                  sub_1A5243C84();
                  if (v9 <= 0x3F)
                  {
                    sub_1A5243CE4();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1A48F0E80(uint64_t a1)
{
  if (!qword_1EB144CB0)
  {
    sub_1A4268040(255);
    sub_1A48F1728(255, &qword_1EB144BB8, sub_1A48ED640, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A48F1678(&qword_1EB144C20, sub_1A4268040, MEMORY[0x1E69C2400]);
    sub_1A48EDA1C();
    v1 = sub_1A5243684();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB144CB0);
    }
  }
}

uint64_t objectdestroyTm_86()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3F1B4C4(*v2, *(v2 + 8), *(v2 + 16));
  v3 = v1[5];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v6 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5249A94();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5247E04();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  sub_1A48ED4D8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5243A24();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  v13 = v1[12];
  v14 = sub_1A5243C94();
  (*(*(v14 - 8) + 8))(v2 + v13, v14);
  v15 = v1[13];
  v16 = sub_1A5243C84();
  (*(*(v16 - 8) + 8))(v2 + v15, v16);
  v17 = v1[14];
  v18 = sub_1A5243CE4();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

void sub_1A48F134C(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeSearchCollectionResultCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A48ED558(a1, v4);
}

uint64_t sub_1A48F13BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48ED4D8(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48F15B0(v2, v10, sub_1A48ED4D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5243A24();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A48F15B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48F1618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48F1678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A48F16C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A48F1728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A48F1794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48F17F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A48F185C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A48F18C4()
{
  if (*(v0 + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A40E9154(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v9 = v7;
  v10 = [v8 init];
  [v10 setAlignment_];
  v11 = sub_1A3C52C70(0, &qword_1EB12FEF0, 0x1E69DB7C8);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = v12;
  PXSystemFontOfSizeAndWeight();
}

void sub_1A48F1A8C()
{
  if (*(v0 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A40E9154(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v10 = v8;
  v11 = [v9 init];
  [v11 setAlignment_];
  v12 = sub_1A3C52C70(0, &qword_1EB12FEF0, 0x1E69DB7C8);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = v13;
  PXSystemFontOfSizeAndWeight();
}

uint64_t sub_1A48F1C78(char a1)
{
  if (sub_1A3DBEE68(a1 & 1, 0))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1A48F1CA4(char a1)
{
  if (sub_1A3DBEE68(a1 & 1, 0))
  {
    return 8;
  }

  else
  {
    return 14;
  }
}

uint64_t sub_1A48F1CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x58) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1A48F1D88(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x58);
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v1[v5], a1, v6);
  swift_endAccess();
  return (*(v7 + 8))(a1, v6);
}

void sub_1A48F1EF4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  sub_1A48F21D8(a1, a2 & 1, a3);
}

id sub_1A48F2018()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for HighlightsSectionLayout(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

double sub_1A48F2090(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x70)]);
  swift_unknownObjectRelease();
  (*(*(*((v4 & v3) + 0x60) - 8) + 8))(&a1[*((*v2 & *a1) + 0x80)]);

  return result;
}

void sub_1A48F21D8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v40 = a3;
  v6 = *v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  *&v32 = *MEMORY[0x1E69E7D40] & v6;
  v9 = a2 & 1;
  v10 = *((v8 & v6) + 0x60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = v30 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v34 = v30 - v15;
  v16 = *((v8 & v6) + 0x70);
  v33 = *(v17 + 16);
  v39 = v17 + 16;
  v36 = a1;
  v19 = v18;
  v33(&v4[v16], a1, v14);
  v20 = *((v8 & v6) + 0x68);
  v21 = *(v20 + 56);
  v38 = v9;
  v22 = v40;
  *&v4[*((*v7 & *v4) + 0x78)] = v21(a1, v9, v10, v20);
  v23 = *((*v7 & *v4) + 0x80);
  v24 = *(v11 + 16);
  v37 = v11 + 16;
  v24(&v4[v23], v22, v10);
  v30[0] = v24;
  v25 = &v4[*((*v7 & *v4) + 0x88)];
  *v25 = v9;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0x4034000000000000;
  *&v26 = *(v32 + 80);
  v30[1] = v19;
  *(&v26 + 1) = v19;
  *&v27 = v10;
  *(&v27 + 1) = v20;
  v31 = v27;
  v32 = v26;
  v41[1] = v27;
  v41[0] = v26;
  v28 = type metadata accessor for HighlightsSectionLayout(0, v41);
  v42.receiver = v4;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, sel_init);
  [v29 setMode_];
  [v29 setObjectReferenceLookup_];
  type metadata accessor for HighlightsHeaderLayout(0, v19, v10, v20);
  (v33)(v34, v36, v19);
  v24(v35, v40, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48F2730(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t LemonadeNotificationsTabBadgeSource.__allocating_init(photoLibrary:libraryFilterState:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1A3C33B34(a1, a2);

  return v4;
}

void sub_1A48F2870(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2;
    sub_1A3DBEE78();
    v9 = v8;
    sub_1A3DBEE90(v8, v10 & 1, a3);

    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v6 + 176))(v12);
  }
}

uint64_t LemonadeNotificationsTabBadgeSource.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v4 = sub_1A52411C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1A48F2A18()
{
  swift_getKeyPath();
  (*(*v0 + 168))();

  return result;
}

double sub_1A48F2A8C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 168))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource__itemListManager);

  return result;
}

double sub_1A48F2B14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  (*(*v2 + 176))();

  return result;
}

uint64_t LemonadeNotificationsTabBadgeSource.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LemonadeNotificationsTabBadgeSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48F2E08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_1A48F2F3C()
{
  sub_1A524CC54();
  v1 = swift_allocObject();
  v3 = *(v0 + 24);
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = v1;
  v6 = v3;
  sub_1A3C67884(sub_1A48F3018, v4, "PhotosUICore/LemonadeNotificationsTabBadgeSource.swift", 54, 2u, 18);

  return result;
}

void sub_1A48F3038()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource__itemListManager) = *(v0 + 24);
}

void sub_1A48F3098()
{
  sub_1A3C4D2E4(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A3C4D2E4(0, &qword_1EB144CF8, off_1E7721290);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A524C074();
}

void sub_1A48F3484(uint64_t a1)
{
  if (!qword_1EB144D00)
  {
    sub_1A524C074();
  }
}

uint64_t sub_1A48F3518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A48F3678()
{
  v1 = [v0 viewModel];
  v2 = [v1 dataSourceManager];

  v3 = [v2 dataSource];
  v4 = [v3 containerCollection];

  v5 = objc_opt_self();
  v6 = [v0 currentContentFilterState];
  v7 = [v6 photoLibrary];

  v10 = [v5 defaultFilterStateForContainerCollection:v4 photoLibrary:v7];
  v8 = [v0 currentContentFilterState];
  v9 = [v8 includeScreenshots];

  [v10 setIncludeScreenshots_];
  [v0 updateToContentFilterStateAndFinishTask_];
  swift_unknownObjectRelease();
}

id PhotosGridRemoveFiltersActionPerformer.__allocating_init(viewModel:actionType:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1A524C634();

  v6 = [v4 initWithViewModel:a1 actionType:v5];

  return v6;
}

id PhotosGridRemoveFiltersActionPerformer.init(viewModel:actionType:)(void *a1, uint64_t a2)
{
  v4 = sub_1A524C634();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PhotosGridRemoveFiltersActionPerformer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithViewModel_actionType_, a1, v4);

  return v5;
}

id PhotosGridRemoveFiltersActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridRemoveFiltersActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48F39D0()
{
  v1 = [v0 viewModel];
  v2 = [v1 contentFilterState];

  if (v2)
  {
    [v2 activeFilterCount];
  }

  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  v5 = sub_1A524C674();
  return v5;
}

uint64_t PhotosPreference.init(_:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v7;
  type metadata accessor for PhotosPreferenceObserver(0, a2, a3, v8);

  return sub_1A5247C74();
}

char *sub_1A48F3B7C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 56);
  type metadata accessor for PhotosPreferenceObserver(0, *(v2 + 16), *(v2 + 24), a2);
  v8 = v4;
  v9 = *(v2 + 40);
  v10 = v5;
  v6 = swift_allocObject();

  result = sub_1A48F4E6C(&v8);
  *a1 = v6;
  return result;
}

uint64_t sub_1A48F3C1C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A48F4E6C(a1);
  return v2;
}

uint64_t sub_1A48F3C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosPreferenceObserver(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1A5247CB4();
  sub_1A5247C84();
  return v5;
}

double PhotosPreference.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A48F3C5C(a1, a2, a3, a4);
  sub_1A48F4FDC(a5);

  return result;
}

uint64_t PhotosPreference.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6.n128_f64[0] = sub_1A48F58E8(a1, a2, a3, a4);
  v7 = *(*(*(a2 + 16) - 8) + 8);

  return v7(a1, v6);
}

void (*PhotosPreference.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v15 = v11;
  v7[5] = v11;
  sub_1A48F3C5C(a2, v12, v13, v14);
  sub_1A48F4FDC(v15);

  return sub_1A48F3EE4;
}

void sub_1A48F3EE4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7, a4);
    sub_1A48F3C5C(v9, v10, v11, v12);
    sub_1A48F57A4(v5);

    v13 = *(v8 + 8);
    v13(v5, v7);
    v13(v6, v7);
  }

  else
  {
    sub_1A48F3C5C(**a1, a2, a3, a4);
    sub_1A48F57A4(v6);

    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

void sub_1A48F3FF8()
{
  qword_1EB1DF4D8 = sub_1A48F402C;
  unk_1EB1DF4E0 = 0;
  qword_1EB1DF4E8 = sub_1A48F4054;
  qword_1EB1DF4F0 = 0;
}

BOOL sub_1A48F402C@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsHiddenAlbumVisible();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isHiddenAlbumVisible.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF4D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF4F0;
  *a1 = qword_1EB1DF4D8;
  *(a1 + 8) = unk_1EB1DF4E0;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F40EC()
{
  qword_1EB1DF500 = sub_1A48F4120;
  *algn_1EB1DF508 = 0;
  qword_1EB1DF510 = sub_1A48F4148;
  qword_1EB1DF518 = 0;
}

BOOL sub_1A48F4120@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsRecentlyViewedAndSharedAlbumVisible();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isRecentlyViewedAndSharedAlbumVisible.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF4F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF518;
  *a1 = qword_1EB1DF500;
  *(a1 + 8) = *algn_1EB1DF508;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F41E0()
{
  qword_1EB1741F8 = sub_1A48F4214;
  unk_1EB174200 = 0;
  qword_1EB174208 = sub_1A48F423C;
  qword_1EB174210 = 0;
}

BOOL sub_1A48F4214@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsVideoAutoplayEnabled();
  *a1 = result;
  return result;
}

uint64_t *sub_1A48F4244()
{
  if (qword_1EB1741F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1741F8;
}

double static PhotosPreference.Accessor<>.isVideoAutoplayEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1741F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB174210;
  *a1 = qword_1EB1741F8;
  *(a1 + 8) = unk_1EB174200;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4324()
{
  qword_1EB1DF530 = sub_1A48F4358;
  *algn_1EB1DF538 = 0;
  qword_1EB1DF540 = sub_1A48F4380;
  qword_1EB1DF548 = 0;
}

BOOL sub_1A48F4358@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsMergeDuplicatesEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isMergeDuplicatesEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF528 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF548;
  *a1 = qword_1EB1DF530;
  *(a1 + 8) = *algn_1EB1DF538;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4418()
{
  qword_1EB1DF558 = sub_1A48F444C;
  unk_1EB1DF560 = 0;
  qword_1EB1DF568 = sub_1A48F4474;
  qword_1EB1DF570 = 0;
}

BOOL sub_1A48F444C@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsStacksEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isStacksEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF550 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF570;
  *a1 = qword_1EB1DF558;
  *(a1 + 8) = unk_1EB1DF560;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F450C()
{
  qword_1EB1741D0 = sub_1A48F4540;
  *algn_1EB1741D8 = 0;
  qword_1EB1741E0 = sub_1A48F4568;
  qword_1EB1741E8 = 0;
}

uint64_t sub_1A48F4540@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  result = PXPreferencesIsFeaturedContentAllowed(a2);
  *a1 = result;
  return result;
}

uint64_t *sub_1A48F4570()
{
  if (qword_1EB1741C8 != -1)
  {
    swift_once();
  }

  return &qword_1EB1741D0;
}

double static PhotosPreference.Accessor<>.isFeaturedContentAllowed.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1741C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1741E8;
  *a1 = qword_1EB1741D0;
  *(a1 + 8) = *algn_1EB1741D8;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4650()
{
  qword_1EB1DF588 = sub_1A48F4684;
  unk_1EB1DF590 = 0;
  qword_1EB1DF598 = sub_1A48F46AC;
  qword_1EB1DF5A0 = 0;
}

uint64_t sub_1A48F4684@<X0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsSharedLibrarySuggestionsEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isSharedLibrarySuggestionsEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF580 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF5A0;
  *a1 = qword_1EB1DF588;
  *(a1 + 8) = unk_1EB1DF590;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4744()
{
  qword_1EB1DF5B0 = sub_1A48F4778;
  *algn_1EB1DF5B8 = 0;
  qword_1EB1DF5C0 = sub_1A48F47A0;
  qword_1EB1DF5C8 = 0;
}

BOOL sub_1A48F4778@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsSharedLibraryBadgingEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isSharedLibraryBadgingEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF5A8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF5C8;
  *a1 = qword_1EB1DF5B0;
  *(a1 + 8) = *algn_1EB1DF5B8;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4838()
{
  qword_1EB1DF5D8 = sub_1A48F486C;
  unk_1EB1DF5E0 = 0;
  qword_1EB1DF5E8 = sub_1A48F4894;
  qword_1EB1DF5F0 = 0;
}

uint64_t sub_1A48F486C@<X0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsSharedLibraryDeletionNotificationEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isSharedLibraryDeletionNotificationEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF5D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF5F0;
  *a1 = qword_1EB1DF5D8;
  *(a1 + 8) = unk_1EB1DF5E0;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F492C()
{
  qword_1EB1DF600 = sub_1A48F4960;
  *algn_1EB1DF608 = 0;
  qword_1EB1DF610 = sub_1A48F4988;
  qword_1EB1DF618 = 0;
}

BOOL sub_1A48F4960@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsCameraSharingEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isCameraSharingEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF5F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF618;
  *a1 = qword_1EB1DF600;
  *(a1 + 8) = *algn_1EB1DF608;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4A20()
{
  qword_1EB1DF628 = sub_1A48F4A54;
  unk_1EB1DF630 = 0;
  qword_1EB1DF638 = sub_1A48F4A7C;
  qword_1EB1DF640 = 0;
}

BOOL sub_1A48F4A54@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsCameraAutoShareEnabled();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.isCameraAutoShareEnabled.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF620 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF640;
  *a1 = qword_1EB1DF628;
  *(a1 + 8) = unk_1EB1DF630;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4B14()
{
  qword_1EB1DF650 = sub_1A48F4B48;
  *algn_1EB1DF658 = 0;
  qword_1EB1DF660 = sub_1A48F4B70;
  qword_1EB1DF668 = 0;
}

unint64_t sub_1A48F4B48@<X0>(unint64_t *a1@<X8>)
{
  result = PXPreferencesCameraSharingPreferencesState();
  *a1 = result;
  return result;
}

double static PhotosPreference.Accessor<>.cameraSharingPreferencesState.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF648 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF668;
  *a1 = qword_1EB1DF650;
  *(a1 + 8) = *algn_1EB1DF658;
  *(a1 + 24) = v1;

  return result;
}

void sub_1A48F4C08()
{
  qword_1EB1DF678 = sub_1A48F4C3C;
  unk_1EB1DF680 = 0;
  qword_1EB1DF688 = sub_1A48F4CD4;
  qword_1EB1DF690 = 0;
}

uint64_t sub_1A48F4C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = PXPreferencesWelcomeViewLastPresentationDate();
  if (v2)
  {
    v3 = v2;
    sub_1A52410F4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1A5241144();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

void sub_1A48F4CD4(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CD54(a1, v4);
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v7 = sub_1A5241074();
    (*(v6 + 8))(v4, v5);
  }

  PXPreferencesSetWelcomeViewLastPresentationDate(v7);
}

double static PhotosPreference.Accessor<>.welcomeViewLastPresentationDate.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF670 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF690;
  *a1 = qword_1EB1DF678;
  *(a1 + 8) = unk_1EB1DF680;
  *(a1 + 24) = v1;

  return result;
}

char *sub_1A48F4E6C(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - v4;
  v7 = *v6;
  v8 = *(v6 + 24);
  sub_1A5241604();
  v9 = &v2[*(*v2 + 104)];
  *v9 = v7;
  *(v9 + 8) = *(a1 + 8);
  *(v9 + 3) = v8;

  v7(v10);

  (*(*(*(*v2 + 80) - 8) + 32))(&v2[*(*v2 + 96)], v5);
  PXRegisterPreferencesObserver(v2);
  return v2;
}

uint64_t sub_1A48F4FDC@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_1A48F52B8(KeyPath);

  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1A48F5100(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(v1 + *(v2 + 104)))(v8);
  sub_1A48F4FDC(v6);
  v11 = sub_1A524C594();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    v13.n128_f64[0] = sub_1A48F5574(v10);
  }

  return (v12)(v10, v3, v13);
}

double sub_1A48F527C()
{

  sub_1A48F5100(v0);

  return result;
}

uint64_t sub_1A48F5448()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  v1 = *(*v0 + 112);
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A48F5574(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16[-v7];
  v9 = *(v4 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  v11 = sub_1A524C594();
  v12 = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    *&v16[-16] = v5;
    *&v16[-8] = v10;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-16] = v2;
    *&v16[-8] = a1;
    sub_1A48F5364(v15, sub_1A48F5B18, &v16[-32], MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1A48F57A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  sub_1A48F4FDC(&v11 - v6);
  v8 = sub_1A524C594();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    v10 = sub_1A48F5574(a1);
    return (*(v2 + *(*v2 + 104) + 16))(a1, v10);
  }

  return result;
}

double sub_1A48F58E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A48F3C5C(a2, a2, a3, a4);
  sub_1A48F57A4(a1);

  return result;
}

uint64_t sub_1A48F5930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosPreferenceObserver(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_1A5247CB4();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A48F59EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A48F5A40(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A48F5B18()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *(*v2 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v2 + v4, v1);
  return swift_endAccess();
}

id TransparentHostingController.__allocating_init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  v11 = a1;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1A48F67E4(v11, v10, a3, a4, a5);
  (*(*(*(v6 + 10) - 8) + 8))(a5);
  return v13;
}

id TransparentHostingController.init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1A48F67E4(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a5);
  return v9;
}

uint64_t TransparentHostingController.__allocating_init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v11;
  v12(v8);
  return (*(v4 + 152))(a1, a2, &v15, a4, v10);
}

void sub_1A48F5E4C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1A48F5E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);
  if (*(v4 + v5))
  {
    v6 = *(v4 + v5);
  }

  else
  {
    v7 = type metadata accessor for DelegateProxy(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
    type metadata accessor for DelegateProxy(0, *(v7 + 80), *(v7 + 88), v8);
    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    *(v4 + v5) = v6;
  }

  return v6;
}

void sub_1A48F5F44()
{
  v4 = [objc_allocWithZone(PXHitTestTransparentView) init];
  [v4 setDelegate_];

  [v0 setView_];
}

void sub_1A48F5FD0(void *a1)
{
  v1 = a1;
  sub_1A48F5F44();
}

void sub_1A48F6018(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v10 = *((v9 & v8) + 0x58);
  v12 = type metadata accessor for TransparentHostingController(0, v4, v10, v11);
  v26.receiver = v2;
  v26.super_class = v12;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v14 = *v3 & *v2;
  v15 = (v5 + 16);
  if (*(v2 + *(v14 + 0x70)) == 1)
  {
    type metadata accessor for PXSecureLockscreenSwiftUIHostingController(0, v4, v10, v13);
    (*v15)(v7, v2 + *(v14 + 96), v4);
    v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v7);
  }

  else
  {
    sub_1A5249654();
    (*v15)(v7, v2 + *(v14 + 96), v4);
    v16 = sub_1A5249614();
  }

  v17 = v16;
  sub_1A52495F4();
  v18 = [v17 view];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor_];

    v21 = *((*v3 & *v2) + 0x78);
    v22 = *(v2 + v21);
    *(v2 + v21) = v19;
    v23 = v19;

    [v2 addChildViewController_];
    v24 = [v2 view];
    if (v24)
    {
      v25 = v24;
      [v24 addSubview_];

      [v17 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A48F6310(void *a1)
{
  v1 = a1;
  sub_1A48F6018(v1);
}

void sub_1A48F6358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for TransparentHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v19.receiver = v4;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, sel_viewWillLayoutSubviews);
  v7 = *(v4 + *((*v5 & *v4) + 0x78));
  if (v7)
  {
    v8 = v7;
    v9 = [v4 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v8 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A48F6478(void *a1)
{
  v4 = a1;
  sub_1A48F6358(v4, v1, v2, v3);
}

id TransparentHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1A48F65C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A48F6A5C();
}

id TransparentHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransparentHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1A48F66A8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  return result;
}

uint64_t sub_1A48F6780(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  v7 = sub_1A48F6D40(v6);

  return v7;
}

id sub_1A48F67E4(char a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *a3;
  *&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x78)] = 0;
  *&v5[*((*v10 & *v5) + 0x80)] = 0;
  v13 = *((v11 & v9) + 0x50);
  (*(*(v13 - 8) + 16))(&v5[*((*v10 & *v5) + 0x60)], a5, v13);
  v5[*((*v10 & *v5) + 0x68)] = a1;
  v5[*((*v10 & *v5) + 0x70)] = a2;
  *&v5[*((*v10 & *v5) + 0x88)] = v12;
  *&v5[*((*v10 & *v5) + 0x90)] = a4;
  v15 = type metadata accessor for TransparentHostingController(0, v13, *((v11 & v9) + 0x58), v14);
  v17.receiver = v5;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A48F69A0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78)) = 0;
  *(v0 + *((*v1 & *v0) + 0x80)) = 0;
  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A48F6A90()
{
  result = qword_1EB144D10;
  if (!qword_1EB144D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144D10);
  }

  return result;
}

unint64_t sub_1A48F6AE8()
{
  result = qword_1EB144D18;
  if (!qword_1EB144D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144D18);
  }

  return result;
}

unint64_t sub_1A48F6B40()
{
  result = qword_1EB12A5C8;
  if (!qword_1EB12A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5C8);
  }

  return result;
}

unint64_t sub_1A48F6B98()
{
  result = qword_1EB12A5C0;
  if (!qword_1EB12A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5C0);
  }

  return result;
}

uint64_t sub_1A48F6BFC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A48F6D40(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *Strong;
  v5 = *(Strong + *(v4 + 0x78));
  if (!v5 || (sub_1A441CDE8(), v6 = v5, v7 = a1, v8 = sub_1A524DBF4(), v7, v6, v4 = *v3 & *Strong, (v8 & 1) == 0))
  {
    v10 = *(Strong + *(v4 + 136));
    if (v10)
    {
      v11 = [a1 isUserInteractionEnabled];
      if ((v10 & 2) == 0)
      {
        if (v11)
        {
LABEL_14:
          v9 = 0;
          goto LABEL_16;
        }

LABEL_15:
        v9 = 2;
        goto LABEL_16;
      }

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_14;
    }

    [a1 alpha];
    if (v12 > 0.0)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(Strong + *((*v3 & *Strong) + 0x68)))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

LABEL_16:

  return v9;
}

void sub_1A48F6EE0(double a1)
{
  v2 = v1;
  sub_1A42D6224(0, a1);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SharedAlbumCreationView(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52[1] = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52[3] = v52 - v9;
  v10 = type metadata accessor for SharedCollectionActionView(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52[0] = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52[2] = v52 - v13;
  sub_1A48F7B90(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v52 - v18;
  v20 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v52 - v25;
  v27 = [v1 assetCollection];
  v28 = [v27 px_isSharedAlbum];

  if (v28)
  {
    v29 = [v1 &selRef_alreadyCollected];
    v30 = [v29 px_isCloudKitSharedAlbum];

    if (v30)
    {
      swift_storeEnumTagMultiPayload();
      v31 = type metadata accessor for LemonadeDetailsContext(0);
      (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
      v32 = [v1 &selRef_alreadyCollected];
      v33 = [v32 photoLibrary];

      if (v33)
      {
        type metadata accessor for LemonadeNavigationContext(0);
        type metadata accessor for LemonadePhotoLibraryContext(0, v34);
        v35 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v33, 0, 0);
        j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v53);
        v36 = sub_1A3C799F0(v26, 0, 0, 0, v19, &v53, v35, 2);
        type metadata accessor for SharedCollectionActionViewModel(0);

        v37 = [v2 &selRef_alreadyCollected];
        SharedCollectionActionViewModel.__allocating_init(navigationContext:extensionContext:sharedCollection:sharedCollections:assets:mediaSources:albumName:batchComment:perAssetCreationOptions:updateCallback:doneCallback:)(v36, 0, v37, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      }

      __break(1u);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for LemonadeDetailsContext(0);
      (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
      v44 = [v1 &selRef_alreadyCollected];
      v45 = [v44 photoLibrary];

      if (v45)
      {
        type metadata accessor for LemonadeNavigationContext(0);
        type metadata accessor for LemonadePhotoLibraryContext(0, v46);
        v47 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v45, 0, 0);
        j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v54);
        v48 = sub_1A3C799F0(v22, 0, 0, 0, v16, &v54, v47, 2);
        type metadata accessor for SharedAlbumActionViewModel(0);

        v49 = [v2 &selRef_alreadyCollected];
        v50 = sub_1A3C30368();
        SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v48, 0, v49, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v50 & 1, 0, 0, 0, 0);
      }
    }

    __break(1u);
  }

  else
  {
    sub_1A48F7BE4(0, &qword_1EB137738, type metadata accessor for LemonadeCollectionCustomizationViewModel);
    sub_1A42D6244(0);
    v56 = LemonadeCollectionCustomizationAlbumsModel.__allocating_init(collection:)([v1 &selRef_alreadyCollected]);
    v55 = 1;
    v38 = sub_1A4407D6C(&v56, &v55, 0, 0);
    sub_1A42D6348(0, v39);
    v40 = v38;
    sub_1A478C8F8(v40, v5);
    v41 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v5);

    v42 = v41;
    [v42 setModalPresentationStyle_];
    v51 = [v2 presentViewController_];

    [v2 completeUserInteractionTaskWithSuccess:v51 error:0];
  }
}

id sub_1A48F7AA8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PXPhotoKitAssetCollectionCustomizeActionPerformer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A48F7ADC(void *a1)
{
  v1 = [a1 assetCollection];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v2;
  if (v2)
  {
    if ([v2 assetCollectionType] == 4)
    {
      v3 = 0;
    }

    else if ([v3 px_isSharedAlbum])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v3 canPerformEditOperation_];
    }
  }

  swift_unknownObjectRelease();
  return v3;
}

void sub_1A48F7B90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A48F7BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A42D6244(255);
    v7 = v6;
    v8 = sub_1A48F7C80(&qword_1EB137730, sub_1A42D6244, &protocol conformance descriptor for LemonadeCollectionCustomizationAlbumsModel<A>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A48F7C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A48F7CC8(uint64_t a1)
{
  if (!qword_1EB144D80)
  {
    v2 = type metadata accessor for SharedCollectionActionView(255);
    v3 = sub_1A48F7C80(&qword_1EB12BF68, type metadata accessor for SharedCollectionActionView, &protocol conformance descriptor for SharedCollectionActionView);
    v5 = type metadata accessor for PXSwiftUIHostingViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB144D80);
    }
  }
}

uint64_t sub_1A48F7D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48F7DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48F7E24(void *a1)
{
  [objc_msgSend(a1 assetCollection)];
  swift_unknownObjectRelease();
  v1 = sub_1A524C634();
  v2 = PXLocalizedString(v1);

  v3 = sub_1A524C674();
  return v3;
}

void sub_1A48F7EE4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A48F7B90(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A5245BA4();
}

unint64_t sub_1A48F8634()
{
  result = qword_1EB1DF820;
  if (!qword_1EB1DF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DF820);
  }

  return result;
}

unint64_t sub_1A48F86F0()
{
  result = qword_1EB1DF828[0];
  if (!qword_1EB1DF828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DF828);
  }

  return result;
}

uint64_t sub_1A48F8774(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A3C34460(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

void sub_1A48F87CC(void *a1)
{
  v18 = [a1 view];
  [a1 translationInView_];
  v4 = v3;
  v6 = v5;
  [a1 velocityInView_];
  v8 = v7;
  v10 = v9;
  v11 = [a1 state];
  if (v11 > 3)
  {
    v14 = 0;
    if (v11 == 4)
    {
      goto LABEL_10;
    }

    if (v11 == 5)
    {
      v15 = v1[7];
      if (v15)
      {
LABEL_11:
        v15(v14);
      }
    }
  }

  else
  {
    if ((v11 - 1) < 2)
    {
      v12 = v1[5];
      v13 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
      (*(v13 + 8))(v12, v13, v4, v6, v8, v10);
      goto LABEL_12;
    }

    if (v11 == 3)
    {
      v14 = v10 < 0.0;
LABEL_10:
      v16 = v1[5];
      v17 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
      (*(v17 + 16))(v14, v16, v17, v4, v6, v8, v10);
      v15 = v1[7];
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

uint64_t sub_1A48F8978()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1A3C784D4(v0[7], v0[8]);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48F89FC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1A48F8AAC;

  return sub_1A48FBB2C();
}

uint64_t sub_1A48F8AAC(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  v5 = sub_1A524CBC4();
  v3[8] = v5;
  v3[9] = v4;
  if (v1)
  {
    v6 = sub_1A47CA4A4;
  }

  else
  {
    v6 = sub_1A48F8C10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A48F8C10()
{
  v1 = v0[7];
  UIViewController.mainScrollView.getter();
  v0[10] = v2;
  if (v1)
  {
    v3 = v0[6];
  }

  else
  {
    v6 = v2;
    v7 = [v6 window];
    v0[11] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = [v6 superview];
      v0[12] = v9;
      if (v9)
      {
        [v6 safeAreaInsets];
        sub_1A524D1E4();
      }

      v3 = v0[6];

      sub_1A48FC284();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
    }

    else
    {
      v3 = v0[6];

      sub_1A48FC284();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48F8FC4()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 216) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9EC0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F90EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F90EC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F91F0;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return v10(1, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F91F0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 216) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9EC0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9318;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9318()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F941C;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return v10(1, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F941C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 216) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9EC0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9544;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9544()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F9648;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return (v10)(0, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F9648()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 224) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9F50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9770;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9770()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F9874;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return (v10)(0, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F9874()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 224) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9F50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F999C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F999C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F9AA0;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return (v10)(0, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F9AA0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 224) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9F50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9BC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9BC8()
{
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x70) + **((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x70));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1A48F9CF8;
  v2 = *(v0 + 80);

  return v4(v2);
}

uint64_t sub_1A48F9CF8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A48F9FE0;
  }

  else
  {
    v5 = sub_1A48F9E34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48F9E34()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A48F9EC0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A48F9F50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A48F9FE0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A48FA068()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A48F89FC(v2);
}

uint64_t sub_1A48FA13C(uint64_t a1)
{
  v1[2] = a1;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A48FA1D4, v3, v2);
}

uint64_t sub_1A48FA1D4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x98))();
  v3 = sub_1A3C52C70(0, &qword_1EB144D90, off_1E771D9E0);
  UIViewController.descendant<A>(ofType:)(v3, v3);
  v5 = v4;
  *(v0 + 48) = v4;

  v8 = sub_1A46E5F3C();
  *(v0 + 56) = v8;
  if (v8)
  {
    v9 = v8;
    v10 = *(v0 + 16);
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    v11[2] = v9;
    v11[3] = v5;
    v11[4] = v10;
    v12 = *((*v1 & *v10) + 0x80);
    v15 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1A48FA45C;

    return (v15)(4, 0, &unk_1A5373188, v11);
  }

  else
  {

    sub_1A48FC284();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1A48FA45C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A48FA5EC;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A48FA578;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48FA578()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A48FA5EC()
{
  v1 = v0[7];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FA670()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A48FA13C(v2);
}

uint64_t sub_1A48FA704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  sub_1A524CC54();
  v3[28] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[29] = v5;
  v3[30] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A48FA7A0, v5, v4);
}

uint64_t sub_1A48FA7A0()
{
  v1 = *(v0 + 208);
  v2 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:7 revealMode:1 asset:objc_msgSend(*(v0 + 200) assetCollection:{sel_asset), objc_msgSend(*(v0 + 200), sel_assetCollection)}];
  *(v0 + 248) = v2;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_1A48FA940;
  v3 = swift_continuation_init();
  sub_1A43A6C50(0);
  *(v0 + 136) = v4;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A43A6168;
  *(v0 + 104) = &block_descriptor_300;
  *(v0 + 112) = v3;
  [v1 navigateToDestination:v2 options:2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A48FA940()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1A48FB6C4;
  }

  else
  {
    v5 = sub_1A48FAA70;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48FAA70()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 216)) + 0x98))();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 selectedViewController];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && (v9 = v8, (v10 = [v8 topViewController]) != 0))
      {
        v11 = v10;
        *(v0 + 176) = swift_getObjectType();
        sub_1A48FC584();
        if (sub_1A524C714() == 0xD000000000000015 && 0x80000001A53F25C0 == v12)
        {

LABEL_16:

LABEL_23:
          *(v0 + 264) = v9;
          goto LABEL_24;
        }

        v21 = sub_1A524EAB4();

        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v5;
    }
  }

  v13 = [v2 presentedViewController];
  if (v13)
  {
    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v9 = v15;
      v16 = [v15 topViewController];
      if (v16)
      {
        v11 = v16;
        *(v0 + 168) = swift_getObjectType();
        sub_1A48FC584();
        if (sub_1A524C714() == 0xD000000000000015 && 0x80000001A53F25C0 == v17)
        {
          goto LABEL_16;
        }

        v18 = sub_1A524EAB4();

        if (v18)
        {
          goto LABEL_23;
        }
      }
    }
  }

  sub_1A48FC284();
  v9 = swift_allocError();
  *v19 = 0;
  swift_willThrow();
  if (!v9)
  {
LABEL_24:

    sub_1A48FC380(v9);
    v24 = *((*v1 & **(v0 + 216)) + 0xA0);
    v27 = (*v1 & **(v0 + 216)) + 160;
    *(v0 + 272) = v24;
    *(v0 + 280) = v27 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
    v28 = (v24 + *v24);
    v25 = swift_task_alloc();
    *(v0 + 288) = v25;
    *v25 = v0;
    v25[1] = sub_1A48FAEC0;
    v26.n128_u64[0] = 1.0;

    return v28(v26);
  }

  v20 = *(v0 + 248);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A48FAEC0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1A48FB73C;
  }

  else
  {
    v5 = sub_1A48FAFFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48FAFFC()
{
  v1 = *(v0 + 296);
  sub_1A48FC380(*(v0 + 264));
  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = *(v0 + 248);

LABEL_11:

    v16 = *(v0 + 8);

    return v16();
  }

  v4 = [*(v0 + 264) topViewController];
  if (!v4)
  {
LABEL_10:

    v2 = *(v0 + 264);
    v3 = *(v0 + 248);
    sub_1A48FC284();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
    goto LABEL_11;
  }

  v5 = v4;
  *(v0 + 192) = &unk_1F1B457E0;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 216);
  v9 = [v6 originTransitionType];

  v10 = swift_allocObject();
  *(v0 + 304) = v10;
  *(v10 + 16) = 0;
  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x88);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v13[1] = sub_1A48FB2AC;

  return (v17)(0x79636E6574614CLL, 0xE700000000000000, &unk_1A5373198, v11);
}

uint64_t sub_1A48FB2AC()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[30];

    return MEMORY[0x1EEE6DFA0](sub_1A48FB7B0, v3, v4);
  }

  else
  {
    v5 = v2[34];

    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v2[42] = v6;
    *v6 = v2;
    v6[1] = sub_1A48FB484;
    v7.n128_u64[0] = 1.0;

    return v9(v7);
  }
}

uint64_t sub_1A48FB484()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1A48FB840;
  }

  else
  {
    v5 = sub_1A48FB5C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48FB5C0()
{
  v1 = v0[38];

  swift_beginAccess();
  v2 = v0[33];
  v3 = v0[31];
  if (*(v1 + 16) != 1)
  {
    sub_1A48FC284();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48FB6C4()
{
  v1 = *(v0 + 248);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A48FB73C()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FB7B0()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FB840()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FB8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A48FB964, v5, v4);
}

uint64_t sub_1A48FB964()
{
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    v5 = *(v0 + 80);
    v6 = [*(v0 + 72) popViewControllerAnimated_];

    swift_beginAccess();
    *(v5 + 16) = v6 != 0;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    *(v0 + 48) = sub_1A48FC52C;
    *(v0 + 56) = v2;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1A3C2E0D0;
    *(v0 + 40) = &block_descriptor_38_1;
    v4 = _Block_copy((v0 + 16));

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
LABEL_5:
    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_1A48FC284();
  swift_allocError();
  *v8 = 5;
  swift_willThrow();
  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_1A48FBB2C()
{
  v1[2] = v0;
  sub_1A3EE53E0(0);
  v1[3] = swift_task_alloc();
  sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A48FBBF0, v3, v2);
}

uint64_t sub_1A48FBBF0()
{
  v1 = v0[3];
  sub_1A5240E34();
  v2 = sub_1A5240E64();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v0[8] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1A48FBDC0;
    v10 = v0[3];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A48FBDC0(void *a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1A48FC034;
  }

  else
  {
    v8 = v4[7];
    v9 = v4[8];
    v10 = v4[3];

    (*(v9 + 8))(v10, v8);
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1A48FBF0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A48FBF0C()
{
  v1 = v0[10];
  v2 = v0[2];

  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(v3);
  if (v1)
  {

    v9 = v0[1];

    return v9();
  }

  else
  {
    v5 = v4;
    v6 = sub_1A3C52C70(0, &qword_1EB144D90, off_1E771D9E0);
    UIViewController.descendant<A>(ofType:)(v6, v6);
    v8 = v7;

    v11 = v0[1];

    return v11(v8);
  }
}

uint64_t sub_1A48FC034()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

id sub_1A48FC0C4(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A3DE0D04(a1);
  return v7;
}

id sub_1A48FC164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeAllPhotosPPTTests(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeAllPhotosPPTTests(uint64_t a1)
{
  result = qword_1EB1DF930;
  if (!qword_1EB1DF930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A48FC1F0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A48F89FC(v2);
}

unint64_t sub_1A48FC284()
{
  result = qword_1EB1DF940;
  if (!qword_1EB1DF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DF940);
  }

  return result;
}

uint64_t sub_1A48FC2D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A48FA704(v2, v3, v4);
}

void sub_1A48FC380(void *a1)
{
  v1 = [a1 topViewController];
  if (!v1)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  sub_1A48FC584();
  if (sub_1A524C714() == 0xD000000000000015 && 0x80000001A53F25C0 == v2)
  {

    return;
  }

  v3 = sub_1A524EAB4();

  if (v3)
  {
  }

  else
  {
LABEL_7:
    sub_1A48FC284();
    swift_allocError();
    *v4 = v1;
    swift_willThrow();
  }
}

uint64_t sub_1A48FC484()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A48FB8C8(v2, v3, v4);
}

double block_copy_helper_36_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1A48FC584()
{
  result = qword_1EB144D98;
  if (!qword_1EB144D98)
  {
    sub_1A3C52C70(255, &qword_1EB126B10, 0x1E69DD258);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB144D98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore011LemonadeAllA8PPTTestsC5Error33_433FA65461314A07739F517E4E3C9BEFLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A48FC600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 6)
  {
    return (v3 - 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A48FC660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void sub_1A48FC6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = sub_1A45C1604();
  v18 = swift_beginAccess();
  if (*v17 == 1)
  {
    v19 = MEMORY[0x1E69E7D40];
    v20 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))(v18);
    if (v20)
    {

      return;
    }

    (*((*v19 & *v3) + 0x60))();
    if (v21)
    {
      goto LABEL_5;
    }

    v22 = sub_1A45C1040();
    swift_beginAccess();
    v23 = *v22;
    if (v23)
    {
      v24 = sub_1A5247414();
      if (!*(v23 + 16))
      {
LABEL_5:

        return;
      }

      v74 = a3;
      v73 = sub_1A3C5DCA4(v24, v25);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v23 + 56) + 8 * v73);
        if ([swift_unknownObjectRetain() respondsToSelector_] && (sub_1A5247414(), v29 = sub_1A524C634(), , v30 = objc_msgSend(v28, sel_presentationControllerForTipID_, v29), v29, (v73 = v30) != 0))
        {
          if ([v28 respondsToSelector_])
          {
            sub_1A5247414();
            v31 = sub_1A524C634();

            v32 = [v28 sourceItemForTipID_];

            v33 = v74;
            if (v32)
            {
              v72 = v28;
              sub_1A52474D4();
              v76 = a2;
              v77 = v33;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
              v35 = *(v8 + 16);
              v35(boxed_opaque_existential_1, a1, a2);
              swift_unknownObjectRetain();
              v36 = sub_1A52474E4();
              v37 = sub_1A5249A14();
              v76 = MEMORY[0x1E697FE80];
              v77 = MEMORY[0x1E697FE70];
              LODWORD(v75[0]) = v37;
              sub_1A52474B4();
              swift_unknownObjectRetain();
              sub_1A52474C4();
              v38 = sub_1A52474A4();
              if (v38)
              {
                v39 = v38;
                v71 = v32;
                v40 = v72;
                if ([v72 respondsToSelector_])
                {
                  sub_1A5247414();
                  v41 = sub_1A524C634();

                  [v40 prepareTipPopover:v39 tipID:v41];
                }

                v42 = [v39 barButtonItem];
                v43 = v73;
                v44 = MEMORY[0x1E69E7D40];
                if (v42)
                {

                  v45 = [v43 navigationController];
                  if (!v45)
                  {
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    return;
                  }
                }

                v70 = v39;
                v46 = v36;
                [v43 presentViewController:v46 animated:1 completion:0];
                (*((*v44 & *v4) + 0x80))(v46);
                v47 = sub_1A5247414();
                (*((*v44 & *v4) + 0x68))(v47);
                if ([v40 respondsToSelector_])
                {
                  swift_unknownObjectRetain();
                  sub_1A5247414();
                  v48 = sub_1A524C634();

                  [v40 tipPopoverDidPresentWithTipID_];

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease_n();
                }

                else
                {

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                }

                return;
              }

              v63 = sub_1A524D244();
              v64 = PLTipsGetLog();
              if (v64)
              {
                v65 = v64;
                v35(v16, a1, a2);
                if (os_log_type_enabled(v65, v63))
                {
                  v66 = swift_slowAlloc();
                  v75[0] = swift_slowAlloc();
                  *v66 = 136315138;
                  v67 = sub_1A5247414();
                  v71 = v32;
                  v69 = v68;
                  (*(v8 + 8))(v16, a2);
                  sub_1A3C2EF94(v67, v69, v75);
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*(v8 + 8))(v16, a2);
                return;
              }

LABEL_39:
              __break(1u);
              return;
            }
          }

          v56 = sub_1A524D244();
          v57 = PLTipsGetLog();
          if (v57)
          {
            v58 = v57;
            (*(v8 + 16))(v13, a1, a2);
            if (os_log_type_enabled(v58, v56))
            {
              v59 = swift_slowAlloc();
              v75[0] = swift_slowAlloc();
              *v59 = 136315138;
              v60 = sub_1A5247414();
              v62 = v61;
              (*(v8 + 8))(v13, a2);
              sub_1A3C2EF94(v60, v62, v75);
            }

            swift_unknownObjectRelease();
            (*(v8 + 8))(v13, a2);
            return;
          }
        }

        else
        {
          v49 = sub_1A524D244();
          v50 = PLTipsGetLog();
          if (v50)
          {
            v51 = v50;
            (*(v8 + 16))(v10, a1, a2);
            if (os_log_type_enabled(v51, v49))
            {
              v52 = swift_slowAlloc();
              v75[0] = swift_slowAlloc();
              *v52 = 136315138;
              v53 = sub_1A5247414();
              v55 = v54;
              (*(v8 + 8))(v10, a2);
              sub_1A3C2EF94(v53, v55, v75);
            }

            swift_unknownObjectRelease();
            (*(v8 + 8))(v10, a2);
            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_39;
      }
    }
  }
}

void sub_1A48FD084(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))();
  if (v10)
  {
    v23 = v10;
    v11 = (*((*v9 & *v3) + 0x60))();
    v13 = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_1A5247414();
    if (v13)
    {
      if (v11 == v14 && v13 == v15)
      {
      }

      else
      {
        v17 = sub_1A524EAB4();

        if ((v17 & 1) == 0)
        {
          if (!a2)
          {
LABEL_10:

            return;
          }

LABEL_9:
          a2(v18);
          goto LABEL_10;
        }
      }

      sub_1A3C341C8(a1, v25);
      v20 = swift_allocObject();
      sub_1A3C34460(v25, (v20 + 2));
      v20[7] = v4;
      v20[8] = a2;
      v20[9] = a3;
      v20[10] = ObjectType;
      aBlock[4] = sub_1A48FD5B0;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_301;
      v21 = _Block_copy(aBlock);
      v22 = v4;
      sub_1A3D607F0(a2, a3);

      [v23 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);

      return;
    }

    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = (*((*v9 & *v3) + 0x68))(0, 0);
  if (a2)
  {
    a2(v19);
  }
}

Swift::Void __swiftcall PXTipsHelper.updatePopoverTip(_:sourceRect:)(Swift::String _, __C::CGRect sourceRect)
{
  height = sourceRect.size.height;
  width = sourceRect.size.width;
  y = sourceRect.origin.y;
  x = sourceRect.origin.x;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
  if (v11)
  {
    if (v10 == countAndFlagsBits && v11 == object)
    {
    }

    else
    {
      v13 = sub_1A524EAB4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v15 = (*((*v9 & *v2) + 0x78))(v14);
    v16 = [v15 popoverPresentationController];

    [v16 setSourceRect_];
  }
}

void sub_1A48FD5B0()
{
  v1 = v0;
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = sub_1A45C1040();
  v5 = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v7 = sub_1A5247414();
    if (*(v6 + 16))
    {
      v9 = sub_1A3C5DCA4(v7, v8);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v6 + 56) + 8 * v9);
        v5 = [v12 respondsToSelector_];
        if (v5)
        {
          swift_unknownObjectRetain_n();
          sub_1A5247414();
          v13 = sub_1A524C634();

          [v12 tipPopoverDidDismissWithTipID_];

          v5 = swift_unknownObjectRelease_n();
        }
      }
    }

    else
    {
    }
  }

  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(v5);
  v17 = v16;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v18 = sub_1A5247414();
  if (!v17)
  {

    goto LABEL_15;
  }

  if (v15 == v18 && v17 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_1A524EAB4();

  if ((v21 & 1) == 0)
  {
LABEL_15:
    if (!v2)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_19:
  (*((*v14 & *v3) + 0x80))(0);
  v22 = (*((*v14 & *v3) + 0x68))(0, 0);
  if (!v2)
  {
    return;
  }

LABEL_16:
  v2(v22);
}

double _s12PhotosUICore12PXTipsHelperC32presentationControllerDidDismissyySo014UIPresentationF0CF_0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    v4 = v1;
    v5 = v2;
    v6 = sub_1A45C1040();
    swift_beginAccess();
    v7 = *v6;
    if (v7 && *(v7 + 16) && (v8 = sub_1A3C5DCA4(v4, v5), (v9 & 1) != 0) && (v10 = *(*(v7 + 56) + 8 * v8), ([v10 respondsToSelector_] & 1) != 0))
    {
      swift_unknownObjectRetain_n();
      v11 = sub_1A524C634();

      [v10 tipPopoverDidDismissWithTipID_];
      swift_unknownObjectRelease_n();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1A48FD948()
{
  v1 = v0 + qword_1EB144E10;
  swift_beginAccess();
  return *v1;
}

void sub_1A48FD994(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB144E10;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
}

uint64_t sub_1A48FDA58()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  v3 = v0 + qword_1EB144E10;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A48FDB30@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

double sub_1A48FDC08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A490DF80(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB144E10;
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x880))(v13);
  }

  return result;
}

uint64_t (*sub_1A48FDE1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FD9F8(v4);
  return sub_1A48FDFD4;
}

uint64_t sub_1A48FE01C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A48FE15C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A48FE268(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FE0E8(v4);
  return sub_1A48FE420;
}

uint64_t sub_1A48FE42C()
{
  v1 = qword_1EB144E20;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A48FE470(char a1)
{
  v3 = qword_1EB144E20;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A48FE534@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A48FE624(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FE4C0(v4);
  return sub_1A48FE7DC;
}

uint64_t sub_1A48FE87C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A48FE988(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FE808(v4);
  return sub_1A48FEB40;
}

uint64_t sub_1A48FEB4C()
{
  v1 = qword_1EB144E30;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A48FEB90(char a1)
{
  v3 = qword_1EB144E30;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A48FEC54@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x268))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A48FED44(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FEBE0(v4);
  return sub_1A48FEEFC;
}

uint64_t sub_1A48FEF88()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  v3 = (v0 + qword_1EB144E38);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A48FF06C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x298))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A48FF108(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2A0);

  return v6(sub_1A3E30F88, v5);
}

double sub_1A48FF1C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x880))(KeyPath, sub_1A490D680, &v10, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A48FF2DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FEF28(v4);
  return sub_1A48FF494;
}

uint64_t sub_1A48FF4A0()
{
  v1 = qword_1EB144E40;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A48FF4E4(char a1)
{
  v3 = qword_1EB144E40;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A48FF5A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A48FF698(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FF534(v4);
  return sub_1A48FF850;
}

uint64_t sub_1A48FF85C()
{
  v1 = qword_1EB144E48;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A48FF8A0(char a1)
{
  v3 = qword_1EB144E48;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A48FF964@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A48FFA54(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FF8F0(v4);
  return sub_1A48FFC0C;
}

void sub_1A48FFC18(_BYTE *a1@<X8>)
{
  v3 = qword_1EB144E50;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A48FFC6C(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB144E50;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_1A48FFD30@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A48FFDA4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x330))(&v4);
}

double sub_1A48FFE14(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144E50;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A48FFFC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FFCBC(v4);
  return sub_1A490017C;
}

void sub_1A4900188(uint64_t a1)
{
  v3 = qword_1EB144E58;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4900254@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x358))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49002B8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x360);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_1A4900350(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49001E0(v4);
  return sub_1A4900508;
}

double sub_1A4900514(uint64_t a1)
{
  v3 = qword_1EB144E60;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1A49005CC()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49006A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x388))();
  *a2 = result;
  return result;
}

double sub_1A4900770(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3DC9268(0);
  sub_1A3DC92EC();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144E60;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A4900930(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A490056C(v4);
  return sub_1A4900AE8;
}

void sub_1A4900AF4(uint64_t a1)
{
  v3 = qword_1EB144E68;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4900BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4900C24(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C0);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_1A4900CBC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4900B4C(v4);
  return sub_1A4900E74;
}

uint64_t sub_1A4900E80()
{
  v1 = qword_1EB144E70;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4900EC4(char a1)
{
  v3 = qword_1EB144E70;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4900F88@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3E8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4901078(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4900F14(v4);
  return sub_1A4901230;
}

void sub_1A490123C(_BYTE *a1@<X8>)
{
  v3 = qword_1EB144E78;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A4901290(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB144E78;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_1A4901354(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v6 & *v3) + 0x878))(KeyPath);

  v8 = *a2;
  swift_beginAccess();
  *a3 = *(v3 + v8);
}

void *sub_1A490142C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x418))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49014A0(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x420))(&v4);
}

double sub_1A4901510(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144E78;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A49016C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49012E0(v4);
  return sub_1A4901878;
}

uint64_t sub_1A4901918@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A4901A24(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49018A4(v4);
  return sub_1A4901BDC;
}

uint64_t sub_1A4901C68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x478))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A4901D60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4901BF4(v4);
  return sub_1A4901F18;
}

uint64_t sub_1A4901FA4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4A8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A490204C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4B0);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A490211C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144E90);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x880))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A490235C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4901F30(v4);
  return sub_1A4902514;
}

void sub_1A4902520(uint64_t a1)
{
  v3 = qword_1EB144E98;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A49025EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4902650(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4E0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A49026E8(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3ECD7F0(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    swift_beginAccess();
    v10 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x880))(v12);
  }
}

uint64_t (*sub_1A49028CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4902578(v4);
  return sub_1A4902A84;
}

void sub_1A4902A90()
{
  v1 = v0;
  v2 = sub_1A52404F4();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x508);
  v27[1] = v8(v4);
  v27[2] = v9;
  sub_1A52404C4();
  sub_1A3D5F9DC();
  v10 = sub_1A524DFB4();
  v12 = v11;
  (*(v3 + 8))(v6, v2);

  v13 = (v1 + qword_1EB144EA0);
  swift_beginAccess();
  *v13 = v10;
  v13[1] = v12;

  v15 = (*((*v7 & *v1) + 0x7D8))(v14);
  v16 = (v8)();
  (*((*v7 & *v15) + 0x280))(v16);

  v17 = (*((*v7 & *v1) + 0x3B8))();
  if (v17)
  {
    v18 = v17;
    v19 = (v8)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v18 = v18;
      sub_1A4909FD8(v18);
    }
  }

  else
  {
    v23 = (v8)();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    (*((*v7 & *v1) + 0x728))(v26 != 0);
  }
}

void sub_1A4902DCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144EA0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1A4902A90();
}

uint64_t (*sub_1A4902E30(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4902E94;
}

uint64_t sub_1A4902EC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x508))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4902FA4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v6 = sub_1A524C594();
  if (v6)
  {
    sub_1A4902DCC(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A4903158(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4902E30(v4);
  return sub_1A4903310;
}

uint64_t sub_1A490331C()
{
  v1 = qword_1EB144EA8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4903360(char a1)
{
  v3 = qword_1EB144EA8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4903424@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x538))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4903514(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49033B0(v4);
  return sub_1A49036CC;
}

uint64_t sub_1A49036D8()
{
  v1 = qword_1EB144EB0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A490371C(char a1)
{
  v3 = qword_1EB144EB0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A49037E0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x568))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A49038D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A490376C(v4);
  return sub_1A4903A88;
}

uint64_t sub_1A4903A94()
{
  v1 = qword_1EB144EB8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4903AD8(uint64_t a1)
{
  v3 = qword_1EB144EB8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4903B9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x598))();
  *a2 = result;
  return result;
}

double sub_1A4903C60(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A490D950(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType, &unk_1A5304CD0);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144EB8;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A4903E40(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4903B28(v4);
  return sub_1A4903FF8;
}

double sub_1A4904004()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x5C8))();
  (*((*v1 & *v0) + 0x858))();

  return result;
}

double sub_1A49040BC(uint64_t a1)
{
  v3 = qword_1EB144EC0;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A4904004();
}

uint64_t (*sub_1A4904118(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A490417C;
}

uint64_t sub_1A4904194(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A49041EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5C8))();
  *a2 = result;
  return result;
}

double sub_1A49042BC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A490DF80(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A49040BC(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v3 & *v1) + 0x880))(v7);

  return result;
}

uint64_t (*sub_1A4904488(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904118(v4);
  return sub_1A4904640;
}

uint64_t sub_1A49046CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5F8))();
  *a2 = result;
  return result;
}

double sub_1A490479C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A490DF80(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144EC8;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A490498C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904658(v4);
  return sub_1A4904B44;
}

uint64_t sub_1A4904B50()
{
  v1 = qword_1EB144ED0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4904B94(char a1)
{
  v3 = qword_1EB144ED0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4904C58@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x628))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4904D48(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904BE4(v4);
  return sub_1A4904F00;
}

uint64_t sub_1A4904F8C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x658))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4905034(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x660);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A4905104(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144ED8);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x880))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A4905344(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904F18(v4);
  return sub_1A49054FC;
}

void sub_1A490559C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x878))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4905678@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x688))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4905784(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = (v4 + *a3);
    swift_beginAccess();
    *v10 = a1;
    v10[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x880))(v13);
  }

  return result;
}

uint64_t (*sub_1A490594C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4905528(v4);
  return sub_1A4905B04;
}

void sub_1A4905B90(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x878))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4905C5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6B8))();
  *a2 = result;
  return result;
}

double sub_1A4905D54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x880))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A4905E58(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4905B1C(v4);
  return sub_1A4906010;
}

uint64_t sub_1A490601C()
{
  v1 = qword_1EB144EF0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4906060(uint64_t a1)
{
  v3 = qword_1EB144EF0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4906124(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A49061EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6E8))();
  *a2 = result;
  return result;
}

double sub_1A49062B0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144EF0;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }

  return result;
}

uint64_t (*sub_1A490645C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49060B0(v4);
  return sub_1A4906614;
}

void sub_1A4906620()
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7D8))();
  (*((*v2 & *v1) + 0x3B8))(v3);
  sub_1A4909008();
}

uint64_t sub_1A4906704()
{
  v1 = qword_1EB144EF8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4906748(char a1)
{
  v3 = qword_1EB144EF8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A490680C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x720))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A49068FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4906798(v4);
  return sub_1A4906AB4;
}

uint64_t sub_1A4906AC0()
{
  v1 = qword_1EB144F00;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4906B04(char a1)
{
  v3 = qword_1EB144F00;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4906BC8(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A4906C90@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x750))();
  *a2 = result & 1;
  return result;
}

double sub_1A4906D80(char a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = a1 & 1;
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = *a2;
    swift_beginAccess();
    *(v5 + v10) = v8;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v5) + 0x880))(v13);
  }

  return result;
}

uint64_t (*sub_1A4906F30(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4906B54(v4);
  return sub_1A49070E8;
}

uint64_t sub_1A4907174(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6, v6[1]);
  return v7;
}

uint64_t sub_1A4907254@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x780))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A49072FC(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x788);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A49073CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144F08);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x880))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A490760C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4907100(v4);
  return sub_1A49077C4;
}

uint64_t sub_1A49077D0()
{
  v1 = qword_1EB144E00;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4907814(char a1)
{
  v3 = qword_1EB144E00;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A49078C4(char a1, uint64_t a2, void (*a3)(uint64_t, void, __n128))
{
  if (a1)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x728))(0, a2);
    v7 = (*((*v5 & *v3) + 0x7D8))(v6);
    (*((*v5 & *v3) + 0x508))(v7);
    sub_1A4909008();
  }

  sub_1A490817C(1);
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x780))();
  if (v8)
  {
    v10 = v9;
    v11 = v8;
    v8();
    sub_1A3C33378(v11, v10);
    if (a3)
    {
      (a3)(1, 0);
    }
  }
}

void sub_1A4907B08(uint64_t a1, uint64_t (*a2)(void, void))
{
  sub_1A490817C(0);
  if (a2)
  {
    a2(0, 0);
  }
}

void sub_1A4907B54(uint64_t a1)
{
  v3 = qword_1EB144F18;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1A4907C0C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  v3 = qword_1EB144F18;
  swift_beginAccess();
  v4 = *(v0 + v3);

  return v4;
}

uint64_t sub_1A4907CEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7D8))();
  *a2 = result;
  return result;
}

void sub_1A4907DBC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = qword_1EB144F18;
  swift_beginAccess();
  v6 = *(v1 + v5);
  type metadata accessor for SharedCollectionActionViewModel(0);
  sub_1A490D950(&qword_1EB144E08, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E69E81C0]);
  v13 = v6;
  v7 = sub_1A524C594();

  if (v7)
  {
    v9 = qword_1EB144F18;
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v2) + 0x880))(v12);
  }
}

uint64_t (*sub_1A4907FB8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4907BAC(v4);
  return sub_1A4908170;
}

void sub_1A490817C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7D8))();
  (*((*v3 & *v4) + 0x550))(a1);
}

void sub_1A490824C(uint64_t a1)
{
  v3 = qword_1EB144F10;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1A4908318(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

uint64_t sub_1A49083E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x810))();
  *a2 = result;
  return result;
}

uint64_t sub_1A490844C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x818);
  v4 = *a1;
  return v3(v2);
}

void sub_1A49084E4(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    swift_beginAccess();
    v10 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x880))(v12);
  }
}

uint64_t (*sub_1A49086DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49082A4(v4);
  return sub_1A4908894;
}

void sub_1A49088A0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

id sub_1A49089C8(void *a1, void *a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = v2 + qword_1EB144E10;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_1A3C38BD4(0xD000000000000027);
  v10 = (v2 + qword_1EB144E18);
  *v10 = v9;
  v10[1] = v11;
  *(v2 + qword_1EB144E20) = 0;
  v12 = (v2 + qword_1EB144E28);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v2 + qword_1EB144E30) = 0;
  v13 = (v2 + qword_1EB144E38);
  *v13 = PXDisplayCollectionDetailedCountsMake;
  v13[1] = 0;
  *(v2 + qword_1EB144E40) = 0;
  *(v2 + qword_1EB144E48) = 0;
  *(v2 + qword_1EB144E50) = 0;
  *(v2 + qword_1EB144E58) = 0;
  *(v2 + qword_1EB144E60) = 0;
  *(v2 + qword_1EB144E68) = 0;
  *(v2 + qword_1EB144E70) = 1;
  *(v2 + qword_1EB144E78) = 0;
  v14 = sub_1A3C38BD4(0xD000000000000028);
  v15 = (v2 + qword_1EB144E80);
  *v15 = v14;
  v15[1] = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EB144E88) = MEMORY[0x1E69E7CC0];
  v18 = (v2 + qword_1EB144E90);
  *v18 = 0;
  v18[1] = 0;
  *(v2 + qword_1EB144E98) = 0;
  v19 = (v2 + qword_1EB144EA0);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v2 + qword_1EB144EA8) = 0;
  *(v2 + qword_1EB144EB0) = 0;
  *(v2 + qword_1EB144EB8) = 0;
  *(v2 + qword_1EB144EC0) = v17;
  *(v2 + qword_1EB144EC8) = v17;
  *(v2 + qword_1EB144ED0) = 1;
  v20 = (v2 + qword_1EB144ED8);
  *v20 = PXDisplayCollectionDetailedCountsMake;
  v20[1] = 0;
  v21 = sub_1A3C38BD4(0xD00000000000002DLL);
  v22 = (v2 + qword_1EB144EE0);
  *v22 = v21;
  v22[1] = v23;
  *(v2 + qword_1EB144EE8) = v17;
  *(v2 + qword_1EB144EF0) = 0;
  *(v2 + qword_1EB144EF8) = 0;
  *(v2 + qword_1EB144F00) = 0;
  v24 = (v2 + qword_1EB144F08);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + qword_1EB144E00) = 0;
  *(v2 + qword_1EB144F10) = 0;
  sub_1A5241604();
  *(v2 + qword_1EB144F18) = a1;
  v27 = type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(0, *((v7 & v6) + 0x50), v25, v26);
  v39.receiver = v2;
  v39.super_class = v27;
  v28 = a1;
  v29 = objc_msgSendSuper2(&v39, sel_init);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = *((*v5 & *v28) + 0x3D0);
  v32 = v29;
  v31(sub_1A490DFE4, v30);
  v33 = a2;
  sub_1A4900C94(a2);
  v34 = v33;
  sub_1A49084BC(a2);
  v35 = a2 == 0;
  v36 = a2 == 0;
  v37 = !v35;
  sub_1A49068D4(v37);
  sub_1A48FF670(v36);
  sub_1A48FFA2C(v36);
  sub_1A4906D58(v36);
  sub_1A490913C();
  sub_1A49093A0();
  sub_1A4909EAC();

  return v32;
}

id sub_1A4908DB4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
  if (v2)
  {
    v3 = v2;
    result = [v2 photoLibrary];
    if (result)
    {
      v5 = result;

      return v5;
    }

    goto LABEL_16;
  }

  v6 = *((*v1 & *v0) + 0x7D8);
  v7 = v6();
  v8 = (*((*v1 & *v7) + 0x1D0))();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:

    v12 = (v6)(v11);
    v13 = (*((*v1 & *v12) + 0x110))();

    v14 = *(v13 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

    v15 = *(v14 + 16);

    return v15;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1A59097F0](0, v8);
LABEL_9:
    v10 = v9;

    result = [v10 photoLibrary];
    if (result)
    {
      v5 = result;

      return v5;
    }

    goto LABEL_17;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1A4909008()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x7D8))();
  (*((*v1 & *v2) + 0x110))();

  sub_1A4654ADC();

  PXPresentationEnvironmentForSender();
}

id sub_1A49090E4()
{
  v0 = sub_1A4908DB4();
  v1 = [v0 librarySpecificFetchOptions];

  [v1 setIncludeGuestAssets_];
  return v1;
}

void sub_1A490913C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
  if (v2)
  {
    v3 = v2;
    v4 = 0xE000000000000000;
    (*((*v1 & *v0) + 0x1E0))(0, 0xE000000000000000);
    v5 = v3;
    v6 = [v5 localizedTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1A524C674();
      v4 = v9;
    }

    else
    {
      v8 = 0;
    }

    (*((*v1 & *v0) + 0x510))(v8, v4);
    v10 = [v5 px_isOwnedCloudKitSharedAlbum];

    (*((*v1 & *v0) + 0x3F0))(v10);
    v11 = objc_opt_self();
    v15 = v5;
    v12 = sub_1A49090E4();
    v13 = [v11 fetchAssetsInAssetCollection:v15 options:v12];

    v14 = [v13 count];
    (*((*v1 & *v0) + 0x6F0))(v14);
  }
}

uint64_t sub_1A49093A0()
{
  v2 = v1;
  v39 = sub_1A523FBB4();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v40 = &v33 - v8;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3B8))(v7);
  v38 = v1;
  if (!v10)
  {
    v23 = (*((*v9 & *v1) + 0x7D8))();
    v24 = (*((*v9 & *v23) + 0x1D0))();

    if (v24 >> 62)
    {
      v25 = sub_1A524E2B4();
      if (v25)
      {
LABEL_19:
        v26 = 0;
        v40 = (v24 & 0xC000000000000001);
        v37 = v24 & 0xFFFFFFFFFFFFFF8;
        v35 = v3 + 32;
        v18 = MEMORY[0x1E69E7CC0];
        v36 = v25;
        do
        {
          if (v40)
          {
            v27 = MEMORY[0x1A59097F0](v26, v24);
          }

          else
          {
            if (v26 >= *(v37 + 16))
            {
              goto LABEL_35;
            }

            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_34;
          }

          v30 = [v27 localIdentifier];
          sub_1A524C674();

          sub_1A523FB54();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1A3D5BB08(0, v18[2] + 1, 1, v18);
          }

          v2 = v38;
          v9 = MEMORY[0x1E69E7D40];
          v0 = v18[2];
          v31 = v18[3];
          if (v0 >= v31 >> 1)
          {
            v18 = sub_1A3D5BB08((v31 > 1), v0 + 1, 1, v18);
          }

          v18[2] = v0 + 1;
          (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0, v5, v39);
          ++v26;
        }

        while (v29 != v36);
        goto LABEL_41;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_19;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_41:

    return (*((*v9 & *v2) + 0x5D0))(v18);
  }

  v11 = v10;
  v12 = objc_opt_self();
  v0 = v11;
  v13 = sub_1A49090E4();
  v5 = [v12 fetchAssetsInAssetCollection:v0 options:v13];

  v14 = [v5 fetchedObjects];
  if (v14)
  {
    v15 = v14;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v2 = sub_1A524CA34();

    if (v2 >> 62)
    {
      goto LABEL_36;
    }

    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v5;
    for (i = v0; v16; i = v0)
    {
      v17 = 0;
      v36 = v2 & 0xFFFFFFFFFFFFFF8;
      v37 = v2 & 0xC000000000000001;
      v35 = v3 + 32;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v37)
        {
          v19 = MEMORY[0x1A59097F0](v17, v2);
        }

        else
        {
          if (v17 >= *(v36 + 16))
          {
            goto LABEL_33;
          }

          v19 = *(v2 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v5 = [v19 localIdentifier];
        sub_1A524C674();

        sub_1A523FB54();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1A3D5BB08(0, v18[2] + 1, 1, v18);
        }

        v0 = v18[2];
        v22 = v18[3];
        if (v0 >= v22 >> 1)
        {
          v18 = sub_1A3D5BB08((v22 > 1), v0 + 1, 1, v18);
        }

        v18[2] = v0 + 1;
        (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0, v40, v39);
        ++v17;
        if (v21 == v16)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v16 = sub_1A524E2B4();
      v33 = v5;
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v2 = v38;
    v9 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  return (*((*v9 & *v2) + 0x5D0))(v18);
}

void sub_1A4909998(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = *(v3 + 16);
    v39[1] = v3 + 16;
    v40 = v9;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v12 = (v3 + 8);
    (v9)(v6, v10, v2, v4);
    while (1)
    {
      v14 = sub_1A523FB64();
      v16 = v15;
      (*v12)(v6, v2);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D3D914(0, *(v8 + 2) + 1, 1, v8);
        }

        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        v20 = v8;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_1A3D3D914((v18 > 1), v19 + 1, 1, v8);
        }

        *(v20 + 2) = v19 + 1;
        v8 = v20;
        v13 = &v20[16 * v19];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v11;
      if (!--v7)
      {
        break;
      }

      (v40)(v6, v10, v2, v17);
    }
  }

  v21 = objc_opt_self();
  v22 = sub_1A524CA14();
  v23 = sub_1A49090E4();
  v24 = [v21 fetchAssetsWithLocalIdentifiers:v22 options:v23];

  v25 = [v24 fetchedObjects];
  if (!v25)
  {
    goto LABEL_22;
  }

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v26 = sub_1A524CA34();

  v42 = MEMORY[0x1E69E7CC8];
  if (v26 >> 62)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A4165BCC(0, &qword_1EB1335D0, MEMORY[0x1E69E5E28]);
    sub_1A524C404();
    sub_1A4160A34(v26, &v42, v28);
    v40 = v8;
    v41 = v27;
    v29 = *(v8 + 2);
    if (!v29)
    {
      break;
    }

    v8 += 40;
    v30 = v8;
    v31 = 0;
    while (v31 < v29)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_24;
      }

      if (*(v42 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v31;
      v30 += 16;
      if (v32 == v29)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1A524E2B4();
  }

LABEL_20:
  v33 = v39[0];
  v34 = MEMORY[0x1E69E7D40];
  v35 = (*((*MEMORY[0x1E69E7D40] & *v39[0]) + 0x390))(v27);
  v36 = (*((*v34 & *v33) + 0x7D8))(v35);
  v37 = (*((*v34 & *v33) + 0x388))();
  if (v37)
  {
    v38 = v37;

    (*((*v34 & *v36) + 0x1D8))(v38);

LABEL_22:

    return;
  }

  __break(1u);
}

double sub_1A4909EAC()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v3 & v1) + 0x50);
  *(v5 + 24) = v4;
  v6 = *((*v2 & *v0) + 0x660);

  v6(sub_1A490DEC4, v5);

  return result;
}

double sub_1A4909FB0()
{
  sub_1A49093A0();

  return sub_1A4909EAC();
}

void sub_1A4909FD8(uint64_t a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x508))();
  v3 = objc_allocWithZone(PXRenameCollectionAction);
  v4 = sub_1A524C634();

  v5 = [v3 initWithCollection:a1 title:v4];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_1A490DEBC;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3D6084C;
    v9[3] = &block_descriptor_302;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 executeWithUndoManager:0 completionHandler:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1A490A150(char a1, void *a2, void *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  if (a1)
  {
    SharedCollectionsLogger.getter();
    v13 = a3;
    v14 = sub_1A5246F04();
    v15 = sub_1A524D264();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v16 = 136315138;
      v17 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x508))();
      sub_1A3C2EF94(v17, v18, &v28);
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    SharedCollectionsLogger.getter();
    v20 = a3;
    v21 = a2;
    v22 = sub_1A5246F04();
    v23 = sub_1A524D244();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x508))();
      sub_1A3C2EF94(v25, v26, &v28);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

id sub_1A490A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A490A728(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB144E90), *(a1 + qword_1EB144E90 + 8));

  sub_1A3C33378(*(a1 + qword_1EB144ED8), *(a1 + qword_1EB144ED8 + 8));

  sub_1A3C33378(*(a1 + qword_1EB144F08), *(a1 + qword_1EB144F08 + 8));

  v2 = qword_1EB1DF950;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A490A8E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3B8))();
  *a1 = result;
  return result;
}

void (*sub_1A490A9AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3C8))();
  return sub_1A3E658B0;
}

void (*sub_1A490ABC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1E8))();
  return sub_1A3E658B0;
}

void (*sub_1A490AD30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x218))();
  return sub_1A3E658B0;
}

void (*sub_1A490AE94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x248))();
  return sub_1A3E658B0;
}

void (*sub_1A490AFF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2A8))();
  return sub_1A3E658B0;
}

void (*sub_1A490B160(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3F8))();
  return sub_1A3E658B0;
}

void (*sub_1A490B320(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x518))();
  return sub_1A3E658B0;
}

void (*sub_1A490B498(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x428))();
  return sub_1A3E658B0;
}

void (*sub_1A490B5FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x488))();
  return sub_1A3E658B0;
}

void (*sub_1A490B760(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4B8))();
  return sub_1A3E658B0;
}

void (*sub_1A490B8C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4E8))();
  return sub_1A3E658B0;
}

void (*sub_1A490BAEC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x368))();
  return sub_1A3E658B0;
}

void (*sub_1A490BC58(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1A0))();
  return sub_1A3E658B0;
}

void (*sub_1A490BDD0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x338))();
  return sub_1A3E658B0;
}

void (*sub_1A490BF94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x548))();
  return sub_1A3E658B0;
}

void (*sub_1A490C0FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x578))();
  return sub_1A3E658B0;
}

void (*sub_1A490C264(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x278))();
  return sub_1A3E658B0;
}

void (*sub_1A490C3C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5D8))();
  return sub_1A3E658B0;
}

void (*sub_1A490C52C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x608))();
  return sub_1A3E658B0;
}

void (*sub_1A490C690(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5A8))();
  return sub_1A3E658B0;
}

void (*sub_1A490C7F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x638))();
  return sub_1A3E62A10;
}

void (*sub_1A490C95C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x668))();
  return sub_1A3E658B0;
}

void (*sub_1A490CAC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x698))();
  return sub_1A3E658B0;
}

void (*sub_1A490CC24(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6C8))();
  return sub_1A3E658B0;
}

void (*sub_1A490CDE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6F8))();
  return sub_1A3E658B0;
}

void (*sub_1A490CF4C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x730))();
  return sub_1A3E658B0;
}

void (*sub_1A490D0B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x760))();
  return sub_1A3E658B0;
}

void (*sub_1A490D218(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x790))();
  return sub_1A3E658B0;
}

void (*sub_1A490D380(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7A8))();
  return sub_1A3E658B0;
}

uint64_t sub_1A490D514@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1A8))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A490D578()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB144E10;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

double sub_1A490D680()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB144E38);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

uint64_t sub_1A490D950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A490DA58(uint64_t (*a1)(uint64_t, uint64_t, double))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1A3C66EE8(v3, v4);
  return a1(v3, v4, v5);
}

void (*sub_1A490DB84(uint64_t a1))(void)
{
  v2 = *(v1 + 16);
  sub_1A490817C(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x780))();
  if (result)
  {
    v5 = v4;
    v6 = result;
    result();

    return sub_1A3C33378(v6, v5);
  }

  return result;
}

void sub_1A490DC28()
{
  v1 = *(v0 + 16);
  v2 = qword_1EB144F18;
  v3 = *(v0 + 24);
  swift_beginAccess();
  v4 = *(v1 + v2);
  *(v1 + v2) = v3;
}

unint64_t sub_1A490DCE4()
{
  result = qword_1EB144F20;
  if (!qword_1EB144F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144F20);
  }

  return result;
}

uint64_t sub_1A490DD38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A490DD90(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1A490DEC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x548))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A490DF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A490E030@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  *a4 = a1;
  *(a4 + 8) = a3;
  type metadata accessor for LemonadePeoplePlaceholderView(0);
  v6 = v5;

  sub_1A5247C74();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  type metadata accessor for LemonadePeopleProgressStatus(0);
  v8 = v6;

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v8;
  type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel(0);
  sub_1A5247C74();

  return result;
}

void sub_1A490E18C(_BYTE *a1@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    wapiCapability = MobileGestalt_get_wapiCapability();

    *a1 = wapiCapability;
  }

  else
  {
    __break(1u);
  }
}

double sub_1A490E1FC@<D0>(void *a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = *(v1 + 24);
    type metadata accessor for LemonadePeopleProgressStatus(0);
    sub_1A3F53C40(v4);
    v3 = v5;
  }

  *a1 = v3;

  return result;
}

uint64_t sub_1A490E260@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel(0);
  v4 = swift_allocObject();
  sub_1A5241604();
  v4[2] = v3;
  v5 = v3;
  v6 = sub_1A524C634();
  v7 = PXLocalizedString(v6);

  v8 = sub_1A524C674();
  v10 = v9;

  v4[3] = v8;
  v4[4] = v10;
  result = sub_1A3C38BD4(0xD00000000000002CLL);
  v4[5] = result;
  v4[6] = v12;
  *a1 = v4;
  return result;
}

uint64_t sub_1A490E338(void x0_0, uint64_t a1)
{
  v3 = v2;
  sub_1A3C7E8B0(0, a1);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 simulateEmptyShelves];

  if (v5)
  {
    goto LABEL_2;
  }

  type metadata accessor for LemonadePeoplePlaceholderView(0);
  sub_1A3C56B68(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v9 = sub_1A3F546F4();

  if (v9 <= 4)
  {
    if (v9 != 2)
    {
      v10 = sub_1A524C634();
      v11 = PXLocalizedString(v10);

      sub_1A524C674();
      sub_1A4910054(0, &qword_1EB124900, MEMORY[0x1E697DA80]);
      sub_1A5247C84();
      v8 = sub_1A524C634();

LABEL_6:
      v12 = PXLocalizedString(v8);

      sub_1A524C674();
      sub_1A490F838(0);
      MEMORY[0x1EEE9AC00](v13 - 8);
      v16[4] = v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A490EA98(v3);
    }

LABEL_2:
    v6 = sub_1A524C634();
    v7 = PXLocalizedString(v6);

    sub_1A524C674();
    v8 = sub_1A524C634();
    goto LABEL_6;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A490EA98(unsigned __int8 *a1)
{
  v11 = type metadata accessor for LemonadePlaceholderView(0);
  MEMORY[0x1EEE9AC00](v11);
  sub_1A49104BC(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v10 = type metadata accessor for LemonadeShelfPlaceholderView(0);
  MEMORY[0x1EEE9AC00](v10);
  v8 = a1[8];
  v9 = *(*a1 + 16);
  type metadata accessor for LemonadePeoplePlaceholderView(0);
  if (v8 == 1)
  {
    sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
    v9;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
  v9;
  sub_1A5247C84();
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A490F12C()
{
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A490F1AC()
{
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A490F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  sub_1A524CC54();
  v3[4] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A490F2C4, v5, v4);
}

uint64_t sub_1A490F2C4()
{
  type metadata accessor for LemonadePeoplePlaceholderView(0);
  sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1A490F3AC;

  return sub_1A490F550();
}

uint64_t sub_1A490F3AC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A490F4F0, v3, v2);
}

uint64_t sub_1A490F4F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A490F550()
{
  *(v1 + 16) = v0;
  sub_1A3DB4F20(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A490F5E0, 0, 0);
}

uint64_t sub_1A490F5E0()
{
  v1 = v0[3];
  v2 = [*(v0[2] + 16) px_peoplePetsHomeVisibility];
  v3 = sub_1A524C634();
  v4 = PXLocalizedStringForPersonOrPetAndVisibility(0, v2, v3);

  v5 = sub_1A524C674();
  v7 = v6;

  v8 = objc_opt_self();
  v9 = sub_1A524C634();
  v10 = [v8 locKeyForPersonOrPet:0 withVisibility:v2 key:v9];

  v11 = sub_1A524C674();
  v12 = sub_1A3C38BD4(v11);
  v14 = v13;

  v15 = sub_1A524CCB4();
  (*(*(v15 - 8) + 56))(v1, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1A524CC54();

  v17 = sub_1A524CC44();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = v5;
  v18[6] = v7;
  v18[7] = v12;
  v18[8] = v14;

  sub_1A3D4D930(0, 0, v1, &unk_1A5373C40, v18);

  v20 = v0[1];

  return v20();
}

void sub_1A490F838(uint64_t a1)
{
  if (!qword_1EB127548)
  {
    sub_1A49104BC(255, &qword_1EB127DE8, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127548);
    }
  }
}

uint64_t sub_1A490F8D4()
{
  v2 = *(type metadata accessor for LemonadePeoplePlaceholderView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A490F22C(v4, v5, v0 + v3);
}

uint64_t sub_1A490F99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A490FA04(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A490FA98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4910424();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A490FBC8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A490FCA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4910424();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A490FDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_1A524CC54();
  v8[13] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A490FE74, v10, v9);
}

uint64_t sub_1A490FE74()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A490FF6C()
{

  v1 = OBJC_IVAR____TtCV12PhotosUICore29LemonadePeoplePlaceholderViewP33_419C98D6938A4A9A86638F0A04B048CC16PlaceholderModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A4910054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1A49100BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A4910054(319, &qword_1EB124900, MEMORY[0x1E697DA80]);
    if (v3 <= 0x3F)
    {
      sub_1A3C56B68(319, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
      if (v4 <= 0x3F)
      {
        sub_1A3C56B68(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A49101FC(uint64_t a1)
{
  result = sub_1A5241614();
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

unint64_t sub_1A49102A8()
{
  result = qword_1EB127550;
  if (!qword_1EB127550)
  {
    sub_1A490F838(255);
    sub_1A424B944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127550);
  }

  return result;
}

uint64_t sub_1A4910320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4910368()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A490FDD4(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_1A4910424()
{
  result = qword_1EB17DFF8;
  if (!qword_1EB17DFF8)
  {
    type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB17DFF8);
  }

  return result;
}

void sub_1A491047C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49104BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A4910540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49105A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A4910704(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InternalSettingsObserver(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A4910738()
{
  if (*(v0 + 8) <= 1u && *(v0 + 8))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return [objc_opt_self() transientAssetCollectionWithAssetFetchResult:result title:0];
    }
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v2 = result;
      swift_unknownObjectRetain();
      return v2;
    }
  }

  return result;
}

id sub_1A49107E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PhotosDynamicHeaderView(0, a2);
  sub_1A419C37C(a1, &v14);
  v5 = v15;
  if (v15 == 255)
  {
    if (qword_1EB1DF9F8 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1DFA00);
    v8 = a1;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "missing valid container asset collection for %@, falling back to assets in the first section", v11, 0xCu);
      sub_1A3CB65E4(v12);
      MEMORY[0x1A590EEC0](v12, -1, -1);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    if ([v8 numberOfSections] < 1)
    {
      PXDisplayAssetFetchResultEmpty();
    }

    [v8 firstSectionIndexPath];
    result = [v8 assetsInSectionIndexPath_];
    v5 = 1;
  }

  else
  {
    result = v14;
  }

  *a3 = result;
  *(a3 + 8) = v5;
  return result;
}

void sub_1A49109AC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1DFA00);
  __swift_project_value_buffer(v0, qword_1EB1DFA00);
  sub_1A5246EF4();
}

void sub_1A4910AB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & **(v4 + *a3)) + 0xE0))(0.0);
  v10 = *(v4 + *a4);
  (*((*v8 & *v10) + 0xE0))(v9, 1.0);
  sub_1A44E9734(a1, &v13);
  if (v14)
  {
    sub_1A3C34460(&v13, v15);
    (*((*v8 & *v10) + 0x1F8))(v15);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_1A403E594(&v13);
    if (a2)
    {
      v11 = *((*v8 & *v10) + 0x200);
      v12 = a2;
      v11();
    }
  }
}

uint64_t sub_1A4910C28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  if (a1)
  {
    (*((**(v2 + qword_1EB144FA0) & v4) + 0x208))(v11);
    v14 = *(AssociatedTypeWitness - 8);
    if ((*(v14 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v7 + 8))(v9, v6);
LABEL_6:
      v17 = v23;
      *(v23 + 32) = 0;
      *v17 = 0u;
      v17[1] = 0u;
      return result;
    }

    v18 = v23;
    *(v23 + 24) = AssociatedTypeWitness;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v18[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    return (*(v14 + 32))(boxed_opaque_existential_1, v9, AssociatedTypeWitness);
  }

  else
  {
    (*((**(v2 + qword_1EB144FA8) & v4) + 0x208))(v11);
    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v13, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v7 + 8))(v13, v6);
      goto LABEL_6;
    }

    v20 = v23;
    *(v23 + 24) = AssociatedTypeWitness;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v20[4] = swift_getAssociatedConformanceWitness();
    v21 = __swift_allocate_boxed_opaque_existential_1(v20);
    return (*(v16 + 32))(v21, v13, AssociatedTypeWitness);
  }
}

id sub_1A49110A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HighlightsRootLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A4911118(uint64_t a1)
{
  v2 = *(a1 + qword_1EB144FA8);
}

void sub_1A4911164(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  type metadata accessor for HighlightsLevelLayout(0, v3, *((v8 & v7) + 0x58), v9);
  (*(v4 + 16))(v6, a1, v3);
  sub_1A429D724(1, v6);
}

uint64_t sub_1A49115A8()
{
  v1 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A49116AC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v4);
  if (v5 < 1 == result > 0)
  {
    return [v1 invalidatePlaybackEnabled];
  }

  return result;
}

uint64_t sub_1A491175C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

void (*sub_1A4911810(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A49118A4;
}

void sub_1A49118A4(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[4];
  v2 = (*a1)[5];
  v4 = *&v2[v3];
  *&v2[v3] = (*a1)[3];
  if (v4 < 1 == (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))() > 0)
  {
    [v1[4] invalidatePlaybackEnabled];
  }

  free(v1);
}

uint64_t sub_1A4911998()
{
  v1 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4911A4C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    [v1 removeAllRecords];
  }
}

uint64_t sub_1A4911ABC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4911B74(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A4911C08;
}

void sub_1A4911C08(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] removeAllRecords];
  }

  free(v1);
}

void *sub_1A4911D20()
{
  v1 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4911DEC(void *a1)
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1A4911F1C(v4);
}

uint64_t sub_1A4911E58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4911EB4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4911F1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = &v2[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation];
  if (*&v2[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  if (v5)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5;

    sub_1A524D1A4();
  }

  *v6 = 0;
  *(v6 + 1) = 0;
  swift_unknownObjectRelease();
  [v2 invalidatePlaybackEnabled];
}

void (*sub_1A4912064(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A4912100;
}

void sub_1A4912100(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1A4911F1C(v8);

    v8 = *v5;
  }

  else
  {
    sub_1A4911F1C(v8);
  }

  free(v3);
}

uint64_t sub_1A491229C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A49122FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4912358(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A49123BC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

id sub_1A4912454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v3 checkOutPlaybackRecordForDisplayAsset:a1 mediaProvider:a2 geometryReference:a3 spriteSize:? displayScale:?];
  if (result)
  {
    v5 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_1A491253C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v3 = 0;
  }

  sub_1A3D435C4();
  v4 = sub_1A524CA14();
  [v2 checkInPlaybackRecordForDisplayAssets:v4 record:v3];
}

uint64_t sub_1A4912768(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x90))();
  if (result)
  {
    type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
    sub_1A3C2F0BC(a3, v23);
    v15 = a2;
    v16 = swift_unknownObjectRetain();
    return sub_1A469C24C(v16, a2, v23, a4, a5, a6);
  }

  else if (a2)
  {
    sub_1A3C2F0BC(a3, v23);
    sub_1A3C52C70(0, &unk_1EB1209A8, &off_1E77216D0);
    v17 = a2;
    v18 = swift_dynamicCast();
    v19 = (*((*v13 & *v6) + 0xC0))(v18);
    if (v19)
    {
      v20 = [v19 isDisplayAssetEligibleForPlaybackWithSettlingEffect_];
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_allocWithZone(PXGridInlineVideoSessionAssetPlaybackRecord) initWithDisplayAsset:a1 mediaProvider:v17 spriteReference:v22 playLivePhotosWithSettlingEffectIfPossible:v20];

    [v21 setDiscardVideoOnPause_];
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4912B8C()
{
  swift_getObjectType();
  sub_1A4912D78();
  v1 = sub_1A524C714();
  v3 = v2;
  sub_1A3C71268(0, &qword_1EB12B110, sub_1A3D78B5C);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FF950;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1A3D710E8();
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 96) = type metadata accessor for PhotosContentInlinePlaybackController();
  *(v4 + 104) = sub_1A4915158(&qword_1EB144FE0, v7, type metadata accessor for PhotosContentInlinePlaybackController, MEMORY[0x1E69E81C8]);
  *(v4 + 72) = v0;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v9 = v0;
  v10 = v8();
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v16 = (v4 + 112);
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    goto LABEL_7;
  }

  v12 = [v11 debugDescription];
  swift_unknownObjectRelease();
  v13 = sub_1A524C674();
  v15 = v14;

  v16 = (v4 + 112);
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  if (!v15)
  {
LABEL_7:
    *v16 = 0x74657320746F6ELL;
    v15 = 0xE700000000000000;
    goto LABEL_8;
  }

  *v16 = v13;
LABEL_8:
  *(v4 + 120) = v15;
  return sub_1A524C6C4();
}

unint64_t sub_1A4912D78()
{
  result = qword_1EB144FD0;
  if (!qword_1EB144FD0)
  {
    type metadata accessor for PhotosContentInlinePlaybackController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB144FD0);
  }

  return result;
}

void sub_1A4912EE4(void *a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))();
  if (v5)
  {
    v6 = v5;
    if ([a1 geometryReference])
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v8, &v9);
      sub_1A3C52C70(0, &unk_1EB1209A8, &off_1E77216D0);
      swift_dynamicCast();
      [v6 frameFor:v7 outMinPlayableSize:a2];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1A49130CC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0);
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = v7();
  if (v9)
  {
    v10 = [v9 *a4];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  swift_unknownObjectRelease();

  return v10;
}

void sub_1A4913180(unint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (!v3)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = [v3 filterSortedRecordsStrategy];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    sub_1A491336C(a1);
  }

  if (v4 != 2)
  {
LABEL_9:
    sub_1A49134A4(a1, 0);
  }

  sub_1A4913A38(a1);
  swift_unknownObjectRelease();
}

void sub_1A491336C(unint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 scrollViewController];
    v6 = [v5 scrollView];

    v7 = v6;
    swift_unknownObjectRelease();
    if (v7)
    {
      [v7 px_contentOffsetYFraction];
      v9 = v8;
      [v7 contentSize];
      sub_1A4913810(a1, v9 * v10);
    }
  }

  sub_1A49134A4(a1, 0);
}

void sub_1A49134A4(unint64_t a1, char a2)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = 0;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v5 = *(a1 + 32);
    }

    v6 = v5;
    if (i == 1)
    {
LABEL_28:
      [v2 frameForPlaybackRecord:v6 minPlayableSize:v36];
      CGRectGetMinY(v43);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v7 = 1;
LABEL_8:
    v8 = v6;
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](v9, a1);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v6 = v11;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = [v8 visibilityScore];
      if (v12 == [v6 visibilityScore])
      {
        [v2 frameForPlaybackRecord:v8 minPlayableSize:v36];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v2 frameForPlaybackRecord:v6 minPlayableSize:v36];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v37.origin.x = v14;
        v37.origin.y = v16;
        v37.size.width = v18;
        rect = v20;
        v37.size.height = v20;
        MinY = CGRectGetMinY(v37);
        v38.origin.x = v22;
        v38.origin.y = v24;
        v38.size.width = v26;
        v35 = v28;
        v38.size.height = v28;
        if (MinY == CGRectGetMinY(v38))
        {
          v39.origin.x = v14;
          v39.origin.y = v16;
          v39.size.width = v18;
          v39.size.height = rect;
          MinX = CGRectGetMinX(v39);
          v40.origin.x = v22;
          v40.origin.y = v24;
          v40.size.width = v26;
          v40.size.height = v28;
          if (CGRectGetMinX(v40) < MinX)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v41.origin.x = v14;
          v41.origin.y = v16;
          v41.size.width = v18;
          v41.size.height = rect;
          v31 = CGRectGetMinY(v41);
          v42.origin.x = v22;
          v42.origin.y = v24;
          v42.size.width = v26;
          v42.size.height = v35;
          v32 = CGRectGetMinY(v42);
          if (a2)
          {
            if (v31 < v32)
            {
              goto LABEL_25;
            }
          }

          else if (v32 < v31)
          {
LABEL_25:

            if (v7 == i)
            {
              goto LABEL_28;
            }

            goto LABEL_8;
          }
        }
      }

      else
      {
        v10 = [v8 visibilityScore];
        if (v10 < [v6 visibilityScore])
        {
          goto LABEL_25;
        }
      }

      ++v9;
      if (v7 == i)
      {
        v6 = v8;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4913810(unint64_t a1, double a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    goto LABEL_2;
  }

  v12[0] = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v11 = v2;
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 visibilityScore] <= 1)
      {
      }

      else
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        v2 = v12;
        sub_1A524E524();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v12[0];
        v2 = v11;
        if ((v12[0] & 0x8000000000000000) != 0)
        {
LABEL_24:
          if (!sub_1A524E2B4())
          {
            goto LABEL_25;
          }

LABEL_23:
          v12[0] = 0;
          v12[1] = 0;
          v10 = v2;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

LABEL_21:
        if ((v9 & 0x4000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (*(v9 + 16))
        {
          goto LABEL_23;
        }

LABEL_25:

LABEL_2:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  goto LABEL_21;
}