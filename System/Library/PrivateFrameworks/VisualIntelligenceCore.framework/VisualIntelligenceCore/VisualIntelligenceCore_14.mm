unint64_t sub_1D88CA7BC()
{
  v1 = sub_1D8B14E50();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v45[1] = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v45 - v5;
  v7 = sub_1D8B14DF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - v12;
  v14 = MEMORY[0x1E69E7CD0];
  v50 = MEMORY[0x1E69E7CD0];
  v47 = v0;
  sub_1D8B14E00();
  (*(v8 + 104))(v11, *MEMORY[0x1E69DFAD8], v7);
  v15 = sub_1D8B14DE0();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  if (v15)
  {
    v46 = v1;
    sub_1D8B16D20();
    sub_1D8B15A60();
    v17 = sub_1D8B16D80();
    v18 = -1 << *(v14 + 32);
    v19 = v17 & ~v18;
    if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(v14 + 48) + v19);
        if (v21 <= 2 && v21 != 1 && v21 != 2)
        {
          break;
        }

        v22 = sub_1D8B16BA0();

        if (v22)
        {
          goto LABEL_10;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v14 = MEMORY[0x1E69E7CD0];
    }

    else
    {
LABEL_9:
      v23 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v23;
      sub_1D8803990(0, v19, isUniquelyReferenced_nonNull_native);
      v14 = v48;
      v50 = v48;
    }

LABEL_10:
    v1 = v46;
  }

  sub_1D8B14E60();
  v25 = (*(v2 + 88))(v6, v1);
  if (v25 == *MEMORY[0x1E69DFAF8])
  {
    (*(v2 + 96))(v6, v1);
    v26 = v6[16];

    if (v26 == 1)
    {
      sub_1D8B16D20();
      sub_1D8B15A60();
      v27 = sub_1D8B16D80();
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      if ((*(v14 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = *(*(v14 + 48) + v29);
          if (v31 > 1 && v31 != 3 && v31 != 4)
          {
            break;
          }

          v32 = sub_1D8B16BA0();

          if (v32)
          {
            return v50;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v14 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v33 = v50;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v33;
        sub_1D8803990(2, v29, v34);
        return v48;
      }
    }

    return v50;
  }

  if (v25 == *MEMORY[0x1E69DFAE8])
  {
    (*(v2 + 96))(v6, v1);
    v35 = sub_1D8B14D80();
    (*(*(v35 - 8) + 8))(v6, v35);
    return v50;
  }

  if (v25 == *MEMORY[0x1E69DFB00])
  {
    (*(v2 + 8))(v6, v1);
    sub_1D8B16D20();
    sub_1D8B15A60();
    v36 = sub_1D8B16D80();
    v37 = -1 << *(v14 + 32);
    v38 = v36 & ~v37;
    if ((*(v14 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      while (*(*(v14 + 48) + v38) > 2u || !*(*(v14 + 48) + v38) || *(*(v14 + 48) + v38) == 2)
      {
        v40 = sub_1D8B16BA0();

        if (v40)
        {
          goto LABEL_32;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v14 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v41 = v50;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v41;
      sub_1D8803990(1, v38, v42);
      v50 = v48;
    }

LABEL_32:
    sub_1D88BBAAC(0, &v48);
    return v50;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1D8B16720();

  v48 = 0xD00000000000001FLL;
  v49 = 0x80000001D8B43B80;
  sub_1D8B14E60();
  v44 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v44);

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D88CAFDC()
{
  v0 = sub_1D8B14E50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1D8B14E60();
  sub_1D8B168A0();
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
  v4 = sub_1D8B14DC0();
  MEMORY[0x1DA71EFA0](v4);

  return v6[0];
}

uint64_t sub_1D88CB104(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v36 = a1 + 32;
    v34 = *(a1 + 16);
    v35 = MEMORY[0x1E69E7CC0] >> 62;
    do
    {
      v37 = v3;
      v4 = *(v36 + 16 * v3 + 8);
      v5 = objc_allocWithZone(MEMORY[0x1E696AB60]);
      v38[0] = 0;

      v6 = [v5 initWithTypes:8 error:v38];
      if (v6)
      {
        v7 = v6;
        v8 = v38[0];
        v9 = sub_1D8B15940();
        if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = sub_1D8B15B10();
        }

        else
        {
          v10 = sub_1D8B15B20();
        }

        v11 = [v7 matchesInString:v9 options:0 range:{0, v10, v34}];

        sub_1D88D66BC();
        v12 = sub_1D8B15CF0();

        if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
        {
LABEL_10:
          v13 = 0;
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v18 = v38[0];
        v19 = sub_1D8B12EB0();

        swift_willThrow();

        v12 = MEMORY[0x1E69E7CC0];
        if (!v35)
        {
          goto LABEL_10;
        }
      }

      v14 = sub_1D8B16610();
      v13 = 1;
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
LABEL_12:
        v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          goto LABEL_53;
        }

        goto LABEL_13;
      }

LABEL_24:
      v20 = sub_1D8B16610();
      v16 = v20 + v14;
      if (__OFADD__(v20, v14))
      {
        goto LABEL_53;
      }

LABEL_13:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
        {
          v17 = v2 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }
      }

      else if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        goto LABEL_28;
      }

      sub_1D8B16610();
LABEL_28:
      v2 = sub_1D8B16750();
      v17 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v13)
      {
        v23 = sub_1D8B16610();
        if (!v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
LABEL_3:

          if (v14 > 0)
          {
            goto LABEL_54;
          }

          goto LABEL_4;
        }
      }

      if (((v22 >> 1) - v21) < v14)
      {
        goto LABEL_55;
      }

      v24 = (v17 + 8 * v21 + 32);
      if (v13)
      {
        if (v23 < 1)
        {
          goto LABEL_57;
        }

        v25 = 0;
        if ((v12 & 0xC000000000000001) == 0)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v26 = MEMORY[0x1DA71FC20](v25++, v12);
          *v24 = v26;
          if (v25 == v23)
          {
            break;
          }

          while (1)
          {
            ++v24;
            if ((v12 & 0xC000000000000001) != 0)
            {
              break;
            }

LABEL_39:
            if ((v25 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_52:
              __break(1u);
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
            }

            if (v25 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v27 = *(v12 + 32 + 8 * v25++);
            *v24 = v27;
            v28 = v27;
            if (v25 == v23)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_46:

        v1 = v34;
        v29 = v14;
        if (v14 < 1)
        {
          goto LABEL_4;
        }

        goto LABEL_47;
      }

      sub_1D88D66BC();
      v29 = v14;
      swift_arrayInitWithCopy();

      if (v14 < 1)
      {
        goto LABEL_4;
      }

LABEL_47:
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, v29);
      v32 = v30 + v29;
      if (v31)
      {
        goto LABEL_56;
      }

      *(v17 + 16) = v32;
LABEL_4:
      v3 = v37 + 1;
    }

    while (v37 + 1 != v1);
  }

  return v2;
}

void sub_1D88CB510(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v27 = a3;
  v7 = type metadata accessor for TextDetectorResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D88CBBC8(a4);
  v13 = v12;
  sub_1D88CC0B4(a1, a2, v11);
  v29 = a2;
  sub_1D88CC0B4(a1, a2, v13);
  v14 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    do
    {
      sub_1D88CC83C(v16, v10);
      v18 = sub_1D88CC3E4();
      sub_1D88D65E4(v10, type metadata accessor for TextDetectorResult);
      sub_1D88F47B4(v18);
      v16 += v17;
      --v15;
    }

    while (v15);
    v14 = v30;
  }

  if (v11 >> 62)
  {
    v19 = sub_1D8B16610();
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  v20 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA71FC20](v20, v11);
    }

    else
    {
    }

    ++v20;
    sub_1D8B146E0();
    sub_1D88D5BF0(v14);
  }

  while (v19 != v20);
LABEL_14:
  if (v13 >> 62)
  {
    v21 = sub_1D8B16610();
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  if (v21 < 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v22 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA71FC20](v22, v13);
    }

    else
    {
    }

    ++v22;
    sub_1D8B146E0();
    sub_1D88D5BF0(v14);
  }

  while (v21 != v22);
LABEL_23:

  v23 = v28;
  v24 = v29;
  v25 = sub_1D88CC8A0(v29, v11);
  if (v23 || v25 || sub_1D88CC8A0(v24, v13))
  {
    goto LABEL_24;
  }

  if ((v27 & 1) == 0)
  {

    goto LABEL_34;
  }

  if (v19)
  {
    if ((v11 & 0xC000000000000001) == 0)
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_24:

        return;
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    MEMORY[0x1DA71FC20](0, v11);
    goto LABEL_24;
  }

  if (!v21)
  {
LABEL_34:

    return;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_43:
    MEMORY[0x1DA71FC20](0, v13);
    goto LABEL_34;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_1D88CB8EC(uint64_t a1)
{
  v2 = sub_1D8B144E0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v10[2] = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B14670();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C9C88]);
  sub_1D8B146A0();
  swift_allocObject();
  sub_1D8B14680();
  sub_1D8B146D0();
  swift_allocObject();
  v10[1] = sub_1D8B145F0();
  sub_1D8B12D70();
  sub_1D8B12D80();
  sub_1D8B12D40();
  sub_1D8B12D50();
  sub_1D8B12D90();
  sub_1D8B14420();
  sub_1D8B14620();
  if (qword_1ECA62108 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8B14730();
  v8 = sub_1D8B12DE0();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_1D88CBBC8(unint64_t a1)
{
  v43 = sub_1D8B144E0();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v6 = 0;
    v40 = a1 & 0xC000000000000001;
    v38 = a1;
    v35 = a1 + 32;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (v2 + 8);
    v2 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v39 = i;
    while (v40)
    {
      v8 = MEMORY[0x1DA71FC20](v6, v38);
      v9 = __OFADD__(v6, 1);
      v10 = v6 + 1;
      if (v9)
      {
        goto LABEL_46;
      }

LABEL_11:
      sub_1D8B14550();
      v11 = sub_1D8B14770();

      v42 = v8;
      if (v11)
      {
        sub_1D8B14550();
        MEMORY[0x1DA71F1A0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D8B15D20();
          v8 = v42;
        }

        sub_1D8B15D70();
        v37 = v45;
      }

      a1 = v8;
      v12 = sub_1D8B14560();
      v13 = v12;
      v41 = v10;
      if (v12 >> 62)
      {
        v14 = sub_1D8B16610();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      if (v14 < 1)
      {
        goto LABEL_47;
      }

      for (j = 0; j != v14; ++j)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA71FC20](j, v13);
        }

        else
        {
        }

        sub_1D8B146E0();
        sub_1D8B14610();

        a1 = sub_1D8B144A0();
        (*v7)(v4, v43);
        if (a1)
        {
          v16 = sub_1D8B14750();
          v18 = v17;

          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (!v19)
          {
            sub_1D8B14550();
            sub_1D8B14750();

            sub_1D8B14760();
          }

          v20 = sub_1D8B14780();
          v22 = v21;

          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = v20 & 0xFFFFFFFFFFFFLL;
          }

          if (!v23)
          {
            sub_1D8B14550();
            sub_1D8B14780();

            sub_1D8B14790();
          }

          v24 = sub_1D8B14710();
          v26 = v25;

          v27 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v27 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (!v27)
          {
            sub_1D8B14550();
            sub_1D8B14710();

            sub_1D8B14720();
          }

          v28 = sub_1D8B146F0();
          v30 = v29;

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31)
          {
            sub_1D8B14550();
            sub_1D8B146F0();

            sub_1D8B14700();
          }

          a1 = &v44;
          MEMORY[0x1DA71F1A0](v32);
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D8B15D20();
          }

          sub_1D8B15D70();

          v2 = v44;
        }

        else
        {
        }
      }

LABEL_4:

      v6 = v41;
      if (v41 == v39)
      {
        return v37;
      }
    }

    if (v6 >= *(v36 + 16))
    {
      goto LABEL_48;
    }

    v8 = *(v35 + 8 * v6);

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D88CC0B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = sub_1D8B144E0();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_25:
    v24 = v8;
    v25 = sub_1D8B16610();
    v8 = v24;
    v28 = v25;
  }

  else
  {
    v28 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v27 = v8 & 0xC000000000000001;
  v13 = (v7 + 8);
  v14 = v8;
  while (1)
  {
    if (v28 == v12)
    {
      return;
    }

    if (v27)
    {
      break;
    }

    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_1D8B146E0();
    sub_1D8B14610();

    v7 = sub_1D8B14400();

    v3 = *v13;
    v15 = (*v13)(v10, v26);
    ++v12;
    v8 = v14;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v15 = MEMORY[0x1DA71FC20](v12, v8);
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v16 = v8;
  MEMORY[0x1EEE9AC00](v15);
  *(&v26 - 2) = a2;
  sub_1D8AA428C(sub_1D88D6708, (&v26 - 4), a1);
  v18 = v17;
  if (!*(v17 + 16))
  {
LABEL_22:

    return;
  }

  if (v28 >= 1)
  {
    v19 = 0;
    v20 = v16;
    do
    {
      if (v27)
      {
        MEMORY[0x1DA71FC20](v19, v20);
      }

      else
      {
      }

      sub_1D8B146E0();
      v21 = sub_1D8B14600();
      sub_1D88CFB70(v18);
      v21(v29, 0);
      sub_1D8B145D0();
      v22 = sub_1D8B144A0();
      v3(v10, v26);
      if (v22)
      {
        v23 = sub_1D8B145C0();
        sub_1D88CFB70(v18);
        v23(v29, 0);
      }

      ++v19;

      v20 = v14;
    }

    while (v28 != v19);
    goto LABEL_22;
  }

  __break(1u);
}

void *sub_1D88CC3E4()
{
  v42 = sub_1D8B15240();
  v0 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D8B13450();
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
  v8 = sub_1D8B15270();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB90;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69E0208], v8);
  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  v12 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v11, v7, 0);

  (*(v5 + 8))(v7, v4);
  v13 = v12[2];
  if (v13)
  {
    v36 = v2;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v13, 0);
    v14 = v43;
    v16 = *(v0 + 16);
    v15 = v0 + 16;
    v17 = *(v15 + 64);
    v35 = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v39 = *(v15 + 56);
    v40 = v16;
    v19 = (v15 - 8);
    do
    {
      v20 = v41;
      v21 = v42;
      v22 = v15;
      v40(v41, v18, v42);
      v23 = sub_1D8B15230();
      v25 = v24;
      (*v19)(v20, v21);
      v43 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D87F3F54((v26 > 1), v27 + 1, 1);
        v14 = v43;
      }

      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 += v39;
      --v13;
      v15 = v22;
    }

    while (v13);

    v29 = v36;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
    v29 = v2;
  }

  v30 = sub_1D88CB104(v14);

  v31 = v37;
  v32 = sub_1D8B13410();
  MEMORY[0x1EEE9AC00](v32);
  *(&v35 - 2) = v31;
  v33 = sub_1D88208D0(sub_1D88D66A0, (&v35 - 4), v30);

  (*(v38 + 8))(v31, v29);
  return v33;
}

uint64_t sub_1D88CC83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextDetectorResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D88CC8A0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D8B131D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = v31 - v9;
  v46 = sub_1D8B144E0();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = *(v6 + 7);
  v39 = v31 - v16;
  v32 = v15;
  v33 = v6 + 56;
  v15();
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v47 = a1;
    v18 = 0;
    v19 = a2 & 0xC000000000000001;
    v40 = a2 & 0xFFFFFFFFFFFFFF8;
    v41 = i;
    v38 = (v6 + 8);
    v44 = (v10 + 1);
    v45 = 0;
    v34 = (v6 + 32);
    v35 = (v6 + 48);
    v31[1] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v42 = v5;
    v43 = a2 & 0xC000000000000001;
    v36 = a2;
    while (v19)
    {
      v10 = MEMORY[0x1DA71FC20](v18, a2);
      a1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_30;
      }

LABEL_12:
      v6 = sub_1D8B146E0();
      v5 = sub_1D8B146C0();

      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_1D8B146E0();
      sub_1D8B146B0();

      v20 = sub_1D8B14660();

      if (v20)
      {
        v6 = v10;
        v21 = sub_1D88CFEF0(v47);
        if (v2)
        {
          sub_1D87A14E4(v39, &qword_1ECA631A8, &qword_1D8B1E6D0);
        }

        v5 = v21;
        if (!v21)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else
      {
        swift_retain_n();
        v5 = v10;
      }

      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B143E0();
      if (v2)
      {

        (*v44)(v48, v46);
        return sub_1D87A14E4(v39, &qword_1ECA631A8, &qword_1D8B1E6D0);
      }

      v6 = v49;
      sub_1D8B13090();
      if (v22 <= 0.0)
      {

        (*v38)(v49, v42);
        (*v44)(v48, v46);
      }

      else
      {
        v6 = v39;
        v23 = v37;
        sub_1D87A0E38(v39, v37, &qword_1ECA631A8, &qword_1D8B1E6D0);
        v24 = v42;
        if ((*v35)(v23, 1, v42) == 1)
        {

          (*v44)(v48, v46);
          v10 = &qword_1D8B1E6D0;
          sub_1D87A14E4(v6, &qword_1ECA631A8, &qword_1D8B1E6D0);
          sub_1D87A14E4(v23, &qword_1ECA631A8, &qword_1D8B1E6D0);
          v25 = *v34;
LABEL_27:
          i = v41;
          v25(v6, v49, v24);
          (v32)(v6, 0, 1, v24);
          v45 = v5;
          a2 = v36;
          v19 = v43;
          goto LABEL_5;
        }

        v26 = v23;
        v25 = *v34;
        v27 = v31[0];
        (*v34)(v31[0], v26, v24);
        sub_1D8B13090();
        v29 = v28;

        v10 = v38;
        v6 = *v38;
        (*v38)(v27, v24);
        (*v44)(v48, v46);
        if (v29 <= 0.0)
        {
          v6 = v39;
          sub_1D87A14E4(v39, &qword_1ECA631A8, &qword_1D8B1E6D0);

          goto LABEL_27;
        }

        (v6)(v49, v24);

        a2 = v36;
      }

      i = v41;
      v19 = v43;
LABEL_5:
      ++v18;
      if (a1 == i)
      {
        goto LABEL_34;
      }
    }

    if (v18 >= *(v40 + 16))
    {
      goto LABEL_31;
    }

    v10 = *(a2 + 8 * v18 + 32);

    a1 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v45 = 0;
LABEL_34:
  sub_1D87A14E4(v39, &qword_1ECA631A8, &qword_1D8B1E6D0);
  return v45;
}

uint64_t sub_1D88CCF34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B50, &qword_1D8B264F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88D6860();
  sub_1D8B16DD0();
  v8[15] = 0;
  sub_1D8B16AD0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D8B16AD0();
    type metadata accessor for TimeZonedTime(0);
    v8[13] = 2;
    sub_1D8B134B0();
    sub_1D88D6918(&qword_1ECA64B58, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1D8B16AE0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D88CD150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1D8B134B0();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B38, &qword_1D8B264F0);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TimeZonedTime(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88D6860();
  v12 = v22;
  sub_1D8B16DB0();
  if (!v12)
  {
    v13 = v11;
    v22 = v9;
    v15 = v20;
    v14 = v21;
    v25 = 0;
    *v13 = sub_1D8B16A00();
    v24 = 1;
    v13[1] = sub_1D8B16A00();
    v23 = 2;
    sub_1D88D6918(&qword_1ECA64B48, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
    v17 = v5;
    sub_1D8B16A10();
    (*(v15 + 8))(v8, v14);
    (*(v18 + 32))(v13 + *(v22 + 24), v17, v3);
    sub_1D88D68B4(v13, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D88CD45C()
{
  v1 = 0x6574756E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_1D88CD4AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D88D6A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D88CD4D4(uint64_t a1)
{
  v2 = sub_1D88D6860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88CD510(uint64_t a1)
{
  v2 = sub_1D88D6860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88CD54C()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*v0);
  MEMORY[0x1DA720210](v0[1]);
  sub_1D8B134B0();
  sub_1D88D6918(&qword_1ECA64B30, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

double sub_1D88CD604(uint64_t a1)
{
  MEMORY[0x1DA720210](*v1);
  MEMORY[0x1DA720210](v1[1]);
  sub_1D8B134B0();
  sub_1D88D6918(&qword_1ECA64B30, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D8B157A0();
  return result;
}

uint64_t sub_1D88CD6A0(uint64_t a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*v1);
  MEMORY[0x1DA720210](v1[1]);
  sub_1D8B134B0();
  sub_1D88D6918(&qword_1ECA64B30, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D88CD784(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    JUMPOUT(0x1DA71C960);
  }

  return 0;
}

uint64_t sub_1D88CD7BC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  v43 = a3;
  v4 = sub_1D8B12DE0();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D8B131D0();
  v6 = *(v40 - 8);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v12 = sub_1D8B134B0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  v20 = [v19 timeZone];
  if (v20)
  {
    v21 = v20;
    sub_1D8B13490();

    v36 = *(v13 + 32);
    v36(v18, v16, v12);
    v22 = [v19 date];
    if (v22)
    {
      v37 = v12;
      v23 = v22;
      sub_1D8B13190();

      v24 = v40;
      (*(v6 + 32))(v11, v9, v40);
      v25 = v38;
      sub_1D8B133A0();
      v26 = sub_1D8B12D50();
      if (v27)
      {
        (*(v41 + 8))(v25, v42);
        (*(v6 + 8))(v11, v24);
      }

      else
      {
        v28 = v26;
        v39 = sub_1D8B12D90();
        v30 = v29;
        (*(v41 + 8))(v25, v42);
        (*(v6 + 8))(v11, v24);
        if ((v30 & 1) == 0)
        {
          v33 = type metadata accessor for TimeZonedTime(0);
          v34 = v43;
          v36(v43 + *(v33 + 24), v18, v37);
          v35 = v39;
          *v34 = v28;
          v34[1] = v35;
          return (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
        }
      }

      (*(v13 + 8))(v18, v37);
    }

    else
    {
      (*(v13 + 8))(v18, v12);
    }
  }

  v31 = type metadata accessor for TimeZonedTime(0);
  return (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
}

uint64_t sub_1D88CDBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a1;
  v87 = sub_1D8B13430();
  v5 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v51 - v8;
  v70 = sub_1D8B14650();
  v9 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D8B12DE0();
  v11 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D8B13360();
  v13 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D8B13450();
  v15 = *(v86 - 8);
  v16 = MEMORY[0x1EEE9AC00](v86);
  v62 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - v18;
  v20 = sub_1D8B131D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v23 = v21 + 16;
  v61 = v20;
  v22(a2, v3);
  v77 = *MEMORY[0x1E6969868];
  v24 = *(v13 + 104);
  v79 = v13 + 104;
  v75 = (v13 + 8);
  v76 = v24;
  v74 = *MEMORY[0x1E6969AB0];
  v83 = v5;
  v84 = v5 + 8;
  v85 = v5 + 104;
  v73 = (v11 + 8);
  v68 = (v9 + 16);
  v67 = (v9 + 88);
  v66 = *MEMORY[0x1E69C9C58];
  v56 = *MEMORY[0x1E69C9C68];
  v55 = *MEMORY[0x1E69C9C80];
  v54 = *MEMORY[0x1E69C9C78];
  v53 = *MEMORY[0x1E69C9C50];
  v25 = (v15 + 8);
  v52 = *MEMORY[0x1E69C9C70];
  v60 = (v23 + 32);
  v58 = (v23 - 8);
  v51 = *MEMORY[0x1E69C9C60];
  v57 = (v23 + 16);
  v59 = *MEMORY[0x1E6969A48];
  v72 = xmmword_1D8B1AB90;
  v65 = a2;
  while (1)
  {
    v26 = v78;
    v27 = v80;
    v76(v78, v77, v80);
    sub_1D8B13370();
    (*v75)(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AE8, &qword_1D8B263E8);
    v28 = v83;
    v29 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v72;
    v31 = *(v28 + 104);
    v32 = v87;
    v31(v30 + v29, v74, v87);
    sub_1D8A4FF5C(v30);
    swift_setDeallocating();
    v33 = *(v28 + 8);
    v33(v30 + v29, v32);
    swift_deallocClassInstance();
    v34 = v81;
    sub_1D8B133B0();

    v35 = sub_1D8B12DC0();
    v37 = v36;
    (*v73)(v34, v82);
    if (v37)
    {
      return (*v25)(v19, v86);
    }

    v38 = v69;
    v39 = v70;
    (*v68)(v69, v71, v70);
    v40 = (*v67)(v38, v39);
    if (v40 == v66)
    {
      v41 = 2;
      v42 = v86;
    }

    else
    {
      v42 = v86;
      if (v40 == v56)
      {
        v41 = 3;
      }

      else if (v40 == v55)
      {
        v41 = 4;
      }

      else if (v40 == v54)
      {
        v41 = 5;
      }

      else if (v40 == v53)
      {
        v41 = 6;
      }

      else if (v40 == v52)
      {
        v41 = 7;
      }

      else
      {
        if (v40 != v51)
        {
          goto LABEL_23;
        }

        v41 = 1;
      }
    }

    v43 = *v25;
    result = (*v25)(v19, v42);
    if (v35 == v41)
    {
      return result;
    }

    v45 = v62;
    sub_1D8B13410();
    v46 = v64;
    v47 = v87;
    v31(v64, v59, v87);
    v48 = v63;
    v49 = v65;
    sub_1D8B133F0();
    v33(v46, v47);
    v43(v45, v86);
    v50 = v61;
    if ((*v60)(v48, 1, v61) == 1)
    {
      break;
    }

    (*v58)(v49, v50);
    (*v57)(v49, v48, v50);
  }

  __break(1u);
LABEL_23:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D88CE454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v25 = a3;
  v30 = sub_1D8B131D0();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00, &qword_1D8B2F6F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B08, qword_1D8B26400);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v26 = sub_1D8B12DE0();
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8B13450();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  sub_1D8B13410();
  (*(v15 + 56))(v10, 1, 1, v14);
  v21 = sub_1D8B134B0();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_1D8B12DD0();
  sub_1D88CE8A8(v28, v29, v4);
  sub_1D8B133E0();
  v22 = v27;
  v23 = v30;
  (*(v27 + 8))(v4, v30);
  (*(v11 + 8))(v13, v26);
  (*(v15 + 8))(v17, v14);
  result = (*(v22 + 48))(v20, 1, v23);
  if (result != 1)
  {
    return (*(v22 + 32))(v25, v20, v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88CE8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v25 = a3;
  v3 = sub_1D8B13450();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00, &qword_1D8B2F6F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B08, qword_1D8B26400);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_1D8B12DE0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 56))(v15, 1, 1, v3);
  v20 = sub_1D8B134B0();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_1D8B12DD0();
  sub_1D8B13410();
  sub_1D8B133D0();
  (*(v4 + 8))(v6, v3);
  v21 = sub_1D8B131D0();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v9, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    return (*(v22 + 32))(v25, v9, v21);
  }

  return result;
}

uint64_t sub_1D88CEC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v101 = a1;
  v6 = sub_1D8B134B0();
  v107 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B13430();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v99 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00, &qword_1D8B2F6F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B08, qword_1D8B26400);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = v79 - v14;
  v15 = sub_1D8B12DE0();
  v112 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v109 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1D8B13450();
  v17 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v79 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v100 = v79 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v79 - v28;
  v30 = sub_1D8B131D0();
  v108 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v94 = v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v98 = v79 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v103 = v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v106 = v79 - v37;
  if ((sub_1D8B144A0() & 1) == 0)
  {
    return sub_1D8B14490();
  }

  v82 = v25;
  v81 = v8;
  v84 = a2;
  v93 = a4;
  sub_1D8B13410();
  v104 = v15;
  v38 = v17;
  v39 = *(v17 + 56);
  v102 = v19;
  v91 = v17 + 56;
  v90 = v39;
  v39(v110, 1, 1, v113);
  v40 = *(v107 + 56);
  v89 = v107 + 56;
  v88 = v40;
  v40(v111, 1, 1, v6);
  sub_1D8B14430();
  v92 = v6;
  sub_1D8B14470();
  sub_1D8B14400();
  v41 = v109;
  v42 = v102;
  sub_1D8B12DD0();
  sub_1D8B133D0();
  v44 = v112 + 8;
  v43 = *(v112 + 8);
  v43(v41, v104);
  v45 = *(v38 + 8);
  v105 = v38 + 8;
  v45(v42, v113);
  v46 = v108;
  v47 = v108 + 48;
  v48 = *(v108 + 48);
  if (v48(v29, 1, v30) != 1)
  {
    v49 = *(v46 + 32);
    v79[1] = v46 + 32;
    v80 = v49;
    v49(v106, v29, v30);
    sub_1D8B13410();
    v86 = v47;
    v85 = v48;
    v50 = v113;
    v90(v110, 1, 1, v113);
    v83 = v43;
    v88(v111, 1, 1, v92);
    v87 = v30;
    sub_1D8B14430();
    v112 = v44;
    sub_1D8B14470();
    sub_1D8B14400();
    v51 = v109;
    v52 = v102;
    sub_1D8B12DD0();
    v29 = v100;
    sub_1D8B133D0();
    v53 = v87;
    v83(v51, v104);
    v45(v52, v50);
    if (v85(v29, 1, v53) == 1)
    {
      (*(v46 + 8))(v106, v53);
      goto LABEL_13;
    }

    v80(v103, v29, v53);
    sub_1D8B13410();
    v54 = v51;
    v55 = v113;
    v90(v110, 1, 1, v113);
    v88(v111, 1, 1, v92);
    sub_1D8B14430();
    sub_1D8B14470();
    sub_1D8B14400();
    v56 = v83;
    sub_1D8B12DD0();
    v57 = v82;
    sub_1D8B133D0();
    v58 = v87;
    v59 = v54;
    v60 = v57;
    v56(v59, v104);
    v61 = v45;
    v45(v52, v55);
    if (v85(v57, 1, v58) == 1)
    {
      v62 = *(v108 + 8);
      v62(v103, v58);
      v62(v106, v58);
LABEL_12:
      v29 = v60;
      goto LABEL_13;
    }

    v80(v98, v57, v58);
    sub_1D8B13410();
    v63 = v96;
    v64 = v97;
    (*(v96 + 104))(v99, *MEMORY[0x1E6969A98], v97);
    sub_1D8B13090();
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v66 = v107;
      v67 = v81;
      if (v65 > -9.22337204e18)
      {
        if (v65 < 9.22337204e18)
        {
          v68 = v95;
          v69 = v99;
          v70 = v52;
          sub_1D8B133F0();
          (*(v63 + 8))(v69, v64);
          v60 = v68;
          v71 = v113;
          v61(v52, v113);
          v72 = v87;
          if (v85(v68, 1, v87) != 1)
          {
            v75 = v94;
            v80(v94, v68, v72);
            sub_1D8B13410();
            sub_1D8B134A0();
            v76 = v109;
            sub_1D8B133A0();
            (*(v66 + 8))(v67, v92);
            v61(v70, v71);
            v77 = sub_1D8B144E0();
            (*(*(v77 - 8) + 16))(v93, v84, v77);
            sub_1D88CFA20();
            v83(v76, v104);
            v78 = *(v108 + 8);
            v78(v75, v72);
            v78(v98, v72);
            v78(v103, v72);
            return (v78)(v106, v72);
          }

          v73 = *(v108 + 8);
          v73(v98, v72);
          v73(v103, v72);
          v73(v106, v72);
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  sub_1D87A14E4(v29, &qword_1ECA631A8, &qword_1D8B1E6D0);
  return sub_1D8B14490();
}

uint64_t sub_1D88CFA20()
{
  sub_1D8B12D70();
  sub_1D8B14440();
  sub_1D8B12D80();
  sub_1D8B14480();
  sub_1D8B12D40();
  sub_1D8B14410();
  sub_1D8B14450();
  sub_1D8B14460();
  v0 = sub_1D8B144B0();

  return MEMORY[0x1EEE33918](v0);
}

uint64_t sub_1D88CFAC0()
{
  sub_1D8B12D70();
  sub_1D8B14440();
  sub_1D8B12D80();
  sub_1D8B14480();
  sub_1D8B12D40();
  sub_1D8B14410();
  sub_1D8B12D50();
  sub_1D8B14460();
  v0 = sub_1D8B12D90();
  if (v1)
  {
    v0 = -1;
  }

  return MEMORY[0x1EEE33918](v0);
}

uint64_t sub_1D88CFB70(uint64_t a1)
{
  v3 = sub_1D8B13430();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13450();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D8B14400();
  if (!result)
  {
    v25 = v8;
    v26 = v7;
    v36 = v10;
    sub_1D8B13410();
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(sub_1D8B131D0() - 8);
      v15 = *(v4 + 104);
      v14 = v4 + 104;
      v34 = v15;
      v33 = *MEMORY[0x1E6969A48];
      v16 = (v14 - 96);
      v17 = *MEMORY[0x1E6969A78];
      v31 = *MEMORY[0x1E6969A58];
      v32 = v17;
      v30 = *MEMORY[0x1E6969A88];
      v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v29 = *(v13 + 72);
      v35 = v1;
      while (1)
      {
        v37 = v12;
        v19 = v34;
        v34(v6, v33, v3);
        v28 = sub_1D8B13440();
        v20 = *v16;
        (*v16)(v6, v3);
        v19(v6, v32, v3);
        v27 = sub_1D8B13440();
        v20(v6, v3);
        v19(v6, v31, v3);
        v21 = sub_1D8B13440();
        v20(v6, v3);
        v22 = v14;
        v19(v6, v30, v3);
        v23 = sub_1D8B13440();
        v20(v6, v3);
        if (sub_1D8B14450() < 0 || sub_1D8B144B0() < 0 || v21 == sub_1D8B14450() && v23 == sub_1D8B144B0())
        {
          break;
        }

        v18 += v29;
        v12 = v37 - 1;
        v14 = v22;
        if (v37 == 1)
        {
          return (*(v25 + 8))(v36, v26);
        }
      }

      if (!sub_1D8B14400())
      {
        sub_1D8B14410();
      }

      if (!sub_1D8B14470())
      {
        sub_1D8B14480();
      }
    }

    return (*(v25 + 8))(v36, v26);
  }

  return result;
}

_BYTE *sub_1D88CFEF0(uint64_t a1)
{
  v4 = sub_1D8B144E0();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v77 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v61[-v7];
  v8 = sub_1D8B14670();
  v85 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = &v61[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v61[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v61[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v75 = &v61[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v76 = &v61[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61[-v24];
  v26 = sub_1D8B131D0();
  v73 = *(v26 - 8);
  v74 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v80 = &v61[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v61[-v29];
  v31 = sub_1D8B143D0();
  v83 = *(v31 - 8);
  v84 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = v1;
  sub_1D8B146E0();
  sub_1D8B146B0();

  sub_1D8B14630();

  if (sub_1D8B143C0())
  {
    sub_1D8B143B0();
    if (v2)
    {
      goto LABEL_15;
    }

    v81 = a1;
    v82 = 0;
    sub_1D8B13090();
    v50 = v49;
    (*(v73 + 8))(v30, v74);
    if (v50 <= 0.0)
    {
      (*(v83 + 8))(v33, v84);
      return 0;
    }
  }

  else
  {
    v81 = a1;
    v82 = v2;
  }

  v71 = v33;
  sub_1D8B146E0();
  sub_1D8B146B0();

  sub_1D8B14690();

  v34 = v85;
  v35 = *(v85 + 104);
  v62 = *MEMORY[0x1E69C9CA0];
  v65 = v85 + 104;
  v64 = v35;
  v35(v23);
  v36 = sub_1D88D6918(&qword_1ECA64AE0, MEMORY[0x1E69C9CA8], MEMORY[0x1E69C9CB0]);
  sub_1D8B15C40();
  v63 = v36;
  sub_1D8B15C40();
  v37 = v78;
  if (v89 == v87 && v90 == v88)
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_1D8B16BA0();
  }

  v40 = *(v34 + 8);
  v39 = v34 + 8;
  v40(v23, v8);
  v66 = v40;
  v40(v25, v8);

  v41 = v79;
  if (v38)
  {
    sub_1D8B146E0();
    v42 = v72;
    sub_1D8B14610();

    v25 = sub_1D8B14400();
    (*(v37 + 8))(v42, v41);
    if (v25 == 32)
    {
      sub_1D8B146E0();
      sub_1D8B146B0();

      v43 = sub_1D8B14640();

      v25 = *(v43 + 16);

      if (v25)
      {
        v25 = sub_1D88D0AA4(v81);
LABEL_25:
        (*(v83 + 8))(v71, v84);
        return v25;
      }
    }
  }

  v85 = v39;
  sub_1D8B146E0();
  v44 = v77;
  sub_1D8B14610();

  v46 = v80;
  v45 = v81;
  v47 = v82;
  sub_1D8B143E0();
  if (!v47)
  {
    v81 = v45;
    v82 = 0;
    sub_1D8B146E0();
    sub_1D8B146B0();

    sub_1D8B14690();

    v64(v75, *MEMORY[0x1E69C9C90], v8);
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v89 == v87 && v90 == v88)
    {
      v48 = v66;
      v66(v75, v8);
      v48(v76, v8);
    }

    else
    {
      v51 = sub_1D8B16BA0();
      v52 = v66;
      v66(v75, v8);
      v52(v76, v8);
      v46 = v80;

      if ((v51 & 1) == 0)
      {
        sub_1D8B146E0();
        sub_1D8B146B0();

        sub_1D8B14690();

        v64(v69, *MEMORY[0x1E69C9C98], v8);
        sub_1D8B15C40();
        sub_1D8B15C40();
        if (v89 == v87 && v90 == v88)
        {
          v55 = v66;
          v66(v69, v8);
          v55(v70, v8);
        }

        else
        {
          v56 = sub_1D8B16BA0();
          v57 = v66;
          v66(v69, v8);
          v57(v70, v8);
          v46 = v80;

          if ((v56 & 1) == 0)
          {
            sub_1D8B146E0();
            sub_1D8B146B0();

            sub_1D8B14690();

            v64(v67, v62, v8);
            sub_1D8B15C40();
            sub_1D8B15C40();
            if (v89 == v87 && v90 == v88)
            {
              v58 = v66;
              v66(v67, v8);
              v58(v68, v8);
            }

            else
            {
              v59 = sub_1D8B16BA0();
              v60 = v66;
              v66(v67, v8);
              v60(v68, v8);
              v46 = v80;

              if ((v59 & 1) == 0)
              {
                (*(v73 + 8))(v46, v74);
                (*(v37 + 8))(v44, v41);
                (*(v83 + 8))(v71, v84);
                return 0;
              }
            }

            sub_1D88D4420(v46, v81);
            goto LABEL_24;
          }
        }

        sub_1D88D2F7C(v46, v81);
LABEL_24:
        v25 = v53;
        (*(v73 + 8))(v46, v74);
        (*(v37 + 8))(v44, v41);
        goto LABEL_25;
      }
    }

    v53 = sub_1D88D2898(v46, v81);
    goto LABEL_24;
  }

  (*(v37 + 8))(v44, v41);
  v33 = v71;
LABEL_15:
  (*(v83 + 8))(v33, v84);
  return v25;
}

uint64_t sub_1D88D0AA4(uint64_t a1)
{
  v188 = a1;
  v2 = sub_1D8B13430();
  v194 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v243 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v152 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v182 = &v152 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v152 - v13;
  v227 = sub_1D8B13360();
  v244 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v226 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B131D0();
  v242 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v204 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v152 - v18;
  v187 = sub_1D8B134B0();
  v241 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1D8B12DE0();
  v238 = *(v235 - 8);
  v20 = MEMORY[0x1EEE9AC00](v235);
  v172 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v203 = &v152 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v222 = &v152 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v193 = &v152 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v169 = &v152 - v28;
  v166 = sub_1D8B14670();
  v239 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1D8B14650();
  v30 = *(v212 - 8);
  v31 = MEMORY[0x1EEE9AC00](v212);
  v200 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v190 = &v152 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v211 = &v152 - v35;
  v174 = sub_1D8B144E0();
  v36 = *(v174 - 8);
  v37 = MEMORY[0x1EEE9AC00](v174);
  v155 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v154 = &v152 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v161 = &v152 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v160 = &v152 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v152 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v152 - v48;
  v228 = sub_1D8B13450();
  v170 = *(v228 - 8);
  v50 = MEMORY[0x1EEE9AC00](v228);
  v240 = &v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v206 = &v152 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v192 = &v152 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v189 = &v152 - v56;
  sub_1D8B13410();
  sub_1D8B146E0();
  v175 = v49;
  sub_1D8B14610();

  sub_1D8B146E0();
  v168 = v47;
  sub_1D8B145D0();

  v167 = v1;
  sub_1D8B146E0();
  sub_1D8B146B0();

  v57 = sub_1D8B14640();

  v58 = v57;
  v159 = *(v57 + 16);
  if (v159)
  {
    v59 = 0;
    v173 = 0;
    v60 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v164 = *MEMORY[0x1E69C9C88];
    v163 = v57 + v60;
    v210 = v30 + 16;
    v162 = (v239 + 104);
    v225 = *MEMORY[0x1E6969868];
    v185 = (v241 + 1);
    v230 = (v244 + 104);
    v224 = (v244 + 8);
    v223 = *MEMORY[0x1E6969AB0];
    v239 = v194 + 104;
    v244 = v194 + 8;
    v234 = (v238 + 8);
    v208 = *MEMORY[0x1E69C9C58];
    v207 = (v30 + 88);
    v198 = *MEMORY[0x1E69C9C68];
    v197 = *MEMORY[0x1E69C9C80];
    v221 = (v170 + 8);
    v216 = (v242 + 48);
    v232 = (v242 + 8);
    v231 = (v242 + 32);
    v241 = (v194 + 16);
    v195 = *MEMORY[0x1E69C9C78];
    v153 = (v36 + 32);
    v181 = *MEMORY[0x1E69C9C50];
    v179 = *MEMORY[0x1E69C9C70];
    v177 = *MEMORY[0x1E69C9C60];
    v205 = *MEMORY[0x1E6969A48];
    v191 = xmmword_1D8B1AB90;
    v180 = *MEMORY[0x1E6969A78];
    v199 = (v194 + 32);
    v156 = (v30 + 8);
    v61 = v204;
    v202 = v10;
    v217 = v15;
    v157 = v30;
    v158 = v57;
    v171 = (v36 + 8);
    while (v59 < *(v58 + 16))
    {
      v66 = *(v30 + 72);
      v178 = v59;
      v209 = *(v30 + 16);
      v209(v211, v163 + v66 * v59, v212);
      v242 = sub_1D8B14750();
      v238 = v67;
      (*v162)(v165, v164, v166);
      sub_1D8B146A0();
      swift_allocObject();
      sub_1D8B14680();
      sub_1D8B146D0();
      swift_allocObject();
      v237 = sub_1D8B145F0();
      v236 = sub_1D8B14780();
      v233 = v68;
      sub_1D8B14710();
      sub_1D8B146F0();
      sub_1D8B147A0();
      swift_allocObject();
      v69 = sub_1D8B14740();
      v70 = v186;
      sub_1D8B134A0();
      sub_1D8B133A0();
      v184 = *v185;
      v184(v70, v187);
      v71 = sub_1D8B14430();
      v176 = v69;
      if (v71)
      {
        v72 = sub_1D8B14430();
      }

      else
      {
        v72 = sub_1D8B12D70();
        if (v73)
        {
          goto LABEL_85;
        }
      }

      v74 = v72;
      v75 = v194;
      if (sub_1D8B14470())
      {
        v76 = sub_1D8B14470();
      }

      else
      {
        v76 = sub_1D8B12D80();
        if (v77)
        {
          goto LABEL_86;
        }
      }

      v78 = v192;
      ++v178;
      sub_1D88CE454(v76, v74, v196);
      v229 = *v230;
      while (1)
      {
        v79 = v226;
        v80 = v227;
        v229(v226, v225, v227);
        sub_1D8B13370();
        v220 = *v224;
        v220(v79, v80);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AE8, &qword_1D8B263E8);
        v82 = *(v75 + 80);
        v83 = (v82 + 32) & ~v82;
        v242 = *(v75 + 72);
        v218 = v82;
        v219 = v81;
        v84 = swift_allocObject();
        *(v84 + 16) = v191;
        v238 = *(v75 + 104);
        (v238)(v84 + v83, v223, v2);
        sub_1D8A4FF5C(v84);
        swift_setDeallocating();
        v85 = *(v75 + 8);
        v237 = v83;
        v85(v84 + v83, v2);
        swift_deallocClassInstance();
        v86 = v193;
        sub_1D8B133B0();

        v87 = sub_1D8B12DC0();
        LOBYTE(v83) = v88;
        v233 = *v234;
        v233(v86, v235);
        if (v83)
        {
          v236 = *v221;
          v236(v78, v228);
          v99 = v182;
          goto LABEL_33;
        }

        v236 = v87;
        v89 = v190;
        v90 = v212;
        v209(v190, v211, v212);
        v91 = (*v207)(v89, v90);
        if (v91 == v208)
        {
          v92 = 2;
        }

        else if (v91 == v198)
        {
          v92 = 3;
        }

        else if (v91 == v197)
        {
          v92 = 4;
        }

        else if (v91 == v195)
        {
          v92 = 5;
        }

        else if (v91 == v181)
        {
          v92 = 6;
        }

        else if (v91 == v179)
        {
          v92 = 7;
        }

        else
        {
          if (v91 != v177)
          {
            goto LABEL_87;
          }

          v92 = 1;
        }

        v93 = *v221;
        v94 = v78;
        v95 = v228;
        (*v221)(v94, v228);
        if (v236 == v92)
        {
          break;
        }

        v96 = v206;
        sub_1D8B13410();
        (v238)(v6, v205, v2);
        v97 = v183;
        v98 = v196;
        sub_1D8B133F0();
        v85(v6, v2);
        v93(v96, v95);
        v15 = v217;
        if ((*v216)(v97, 1, v217) == 1)
        {
          goto LABEL_81;
        }

        (*v232)(v98, v15);
        (*v231)(v98, v97, v15);
        v75 = v194;
        v78 = v192;
      }

      v236 = v93;
      v99 = v182;
      v15 = v217;
LABEL_33:
      v100 = v196;
      sub_1D8B13090();
      if (v101 < 0.0)
      {
        do
        {
          (v238)(v6, v180, v2);
          sub_1D8B133F0();
          v85(v6, v2);
          v201 = *v216;
          if (v201(v99, 1, v15) == 1)
          {
            goto LABEL_82;
          }

          v214 = *v232;
          v214(v100, v15);
          v213 = *v231;
          v213(v100, v99, v15);
          v116 = v186;
          sub_1D8B134A0();
          sub_1D8B133A0();
          v184(v116, v187);
          v117 = sub_1D8B12D80();
          if (v118)
          {
            goto LABEL_83;
          }

          v119 = v117;
          v120 = sub_1D8B12D70();
          if (v121)
          {
            goto LABEL_84;
          }

          sub_1D88CE454(v119, v120, v61);
          v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AF0, &unk_1D8B263F0);
          while (1)
          {
            v122 = v226;
            v123 = v227;
            v229(v226, v225, v227);
            sub_1D8B13370();
            v220(v122, v123);
            v124 = v237;
            v125 = swift_allocObject();
            (v238)(v125 + v124, v223, v2);
            v36 = sub_1D8B166E0();
            v126 = v36 + 56;
            v127 = *v241;
            (*v241)(v243, v125 + v124, v2);
            sub_1D88D6918(&unk_1ECA67D60, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
            v128 = sub_1D8B15790();
            v129 = -1 << *(v36 + 32);
            v130 = v128 & ~v129;
            v131 = v130 >> 6;
            v132 = *(v36 + 56 + 8 * (v130 >> 6));
            v133 = 1 << v130;
            if (((1 << v130) & v132) != 0)
            {
              v134 = ~v129;
              while (1)
              {
                v127(v6, *(v36 + 48) + v130 * v242, v2);
                sub_1D88D6918(&qword_1ECA64AF8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
                v135 = sub_1D8B158C0();
                v85(v6, v2);
                if (v135)
                {
                  break;
                }

                v130 = (v130 + 1) & v134;
                v131 = v130 >> 6;
                v132 = *(v126 + 8 * (v130 >> 6));
                v133 = 1 << v130;
                if (((1 << v130) & v132) == 0)
                {
                  goto LABEL_47;
                }
              }

              v85(v243, v2);
              v15 = v217;
            }

            else
            {
LABEL_47:
              *(v126 + 8 * v131) = v133 | v132;
              (*v199)(*(v36 + 48) + v130 * v242, v243, v2);
              v136 = *(v36 + 16);
              v137 = __OFADD__(v136, 1);
              v138 = v136 + 1;
              v15 = v217;
              if (v137)
              {
                __break(1u);
                goto LABEL_76;
              }

              *(v36 + 16) = v138;
            }

            swift_setDeallocating();
            v85(v125 + v237, v2);
            swift_deallocClassInstance();
            v139 = v203;
            v61 = v204;
            sub_1D8B133B0();

            v140 = sub_1D8B12DC0();
            v142 = v141;
            v233(v139, v235);
            v143 = v202;
            if (v142)
            {
              break;
            }

            v144 = v200;
            v145 = v212;
            v209(v200, v211, v212);
            v146 = (*v207)(v144, v145);
            v114 = v222;
            if (v146 == v208)
            {
              v147 = v228;
              v236(v240, v228);
              if (v140 == 2)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v147 = v228;
              if (v146 == v198)
              {
                v236(v240, v228);
                if (v140 == 3)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v197)
              {
                v236(v240, v228);
                if (v140 == 4)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v195)
              {
                v236(v240, v228);
                if (v140 == 5)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v181)
              {
                v236(v240, v228);
                if (v140 == 6)
                {
                  goto LABEL_38;
                }
              }

              else if (v146 == v179)
              {
                v236(v240, v228);
                if (v140 == 7)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                if (v146 != v177)
                {
                  goto LABEL_87;
                }

                v236(v240, v228);
                if (v140 == 1)
                {
                  goto LABEL_38;
                }
              }
            }

            v148 = v206;
            sub_1D8B13410();
            (v238)(v6, v205, v2);
            sub_1D8B133F0();
            v85(v6, v2);
            v236(v148, v147);
            if (v201(v143, 1, v15) == 1)
            {
              goto LABEL_80;
            }

            v214(v61, v15);
            v213(v61, v143, v15);
          }

          v236(v240, v228);
          v114 = v222;
LABEL_38:
          v233(v114, v235);
          v100 = v196;
          v214(v196, v15);
          v213(v100, v61, v15);
          sub_1D8B13090();
          v99 = v182;
        }

        while (v115 < 0.0);
      }

      v102 = v186;
      sub_1D8B134A0();
      sub_1D8B133A0();
      v184(v102, v187);
      sub_1D8B146E0();
      v242 = sub_1D8B14600();
      sub_1D88CFA20();
      (v242)(v245, 0);

      sub_1D8B146E0();
      sub_1D8B146E0();
      v103 = v161;
      sub_1D8B14610();

      v104 = v160;
      sub_1D88CEC78(v175, v168, v103, v160);
      v242 = *v171;
      (v242)(v103, v174);
      sub_1D8B145E0();

      v105 = v173;
      if (v173)
      {
        sub_1D8B146E0();
        v106 = v155;
        sub_1D8B14610();

        v107 = *v153;
        v173 = v105;
        v108 = v154;
        v109 = v106;
        v110 = v174;
        v107(v154, v109);
        sub_1D8B146E0();
        sub_1D8B14610();

        LODWORD(v238) = MEMORY[0x1DA71D8D0](v104, v108);
        v111 = v242;
        (v242)(v104, v110);
        v111(v108, v110);
        v112 = v235;
        v113 = v233;
        v233(v172, v235);
        (*v232)(v100, v15);
        v113(v169, v112);
        (*v156)(v211, v212);
        if (v238)
        {

          v173 = v176;
        }

        else
        {
        }

        v30 = v157;
        v64 = v170;
      }

      else
      {
        v62 = v235;
        v63 = v233;
        v233(v172, v235);
        (*v232)(v100, v15);
        v63(v169, v62);
        (*v156)(v211, v212);
        v173 = v176;
        v30 = v157;
        v64 = v170;
      }

      v59 = v178;
      v65 = v174;
      v58 = v158;
      if (v178 == v159)
      {

        v149 = v173;
        v150 = v242;
        (v242)(v168, v65);
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
LABEL_76:

    v149 = 0;
    v150 = *(v36 + 8);
    v65 = v174;
    v64 = v170;
    v150(v168, v174);
LABEL_78:
    v150(v175, v65);
    (*(v64 + 8))(v189, v228);
    return v149;
  }

  return result;
}

uint64_t sub_1D88D2898(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v3 = sub_1D8B144E0();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v40 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v40 - v10;
  v42 = sub_1D8B134B0();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B12DE0();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v40 - v16;
  v17 = sub_1D8B14670();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B13450();
  v55 = *(v21 - 8);
  v56 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13410();
  sub_1D8B14750();
  (*(v18 + 104))(v20, *MEMORY[0x1E69C9C88], v17);
  sub_1D8B146A0();
  swift_allocObject();
  sub_1D8B14680();
  sub_1D8B146D0();
  swift_allocObject();
  sub_1D8B145F0();
  sub_1D8B14780();
  sub_1D8B14710();
  v57 = v2;
  sub_1D8B146F0();
  sub_1D8B147A0();
  swift_allocObject();
  v23 = sub_1D8B14740();
  sub_1D8B13090();
  if (v24 >= 0.0)
  {
    sub_1D8B146E0();
    sub_1D8B146E0();
    sub_1D8B14610();

    sub_1D8B14620();

    sub_1D8B146E0();
    sub_1D8B146E0();
    sub_1D8B145D0();

    sub_1D8B145E0();

    v38 = v54;
  }

  else
  {
    v25 = v54;
    sub_1D8B13420();
    sub_1D8B133A0();
    v26 = *(v41 + 8);
    v27 = v42;
    v26(v12, v42);
    sub_1D8B13420();
    v28 = v43;
    sub_1D8B133A0();
    v26(v12, v27);
    sub_1D8B146E0();
    v29 = sub_1D8B14600();
    sub_1D88CFAC0();
    v29(v59, 0);

    sub_1D8B146E0();
    sub_1D8B146E0();
    v30 = v46;
    sub_1D8B14610();

    sub_1D8B146E0();
    v31 = v47;
    sub_1D8B145D0();

    sub_1D8B146E0();
    v32 = v48;
    sub_1D8B14610();

    sub_1D88CEC78(v30, v31, v32, v58);
    v33 = *(v49 + 8);
    v34 = v32;
    v35 = v50;
    v33(v34, v50);
    v33(v31, v35);
    v33(v30, v35);
    sub_1D8B145E0();

    v36 = v45;
    v37 = *(v44 + 8);
    v37(v28, v45);
    v37(v53, v36);
    v38 = v25;
  }

  (*(v55 + 8))(v38, v56);
  return v23;
}

void sub_1D88D2F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v183 = a2;
  v179 = a1;
  v172 = sub_1D8B14650();
  v175 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v154 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D8B134B0();
  v164 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1D8B12DE0();
  v165 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v174 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1D8B13430();
  v137 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v160 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v143 = (&v125 - v11);
  v185 = sub_1D8B131D0();
  v136 = *(v185 - 8);
  v161 = v136;
  v12 = MEMORY[0x1EEE9AC00](v185);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v171 = &v125 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v125 - v20;
  v156 = sub_1D8B13450();
  v163 = *(v156 - 8);
  v21 = MEMORY[0x1EEE9AC00](v156);
  v184 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v125 - v23;
  v173 = sub_1D8B144E0();
  v162 = *(v173 - 8);
  v24 = MEMORY[0x1EEE9AC00](v173);
  v129 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v128 = &v125 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v170 = &v125 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v178 = &v125 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v155 = &v125 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v125 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v125 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v125 - v40;
  v42 = sub_1D8B14670();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v125 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D8B14750();
  v176 = v47;
  v177 = v46;
  v48 = *(v43 + 104);
  v150 = *MEMORY[0x1E69C9C88];
  v153 = v42;
  v152 = v43 + 104;
  v149 = v48;
  v48(v45);
  v148 = sub_1D8B146A0();
  swift_allocObject();
  v151 = v45;
  sub_1D8B14680();
  v147 = sub_1D8B146D0();
  swift_allocObject();
  v168 = sub_1D8B145F0();
  v49 = sub_1D8B14780();
  v166 = v50;
  v167 = v49;
  sub_1D8B14710();
  sub_1D8B146F0();
  v146 = sub_1D8B147A0();
  swift_allocObject();
  v51 = sub_1D8B14740();
  sub_1D8B146E0();
  sub_1D8B146B0();

  v52 = sub_1D8B14640();

  v53 = *(v52 + 16);

  if (v53)
  {
    v126 = v51;
    sub_1D88D6918(&qword_1ECA631C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v54 = v183;
    v55 = v179;
    v56 = v185;
    v57 = sub_1D8B15830();
    v58 = v161[2];
    if (v57)
    {
      v59 = v54;
    }

    else
    {
      v59 = v55;
    }

    v161 += 2;
    v143 = v58;
    v58(v19, v59, v56);
    v144 = v3;
    sub_1D8B146E0();
    sub_1D8B146B0();

    v60 = sub_1D8B14640();

    v61 = v60;
    v138 = *(v60 + 16);
    if (!v138)
    {
      goto LABEL_29;
    }

    v176 = 0;
    v62 = 0;
    v142 = v60 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
    v141 = v175 + 16;
    v140 = v175 + 8;
    LODWORD(v179) = *MEMORY[0x1E6969A48];
    v182 = (v137 + 104);
    v63 = (v137 + 8);
    v64 = (v136 + 6);
    v65 = (v136 + 1);
    v66 = v136 + 4;
    v137 = v164 + 8;
    v136 = (v162 + 16);
    v135 = (v162 + 8);
    v134 = (v165 + 8);
    v133 = (v163 + 8);
    v127 = (v162 + 32);
    v67 = v160;
    v145 = v36;
    v169 = v19;
    v139 = v60;
    v132 = v63;
    v131 = v64;
    v130 = v66;
    while (1)
    {
      if (v62 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v69 = *(v175 + 72);
      v162 = v62;
      v70 = v154;
      (*(v175 + 16))(v154, v142 + v69 * v62, v172);
      v177 = sub_1D8B14750();
      v168 = v71;
      v149(v151, v150, v153);
      swift_allocObject();
      sub_1D8B14680();
      swift_allocObject();
      v167 = sub_1D8B145F0();
      v72 = sub_1D8B14780();
      v165 = v73;
      v166 = v72;
      v164 = sub_1D8B14710();
      v163 = v74;
      sub_1D8B146F0();
      swift_allocObject();
      v177 = sub_1D8B14740();
      v75 = v171;
      sub_1D88CDBCC(v70, v171);
      (*(v175 + 8))(v70, v172);
      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B13410();
      v143(v14, v75, v185);
      sub_1D8B13090();
      if (v76 < 0.0)
      {
        break;
      }

LABEL_14:
      v82 = v157;
      sub_1D8B134A0();
      sub_1D8B133A0();
      (*v137)(v82, v158);
      v83 = *v136;
      v84 = v145;
      v85 = v173;
      (*v136)(v145, v178, v173);
      v86 = v155;
      v83(v155, v84, v85);
      sub_1D88CFA20();
      v168 = *v135;
      v168(v86, v85);
      sub_1D8B146E0();
      v83(v86, v84, v85);
      sub_1D8B14620();
      v87 = v168;

      sub_1D8B146E0();
      v88 = v178;
      v89 = v170;
      sub_1D88CEC78(v178, v170, v84, v86);
      sub_1D8B145E0();

      v90 = v173;
      v87(v84, v173);
      (*v134)(v174, v159);
      v91 = *v65;
      (*v65)(v14, v185);
      (*v133)(v184, v156);
      v87(v89, v90);
      v87(v88, v90);
      v167 = v91;
      if (v176)
      {
        sub_1D8B146E0();
        v92 = v129;
        sub_1D8B14610();

        v93 = v91;
        v94 = v128;
        v95 = v92;
        v96 = v90;
        v97 = v177;
        (*v127)(v128, v95, v90);
        sub_1D8B146E0();
        sub_1D8B14610();

        v98 = MEMORY[0x1DA71D8D0](v84, v94);
        v87(v84, v96);
        v87(v94, v96);
        v93(v171, v185);
        v99 = v169;

        if (v98)
        {
          v176 = v97;
        }

        v67 = v160;
        v63 = v132;
        v64 = v131;
        v68 = v99;
      }

      else
      {
        v91(v171, v185);
        v176 = v177;
        v68 = v169;
        v67 = v160;
        v63 = v132;
        v64 = v131;
      }

      v66 = v130;
      v62 = v162 + 1;
      v61 = v139;
      if (v162 + 1 == v138)
      {

        v167(v68, v185);

        return;
      }
    }

    v77 = *v182;
    while (1)
    {
      v79 = v180;
      v78 = v181;
      v77(v180, v179, v181);
      sub_1D8B133F0();
      (*v63)(v79, v78);
      if ((*v64)(v67, 1, v185) == 1)
      {
        break;
      }

      v80 = v185;
      (*v65)(v14, v185);
      (*v66)(v14, v67, v80);
      sub_1D8B13090();
      if (v81 >= 0.0)
      {
        goto LABEL_14;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
    v100 = v161;
    v177 = v39;
    v178 = v41;
    v101 = v143;
    v102 = v144;
    v103 = v179;
    sub_1D8B13090();
    if (v104 >= 0.0)
    {
      sub_1D8B146E0();
      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B14620();

      sub_1D8B146E0();
      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B145E0();

      return;
    }

    v145 = v36;
    v126 = v51;
    sub_1D8B146E0();
    sub_1D8B14610();

    sub_1D8B146E0();
    sub_1D8B145D0();

    sub_1D8B13410();
    v100[2](v102, v103, v185);
    sub_1D8B13090();
    if (v105 >= 0.0)
    {
LABEL_24:
      v115 = v157;
      sub_1D8B134A0();
      v116 = v174;
      sub_1D8B133A0();
      (*(v164 + 8))(v115, v158);
      v117 = v162;
      v118 = *(v162 + 16);
      v119 = v145;
      v120 = v173;
      v118(v145, v178, v173);
      v121 = v155;
      v118(v155, v119, v120);
      sub_1D88CFA20();
      v122 = *(v117 + 8);
      v122(v121, v120);
      sub_1D8B146E0();
      v118(v121, v119, v120);
      sub_1D8B14620();

      sub_1D8B146E0();
      v123 = v177;
      v124 = v178;
      sub_1D88CEC78(v178, v177, v119, v121);
      sub_1D8B145E0();

      v122(v119, v120);
      (*(v165 + 8))(v116, v159);
      (v161[1])(v144, v185);
      (*(v163 + 8))(v182, v156);
      v122(v123, v120);
      v122(v124, v120);
      return;
    }

    v106 = v101;
    v184 = *(v137 + 104);
    LODWORD(v179) = *MEMORY[0x1E6969A48];
    v107 = (v137 + 8);
    v108 = (v136 + 6);
    v109 = (v136 + 1);
    v110 = v136 + 4;
    while (1)
    {
      v112 = v180;
      v111 = v181;
      (v184)(v180, v179, v181);
      sub_1D8B133F0();
      (*v107)(v112, v111);
      if ((*v108)(v106, 1, v185) == 1)
      {
        break;
      }

      v113 = v185;
      (*v109)(v102, v185);
      (*v110)(v102, v106, v113);
      sub_1D8B13090();
      if (v114 >= 0.0)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
}

void sub_1D88D4420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v183 = a2;
  v5 = sub_1D8B14650();
  v162 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v161 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D8B134B0();
  v170 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1D8B12DE0();
  v171 = *(v159 - 8);
  v8 = MEMORY[0x1EEE9AC00](v159);
  v164 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v146 = &v133 - v10;
  v190 = sub_1D8B13430();
  v187 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v148 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v160 = &v133 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v133 - v17;
  v18 = sub_1D8B131D0();
  v177 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v147 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v179 = &v133 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v185 = &v133 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v175 = &v133 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v165 = &v133 - v27;
  v182 = sub_1D8B13450();
  v169 = *(v182 - 8);
  v28 = MEMORY[0x1EEE9AC00](v182);
  v184 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v180 = &v133 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v133 - v32;
  v166 = sub_1D8B144E0();
  v168 = *(v166 - 8);
  v33 = MEMORY[0x1EEE9AC00](v166);
  v137 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v136 = &v133 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v174 = &v133 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v178 = &v133 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v134 = &v133 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v163 = &v133 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v133 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v133 - v48;
  v50 = sub_1D8B14670();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1D8B14750();
  v186 = v54;
  v55 = *(v51 + 104);
  v153 = *MEMORY[0x1E69C9C88];
  v156 = v50;
  v155 = v51 + 104;
  v152 = v55;
  v55(v53);
  v151 = sub_1D8B146A0();
  swift_allocObject();
  v154 = v53;
  sub_1D8B14680();
  v150 = sub_1D8B146D0();
  swift_allocObject();
  sub_1D8B145F0();
  v181 = sub_1D8B14780();
  v176 = v56;
  v173 = sub_1D8B14710();
  v172 = v57;
  sub_1D8B146F0();
  v149 = sub_1D8B147A0();
  swift_allocObject();
  v58 = sub_1D8B14740();
  sub_1D8B146E0();
  sub_1D8B146B0();

  v59 = sub_1D8B14640();

  v60 = *(v59 + 16);

  if (v60)
  {
    v133 = v58;
    v173 = v3;
    sub_1D8B146E0();
    sub_1D8B146B0();

    v61 = sub_1D8B14640();

    v143 = *(v61 + 16);
    if (!v143)
    {
LABEL_36:

      __break(1u);
      return;
    }

    v62 = 0;
    v176 = 0;
    v146 = (v61 + ((*(v162 + 80) + 32) & ~*(v162 + 80)));
    v145 = (v162 + 16);
    v172 = (v177 + 16);
    LODWORD(v188) = *MEMORY[0x1E6969A78];
    v191 = (v187 + 104);
    v187 += 8;
    v181 = (v169 + 8);
    v186 = (v177 + 48);
    v63 = (v177 + 8);
    v64 = (v177 + 32);
    v142 = (v170 + 8);
    v139 = (v171 + 8);
    v165 = (v168 + 8);
    v135 = (v168 + 32);
    v138 = (v162 + 8);
    v65 = v161;
    v66 = v160;
    v141 = a1;
    v140 = v5;
    v144 = v61;
    while (v62 < *(v61 + 16))
    {
      v68 = *(v162 + 72);
      v167 = v62;
      (*(v162 + 16))(v65, &v146[v68 * v62], v5);
      sub_1D8B14750();
      v177 = v69;
      v152(v154, v153, v156);
      swift_allocObject();
      sub_1D8B14680();
      swift_allocObject();
      sub_1D8B145F0();
      v171 = sub_1D8B14780();
      v170 = v70;
      v169 = sub_1D8B14710();
      v168 = v71;
      sub_1D8B146F0();
      swift_allocObject();
      v177 = sub_1D8B14740();
      v72 = v175;
      v171 = *v172;
      (v171)(v175, a1, v18);
      v73 = v72;
      sub_1D88CDBCC(v65, v185);
      for (i = v183; ; i = v183)
      {
        sub_1D8B13090();
        if (v75 >= 0.0)
        {
          break;
        }

        v76 = v180;
        sub_1D8B13410();
        v77 = v190;
        v78 = v189;
        (*v191)(v189, v188, v190);
        sub_1D8B133F0();
        (*v187)(v78, v77);
        (*v181)(v76, v182);
        if ((*v186)(v66, 1, v18) == 1)
        {
          goto LABEL_33;
        }

        v79 = *v63;
        (*v63)(v73, v18);
        v80 = *v64;
        (*v64)(v73, v66, v18);
        v81 = v179;
        sub_1D88CDBCC(v65, v179);
        v82 = v185;
        v79(v185, v18);
        v80(v82, v81, v18);
      }

      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B146E0();
      sub_1D8B145D0();

      sub_1D8B13410();
      v83 = v147;
      (v171)(v147, v185, v18);
      sub_1D8B13090();
      v84 = v148;
      if (v85 < 0.0)
      {
        v86 = *v191;
        do
        {
          v87 = i;
          v89 = v189;
          v88 = v190;
          v86(v189, v188, v190);
          sub_1D8B133F0();
          (*v187)(v89, v88);
          if ((*v186)(v84, 1, v18) == 1)
          {
            goto LABEL_34;
          }

          (*v63)(v83, v18);
          (*v64)(v83, v84, v18);
          i = v87;
          sub_1D8B13090();
        }

        while (v90 < 0.0);
      }

      v91 = v157;
      sub_1D8B134A0();
      v92 = v164;
      sub_1D8B133A0();
      (*v142)(v91, v158);
      sub_1D8B146E0();
      v93 = sub_1D8B14600();
      sub_1D88CFA20();
      v93(v192, 0);

      v94 = v174;
      if (sub_1D8B144A0())
      {
        v171 = sub_1D8B146E0();
        sub_1D8B146E0();
        v95 = v134;
        sub_1D8B14610();

        sub_1D88CEC78(v178, v94, v95, v163);
        v96 = *v165;
        v97 = v95;
        v98 = v166;
        (*v165)(v97, v166);
        sub_1D8B145E0();

        (*v139)(v164, v159);
        v171 = *v63;
        (v171)(v83, v18);
        (*v181)(v184, v182);
        v96(v94, v98);
        v170 = v96;
        v96(v178, v98);
      }

      else
      {
        (*v139)(v92, v159);
        v171 = *v63;
        (v171)(v83, v18);
        (*v181)(v184, v182);
        v99 = *v165;
        v100 = v166;
        (*v165)(v94, v166);
        v170 = v99;
        (v99)(v178, v100);
      }

      v65 = v161;
      if (v176)
      {
        sub_1D8B146E0();
        v101 = v137;
        sub_1D8B14610();

        v102 = v136;
        v103 = v166;
        (*v135)(v136, v101, v166);
        v104 = v177;
        sub_1D8B146E0();
        v105 = v163;
        sub_1D8B14610();

        v106 = MEMORY[0x1DA71D8D0](v105, v102);
        v107 = v170;
        (v170)(v105, v103);
        v107(v102, v103);
        v108 = v171;
        (v171)(v185, v18);
        v108(v175, v18);
        v5 = v140;
        (*v138)(v65, v140);
        v66 = v160;

        if (v106)
        {
          v176 = v104;
        }
      }

      else
      {
        v67 = v171;
        (v171)(v185, v18);
        v67(v175, v18);
        v5 = v140;
        (*v138)(v65, v140);
        v176 = v177;
        v66 = v160;
      }

      a1 = v141;
      v62 = (v167 + 1);
      v61 = v144;
      if (v167 + 1 == v143)
      {

        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v145 = v47;
  v185 = v49;
  v109 = v167;
  v110 = v165;
  sub_1D8B13090();
  if (v111 >= 0.0)
  {
    sub_1D8B146E0();
    sub_1D8B146E0();
    sub_1D8B14610();

    sub_1D8B14620();

    sub_1D8B146E0();
    sub_1D8B146E0();
    sub_1D8B145D0();

    sub_1D8B145E0();

    return;
  }

  v133 = v58;
  sub_1D8B146E0();
  sub_1D8B14610();

  sub_1D8B146E0();
  sub_1D8B145D0();

  sub_1D8B13410();
  (*(v177 + 16))(v110, a1, v18);
  sub_1D8B13090();
  if (v112 < 0.0)
  {
    v113 = *(v187 + 104);
    v187 += 104;
    v188 = v113;
    LODWORD(v186) = *MEMORY[0x1E6969A78];
    v114 = (v187 - 96);
    v115 = (v177 + 48);
    v116 = (v177 + 8);
    v117 = (v177 + 32);
    do
    {
      v118 = v189;
      v119 = v190;
      v188(v189, v186, v190);
      sub_1D8B133F0();
      (*v114)(v118, v119);
      if ((*v115)(v109, 1, v18) == 1)
      {
        goto LABEL_35;
      }

      (*v116)(v110, v18);
      (*v117)(v110, v109, v18);
      sub_1D8B13090();
    }

    while (v120 < 0.0);
  }

  v121 = v157;
  sub_1D8B134A0();
  v122 = v146;
  sub_1D8B133A0();
  (*(v170 + 1))(v121, v158);
  sub_1D8B146E0();
  v123 = sub_1D8B14600();
  v124 = v185;
  sub_1D88CFA20();
  v123(v192, 0);

  v125 = v145;
  v126 = v110;
  if (sub_1D8B144A0())
  {
    sub_1D8B146E0();
    sub_1D8B146E0();
    v127 = v134;
    sub_1D8B14610();

    sub_1D88CEC78(v124, v125, v127, v163);
    v128 = *(v168 + 8);
    v129 = v127;
    v130 = v166;
    v128(v129, v166);
    sub_1D8B145E0();

    (*(v171 + 8))(v122, v159);
    (*(v177 + 8))(v126, v18);
    (*(v169 + 8))(v191, v182);
    v128(v145, v130);
    v128(v124, v130);
  }

  else
  {
    (*(v171 + 8))(v122, v159);
    (*(v177 + 8))(v110, v18);
    (*(v169 + 8))(v191, v182);
    v131 = *(v168 + 8);
    v132 = v166;
    v131(v125, v166);
    v131(v124, v132);
  }
}

uint64_t sub_1D88D5BF0(uint64_t a1)
{
  v64 = a1;
  v2 = sub_1D8B134B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641E8, &unk_1D8B23B08);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = sub_1D8B144E0();
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00, &qword_1D8B2F6F0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v61 = &v53 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v53 - v28;
  result = sub_1D8B146C0();
  if ((result & 1) == 0)
  {
    return result;
  }

  v54 = v5;
  sub_1D8B14610();
  v31 = sub_1D8B144A0();
  v59 = v1;
  if ((v31 & 1) == 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v31);
  *(&v53 - 2) = v16;
  sub_1D87EDFE0(sub_1D88D6B8C, v64, v10);
  v32 = type metadata accessor for TimeZonedTime(0);
  if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
  {
    sub_1D87A14E4(v10, &qword_1ECA641E8, &unk_1D8B23B08);
LABEL_5:
    v33 = 1;
    goto LABEL_7;
  }

  (*(v3 + 16))(v29, &v10[*(v32 + 24)], v2);
  sub_1D88D65E4(v10, type metadata accessor for TimeZonedTime);
  v33 = 0;
LABEL_7:
  v57 = *(v3 + 56);
  v58 = v3 + 56;
  v57(v29, v33, 1, v2);
  v34 = v65;
  v35 = *(v66 + 1);
  v66 += 8;
  v53 = v35;
  v35(v16, v65);
  sub_1D87A0E38(v29, v27, &qword_1ECA64B00, &qword_1D8B2F6F0);
  v55 = v3;
  v56 = *(v3 + 48);
  v36 = v56(v27, 1, v2);
  sub_1D87A14E4(v27, &qword_1ECA64B00, &qword_1D8B2F6F0);
  if (v36 == 1)
  {
    v37 = v62;
    sub_1D8B145D0();
    v38 = sub_1D8B144A0();
    if (v38)
    {
      MEMORY[0x1EEE9AC00](v38);
      *(&v53 - 2) = v37;
      v39 = v60;
      sub_1D87EDFE0(sub_1D88D657C, v64, v60);
      sub_1D87A14E4(v29, &qword_1ECA64B00, &qword_1D8B2F6F0);
      v40 = type metadata accessor for TimeZonedTime(0);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) != 1)
      {
        v46 = v39 + *(v40 + 24);
        v45 = v61;
        (*(v55 + 16))(v61, v46, v2);
        sub_1D88D65E4(v39, type metadata accessor for TimeZonedTime);
        v44 = 0;
        goto LABEL_14;
      }

      v41 = &qword_1ECA641E8;
      v42 = &unk_1D8B23B08;
      v43 = v39;
    }

    else
    {
      v41 = &qword_1ECA64B00;
      v42 = &qword_1D8B2F6F0;
      v43 = v29;
    }

    sub_1D87A14E4(v43, v41, v42);
    v44 = 1;
    v45 = v61;
LABEL_14:
    v57(v45, v44, 1, v2);
    v53(v37, v34);
    sub_1D88D650C(v45, v29);
  }

  sub_1D87A0E38(v29, v22, &qword_1ECA64B00, &qword_1D8B2F6F0);
  if (v56(v22, 1, v2) == 1)
  {
    sub_1D87A14E4(v29, &qword_1ECA64B00, &qword_1D8B2F6F0);
  }

  else
  {
    v47 = v54;
    v48 = v55;
    (*(v55 + 32))(v54, v22, v2);
    v65 = *(v48 + 16);
    v49 = v63;
    v65(v63, v47, v2);
    v66 = v29;
    v50 = v57;
    v57(v49, 0, 1, v2);
    v51 = sub_1D8B14600();
    sub_1D8B144D0();
    v51(v67, 0);
    v65(v49, v47, v2);
    v50(v49, 0, 1, v2);
    v52 = sub_1D8B145C0();
    sub_1D8B144D0();
    v52(v67, 0);
    v22 = v66;
    (*(v48 + 8))(v47, v2);
  }

  return sub_1D87A14E4(v22, &qword_1ECA64B00, &qword_1D8B2F6F0);
}

void sub_1D88D63AC(char *a1@<X1>, char **a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69E0208], v4);
  v8 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v7, a1, 1);

  v10[2] = a1;
  v9 = sub_1D8820C18(sub_1D88D6724, v10, v8);

  *a2 = v9;
}

uint64_t sub_1D88D650C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B00, &qword_1D8B2F6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TimeZonedTime(uint64_t a1)
{
  result = qword_1ECA64B18;
  if (!qword_1ECA64B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88D65E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D88D6644(uint64_t *a1)
{
  v2 = *a1;
  if (v2 != sub_1D8B14450())
  {
    return 0;
  }

  v3 = a1[1];
  return v3 == sub_1D8B144B0();
}

unint64_t sub_1D88D66BC()
{
  result = qword_1ECA64B10;
  if (!qword_1ECA64B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA64B10);
  }

  return result;
}

void sub_1D88D6724(uint64_t a1)
{
  v1 = sub_1D8B151F0();
  sub_1D8B16250();
}

uint64_t sub_1D88D679C(uint64_t a1)
{
  result = sub_1D8B134B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D88D6860()
{
  result = qword_1ECA64B40;
  if (!qword_1ECA64B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B40);
  }

  return result;
}

uint64_t sub_1D88D68B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZonedTime(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D88D6918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D88D6974()
{
  result = qword_1ECA64B60;
  if (!qword_1ECA64B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B60);
  }

  return result;
}

unint64_t sub_1D88D69CC()
{
  result = qword_1ECA64B68;
  if (!qword_1ECA64B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B68);
  }

  return result;
}

unint64_t sub_1D88D6A24()
{
  result = qword_1ECA64B70;
  if (!qword_1ECA64B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B70);
  }

  return result;
}

uint64_t sub_1D88D6A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL GroundingResult<>.isEligibleForEventClassification.getter(uint64_t a1)
{
  v1 = sub_1D8A05CB0();
  v2 = sub_1D88E0474(&unk_1F54267C8, v1);

  return (v2 & 1) == 0;
}

void sub_1D88D6BF0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v4 = sub_1D8B131D0();
  v77 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v74 = &v66 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v66 - v22;
  v23 = sub_1D8B14780();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v72 = sub_1D8B14780();
    v78 = v27;
  }

  else
  {
    v72 = 0;
    v78 = 0;
  }

  sub_1D8B146F0();
  v28 = v79;
  sub_1D8B12FD0();

  sub_1D8B146E0();
  v29 = sub_1D88DFD10(v14, v11, a1);
  v30 = v80;
  if (v2)
  {
    sub_1D87A14E4(v28, &qword_1ECA630C0, &qword_1D8B24530);
  }

  else
  {
    v70 = 0;
    v69 = v29;

    v71 = v21;
    v32 = v76;
    v31 = v77;
    v33 = v14;
    v34 = v11;
    v35 = *(v77 + 32);
    v35(v76, v33, v4);
    v35(v30, v34, v4);
    v36 = sub_1D8B14750();
    v67 = v37;
    v68 = v36;
    v38 = v30;
    v39 = *(v31 + 16);
    v40 = v74;
    v39(v74, v32, v4);
    v41 = v73;
    v39(v73, v38, v4);
    v42 = sub_1D8B14710();
    v44 = v43;
    sub_1D87A0E38(v28, v71, &qword_1ECA630C0, &qword_1D8B24530);
    v45 = v75;
    v46 = v67;
    *v75 = v68;
    v45[1] = v46;
    v47 = v40;
    v48 = type metadata accessor for EventLookupItem(0);
    v39(v45 + v48[5], v47, v4);
    v39(v45 + v48[6], v41, v4);
    *(v45 + v48[7]) = v69 & 1;
    v49 = (v45 + v48[8]);
    v50 = v78;
    *v49 = v72;
    v49[1] = v50;
    if (sub_1D8B15A70() < 241)
    {
      v60 = v47;
      v61 = *(v77 + 8);
      v61(v41, v4);
      v61(v60, v4);
      v61(v80, v4);
      v61(v76, v4);
      sub_1D87A14E4(v79, &qword_1ECA630C0, &qword_1D8B24530);
      v62 = (v45 + v48[9]);
      *v62 = v42;
      v62[1] = v44;
      v55 = v71;
    }

    else
    {
      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      v51 = sub_1D8B151E0();
      __swift_project_value_buffer(v51, qword_1EE0E4398);

      v52 = sub_1D8B151C0();
      v53 = sub_1D8B16230();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v71;
      v56 = v76;
      if (v54)
      {
        v57 = swift_slowAlloc();
        *v57 = 134217984;
        v58 = sub_1D8B15A70();

        *(v57 + 4) = v58;

        _os_log_impl(&dword_1D8783000, v52, v53, "Notes field left blank due to length %ld", v57, 0xCu);
        v59 = v57;
        v41 = v73;
        MEMORY[0x1DA721330](v59, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v63 = v80;
      v64 = *(v77 + 8);
      v64(v41, v4);
      v64(v74, v4);
      v64(v63, v4);
      v64(v56, v4);
      sub_1D87A14E4(v79, &qword_1ECA630C0, &qword_1D8B24530);
      v45 = v75;
      v65 = (v75 + v48[9]);
      *v65 = 0;
      v65[1] = 0;
    }

    sub_1D88E057C(v55, v45 + v48[10]);
    *(v45 + v48[11]) = 0;
  }
}

id sub_1D88D7238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BA0, &qword_1D8B26808);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D8B20D10;
  v1 = *MEMORY[0x1E6977730];
  v2 = *MEMORY[0x1E6977738];
  *(v0 + 32) = *MEMORY[0x1E6977730];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6977740];
  v4 = *MEMORY[0x1E6977748];
  *(v0 + 48) = *MEMORY[0x1E6977740];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6977758];
  v6 = *MEMORY[0x1E6977768];
  *(v0 + 64) = *MEMORY[0x1E6977758];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69777A8];
  v8 = *MEMORY[0x1E69777B0];
  *(v0 + 80) = *MEMORY[0x1E69777A8];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E69777D0];
  v34 = *MEMORY[0x1E6977808];
  v10 = *MEMORY[0x1E6977808];
  *(v0 + 96) = *MEMORY[0x1E69777D0];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E6977820];
  v36 = *MEMORY[0x1E6977848];
  v12 = *MEMORY[0x1E6977848];
  *(v0 + 112) = *MEMORY[0x1E6977820];
  *(v0 + 120) = v12;
  v13 = *MEMORY[0x1E6977860];
  v35 = *MEMORY[0x1E6977868];
  v14 = *MEMORY[0x1E6977868];
  *(v0 + 128) = *MEMORY[0x1E6977860];
  *(v0 + 136) = v14;
  v33 = *MEMORY[0x1E6977890];
  v38 = *MEMORY[0x1E69778A0];
  v15 = *MEMORY[0x1E69778A0];
  *(v0 + 144) = *MEMORY[0x1E6977890];
  *(v0 + 152) = v15;
  v37 = *MEMORY[0x1E69778C0];
  *(v0 + 160) = *MEMORY[0x1E69778C0];
  qword_1ECAA3670 = v0;
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v34;
  v26 = v11;
  v27 = v36;
  v28 = v13;
  v29 = v35;
  v30 = v33;
  v31 = v38;

  return v37;
}

uint64_t sub_1D88D7420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C18, &qword_1D8B26948);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1540();
  sub_1D8B16DD0();
  v14 = 0;
  sub_1D8B16A90();
  if (!v5)
  {
    v13 = 1;
    sub_1D8B16A90();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D88D75B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BE0, &qword_1D8B26930);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1498();
  sub_1D8B16DD0();
  v12 = 0;
  sub_1D8B16A90();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BF0, &qword_1D8B26938);
    sub_1D88E1594(&qword_1ECA64BF8, sub_1D88E14EC, MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
    type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo(0);
    v10[14] = 2;
    sub_1D8B13240();
    sub_1D88E1660(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D8B16AE0();
    v10[13] = 3;
    sub_1D8B16AD0();
    v10[12] = 4;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D88D784C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1D8B13240();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C20, &qword_1D8B26950);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = v16 - v6;
  v8 = type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1498();
  v20 = v7;
  v11 = v22;
  sub_1D8B16DB0();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v5;
    v12 = v19;
    v28 = 0;
    *v10 = sub_1D8B169C0();
    v10[1] = v13;
    v16[2] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BF0, &qword_1D8B26938);
    v27 = 1;
    sub_1D88E1594(&qword_1ECA64C28, sub_1D88E160C, MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    v10[2] = v23;
    v26 = 2;
    sub_1D88E1660(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v14 = v22;
    v16[1] = 0;
    sub_1D8B16A10();
    (*(v18 + 32))(v10 + v8[6], v14, v3);
    v25 = 3;
    *(v10 + v8[7]) = sub_1D8B16A00();
    v24 = 4;
    v15 = sub_1D8B169D0();
    (*(v12 + 8))(v20, v21);
    *(v10 + v8[8]) = v15 & 1;
    sub_1D88E1274(v10, v17, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D88E11AC(v10, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
  }
}

uint64_t sub_1D88D7D18()
{
  if (*v0)
  {
    return 0x697263736E617274;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1D88D7D5C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D8B43EE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D8B16BA0();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D88D7E4C(uint64_t a1)
{
  v2 = sub_1D88E1540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88D7E88(uint64_t a1)
{
  v2 = sub_1D88E1540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88D7EC4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D88E074C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_1D88D7F14()
{
  v1 = 0x6E6F73616572;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1D88D7FBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D88E0930(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D88D7FE4(uint64_t a1)
{
  v2 = sub_1D88E1498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88D8020(uint64_t a1)
{
  v2 = sub_1D88E1498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88D808C()
{
  if (qword_1EE0E6008 != -1)
  {
    result = swift_once();
  }

  if ((byte_1EE0ED6C0 & 1) == 0)
  {
    result = sub_1D89A274C();
  }

  byte_1EE0ED6F8 = 1;
  return result;
}

void sub_1D88D80EC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v171 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v165 - v11;
  v178 = type metadata accessor for AFMResult(0);
  v13 = MEMORY[0x1EEE9AC00](v178);
  v169 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v177 = &v165 - v15;
  v179 = type metadata accessor for MetaDetectionResult(0);
  v16 = *(v179 - 8);
  v17 = MEMORY[0x1EEE9AC00](v179);
  v168 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v182 = &v165 - v19;
  v173 = type metadata accessor for CVTrackSnapshot(0);
  v188 = *(v173 - 8);
  v20 = MEMORY[0x1EEE9AC00](v173);
  v170 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v165 - v22;
  v24 = sub_1D8B14060();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a2 + 32);
  v29 = *(a2 + 40);
  v180 = a1;
  v181 = v29;
  v167 = a3;
  if ((sub_1D88D9DB8(a1, v29, a3) & 1) == 0)
  {
    *a4 = xmmword_1D8B26630;
    *(a4 + 16) = 2;
    return;
  }

  v166 = a4;
  if (qword_1EE0E6008 != -1)
  {
LABEL_167:
    swift_once();
  }

  LODWORD(v30) = byte_1EE0ED6C0;
  v31 = v182;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v172 = qword_1EE0E54C8;
  if ((sub_1D8B0ABB8() & 1) == 0 && (sub_1D8B0AAA4() & 1) == 0)
  {
    if (qword_1EE0E9958 != -1)
    {
      swift_once();
    }

    *&v189 = qword_1EE0E9960;
    WORD4(v189) = word_1EE0E9968;
    BYTE10(v189) = byte_1EE0E996A;
    LOBYTE(v193) = v30;
    (*(v25 + 104))(v27, *MEMORY[0x1E69A12A0], v24);

    v32 = GreymatterAvailability.isAvailable(_:languageOption:)(&v193, v27);
    (*(v25 + 8))(v27, v24);

    if ((v32 & 1) == 0)
    {
      if (qword_1EE0E4390 != -1)
      {
LABEL_169:
        swift_once();
      }

      v98 = sub_1D8B151E0();
      __swift_project_value_buffer(v98, qword_1EE0E4398);
      v99 = sub_1D8B151C0();
      v100 = sub_1D8B161F0();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v189 = v102;
        *v101 = 136315138;
        if (v30)
        {
          v103 = 0xD00000000000003FLL;
        }

        else
        {
          v103 = 0xD00000000000001FLL;
        }

        if (v30)
        {
          v104 = "textComposition.OpenEndedSchema";
        }

        else
        {
          v104 = "";
        }

        v105 = sub_1D89AC714(v103, v104 | 0x8000000000000000, &v189);

        *(v101 + 4) = v105;
        _os_log_impl(&dword_1D8783000, v99, v100, "GMS reported that use case identifier '%s' is not available for event classification.", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x1DA721330](v102, -1, -1);
        MEMORY[0x1DA721330](v101, -1, -1);
      }

      v95 = v166;
      *v166 = 0xD000000000000013;
      v95[1] = 0x80000001D8B43D40;
      v96 = 1;
      goto LABEL_59;
    }
  }

  v187 = sub_1D891A6E8();
  v30 = v179;
  v186 = *(v187 + 16);
  if (!v186)
  {
    goto LABEL_56;
  }

  v183 = *(v173 + 20);
  v165 = (*(v188 + 80) + 32) & ~*(v188 + 80);
  v185 = v187 + v165;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v25 = 0;
  v27 = v16 + 7;
  v24 = 1;
  v176 = v16 + 7;
  while (1)
  {
    if (v25 >= *(v187 + 16))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v33 = *(v188 + 72);
    sub_1D88E1274(v185 + v33 * v25, v23, type metadata accessor for CVTrackSnapshot);
    v34 = sub_1D8B16910();
    v35 = sub_1D881F7DC();
    if (v36)
    {
      goto LABEL_159;
    }

    v16 = v34 + 8;
    *(v34 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
    *(v34[6] + v35) = 1;
    *(v34[7] + 8 * v35) = 0x3FE999999999999ALL;
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_160;
    }

    v34[2] = v39;
    v40 = sub_1D881F7DC();
    if (v41)
    {
      goto LABEL_161;
    }

    *(v16 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    *(v34[6] + v40) = 12;
    *(v34[7] + 8 * v40) = 0x3FE0000000000000;
    v42 = v34[2];
    v38 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v38)
    {
      goto LABEL_162;
    }

    v34[2] = v43;
    v44 = sub_1D881F7DC();
    if (v45)
    {
      goto LABEL_163;
    }

    *(v16 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    *(v34[6] + v44) = 13;
    *(v34[7] + 8 * v44) = 0x3FE0000000000000;
    v46 = v34[2];
    v38 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v38)
    {
      goto LABEL_164;
    }

    v34[2] = v47;
    v48 = sub_1D881F7DC();
    if (v49)
    {
      goto LABEL_165;
    }

    *(v16 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    *(v34[6] + v48) = 5;
    *(v34[7] + 8 * v48) = 0x4020000000000000;
    v50 = v34[2];
    v38 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v38)
    {
      goto LABEL_166;
    }

    v34[2] = v51;
    v52 = 1.0;
    if (v51)
    {
      v53 = sub_1D881F7DC();
      if (v54)
      {
        v52 = *(v34[7] + 8 * v53);
      }
    }

    ++v25;

    switch(*&v23[v183] >> 60)
    {
      case 1:
        v69 = type metadata accessor for GroundedParseDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v69;
        *&v191 = sub_1D88E1660(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_38;
      case 2:
        v56 = swift_projectBox();
        *(&v190 + 1) = v30;
        *&v191 = sub_1D88E1660(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for MetaDetectionResult;
        goto LABEL_38;
      case 3:
      case 8:
        v55 = type metadata accessor for ObjectDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v55;
        *&v191 = sub_1D88E1660(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_38;
      case 4:
        v70 = type metadata accessor for ParseDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v70;
        *&v191 = sub_1D88E1660(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for ParseDetectorResult;
        goto LABEL_38;
      case 5:
        v71 = type metadata accessor for TextDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v71;
        *&v191 = sub_1D88E1660(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for TextDetectorResult;
        goto LABEL_38;
      case 6:
      case 7:
        v59 = type metadata accessor for StreamingBarcodeDetectorResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v59;
        *&v191 = sub_1D88E1660(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_38;
      case 9:
      case 0xALL:
        v60 = swift_projectBox();
        v61 = v177;
        sub_1D88E1274(v60, v177, type metadata accessor for AFMResult);
        *(&v190 + 1) = v178;
        *&v191 = sub_1D88E1660(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
        v62 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v63 = v61;
        v31 = v182;
        sub_1D88E120C(v63, v62, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v64 = type metadata accessor for SyntheticDetectionResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v64;
        *&v191 = sub_1D88E1660(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_38;
      case 0xCLL:
        v65 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v65;
        *&v191 = sub_1D88E1660(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_38;
      case 0xDLL:
        v72 = type metadata accessor for GroundedParseClassificationsResult(0);
        v56 = swift_projectBox();
        *(&v190 + 1) = v72;
        *&v191 = sub_1D88E1660(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v58 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_38:
        sub_1D88E1274(v56, boxed_opaque_existential_1, v58);
        break;
      default:
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
        v67 = swift_projectBox();
        *(&v190 + 1) = v66;
        *&v191 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
        v68 = __swift_allocate_boxed_opaque_existential_1(&v189);
        v27 = v176;
        v24 = 1;
        sub_1D87A0E38(v67, v68, &qword_1ECA67750, &unk_1D8B1E0C0);
        break;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v74 = swift_dynamicCast();
    v16 = *v27;
    if ((v74 & 1) == 0)
    {
      (v16)(v12, 1, 1, v30);
      sub_1D87A14E4(v12, &qword_1ECA64BB8, &qword_1D8B26820);
      goto LABEL_13;
    }

    (v16)(v12, 0, 1, v30);
    sub_1D88E120C(v12, v31, type metadata accessor for MetaDetectionResult);
    if (*v31 != 5 || (v181 & 1) != 0 && *&v31[v30[8]] != v28 || (v174 = v16, v175 = v73, v16 = v30[9], *(v16 + v31) == 2) && v28 - *&v31[v30[8]] > v52 || (CVBundle.latestEstimate.getter(&v197), v196 = v197, CVDetection.detection.getter(&v193), v76 = v194, v75 = v195, __swift_project_boxed_opaque_existential_1(&v193, v194), v77 = *(v75 + 64), v78 = v76, v27 = v176, v79 = v75, v30 = v179, v77(&v189, v78, v79), __swift_destroy_boxed_opaque_existential_1(&v193), Corners.bounds.getter(), v81 = v80, v83 = v82, v85 = v84, v87 = v86, v31 = v182, , v204.origin.x = 0.0, v204.origin.y = 0.0, v204.size.width = 1.0, v204.size.height = 1.0, v198.origin.x = v81, v198.origin.y = v83, v198.size.width = v85, v198.size.height = v87, v199 = CGRectIntersection(v198, v204), x = v199.origin.x, y = v199.origin.y, width = v199.size.width, height = v199.size.height, v92 = &v31[v30[5]], *&v199.origin.y = v92[1], v189 = *v92, v190 = *&v199.origin.y, *&v199.origin.y = v92[3], v191 = v92[2], v192 = *&v199.origin.y, Corners.bounds.getter(), v205.origin.x = x, v205.origin.y = y, v205.size.width = width, v205.size.height = height, v201 = CGRectIntersection(v200, v205), width * height * 0.9 > v201.size.width * v201.size.height))
    {
      sub_1D88E11AC(v31, type metadata accessor for MetaDetectionResult);
      goto LABEL_13;
    }

    v93 = *(v16 + v31);
    if (v93 != 3)
    {
      break;
    }

    if (sub_1D8B0AAA4())
    {
      *&v189 = 0;
      *(&v189 + 1) = 0xE000000000000000;
      sub_1D8B16720();

      *&v189 = 0xD00000000000002FLL;
      *(&v189 + 1) = 0x80000001D8B43DD0;
      v161 = &v31[v30[10]];
      v162 = v161[1];
      if (!v162)
      {
        goto LABEL_173;
      }

LABEL_171:
      v163 = *v161;
      v164 = v162;
LABEL_174:

      MEMORY[0x1DA71EFA0](v163, v164);

      sub_1D8B168C0();
      __break(1u);
      return;
    }

    sub_1D88E11AC(v31, type metadata accessor for MetaDetectionResult);
    if (v181)
    {
      goto LABEL_52;
    }

LABEL_13:
    sub_1D88E11AC(v23, type metadata accessor for CVTrackSnapshot);
    if (v186 == v25)
    {
      goto LABEL_56;
    }
  }

  sub_1D88E11AC(v31, type metadata accessor for MetaDetectionResult);
  if (v93 != 2)
  {
    goto LABEL_13;
  }

LABEL_52:

  sub_1D88E11AC(v23, type metadata accessor for CVTrackSnapshot);
  v94 = CVBundle.textDetectorResults.getter()[2];

  if (!v94)
  {
    v97 = xmmword_1D8B26630;
    goto LABEL_58;
  }

  if (v167)
  {
LABEL_54:
    v95 = v166;
    *v166 = 0;
    v95[1] = 0;
    v96 = -1;
    goto LABEL_59;
  }

  v188 = sub_1D891A6E8();
  v106 = v171;
  v107 = v168;
  v108 = v170;
  v187 = *(v188 + 16);
  if (v187)
  {
    v109 = 0;
    v110 = v188 + v165;
    v186 = *(v173 + 20);
    do
    {
      if (v109 >= *(v188 + 16))
      {
        __break(1u);
        goto LABEL_169;
      }

      sub_1D88E1274(v110, v108, type metadata accessor for CVTrackSnapshot);
      ++v109;
      switch(*(v108 + v186) >> 60)
      {
        case 1:
          v124 = type metadata accessor for GroundedParseDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v124;
          *&v191 = sub_1D88E1660(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_88;
        case 2:
          v112 = swift_projectBox();
          *(&v190 + 1) = v30;
          *&v191 = sub_1D88E1660(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for MetaDetectionResult;
          goto LABEL_88;
        case 3:
        case 8:
          v111 = type metadata accessor for ObjectDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v111;
          *&v191 = sub_1D88E1660(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_88;
        case 4:
          v125 = type metadata accessor for ParseDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v125;
          *&v191 = sub_1D88E1660(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for ParseDetectorResult;
          goto LABEL_88;
        case 5:
          v126 = type metadata accessor for TextDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v126;
          *&v191 = sub_1D88E1660(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for TextDetectorResult;
          goto LABEL_88;
        case 6:
        case 7:
          v115 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v115;
          *&v191 = sub_1D88E1660(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_88;
        case 9:
        case 0xALL:
          v116 = swift_projectBox();
          v117 = v169;
          sub_1D88E1274(v116, v169, type metadata accessor for AFMResult);
          *(&v190 + 1) = v178;
          *&v191 = sub_1D88E1660(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v118 = __swift_allocate_boxed_opaque_existential_1(&v189);
          sub_1D88E120C(v117, v118, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          v119 = type metadata accessor for SyntheticDetectionResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v119;
          *&v191 = sub_1D88E1660(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_88;
        case 0xCLL:
          v120 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v120;
          *&v191 = sub_1D88E1660(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_88;
        case 0xDLL:
          v127 = type metadata accessor for GroundedParseClassificationsResult(0);
          v112 = swift_projectBox();
          *(&v190 + 1) = v127;
          *&v191 = sub_1D88E1660(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          v113 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v114 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_88:
          sub_1D88E1274(v112, v113, v114);
          break;
        default:
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v122 = swift_projectBox();
          *(&v190 + 1) = v121;
          *&v191 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v123 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v107 = v168;
          sub_1D87A0E38(v122, v123, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      if (swift_dynamicCast())
      {
        v174(v106, 0, 1, v30);
        sub_1D88E120C(v106, v107, type metadata accessor for MetaDetectionResult);
        if (*v107 == 9 && ((v181 & 1) == 0 || *&v107[v30[8]] == v28))
        {
          v128 = v30[9];
          if (v107[v128] == 2 && v28 - *&v107[v30[8]] > 0.0001)
          {
            goto LABEL_148;
          }

          CVBundle.latestEstimate.getter(&v197);
          v196 = v197;
          CVDetection.detection.getter(&v193);
          v130 = v194;
          v129 = v195;
          __swift_project_boxed_opaque_existential_1(&v193, v194);
          v131 = *(v129 + 64);
          v132 = v129;
          v30 = v179;
          v131(&v189, v130, v132);
          __swift_destroy_boxed_opaque_existential_1(&v193);

          v134 = *(&v189 + 1);
          v133 = *&v189;
          if (*&v190 >= *&v189)
          {
            v135 = *&v189;
          }

          else
          {
            v135 = *&v190;
          }

          if (*&v191 < v135)
          {
            v135 = *&v191;
          }

          if (*&v192 < v135)
          {
            v135 = *&v192;
          }

          if (*(&v190 + 1) >= *(&v189 + 1))
          {
            v136 = *(&v189 + 1);
          }

          else
          {
            v136 = *(&v190 + 1);
          }

          if (*(&v191 + 1) < v136)
          {
            v136 = *(&v191 + 1);
          }

          if (*(&v192 + 1) < v136)
          {
            v136 = *(&v192 + 1);
          }

          if (*&v189 <= *&v190)
          {
            v133 = *&v190;
          }

          if (v133 <= *&v191)
          {
            v133 = *&v191;
          }

          if (v133 <= *&v192)
          {
            v133 = *&v192;
          }

          if (*(&v189 + 1) <= *(&v190 + 1))
          {
            v134 = *(&v190 + 1);
          }

          if (v134 <= *(&v191 + 1))
          {
            v134 = *(&v191 + 1);
          }

          if (v134 <= *(&v192 + 1))
          {
            v134 = *(&v192 + 1);
          }

          v137 = v133 - v135;
          v138 = v134 - v136;
          v206.origin.x = 0.0;
          v206.origin.y = 0.0;
          v206.size.width = 1.0;
          v206.size.height = 1.0;
          v202 = CGRectIntersection(*&v135, v206);
          v139 = v202.origin.x;
          v140 = v202.origin.y;
          v141 = v202.size.width;
          v142 = v202.size.height;
          v143 = &v107[v30[5]];
          v144 = *v143;
          v145 = v143[1];
          v146 = v143[2];
          v147 = v143[3];
          v148 = v143[4];
          v149 = v143[5];
          v150 = v143[6];
          v151 = v143[7];
          if (v146 >= *v143)
          {
            v152 = *v143;
          }

          else
          {
            v152 = v143[2];
          }

          if (v148 < v152)
          {
            v152 = v143[4];
          }

          if (v150 < v152)
          {
            v152 = v143[6];
          }

          if (v147 >= v145)
          {
            v153 = v143[1];
          }

          else
          {
            v153 = v143[3];
          }

          if (v149 < v153)
          {
            v153 = v143[5];
          }

          if (v151 < v153)
          {
            v153 = v143[7];
          }

          if (v144 <= v146)
          {
            v144 = v143[2];
          }

          if (v144 <= v148)
          {
            v144 = v143[4];
          }

          if (v144 <= v150)
          {
            v144 = v143[6];
          }

          if (v145 <= v147)
          {
            v145 = v143[3];
          }

          if (v145 <= v149)
          {
            v145 = v143[5];
          }

          if (v145 <= v151)
          {
            v145 = v143[7];
          }

          v154 = v144 - v152;
          v155 = v145 - v153;
          v156 = v141;
          v157 = v142;
          v203 = CGRectIntersection(*&v152, *&v139);
          if (v141 * v142 * 0.9 > v203.size.width * v203.size.height)
          {
LABEL_148:
            sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
            v106 = v171;
            v108 = v170;
          }

          else
          {
            v158 = v107[v128];
            if (v158 == 3)
            {
              v159 = sub_1D8B0AAA4();
              v106 = v171;
              v108 = v170;
              if (v159)
              {
                *&v189 = 0;
                *(&v189 + 1) = 0xE000000000000000;
                sub_1D8B16720();

                *&v189 = 0xD00000000000003ALL;
                *(&v189 + 1) = 0x80000001D8B43D60;
                v161 = &v107[v30[10]];
                v162 = v161[1];
                if (v162)
                {
                  goto LABEL_171;
                }

LABEL_173:
                v163 = 0x6F73616572206F6ELL;
                v164 = 0xEF6E65766967206ELL;
                goto LABEL_174;
              }

              sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
              if (v181)
              {
                goto LABEL_155;
              }
            }

            else
            {
              sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
              v106 = v171;
              v108 = v170;
              if (v158 == 2)
              {
LABEL_155:

                sub_1D88E11AC(v108, type metadata accessor for CVTrackSnapshot);
                v160 = *(sub_1D891A92C() + 2);

                if (v160)
                {
                  goto LABEL_54;
                }

                goto LABEL_57;
              }
            }
          }
        }

        else
        {
          sub_1D88E11AC(v107, type metadata accessor for MetaDetectionResult);
        }
      }

      else
      {
        v174(v106, 1, 1, v30);
        sub_1D87A14E4(v106, &qword_1ECA64BB8, &qword_1D8B26820);
      }

      sub_1D88E11AC(v108, type metadata accessor for CVTrackSnapshot);
      v110 += v33;
    }

    while (v187 != v109);
  }

LABEL_56:

LABEL_57:
  v97 = xmmword_1D8B26640;
LABEL_58:
  v95 = v166;
  *v166 = v97;
  v96 = 2;
LABEL_59:
  *(v95 + 16) = v96;
}

uint64_t sub_1D88D9DB8(uint64_t a1, int a2, int a3)
{
  v45 = a3;
  v43 = a2;
  v4 = type metadata accessor for SyntheticDetectionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D8B13AD0();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42[-v15];
  v17 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D88E1274(a1, v19, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1D8B13240();
    (*(*(v20 - 8) + 8))(v19, v20);
    return 0;
  }

  sub_1D88E11AC(v19, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v48);
  v22 = v48 >> 60;
  if ((v48 >> 60) > 3)
  {
    if (v22 == 4)
    {
      v36 = swift_projectBox();
      sub_1D88E1274(v36, v13, type metadata accessor for ParseDetectorResult);
      v37 = *&v13[*(v11 + 28)];
      sub_1D8B139D0();
      LOBYTE(v37) = sub_1D8846CD0(v10, v37);
      (*(v44 + 8))(v10, v8);
      sub_1D88E11AC(v13, type metadata accessor for ParseDetectorResult);

      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (v22 != 11)
    {
      goto LABEL_30;
    }

    v28 = swift_projectBox();
    v29 = v46;
    sub_1D88E1274(v28, v46, type metadata accessor for SyntheticDetectionResult);
    if (v29[*(v4 + 24)])
    {
      v30 = sub_1D8B16BA0();

      if (v30 & 1) != 0 && (v43)
      {
LABEL_20:
        v31 = sub_1D891AC38();
        sub_1D88E11AC(v29, type metadata accessor for SyntheticDetectionResult);
        v32 = *(v31 + 16);

        if (!v32)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else
    {

      if (v43)
      {
        goto LABEL_20;
      }
    }

    sub_1D88E11AC(v29, type metadata accessor for SyntheticDetectionResult);
    goto LABEL_30;
  }

  if (v22)
  {
    if (v22 == 3)
    {
      v23 = swift_projectBox();
      v24 = v47;
      sub_1D88E1274(v23, v47, type metadata accessor for ObjectDetectorResult);
      v25 = &v24[*(v6 + 28)];
      v26 = *v25;
      v27 = v25[1];
      if (*v25 == 1852270963 && v27 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0 || v26 == 0x746E656D75636F64 && v27 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0 || v26 == 0x656C74746F62 && v27 == 0xE600000000000000)
      {
        sub_1D88E11AC(v24, type metadata accessor for ObjectDetectorResult);
LABEL_33:

        goto LABEL_34;
      }

      v41 = sub_1D8B16BA0();
      sub_1D88E11AC(v24, type metadata accessor for ObjectDetectorResult);

      if (v41)
      {
        goto LABEL_34;
      }

      return 0;
    }

LABEL_30:

    return 0;
  }

  v33 = swift_projectBox();
  sub_1D87A0E38(v33, v16, &qword_1ECA67750, &unk_1D8B1E0C0);
  if ((v45 & 1) == 0)
  {
    v38 = *(CVBundle.textDetections.getter() + 2);

    if (v38)
    {
      sub_1D87A14E4(v16, &qword_1ECA67750, &unk_1D8B1E0C0);
      goto LABEL_33;
    }

    v39 = sub_1D891AC38();
    sub_1D87A14E4(v16, &qword_1ECA67750, &unk_1D8B1E0C0);
    v40 = *(v39 + 16);

    if (v40)
    {
      goto LABEL_34;
    }

    return 0;
  }

  v34 = sub_1D8A05CB0();
  v35 = sub_1D88E0474(&unk_1F5426A70, v34);

  sub_1D87A14E4(v16, &qword_1ECA67750, &unk_1D8B1E0C0);

  if (v35)
  {
    return 0;
  }

LABEL_34:
  if (qword_1EE0E74F8 != -1)
  {
    swift_once();
  }

  return byte_1EE0ED6F8;
}

void sub_1D88DA4C4(unsigned __int8 a1)
{
  if (*(sub_1D893EA58(&unk_1F5426A98) + 16))
  {
    sub_1D881F7DC();
    if (v2)
    {

      return;
    }
  }

  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 - 6 >= 2)
      {
LABEL_11:
        sub_1D8B168C0();
        __break(1u);
      }
    }

    else if (a1 - 9 >= 2 && a1 - 12 >= 2)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D88DA640@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v161 = a2;
  v138 = a3;
  v144 = sub_1D8B13450();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v127[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v141 = &v127[-v6];
  v162 = sub_1D8B131D0();
  v148 = *(v162 - 8);
  v7 = MEMORY[0x1EEE9AC00](v162);
  v151 = &v127[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v149 = &v127[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v160 = &v127[-v11];
  v12 = type metadata accessor for TextDetectorResult(0);
  v137 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v159 = &v127[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = sub_1D8B14510();
  v154 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v139 = &v127[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BA8, &unk_1D8B26810);
  v15 = MEMORY[0x1EEE9AC00](v153);
  v145 = &v127[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v155 = &v127[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB0, &qword_1D8B315A0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v136 = &v127[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v127[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v147 = &v127[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v140 = &v127[-v26];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v127[-v28];
  MEMORY[0x1EEE9AC00](v27);
  *&v152 = &v127[-v30];
  v31 = sub_1D8B145A0();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v127[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_1D8B14530();
  v156 = *(v35 - 8);
  v157 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v158 = &v127[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CVBundle.latestEstimate.getter(&v163);
  v169 = v163;
  CVDetection.detection.getter(&v164);
  v37 = v167;
  v38 = v168;
  __swift_project_boxed_opaque_existential_1(&v164, v167);
  v39 = (*(*&v38 + 88))(v37, COERCE_DOUBLE(*&v38));
  v40 = a1;

  __swift_destroy_boxed_opaque_existential_1(&v164);
  v41 = sub_1D891A92C();
  if (!*(v41 + 2))
  {

LABEL_22:
    v67 = v161;
    *v161 = 0;
    *(v67 + 1) = 0xD000000000000018;
    *(v67 + 2) = 0x80000001D8B43C90;
    v67[24] = 0x80;
    *(v67 + 4) = v39;
    LOBYTE(v164) = 0;
    v165 = 0xD000000000000018;
    v166 = 0x80000001D8B43C90;
    LOBYTE(v167) = 0x80;
    v168 = v39;
    sub_1D88E0E0C();
    return swift_willThrowTypedImpl();
  }

  v42 = *(v41 + 4);

  if (v42 >> 60 != 9)
  {

    goto LABEL_22;
  }

  v43 = type metadata accessor for AFMResult(0);
  v44 = swift_projectBox();
  (*(v32 + 16))(v34, v44 + *(v43 + 40), v31);
  if ((*(v32 + 88))(v34, v31) != *MEMORY[0x1E69C9C00])
  {

    (*(v32 + 8))(v34, v31);
    goto LABEL_22;
  }

  (*(v32 + 96))(v34, v31);
  v46 = v156;
  v45 = v157;
  v47 = v158;
  (*(v156 + 32))(v158, v34, v157);
  if ((sub_1D8B144F0() & 1) == 0)
  {

    (*(v46 + 8))(v47, v45);
    goto LABEL_22;
  }

  v135 = v42;
  v48 = v152;
  sub_1D8B14520();
  v49 = *MEMORY[0x1E69C9BC0];
  v50 = v154;
  v51 = *(v154 + 104);
  v52 = v150;
  v133 = v154 + 104;
  v131 = v51;
  v51(v29, v49, v150);
  v53 = *(v50 + 56);
  v132 = v50 + 56;
  v130 = v53;
  v53(v29, 0, 1, v52);
  v54 = *(v153 + 48);
  v55 = v155;
  sub_1D87A0E38(v48, v155, &qword_1ECA64BB0, &qword_1D8B315A0);
  sub_1D87A0E38(v29, v55 + v54, &qword_1ECA64BB0, &qword_1D8B315A0);
  v56 = *(v50 + 48);
  v57 = v56(v55, 1, v52);
  v134 = v56;
  if (v57 == 1)
  {
    sub_1D87A14E4(v29, &qword_1ECA64BB0, &qword_1D8B315A0);
    v58 = v48;
    v59 = v155;
    sub_1D87A14E4(v58, &qword_1ECA64BB0, &qword_1D8B315A0);
    if (v56(&v59[v54], 1, v52) == 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v60 = v140;
    sub_1D87A0E38(v55, v140, &qword_1ECA64BB0, &qword_1D8B315A0);
    if (v56(v55 + v54, 1, v52) != 1)
    {
      v69 = v154;
      v70 = v55 + v54;
      v71 = v139;
      (*(v154 + 32))(v139, v70, v52);
      sub_1D88E1660(&unk_1ECA67DD0, MEMORY[0x1E69C9BC8], MEMORY[0x1E69C9BD8]);
      v128 = sub_1D8B158C0();
      v129 = v40;
      v72 = *(v69 + 8);
      v72(v71, v52);
      sub_1D87A14E4(v29, &qword_1ECA64BB0, &qword_1D8B315A0);
      sub_1D87A14E4(v152, &qword_1ECA64BB0, &qword_1D8B315A0);
      v72(v60, v52);
      sub_1D87A14E4(v155, &qword_1ECA64BB0, &qword_1D8B315A0);
      if (v128)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    sub_1D87A14E4(v29, &qword_1ECA64BB0, &qword_1D8B315A0);
    v59 = v155;
    sub_1D87A14E4(v152, &qword_1ECA64BB0, &qword_1D8B315A0);
    (*(v154 + 8))(v60, v52);
  }

  sub_1D87A14E4(v59, &qword_1ECA64BA8, &unk_1D8B26810);
LABEL_15:
  v61 = v147;
  sub_1D8B14520();
  v62 = v146;
  v131(v146, *MEMORY[0x1E69C9BB8], v52);
  v130(v62, 0, 1, v52);
  v63 = *(v153 + 48);
  v59 = v145;
  sub_1D87A0E38(v61, v145, &qword_1ECA64BB0, &qword_1D8B315A0);
  sub_1D87A0E38(v62, &v59[v63], &qword_1ECA64BB0, &qword_1D8B315A0);
  v64 = v134;
  if (v134(v59, 1, v52) == 1)
  {
    sub_1D87A14E4(v62, &qword_1ECA64BB0, &qword_1D8B315A0);
    sub_1D87A14E4(v61, &qword_1ECA64BB0, &qword_1D8B315A0);
    if (v64(&v59[v63], 1, v52) == 1)
    {
LABEL_17:
      sub_1D87A14E4(v59, &qword_1ECA64BB0, &qword_1D8B315A0);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v65 = v136;
  sub_1D87A0E38(v59, v136, &qword_1ECA64BB0, &qword_1D8B315A0);
  if (v64(&v59[v63], 1, v52) == 1)
  {
    sub_1D87A14E4(v146, &qword_1ECA64BB0, &qword_1D8B315A0);
    sub_1D87A14E4(v147, &qword_1ECA64BB0, &qword_1D8B315A0);
    (*(v154 + 8))(v65, v52);
LABEL_20:
    sub_1D87A14E4(v59, &qword_1ECA64BA8, &unk_1D8B26810);
    v66 = v158;
LABEL_21:

    (*(v156 + 8))(v66, v157);
    goto LABEL_22;
  }

  v73 = v65;
  v74 = v154;
  v75 = &v59[v63];
  v76 = v139;
  (*(v154 + 32))(v139, v75, v52);
  sub_1D88E1660(&unk_1ECA67DD0, MEMORY[0x1E69C9BC8], MEMORY[0x1E69C9BD8]);
  v77 = sub_1D8B158C0();
  v78 = *(v74 + 8);
  v78(v76, v52);
  sub_1D87A14E4(v146, &qword_1ECA64BB0, &qword_1D8B315A0);
  sub_1D87A14E4(v147, &qword_1ECA64BB0, &qword_1D8B315A0);
  v78(v73, v52);
  sub_1D87A14E4(v59, &qword_1ECA64BB0, &qword_1D8B315A0);
  v66 = v158;
  if ((v77 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_26:
  v79 = CVBundle.textDetectorResults.getter();
  v80 = v79[2];
  if (v80)
  {
    v164 = MEMORY[0x1E69E7CC0];
    sub_1D87F470C(0, v80, 0);
    v81 = v164;
    v82 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v150 = v79;
    v83 = v79 + v82;
    v155 = *(v137 + 72);
    LODWORD(v154) = *MEMORY[0x1E69E0208];
    v153 = v148 + 8;
    v152 = xmmword_1D8B1AB90;
    do
    {
      v84 = v159;
      sub_1D88E1274(v83, v159, type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
      v85 = sub_1D8B15270();
      v86 = *(v85 - 8);
      v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v88 = swift_allocObject();
      *(v88 + 16) = v152;
      (*(v86 + 104))(v88 + v87, v154, v85);
      v89 = v160;
      _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
      v90 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v88, v89, 0);

      (*v153)(v89, v162);
      sub_1D88E11AC(v84, type metadata accessor for TextDetectorResult);
      v164 = v81;
      v92 = *(v81 + 16);
      v91 = *(v81 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1D87F470C((v91 > 1), v92 + 1, 1);
        v81 = v164;
      }

      *(v81 + 16) = v92 + 1;
      *(v81 + 8 * v92 + 32) = v90;
      v83 += v155;
      --v80;
    }

    while (v80);

    v93 = *(v81 + 16);
    if (v93)
    {
      goto LABEL_32;
    }

LABEL_50:
    v95 = MEMORY[0x1E69E7CC0];
LABEL_51:

    if (qword_1EE0E54C0 != -1)
    {
      goto LABEL_69;
    }

    goto LABEL_52;
  }

  v81 = MEMORY[0x1E69E7CC0];
  v93 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v93)
  {
    goto LABEL_50;
  }

LABEL_32:
  v94 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  while (v94 < *(v81 + 16))
  {
    v96 = *(v81 + 32 + 8 * v94);
    v97 = *(v96 + 16);
    v98 = v95[2];
    v99 = v98 + v97;
    if (__OFADD__(v98, v97))
    {
      goto LABEL_65;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v99 <= v95[3] >> 1)
    {
      if (*(v96 + 16))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v98 <= v99)
      {
        v101 = v98 + v97;
      }

      else
      {
        v101 = v98;
      }

      v95 = sub_1D87C84B0(isUniquelyReferenced_nonNull_native, v101, 1, v95);
      if (*(v96 + 16))
      {
LABEL_45:
        v102 = (v95[3] >> 1) - v95[2];
        sub_1D8B15240();
        if (v102 < v97)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();

        if (v97)
        {
          v103 = v95[2];
          v104 = __OFADD__(v103, v97);
          v105 = v103 + v97;
          if (v104)
          {
            goto LABEL_68;
          }

          v95[2] = v105;
        }

        goto LABEL_34;
      }
    }

    if (v97)
    {
      goto LABEL_66;
    }

LABEL_34:
    if (v93 == ++v94)
    {
      goto LABEL_51;
    }
  }

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
  swift_once();
LABEL_52:
  v106 = qword_1EE0E54C8;
  v107 = sub_1D8B0AAA4();
  v108 = v162;
  v109 = v148;
  v110 = v149;
  if (v107)
  {
    v111 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
    swift_beginAccess();
    v112 = v106 + v111;
    v113 = v141;
    sub_1D87A0E38(v112, v141, &qword_1ECA631A8, &qword_1D8B1E6D0);
    if ((*(v109 + 48))(v113, 1, v108) != 1)
    {
      v114 = (*(v109 + 32))(v110, v113, v108);
      goto LABEL_58;
    }
  }

  else
  {
    v113 = v141;
    (*(v148 + 56))(v141, 1, 1, v162);
  }

  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  v114 = (*(v109 + 48))(v113, 1, v108);
  if (v114 != 1)
  {
    v114 = sub_1D87A14E4(v113, &qword_1ECA631A8, &qword_1D8B1E6D0);
  }

LABEL_58:
  MEMORY[0x1EEE9AC00](v114);
  *&v127[-16] = v110;
  v115 = sub_1D8820C18(sub_1D88D6724, &v127[-32], v95);

  v116 = v142;
  sub_1D8B13410();
  v117 = v151;
  sub_1D8B13380();
  v118 = (*(v143 + 8))(v116, v144);
  MEMORY[0x1EEE9AC00](v118);
  *&v127[-16] = v117;

  v119 = *(sub_1D87C66F8(sub_1D88E117C, &v127[-32], v115) + 16);

  if (v119)
  {
    v120 = *(v115 + 2);

    if (v119 == v120)
    {
      v121 = v161;
      *v161 = 0;
      *(v121 + 1) = 0xD000000000000026;
      *(v121 + 2) = 0x80000001D8B43D10;
      v121[24] = 0x80;
      *(v121 + 4) = v39;
      LOBYTE(v164) = 0;
      v165 = 0xD000000000000026;
      v166 = 0x80000001D8B43D10;
      LOBYTE(v167) = 0x80;
      v168 = v39;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();

      (*(v156 + 8))(v158, v157);
      v122 = *(v109 + 8);
      v122(v151, v108);
      return (v122)(v110, v108);
    }
  }

  else
  {
  }

  (*(v156 + 8))(v158, v157);
  type metadata accessor for BundleClassification.ClassificationType(0);
  v123 = v138;
  swift_storeEnumTagMultiPayload();
  v124 = type metadata accessor for BundleClassification(0);
  v125 = v123 + *(v124 + 20);
  *v125 = 2;
  *(v125 + 8) = 0u;
  *(v125 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v125 = 2;
  *(v125 + 8) = 0u;
  *(v125 + 24) = 0u;
  *(v123 + *(v124 + 24)) = v39;
  v126 = *(v109 + 8);
  v126(v151, v108);
  return (v126)(v149, v108);
}

BOOL sub_1D88DBBB8(uint64_t a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
  v3 = sub_1D8B15270();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8B1AB90;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x1E69E0208], v3);
  v7 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v6, a2, 1);

  v8 = v7[2];

  return v8 != 0;
}

uint64_t sub_1D88DBCE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v259 = a2;
  v241 = a3;
  v5 = type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo(0);
  MEMORY[0x1EEE9AC00](v5);
  v256 = &v240 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v251 = &v240 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for CVBundle.BundleType(0);
  v9 = MEMORY[0x1EEE9AC00](v257);
  v248 = &v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v245 = &v240 - v11;
  v12 = sub_1D8B13240();
  v271 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v249 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v250 = &v240 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v246 = &v240 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v247 = &v240 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v254 = &v240 - v21;
  v22 = sub_1D8B15240();
  v23 = *(v22 - 8);
  v268 = v22;
  v269 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v267 = &v240 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TextDetectorResult(0);
  v26 = *(v25 - 8);
  v274 = v25;
  v275 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v266 = &v240 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v243 = &v240 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v244 = &v240 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v242 = &v240 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v255 = &v240 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v278 = &v240 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v240 - v39;
  v41 = sub_1D8B131D0();
  v263 = *(v41 - 8);
  v264 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v253 = &v240 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v240 - v44;
  v272 = CVBundle.textDetectorResults.getter();
  v261 = a1;
  CVBundle.latestEstimate.getter(v288);
  v283[0] = v288[0];
  CVDetection.detection.getter(v279);
  v46 = *&v279[24];
  v47 = v280;
  __swift_project_boxed_opaque_existential_1(v279, *&v279[24]);
  v48 = (*(v47 + 88))(v46, v47);

  __swift_destroy_boxed_opaque_existential_1(v279);
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v49 = qword_1EE0E54C8;
    v50 = sub_1D8B0AAA4();
    v252 = v5;
    v258 = v12;
    v260 = v49;
    if (v50)
    {
      v51 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
      swift_beginAccess();
      sub_1D87A0E38(v49 + v51, v40, &qword_1ECA631A8, &qword_1D8B1E6D0);
      v53 = v263;
      v52 = v264;
      v54 = (*(v263 + 48))(v40, 1, v264);
      v55 = v271;
      if (v54 != 1)
      {
        (*(v53 + 32))(v45, v40, v52);
        goto LABEL_8;
      }
    }

    else
    {
      v53 = v263;
      v52 = v264;
      (*(v263 + 56))(v40, 1, 1, v264);
      v55 = v271;
    }

    _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
    if ((*(v53 + 48))(v40, 1, v52) != 1)
    {
      sub_1D87A14E4(v40, &qword_1ECA631A8, &qword_1D8B1E6D0);
    }

LABEL_8:
    v5 = v272;
    v265 = sub_1D88E0BE0(v272, v45);
    v56 = v5[2];
    v12 = MEMORY[0x1E69E7CC0];
    v262 = v45;
    *&v273 = v56;
    if (!v56)
    {
      break;
    }

    *v279 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v56, 0);
    v57 = 0;
    v45 = *v279;
    v270 = v5 + ((*(v275 + 80) + 32) & ~*(v275 + 80));
    while (v57 < v5[2])
    {
      v276 = v57;
      v277 = v45;
      v58 = v278;
      sub_1D88E1274(&v270[*(v275 + 9) * v57], v278, type metadata accessor for TextDetectorResult);
      v59 = *(v58 + *(v274 + 44));
      v60 = *(v59 + 16);
      if (v60)
      {
        v288[0] = v12;
        sub_1D87F3F54(0, v60, 0);
        v61 = v288[0];
        v62 = (v59 + 48);
        do
        {
          v64 = *(v62 - 1);
          v63 = *v62;
          v288[0] = v61;
          v66 = *(v61 + 16);
          v65 = *(v61 + 24);

          if (v66 >= v65 >> 1)
          {
            sub_1D87F3F54((v65 > 1), v66 + 1, 1);
            v61 = v288[0];
          }

          *(v61 + 16) = v66 + 1;
          v67 = v61 + 16 * v66;
          *(v67 + 32) = v64;
          *(v67 + 40) = v63;
          v62 += 5;
          --v60;
        }

        while (v60);
        v12 = MEMORY[0x1E69E7CC0];
        v5 = v272;
      }

      else
      {
        v61 = v12;
      }

      v288[0] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v68 = sub_1D8B15810();
      v70 = v69;

      sub_1D88E11AC(v278, type metadata accessor for TextDetectorResult);
      v45 = v277;
      *v279 = v277;
      v40 = *(v277 + 16);
      v71 = *(v277 + 24);
      if (v40 >= v71 >> 1)
      {
        sub_1D87F3F54((v71 > 1), v40 + 1, 1);
        v45 = *v279;
      }

      v57 = v276 + 1;
      *(v45 + 2) = v40 + 1;
      v72 = &v45[16 * v40];
      *(v72 + 4) = v68;
      *(v72 + 5) = v70;
      v55 = v271;
      if (v57 == v273)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_23:
  *v279 = v45;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  v74 = sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v276 = v73;
  v271 = v74;
  v75 = sub_1D8B15810();
  v77 = v76;

  if (qword_1ECA620E0 != -1)
  {
    swift_once();
  }

  v78 = sub_1D88DDD5C(qword_1ECAA3670, v75, v77);
  v40 = *(v265 + 16);
  v45 = v262;
  if (!v40 || (((sub_1D8B15A70() - 17) < 0x3F0) & v78) != 1)
  {
    v268 = v75;
    v269 = v77;
    LODWORD(v267) = v78;

    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v104 = sub_1D8B151E0();
    __swift_project_value_buffer(v104, qword_1EE0E4398);
    v105 = sub_1D8B151C0();
    v106 = sub_1D8B16200();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v258;
    if (v107)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_1D8783000, v105, v106, "No calendar events found in bundle during classification", v109, 2u);
      MEMORY[0x1DA721330](v109, -1, -1);
    }

    v110 = sub_1D8B151C0();
    v111 = sub_1D8B16200();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 134218240;
      *(v112 + 4) = sub_1D8B15A70();

      *(v112 + 12) = 2048;
      *(v112 + 14) = 1024;
      _os_log_impl(&dword_1D8783000, v110, v111, "fullTranscript.count: %ld, maximumTranscriptLength: %ld.", v112, 0x16u);
      MEMORY[0x1DA721330](v112, -1, -1);
    }

    else
    {
    }

    if ((*(v260 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno) & 1) == 0)
    {

      v119 = 0x80000001D8B43C90;
      v120 = v264;
LABEL_81:
      v190 = v259;
      *v259 = 0;
      *(v190 + 1) = 0xD000000000000018;
      *(v190 + 2) = v119;
      v190[24] = 0x80;
      *(v190 + 4) = v48;
      v279[0] = 0;
      *&v279[8] = 0xD000000000000018;
      *&v279[16] = v119;
      v279[24] = 0x80;
      *&v280 = v48;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      return (*(v263 + 8))(v45, v120);
    }

    *v279 = 0;
    *&v279[8] = 0xE000000000000000;
    sub_1D8B16720();

    *v279 = 0xD000000000000015;
    *&v279[8] = 0x80000001D8B43CB0;
    v113 = v261;
    CVBundle.latestEstimate.getter(v288);
    v283[0] = v288[0];
    CVDetection.detectionType.getter(&v287);

    v114 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v114);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    v115 = v245;
    sub_1D88E1274(v113, v245, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v260 = 0xD000000000000015;
    if (EnumCaseMultiPayload == 1)
    {
      v117 = *(v55 + 32);
      v118 = v246;
      v117(v246, v115, v108);
    }

    else
    {
      v121 = v115;
      v122 = v251;
      sub_1D88E120C(v121, v251, type metadata accessor for CVTrackSnapshot);
      v118 = v246;
      (*(v55 + 16))(v246, v122, v108);
      sub_1D88E11AC(v122, type metadata accessor for CVTrackSnapshot);
      v117 = *(v55 + 32);
    }

    v123 = v267 ^ 1;
    v124 = v247;
    v117(v247, v118, v108);
    sub_1D88E1660(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v125 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v125);

    v126 = (*(v55 + 8))(v124, v108);
    v277 = *&v279[8];
    v278 = *v279;
    MEMORY[0x1EEE9AC00](v126);
    *(&v240 - 2) = v262;
    sub_1D8916908(sub_1D88E0E60, (&v240 - 4), v272);
    v128 = v127;
    v129 = v248;
    sub_1D88E1274(v261, v248, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v130 = v129;
      v131 = v249;
      v117(v249, v130, v108);
    }

    else
    {
      v132 = v129;
      v133 = v251;
      sub_1D88E120C(v132, v251, type metadata accessor for CVTrackSnapshot);
      v134 = v249;
      (*(v55 + 16))(v249, v133, v108);
      v135 = v133;
      v131 = v134;
      sub_1D88E11AC(v135, type metadata accessor for CVTrackSnapshot);
    }

    v136 = v250;
    v117(v250, v131, v108);
    v137 = sub_1D8B15A70();
    v138 = v108;
    v139 = v256;
    *v256 = 0xD000000000000018;
    *(v139 + 1) = 0x80000001D8B43C90;
    v265 = 0x80000001D8B43C90;
    *(v139 + 2) = v128;
    v140 = v252;
    v117(&v139[*(v252 + 6)], v136, v138);
    *&v139[*(v140 + 28)] = v137;
    v139[*(v140 + 32)] = v123 & 1;
    CVBundle.latestEstimate.getter(v283);
    v288[0] = v283[0];
    CVDetection.detection.getter(v279);
    v40 = *&v279[24];
    v141 = v280;
    __swift_project_boxed_opaque_existential_1(v279, *&v279[24]);
    v3 = (*(v141 + 88))(v40, v141);

    __swift_destroy_boxed_opaque_existential_1(v279);
    v289[3] = v140;
    v289[4] = sub_1D88E1660(&qword_1ECA64B90, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo, &unk_1D8B26904);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v289);
    sub_1D88E1274(v139, boxed_opaque_existential_1, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
    v290 = 3;
    v288[0] = v278;
    v288[1] = v277;
    *&v288[2] = v3;
    v12 = v273;
    if (!v273)
    {

      v144 = MEMORY[0x1E69E7CC0];
LABEL_71:
      *v279 = v144;
      v277 = sub_1D8B15810();
      v278 = v160;

      if (sub_1D8B15A70() >= 200)
      {
        *v279 = 0;
        *&v279[8] = 0xE000000000000000;
        sub_1D8B16720();

        *v279 = 0xD000000000000014;
        *&v279[8] = 0x80000001D8B43CD0;
        v163 = sub_1D8B15A70();

        v283[0] = v163;
        v164 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v164);

        v162 = *&v279[8];
        v161 = *v279;
      }

      else
      {

        v161 = 0;
        v162 = 0xE000000000000000;
      }

      if (v267)
      {
        v165 = 0;
      }

      else
      {
        v165 = v260;
      }

      if (v267)
      {
        v166 = 0xE000000000000000;
      }

      else
      {
        v166 = 0x80000001D8B43CF0;
      }

      *v279 = 0;
      *&v279[8] = 0xE000000000000000;
      sub_1D8B16720();
      v167 = CVBundle.debugLabel.getter();
      v169 = v168;

      *v279 = v167;
      *&v279[8] = v169;
      MEMORY[0x1DA71EFA0](0x65746164206F6E20, 0xE800000000000000);
      MEMORY[0x1DA71EFA0](v161, v162);

      MEMORY[0x1DA71EFA0](v165, v166);

      MEMORY[0x1DA71EFA0](2618, 0xE200000000000000);
      MEMORY[0x1DA71EFA0](v277, v278);

      v170 = *v279;
      CVBundle.latestEstimate.getter(&v287);
      v286 = v287;
      CVDetection.detection.getter(v283);
      v171 = v284;
      v172 = v285;
      __swift_project_boxed_opaque_existential_1(v283, v284);
      (*(v172 + 64))(v279, v171, v172);
      __swift_destroy_boxed_opaque_existential_1(v283);
      Corners.bounds.getter();
      v174 = v173;
      v176 = v175;
      v178 = v177;
      v180 = v179;

      GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.8);
      v279[0] = 1;
      *&v291 = v174;
      *(&v291 + 1) = v176;
      *&v292 = v178;
      *(&v292 + 1) = v180;
      *&v293 = 0x3F747AE147AE147BLL;
      *(&v293 + 1) = GenericRGB;
      v294 = v170;
      memset(v295, 0, 24);
      v295[24] = 1;
      v182 = sub_1D8B15EA0();
      v183 = v254;
      (*(*(v182 - 8) + 56))(v254, 1, 1, v182);
      sub_1D88C4BD0(v288, v279);
      v184 = swift_allocObject();
      v185 = v281;
      *(v184 + 64) = v280;
      *(v184 + 80) = v185;
      v186 = *&v279[16];
      *(v184 + 32) = *v279;
      *(v184 + 48) = v186;
      *(v184 + 177) = *&v295[9];
      v187 = v294;
      *(v184 + 168) = *v295;
      v188 = v292;
      v189 = v293;
      *(v184 + 152) = v187;
      *(v184 + 136) = v189;
      *(v184 + 104) = v291;
      *(v184 + 16) = 0;
      *(v184 + 24) = 0;
      *(v184 + 96) = v282;
      *(v184 + 120) = v188;
      sub_1D88E0F34(&v291, v279);
      sub_1D8891CA0(0, 0, v183, &unk_1D8B267E0, v184);

      sub_1D88E0F90(&v291);
      sub_1D88E11AC(v256, type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo);
      sub_1D87DC9A0(v288);
      v120 = v264;
      v119 = v265;
      v45 = v262;
      goto LABEL_81;
    }

    v45 = MEMORY[0x1E69E7CC0];
    *v279 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v273, 0);
    v143 = 0;
    v144 = *v279;
    v270 = v272 + ((*(v275 + 80) + 32) & ~*(v275 + 80));
    v5 = v266;
    while (v143 < v272[2])
    {
      v277 = v143;
      v278 = v144;
      sub_1D88E1274(&v270[*(v275 + 9) * v143], v5, type metadata accessor for TextDetectorResult);
      v145 = *(v5 + *(v274 + 44));
      v146 = *(v145 + 16);
      if (v146)
      {
        v283[0] = v45;
        sub_1D87F3F54(0, v146, 0);
        v147 = v283[0];
        v148 = (v145 + 48);
        do
        {
          v149 = *(v148 - 1);
          v150 = *v148;
          v283[0] = v147;
          v152 = *(v147 + 16);
          v151 = *(v147 + 24);

          if (v152 >= v151 >> 1)
          {
            sub_1D87F3F54((v151 > 1), v152 + 1, 1);
            v147 = v283[0];
          }

          *(v147 + 16) = v152 + 1;
          v153 = v147 + 16 * v152;
          *(v153 + 32) = v149;
          *(v153 + 40) = v150;
          v148 += 5;
          --v146;
        }

        while (v146);
        v5 = v266;
        v45 = MEMORY[0x1E69E7CC0];
        v12 = v273;
      }

      else
      {
        v147 = v45;
      }

      v283[0] = v147;
      v40 = sub_1D8B15810();
      v155 = v154;

      sub_1D88E11AC(v5, type metadata accessor for TextDetectorResult);
      v144 = v278;
      *v279 = v278;
      v157 = *(v278 + 16);
      v156 = *(v278 + 24);
      if (v157 >= v156 >> 1)
      {
        sub_1D87F3F54((v156 > 1), v157 + 1, 1);
        v144 = *v279;
      }

      v143 = v277 + 1;
      *(v144 + 16) = v157 + 1;
      v158 = v144 + 16 * v157;
      *(v158 + 32) = v40;
      *(v158 + 40) = v155;
      if (v143 == v12)
      {

        goto LABEL_71;
      }
    }

    goto LABEL_98;
  }

  v79 = v265;
  if (!*(v265 + 16))
  {
    __break(1u);
    goto LABEL_102;
  }

  v80 = v265 + ((*(v275 + 80) + 32) & ~*(v275 + 80));
  v81 = v244;
  sub_1D88E1274(v80, v244, type metadata accessor for TextDetectorResult);
  v5 = v243;
  if (v40 != 1)
  {
    v159 = 1;
    while (v159 < *(v79 + 16))
    {
      sub_1D88E1274(v80 + *(v275 + 9) * v159, v5, type metadata accessor for TextDetectorResult);
      if (*(v81 + *(v274 + 20)) >= *(v5 + *(v274 + 20)))
      {
        sub_1D88E11AC(v5, type metadata accessor for TextDetectorResult);
      }

      else
      {
        sub_1D88E11AC(v81, type metadata accessor for TextDetectorResult);
        sub_1D88E120C(v5, v81, type metadata accessor for TextDetectorResult);
      }

      if (v40 == ++v159)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_99;
  }

LABEL_29:
  v82 = v242;
  sub_1D88E120C(v81, v242, type metadata accessor for TextDetectorResult);
  v83 = v255;
  sub_1D88E120C(v82, v255, type metadata accessor for TextDetectorResult);
  LODWORD(v3) = *(v83 + *(v274 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
  v84 = sub_1D8B15270();
  v85 = *(v84 - 8);
  v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v87 = swift_allocObject();
  v273 = xmmword_1D8B1AB90;
  *(v87 + 16) = xmmword_1D8B1AB90;
  (*(v85 + 104))(v87 + v86, *MEMORY[0x1E69E0208], v84);
  v88 = v253;
  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  v89 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v87, v88, 0);

  v90 = *(v263 + 8);
  v274 = v263 + 8;
  v275 = v90;
  v90(v88, v264);
  v91 = v89[2];
  if (v91)
  {
    *v279 = v12;
    sub_1D87F3F54(0, v91, 0);
    v92 = *v279;
    v93 = *(v269 + 16);
    v94 = *(v269 + 80);
    v272 = v89;
    v95 = v89 + ((v94 + 32) & ~v94);
    v277 = *(v269 + 72);
    v278 = v93;
    v269 += 16;
    v276 = (v269 - 8);
    do
    {
      v96 = v267;
      v97 = v268;
      (v278)(v267, v95, v268);
      v98 = sub_1D8B15230();
      v100 = v99;
      (*v276)(v96, v97);
      *v279 = v92;
      v102 = *(v92 + 16);
      v101 = *(v92 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1D87F3F54((v101 > 1), v102 + 1, 1);
        v92 = *v279;
      }

      *(v92 + 16) = v102 + 1;
      v103 = v92 + 16 * v102;
      *(v103 + 32) = v98;
      *(v103 + 40) = v100;
      v95 += v277;
      --v91;
    }

    while (v91);

    v45 = v262;
  }

  else
  {
  }

  if (*&v3 < 0.0001)
  {

    if (qword_1EE0E4390 == -1)
    {
LABEL_85:
      v192 = sub_1D8B151E0();
      __swift_project_value_buffer(v192, qword_1EE0E4398);
      v193 = sub_1D8B151C0();
      v194 = sub_1D8B16200();
      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        *v279 = v196;
        *v195 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
        v197 = swift_allocObject();
        v198 = MEMORY[0x1E69E6448];
        *(v197 + 16) = v273;
        v199 = MEMORY[0x1E69E64A8];
        *(v197 + 56) = v198;
        *(v197 + 64) = v199;
        *(v197 + 32) = LODWORD(v3);
        v200 = sub_1D8B159A0();
        v202 = sub_1D89AC714(v200, v201, v279);

        *(v195 + 4) = v202;
        _os_log_impl(&dword_1D8783000, v193, v194, "Event not classified: confidence poor @ %s", v195, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v196);
        MEMORY[0x1DA721330](v196, -1, -1);
        MEMORY[0x1DA721330](v195, -1, -1);
      }

      v203 = v275;
      *v279 = 0;
      *&v279[8] = 0xE000000000000000;
      sub_1D8B16720();

      *v279 = 0x666E6F6320746F6ELL;
      *&v279[8] = 0xEF203B746E656469;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
      v204 = swift_allocObject();
      v205 = MEMORY[0x1E69E6448];
      *(v204 + 16) = v273;
      v206 = MEMORY[0x1E69E64A8];
      *(v204 + 56) = v205;
      *(v204 + 64) = v206;
      *(v204 + 32) = LODWORD(v3);
      v207 = sub_1D8B159A0();
      MEMORY[0x1DA71EFA0](v207);

      v208 = *v279;
      v209 = v259;
      *v259 = 0;
      *(v209 + 8) = v208;
      v209[24] = 0x80;
      *(v209 + 4) = v48;
      v279[0] = 0;
      *&v279[8] = v208;
      v279[24] = 0x80;
      *&v280 = v48;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      sub_1D88E11AC(v255, type metadata accessor for TextDetectorResult);
      return v203(v45, v264);
    }

LABEL_102:
    swift_once();
    goto LABEL_85;
  }

  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v210 = sub_1D8B151E0();
  __swift_project_value_buffer(v210, qword_1EE0E4398);

  v211 = sub_1D8B151C0();
  v212 = sub_1D8B16200();

  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    *v279 = v214;
    *v213 = 136315394;
    v215 = objc_opt_self();
    v216 = sub_1D8B15CD0();

    v217 = [v215 localizedStringByJoiningStrings_];

    v218 = sub_1D8B15970();
    v220 = v219;

    v221 = sub_1D89AC714(v218, v220, v279);
    v45 = v262;

    *(v213 + 4) = v221;
    *(v213 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
    v222 = swift_allocObject();
    v223 = MEMORY[0x1E69E6448];
    *(v222 + 16) = v273;
    v224 = MEMORY[0x1E69E64A8];
    *(v222 + 56) = v223;
    *(v222 + 64) = v224;
    *(v222 + 32) = LODWORD(v3);
    v225 = sub_1D8B159A0();
    v227 = sub_1D89AC714(v225, v226, v279);

    *(v213 + 14) = v227;
    _os_log_impl(&dword_1D8783000, v211, v212, "Event classified: %s confidence %s", v213, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v214, -1, -1);
    MEMORY[0x1DA721330](v213, -1, -1);
  }

  else
  {
  }

  v228 = v241;
  v229 = v263;
  if (*(v260 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno))
  {
    v230 = sub_1D8B15EA0();
    v231 = v254;
    (*(*(v230 - 8) + 56))(v254, 1, 1, v230);
    v232 = v253;
    v233 = v264;
    (*(v229 + 16))(v253, v45, v264);
    v234 = (*(v229 + 80) + 40) & ~*(v229 + 80);
    v235 = swift_allocObject();
    v236 = v229;
    v237 = v235;
    *(v235 + 2) = 0;
    *(v235 + 3) = 0;
    *(v235 + 4) = v265;
    (*(v236 + 32))(&v235[v234], v232, v233);
    sub_1D8891CA0(0, 0, v231, &unk_1D8B26800, v237);

    sub_1D88E11AC(v255, type metadata accessor for TextDetectorResult);
  }

  else
  {
    sub_1D88E11AC(v255, type metadata accessor for TextDetectorResult);

    v233 = v264;
  }

  type metadata accessor for BundleClassification.ClassificationType(0);
  swift_storeEnumTagMultiPayload();
  v238 = type metadata accessor for BundleClassification(0);
  v239 = v228 + *(v238 + 20);
  *v239 = 2;
  *(v239 + 8) = 0u;
  *(v239 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v239 = 2;
  *(v239 + 8) = 0u;
  *(v239 + 24) = 0u;
  *(v228 + *(v238 + 24)) = v48;
  return v275(v45, v233);
}

uint64_t sub_1D88DDD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v5 = sub_1D8B15940();
  [v4 processString:v5];

  v6 = [v4 dominantLanguage];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D8B16390();
    if (*(v8 + 16) && (v9 = sub_1D881F7E0(), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      v12 = sub_1D8B151E0();
      __swift_project_value_buffer(v12, qword_1EE0E4398);
      v13 = v7;
      v14 = sub_1D8B151C0();
      v15 = sub_1D8B161F0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v32 = v17;
        *v16 = 136315394;
        v18 = sub_1D8B15970();
        v20 = sub_1D89AC714(v18, v19, &v32);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2048;
        *(v16 + 14) = v11;
        _os_log_impl(&dword_1D8783000, v14, v15, "Identified language %s with confidence: %f", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1DA721330](v17, -1, -1);
        MEMORY[0x1DA721330](v16, -1, -1);
      }

      v32 = v13;
      MEMORY[0x1EEE9AC00](v21);
      v31[2] = &v32;
      if ((sub_1D8AD039C(sub_1D88E113C, v31, a1) & 1) == 0 && v11 > 0.9)
      {
        v22 = sub_1D8B151C0();
        v23 = sub_1D8B161F0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1D8783000, v22, v23, "Identified language is in an unsupported language for event detection", v24, 2u);
          MEMORY[0x1DA721330](v24, -1, -1);
        }

        v25 = 0;
        v26 = v4;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v27 = sub_1D8B151E0();
  __swift_project_value_buffer(v27, qword_1EE0E4398);
  v26 = sub_1D8B151C0();
  v28 = sub_1D8B161F0();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D8783000, v26, v28, "Identified language is not in an unsupported language for event detection", v29, 2u);
    MEMORY[0x1DA721330](v29, -1, -1);
  }

  v25 = 1;
  v13 = v4;
LABEL_20:

  return v25;
}

uint64_t sub_1D88DE128@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
  v6 = sub_1D8B15270();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D8B1AB90;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69E0208], v6);
  v10 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v9, a2, 1);

  v11 = v10[2];

  if (v11)
  {
    v12 = 0x7261646E656C6163;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xED0000746E657645;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = type metadata accessor for TextDetectorResult(0);
  result = sub_1D8A9FD8C(*(a1 + *(v14 + 44)));
  *a3 = v12;
  a3[1] = v13;
  a3[2] = result;
  a3[3] = v16;
  return result;
}

uint64_t sub_1D88DE29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE330, 0, 0);
}

uint64_t sub_1D88DE330()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 48) = qword_1ECA675B0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE3D8, v1, 0);
}

uint64_t sub_1D88DE3D8(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B1F4(v3, v4, v5);

  sub_1D88E11AC(v2, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D88DE498, 0, 0);
}

uint64_t sub_1D88DE498()
{
  v1 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE508, v1, 0);
}

uint64_t sub_1D88DE508(uint64_t a1)
{
  v12 = v1;
  v2 = v1[5];
  v3 = v1[3];
  v4 = v3[3];
  v10[2] = v3[2];
  v10[3] = v4;
  v11[0] = v3[4];
  *(v11 + 9) = *(v3 + 73);
  v5 = v3[1];
  v10[0] = *v3;
  v10[1] = v5;
  v6 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v10, v6, v7);

  sub_1D88E11AC(v2, type metadata accessor for BundleClassification.ClassificationType);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1D88DE5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1D8B15240();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for TextDetectorResult(0);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DE704, 0, 0);
}

uint64_t sub_1D88DE704()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 160);
    v5 = *(v4 + 80);
    *(v0 + 108) = v5;
    v6 = *MEMORY[0x1E69E0208];
    *(v0 + 316) = v6;
    v7 = *(v4 + 72);
    *(v0 + 184) = v7;
    while (1)
    {
      *(v0 + 192) = v3;
      v8 = *(v0 + 120);
      sub_1D88E1274(v1 + ((v5 + 32) & ~v5) + v7 * v3, *(v0 + 168), type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
      v9 = sub_1D8B15270();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D8B1AB90;
      (*(v10 + 104))(v12 + v11, v6, v9);
      v13 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v12, v8, 1);
      *(v0 + 200) = v13;

      v14 = v13[2];
      *(v0 + 208) = v14;
      if (v14)
      {
        break;
      }

      v15 = *(v0 + 176);
      v16 = *(v0 + 192) + 1;
      sub_1D88E11AC(*(v0 + 168), type metadata accessor for TextDetectorResult);
      if (v16 == v15)
      {
        goto LABEL_6;
      }

      v7 = *(v0 + 184);
      v3 = *(v0 + 192) + 1;
      v6 = *(v0 + 316);
      LOBYTE(v5) = *(v0 + 108);
      v1 = *(v0 + 112);
    }

    v19 = *(v0 + 144);
    v20 = (*(v0 + 168) + *(*(v0 + 152) + 24));
    v21 = *v20;
    *(v0 + 216) = *v20;
    v22 = v20[1];
    *(v0 + 224) = v22;
    v23 = v20[2];
    *(v0 + 232) = v23;
    v24 = v20[3];
    *(v0 + 240) = v24;
    v25 = v20[4];
    *(v0 + 248) = v25;
    v26 = v20[5];
    *(v0 + 256) = v26;
    v27 = v20[6];
    *(v0 + 264) = v27;
    v28 = v20[7];
    *(v0 + 272) = v28;
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    LODWORD(v20) = *(v30 + 80);
    *(v0 + 320) = v20;
    *(v0 + 280) = *(v30 + 72);
    v31 = *(v30 + 16);
    v32 = (v20 + 32) & ~v20;
    if (v23 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v23;
    }

    if (v25 < v33)
    {
      v33 = v25;
    }

    if (v27 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v27;
    }

    if (v24 >= v22)
    {
      v35 = v22;
    }

    else
    {
      v35 = v24;
    }

    if (v26 < v35)
    {
      v35 = v26;
    }

    if (v28 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v28;
    }

    if (v21 <= v23)
    {
      v21 = v23;
    }

    if (v21 <= v25)
    {
      v21 = v25;
    }

    if (v21 <= v27)
    {
      v21 = v27;
    }

    if (v22 <= v24)
    {
      v22 = v24;
    }

    if (v22 <= v26)
    {
      v22 = v26;
    }

    if (v22 <= v28)
    {
      v22 = v28;
    }

    *(v0 + 288) = v31;
    *(v0 + 296) = 0;
    v37 = v22 - v36;
    v38 = v21 - v34;
    v31(v19, *(v0 + 200) + v32, v29);
    v39 = sub_1D8B15230();
    v41 = v40;
    (*(v30 + 8))(v19, v29);
    GenericRGB = CGColorCreateGenericRGB(1.0, 0.65, 0.0, 0.8);
    *(v0 + 312) = 1;
    *(v0 + 16) = v34;
    *(v0 + 24) = v36;
    *(v0 + 32) = v38;
    *(v0 + 40) = v37;
    *(v0 + 48) = 0x3F747AE147AE147BLL;
    *(v0 + 56) = GenericRGB;
    *(v0 + 64) = v39;
    *(v0 + 72) = v41;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 80) = 0;
    *(v0 + 104) = *(v0 + 312);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v43 = qword_1ECA675B0;
    *(v0 + 304) = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D88DEB50, v43, 0);
  }

  else
  {
LABEL_6:

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D88DEB50()
{
  v6 = v0;
  v1 = v0[4];
  v4[2] = v0[3];
  v4[3] = v1;
  v5[0] = v0[5];
  *(v5 + 9) = *(v0 + 89);
  v2 = v0[2];
  v4[0] = v0[1];
  v4[1] = v2;
  sub_1D8A3B420(v4, 0x746E657665, 0xE500000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D88DEBEC, 0, 0);
}

uint64_t sub_1D88DEBEC(__n128 a1)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 296) + 1;
  sub_1D88E0F90(v1 + 16);
  if (v3 == v2)
  {

    v4 = *(v1 + 176);
    v5 = *(v1 + 192) + 1;
    sub_1D88E11AC(*(v1 + 168), type metadata accessor for TextDetectorResult);
    if (v5 == v4)
    {
LABEL_5:

      v18 = *(v1 + 8);

      return v18();
    }

    while (1)
    {
      v6 = *(v1 + 184);
      v7 = *(v1 + 192) + 1;
      *(v1 + 192) = v7;
      v8 = *(v1 + 316);
      v9 = *(v1 + 120);
      sub_1D88E1274(*(v1 + 112) + ((*(v1 + 108) + 32) & ~*(v1 + 108)) + v6 * v7, *(v1 + 168), type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
      v10 = sub_1D8B15270();
      v11 = *(v10 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D8B1AB90;
      (*(v11 + 104))(v13 + v12, v8, v10);
      v14 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v13, v9, 1);
      *(v1 + 200) = v14;

      v15 = v14[2];
      *(v1 + 208) = v15;
      if (v15)
      {
        break;
      }

      v16 = *(v1 + 176);
      v17 = *(v1 + 192) + 1;
      sub_1D88E11AC(*(v1 + 168), type metadata accessor for TextDetectorResult);
      if (v17 == v16)
      {
        goto LABEL_5;
      }
    }

    v21 = 0;
    v32 = *(v1 + 136);
    v33 = (*(v1 + 168) + *(*(v1 + 152) + 24));
    v30 = *v33;
    *(v1 + 216) = *v33;
    v31 = v33[1];
    *(v1 + 224) = v31;
    v28 = v33[2];
    *(v1 + 232) = v28;
    v29 = v33[3];
    *(v1 + 240) = v29;
    v26 = v33[4];
    *(v1 + 248) = v26;
    v27 = v33[5];
    *(v1 + 256) = v27;
    v24 = v33[6];
    *(v1 + 264) = v24;
    v25 = v33[7];
    *(v1 + 272) = v25;
    v23 = *(v32 + 80);
    *(v1 + 320) = v23;
    v22 = *(v32 + 72);
    *(v1 + 280) = v22;
    v20 = *(v32 + 16);
    *(v1 + 288) = v20;
  }

  else
  {
    v20 = *(v1 + 288);
    v21 = *(v1 + 296) + 1;
    v22 = *(v1 + 280);
    LOBYTE(v23) = *(v1 + 320);
    v24 = *(v1 + 264);
    v25 = *(v1 + 272);
    v26 = *(v1 + 248);
    v27 = *(v1 + 256);
    v28 = *(v1 + 232);
    v29 = *(v1 + 240);
    v30 = *(v1 + 216);
    v31 = *(v1 + 224);
    v32 = *(v1 + 136);
  }

  *(v1 + 296) = v21;
  v34 = *(v1 + 144);
  v35 = *(v1 + 128);
  if (v28 >= v30)
  {
    v36 = v30;
  }

  else
  {
    v36 = v28;
  }

  if (v26 < v36)
  {
    v36 = v26;
  }

  if (v24 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v24;
  }

  v38 = *(v1 + 200) + ((v23 + 32) & ~v23);
  if (v31 > v29)
  {
    v39 = v31;
  }

  else
  {
    v39 = v29;
  }

  if (v39 <= v27)
  {
    v39 = v27;
  }

  if (v39 <= v25)
  {
    v39 = v25;
  }

  if (v29 < v31)
  {
    v31 = v29;
  }

  if (v27 < v31)
  {
    v31 = v27;
  }

  if (v25 >= v31)
  {
    v40 = v31;
  }

  else
  {
    v40 = v25;
  }

  v41 = v39 - v40;
  if (v30 <= v28)
  {
    v30 = v28;
  }

  if (v30 <= v26)
  {
    v30 = v26;
  }

  if (v30 <= v24)
  {
    v30 = v24;
  }

  v42 = v30 - v37;
  v20(*(v1 + 144), v38 + v22 * v21, *(v1 + 128));
  v43 = sub_1D8B15230();
  v45 = v44;
  (*(v32 + 8))(v34, v35);
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.65, 0.0, 0.8);
  *(v1 + 312) = 1;
  *(v1 + 16) = v37;
  *(v1 + 24) = v40;
  *(v1 + 32) = v42;
  *(v1 + 40) = v41;
  *(v1 + 48) = 0x3F747AE147AE147BLL;
  *(v1 + 56) = GenericRGB;
  *(v1 + 64) = v43;
  *(v1 + 72) = v45;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = *(v1 + 312);
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v47 = qword_1ECA675B0;
  *(v1 + 304) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D88DEB50, v47, 0);
}

uint64_t sub_1D88DF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 160) = a2;
  *(v6 + 168) = a6;
  *(v6 + 224) = a5;
  *(v6 + 152) = a1;
  v7 = type metadata accessor for TextDetectorResult(0);
  *(v6 + 176) = v7;
  *(v6 + 184) = *(v7 - 8);
  *(v6 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  *(v6 + 200) = swift_task_alloc();
  type metadata accessor for BundleClassification(0);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DF1B4, 0, 0);
}

uint64_t sub_1D88DF1B4()
{
  v56 = v0;
  v1 = *(v0 + 160);
  if (*(v0 + 224) == 1)
  {
    v2 = (v0 + 216);
    sub_1D88DBCE8(v1, (v0 + 96), *(v0 + 216));
  }

  else
  {
    v2 = (v0 + 208);
    sub_1D88DA640(v1, (v0 + 16), *(v0 + 208));
  }

  sub_1D88E120C(*v2, *(v0 + 152), type metadata accessor for BundleClassification);
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_26;
  }

  while ((sub_1D8B0AAA4() & 1) != 0)
  {
    v3 = CVBundle.textDetectorResults.getter();
    v4 = v3[2];
    if (!v4)
    {

      v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v27 = *(v0 + 200);
      *(v0 + 144) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v28 = sub_1D8B15810();
      v30 = v29;

      v55[0] = 0xA3A746E657645;
      v55[1] = 0xE700000000000000;
      MEMORY[0x1DA71EFA0](v28, v30);

      CVBundle.latestEstimate.getter(&v53);
      v54 = v53;
      CVDetection.detection.getter((v0 + 56));
      v31 = *(v0 + 80);
      v32 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v31);
      (*(v32 + 64))(v55, v31, v32);
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      Corners.bounds.getter();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      GenericRGB = CGColorCreateGenericRGB(0.0, 1.0, 0.0, 0.8);
      v42 = sub_1D8B15EA0();
      (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v34;
      *(v43 + 40) = v36;
      *(v43 + 48) = v38;
      *(v43 + 56) = v40;
      *(v43 + 64) = 0x3F847AE147AE147BLL;
      *(v43 + 72) = GenericRGB;
      *(v43 + 80) = 0xA3A746E657645;
      *(v43 + 88) = 0xE700000000000000;
      *(v43 + 104) = 0;
      *(v43 + 112) = 0;
      *(v43 + 96) = 0;
      *(v43 + 120) = 1;
      sub_1D8891CA0(0, 0, v27, &unk_1D8B267D0, v43);

      break;
    }

    v5 = *(v0 + 184);
    v49 = *(v0 + 176);
    v54 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v4, 0);
    v6 = 0;
    v50 = v5;
    v51 = v4;
    v7 = v54;
    v47 = v0;
    v48 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v46 = v3;
    while (v6 < v3[2])
    {
      v8 = *(v0 + 192);
      sub_1D88E1274(&v48[*(v50 + 72) * v6], v8, type metadata accessor for TextDetectorResult);
      v9 = *(v8 + *(v49 + 44));
      v10 = *(v9 + 16);
      if (v10)
      {
        v52 = v7;
        v55[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v10, 0);
        v11 = v55[0];
        v12 = *(v55[0] + 16);
        v13 = 16 * v12;
        v14 = (v9 + 48);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v55[0] = v11;
          v17 = v12 + 1;
          v18 = *(v11 + 24);

          if (v12 >= v18 >> 1)
          {
            sub_1D87F3F54((v18 > 1), v17, 1);
            v11 = v55[0];
          }

          *(v11 + 16) = v17;
          v19 = v11 + v13;
          *(v19 + 32) = v15;
          *(v19 + 40) = v16;
          v13 += 16;
          v14 += 5;
          ++v12;
          --v10;
        }

        while (v10);
        v3 = v46;
        v0 = v47;
        v7 = v52;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v20 = *(v0 + 192);
      *(v0 + 136) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v21 = sub_1D8B15810();
      v23 = v22;

      sub_1D88E11AC(v20, type metadata accessor for TextDetectorResult);
      v54 = v7;
      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D87F3F54((v24 > 1), v25 + 1, 1);
        v7 = v54;
      }

      ++v6;
      *(v7 + 16) = v25 + 1;
      v26 = v7 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      if (v6 == v51)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1D88DF7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88DF888, 0, 0);
}

uint64_t sub_1D88DF888()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D88DF930, v1, 0);
}

uint64_t sub_1D88DF930(uint64_t a1)
{
  v12 = v1;
  v2 = v1[4];
  v3 = v1[2];
  v4 = v3[3];
  v10[2] = v3[2];
  v10[3] = v4;
  v11[0] = v3[4];
  *(v11 + 9) = *(v3 + 73);
  v5 = v3[1];
  v10[0] = *v3;
  v10[1] = v5;
  v6 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v10, v6, v7);

  sub_1D88E11AC(v2, type metadata accessor for BundleClassification.ClassificationType);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1D88DFA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  v9 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1D88DFAD0;

  return sub_1D88DF07C(a1, a2, v10, v11, v9, v6 + 16);
}

uint64_t sub_1D88DFAD0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 24);
    *v4 = *(v2 + 16);
    *(v4 + 8) = v7;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1D88DFBFC(uint64_t a1, _OWORD *a2)
{
  v4 = *v2;
  v5 = a2[3];
  v13 = a2[2];
  v14 = v5;
  v15 = a2[4];
  v6 = a2[1];
  v12[0] = *a2;
  v12[1] = v6;
  if ((sub_1D88D9DB8(a1, BYTE8(v13), v4) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88, &unk_1D8B267B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  sub_1D88DA4C4(5u);
  *(inited + 40) = v8;
  v9 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v10 = sub_1D89DF910(a1, v12, v9);

  return v10;
}

unint64_t sub_1D88DFCD4()
{
  if (*v0)
  {
    return 0xD00000000000003ALL;
  }

  else
  {
    return 0xD000000000000033;
  }
}

uint64_t sub_1D88DFD10(uint64_t a1, char *a2, uint64_t a3)
{
  v68 = a3;
  v63 = a2;
  v61 = a1;
  v57 = sub_1D8B13430();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v50 - v5;
  v6 = sub_1D8B13450();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B144E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v64 = sub_1D8B131D0();
  v66 = *(v64 - 8);
  v17 = MEMORY[0x1EEE9AC00](v64);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v50 - v26;
  if ((sub_1D8B146C0() & 1) == 0)
  {
    sub_1D88E05EC();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return v16 & 1;
  }

  sub_1D8B14610();
  v27 = v67;
  sub_1D8B143E0();
  if (!v27)
  {
    v67 = 0;
    v30 = v16;
    v16 = *(v9 + 8);
    (v16)(v30, v8);
    v52 = *(v66 + 32);
    v53 = v66 + 32;
    v52(v65, v25, v64);
    sub_1D8B14610();
    v31 = sub_1D8B14450();
    (v16)(v14, v8);
    if (v31 < 0)
    {
      sub_1D8B14610();
      v32 = sub_1D8B144B0();
      (v16)(v14, v8);
      v51 = v32 >> 63;
    }

    else
    {
      v51 = 0;
    }

    sub_1D8B145D0();
    v33 = sub_1D8B144A0();
    (v16)(v14, v8);
    if (v33)
    {
      v34 = v62;
      sub_1D8B145D0();
      v35 = v67;
      sub_1D8B143E0();
      v36 = v66;
      if (v35)
      {
        (v16)(v34, v8);
        (*(v36 + 8))(v65, v64);
        return v16 & 1;
      }

      v67 = 0;
      (v16)(v34, v8);
      v39 = v63;
      v38 = v64;
      v37 = v65;
      v40 = v52;
      LOBYTE(v16) = v51;
      v52(v63, v19, v64);
    }

    else
    {
      v36 = v66;
      LOBYTE(v16) = v51;
      if (v51)
      {
        v38 = v64;
        v37 = v65;
        (*(v66 + 16))(v22, v65, v64);
        v39 = v63;
      }

      else
      {
        v37 = v65;
        sub_1D8B13110();
        v39 = v63;
        v38 = v64;
      }

      v40 = v52;
      v52(v39, v22, v38);
    }

    if (sub_1D8B13140())
    {
      v41 = v58;
      sub_1D8B13410();
      sub_1D8B13090();
      if (v42 >= 86400.0)
      {
LABEL_21:
        sub_1D88E05EC();
        LOBYTE(v16) = swift_allocError();
        *v47 = 1;
        swift_willThrow();
        (*(v59 + 8))(v41, v60);
        v48 = *(v36 + 8);
        v48(v39, v38);
        v48(v37, v38);
        return v16 & 1;
      }

      v44 = v54;
      v43 = v55;
      v45 = v57;
      (*(v55 + 104))(v54, *MEMORY[0x1E6969A48], v57);
      v46 = v56;
      sub_1D8B133F0();
      (*(v43 + 8))(v44, v45);
      v36 = v66;
      if ((*(v66 + 48))(v46, 1, v38) == 1)
      {
        sub_1D87A14E4(v46, &qword_1ECA631A8, &qword_1D8B1E6D0);
        v37 = v65;
        goto LABEL_21;
      }

      (*(v59 + 8))(v41, v60);
      (*(v36 + 8))(v39, v38);
      v49 = v46;
      v40 = v52;
      v52(v39, v49, v38);
      v37 = v65;
      LOBYTE(v16) = v51;
    }

    v40(v61, v37, v38);
    return v16 & 1;
  }

  (*(v9 + 8))(v16, v8);
  return v16 & 1;
}

uint64_t sub_1D88E0474(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v7);
      v8 = sub_1D8B16D80();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1D88E057C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D88E05EC()
{
  result = qword_1ECA64B78;
  if (!qword_1ECA64B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B78);
  }

  return result;
}

unint64_t sub_1D88E0668()
{
  result = qword_1ECA64B80;
  if (!qword_1ECA64B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64B80);
  }

  return result;
}

uint64_t sub_1D88E06BC(void *a1, uint64_t *a2)
{
  v2 = sub_1D8B15970();
  v4 = v3;
  if (v2 == sub_1D8B15970() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D8B16BA0();
  }

  return v7 & 1;
}

uint64_t sub_1D88E074C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64C08, &qword_1D8B26940);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88E1540();
  sub_1D8B16DB0();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1D8B169C0();
    v10 = 1;
    sub_1D8B169C0();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1D88E0930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B43E80 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B41EE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B43EA0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B43EC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D88E0AE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D88DF7F4(a1, v4, v5, v1 + 32);
}

uint64_t type metadata accessor for EventClassifier.EventNotClassifiedDebugInfo(uint64_t a1)
{
  result = qword_1ECA64BC8;
  if (!qword_1ECA64BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88E0BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;

  result = sub_1D87C7070(sub_1D88E18D8, v17, a1);
  if (!*(result + 16))
  {

    result = sub_1D8B13180();
    v9 = result;
    v16 = *(result + 16);
    if (v16)
    {
      v10 = 0;
      v15 = v5 + 16;
      v11 = (v5 + 8);
      while (v10 < *(v9 + 16))
      {
        v12 = (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v4);
        MEMORY[0x1EEE9AC00](v12);
        *(&v15 - 2) = v7;

        v13 = sub_1D87C7070(sub_1D88E115C, (&v15 - 4), a1);
        if (*(v13 + 16))
        {
          v14 = v13;

          (*v11)(v7, v4);
          return v14;
        }

        ++v10;
        result = (*v11)(v7, v4);
        if (v16 == v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1D88E0E0C()
{
  result = qword_1EE0E46D0;
  if (!qword_1EE0E46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E46D0);
  }

  return result;
}

uint64_t sub_1D88E0E80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D88DE29C(a1, v4, v5, v1 + 32, v1 + 104);
}

double sub_1D88E0FE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 2)
  {
    return sub_1D88E1004(a2, a3, a4);
  }

  return v4;
}

double sub_1D88E1004(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_1D88E102C(a1, a2, a3);
  }

  return result;
}

double sub_1D88E102C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D88E1044(uint64_t a1)
{
  v4 = *(sub_1D8B131D0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88DE5E8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D88E11AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D88E120C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88E1274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88E12DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D88E1324(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1D88E139C(uint64_t a1)
{
  sub_1D88E1448();
  if (v1 <= 0x3F)
  {
    sub_1D8B13240();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D88E1448()
{
  if (!qword_1ECA64BD8)
  {
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA64BD8);
    }
  }
}

unint64_t sub_1D88E1498()
{
  result = qword_1ECA64BE8;
  if (!qword_1ECA64BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64BE8);
  }

  return result;
}

unint64_t sub_1D88E14EC()
{
  result = qword_1ECA64C00;
  if (!qword_1ECA64C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C00);
  }

  return result;
}

unint64_t sub_1D88E1540()
{
  result = qword_1ECA64C10;
  if (!qword_1ECA64C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C10);
  }

  return result;
}

uint64_t sub_1D88E1594(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA64BF0, &qword_1D8B26938);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D88E160C()
{
  result = qword_1ECA64C30;
  if (!qword_1ECA64C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C30);
  }

  return result;
}

uint64_t sub_1D88E1660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D88E16CC()
{
  result = qword_1ECA64C38;
  if (!qword_1ECA64C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C38);
  }

  return result;
}

unint64_t sub_1D88E1724()
{
  result = qword_1ECA64C40;
  if (!qword_1ECA64C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C40);
  }

  return result;
}

unint64_t sub_1D88E177C()
{
  result = qword_1ECA64C48;
  if (!qword_1ECA64C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C48);
  }

  return result;
}

unint64_t sub_1D88E17D4()
{
  result = qword_1ECA64C50;
  if (!qword_1ECA64C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C50);
  }

  return result;
}

unint64_t sub_1D88E182C()
{
  result = qword_1ECA64C58;
  if (!qword_1ECA64C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C58);
  }

  return result;
}

unint64_t sub_1D88E1884()
{
  result = qword_1ECA64C60;
  if (!qword_1ECA64C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64C60);
  }

  return result;
}

uint64_t sub_1D88E18F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v6 == 0.0)
          {
            if (v8 != 2 || v7 != 0.0)
            {
              return result;
            }
          }

          else if (v8 != 2 || *&v7 != 1)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D88E19FC(uint64_t a1, uint64_t a2)
{
  v86[3] = *MEMORY[0x1E69E9840];
  v82 = sub_1D8B13830();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v69 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FC0, &qword_1D8B27C80);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v69 - v10;
  v83 = type metadata accessor for VisualUnderstandingContainer(0);
  v12 = MEMORY[0x1EEE9AC00](v83);
  v80 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v84 = (&v69 - v15);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (!v16 || a1 == a2)
  {
    return 1;
  }

  v71 = 0;
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v72 = (v4 + 32);
  v73 = v6;
  v74 = (v4 + 8);
  v75 = v9;
  v78 = *(v14 + 72);
  v79 = (v4 + 48);
  v20 = v80;
  v21 = v82;
  while (1)
  {
    sub_1D88F0DD8(v18, v84, type metadata accessor for VisualUnderstandingContainer);
    sub_1D88F0DD8(v19, v20, type metadata accessor for VisualUnderstandingContainer);
    if (*v84 != *v20)
    {
      goto LABEL_77;
    }

    v22 = *(v83 + 20);
    v23 = *(v81 + 48);
    sub_1D87A0E38(v84 + v22, v11, &qword_1ECA635E8, &unk_1D8B1F5C0);
    sub_1D87A0E38(v20 + v22, &v11[v23], &qword_1ECA635E8, &unk_1D8B1F5C0);
    v24 = *v79;
    if ((*v79)(v11, 1, v21) == 1)
    {
      if (v24(&v11[v23], 1, v21) != 1)
      {
        goto LABEL_74;
      }

      sub_1D87A14E4(v11, &qword_1ECA635E8, &unk_1D8B1F5C0);
      goto LABEL_11;
    }

    v25 = v75;
    sub_1D87A0E38(v11, v75, &qword_1ECA635E8, &unk_1D8B1F5C0);
    if (v24(&v11[v23], 1, v21) == 1)
    {
      break;
    }

    v26 = v73;
    (*v72)(v73, &v11[v23], v21);
    sub_1D88F0C68(&qword_1ECA64FC8, MEMORY[0x1E69E0330], MEMORY[0x1E69E0348]);
    LODWORD(v76) = sub_1D8B158C0();
    v77 = v16;
    v27 = *v74;
    (*v74)(v26, v21);
    v27(v25, v21);
    v16 = v77;
    sub_1D87A14E4(v11, &qword_1ECA635E8, &unk_1D8B1F5C0);
    v20 = v80;
    if ((v76 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_11:
    v28 = *(v83 + 24);
    v29 = *(v84 + v28);
    v30 = *(v84 + v28 + 8);
    v31 = (v20 + v28);
    v32 = *v31;
    v33 = v31[1];
    if (v30 >> 60 == 15)
    {
      if (v33 >> 60 != 15)
      {
        goto LABEL_72;
      }

      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      goto LABEL_45;
    }

    if (v33 >> 60 == 15)
    {
LABEL_72:
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      sub_1D87C12A4(v29, v30);
      v67 = v32;
      v68 = v33;
LABEL_76:
      sub_1D87C12A4(v67, v68);
      goto LABEL_77;
    }

    v34 = v30 >> 62;
    v35 = v33 >> 62;
    if (v30 >> 62 == 3)
    {
      v36 = 0;
      if (!v29 && v30 == 0xC000000000000000 && v33 >> 62 == 3)
      {
        v36 = 0;
        if (!v32 && v33 == 0xC000000000000000)
        {
          sub_1D8883D78(0, 0xC000000000000000);
          sub_1D8883D78(0, 0xC000000000000000);
          v37 = 0;
          v38 = 0xC000000000000000;
          goto LABEL_44;
        }
      }

LABEL_31:
      if (v35 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v44 = *(v29 + 16);
        v43 = *(v29 + 24);
        v41 = __OFSUB__(v43, v44);
        v36 = v43 - v44;
        if (v41)
        {
          goto LABEL_80;
        }

        goto LABEL_31;
      }

      v36 = 0;
      if (v35 <= 1)
      {
        goto LABEL_32;
      }
    }

    else if (v34)
    {
      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_81;
      }

      v36 = v36;
      if (v35 <= 1)
      {
LABEL_32:
        if (v35)
        {
          LODWORD(v42) = HIDWORD(v32) - v32;
          if (__OFSUB__(HIDWORD(v32), v32))
          {
            goto LABEL_79;
          }

          v42 = v42;
        }

        else
        {
          v42 = BYTE6(v33);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v36 = BYTE6(v30);
      if (v35 <= 1)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v35 != 2)
    {
      if (v36)
      {
        goto LABEL_75;
      }

LABEL_43:
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      v37 = v32;
      v38 = v33;
LABEL_44:
      sub_1D87C12A4(v37, v38);
LABEL_45:
      sub_1D87C12A4(v29, v30);
      sub_1D88F3180(v20, type metadata accessor for VisualUnderstandingContainer);
      sub_1D88F3180(v84, type metadata accessor for VisualUnderstandingContainer);
      v21 = v82;
      goto LABEL_46;
    }

    v40 = *(v32 + 16);
    v39 = *(v32 + 24);
    v41 = __OFSUB__(v39, v40);
    v42 = v39 - v40;
    if (v41)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

LABEL_38:
    if (v36 != v42)
    {
LABEL_75:
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      sub_1D87C12A4(v32, v33);
      v67 = v29;
      v68 = v30;
      goto LABEL_76;
    }

    if (v36 < 1)
    {
      goto LABEL_43;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        memset(v86, 0, 14);
        sub_1D8883D78(v29, v30);
        sub_1D8883D78(v32, v33);
        sub_1D8883D78(v32, v33);
        v46 = v32;
        v47 = v33;
        v45 = v32;
        goto LABEL_62;
      }

      v48 = *(v29 + 16);
      v70 = *(v29 + 24);
      v76 = v29;
      sub_1D8883D78(v29, v30);
      sub_1D8883D78(v32, v33);
      v77 = v32;
      sub_1D8883D78(v32, v33);
      v49 = sub_1D8B12D00();
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D8B12D20();
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_84;
        }

        v52 = v48;
        v53 = v48 - v51 + v50;
      }

      else
      {
        v52 = v48;
        v53 = 0;
      }

      if (__OFSUB__(v70, v52))
      {
        goto LABEL_83;
      }

      sub_1D8B12D10();
      v63 = v53;
    }

    else
    {
      v77 = v32;
      if (!v34)
      {
        v86[0] = v29;
        LOWORD(v86[1]) = v30;
        BYTE2(v86[1]) = BYTE2(v30);
        BYTE3(v86[1]) = BYTE3(v30);
        BYTE4(v86[1]) = BYTE4(v30);
        BYTE5(v86[1]) = BYTE5(v30);
        sub_1D8883D78(v29, v30);
        v45 = v77;
        sub_1D8883D78(v77, v33);
        sub_1D8883D78(v45, v33);
        v46 = v45;
        v47 = v33;
LABEL_62:
        v61 = v71;
        sub_1D87A0104(v86, v46, v47, &v85);
        v71 = v61;
        sub_1D87C12A4(v45, v33);
        sub_1D87C12A4(v45, v33);
        v62 = v85;
        goto LABEL_69;
      }

      v54 = v29;
      v55 = (v29 >> 32) - v29;
      if (v29 >> 32 < v29)
      {
        goto LABEL_82;
      }

      v76 = v29;
      sub_1D8883D78(v29, v30);
      v56 = v77;
      sub_1D8883D78(v77, v33);
      sub_1D8883D78(v56, v33);
      v57 = sub_1D8B12D00();
      if (v57)
      {
        v70 = v55;
        v58 = v57;
        v59 = sub_1D8B12D20();
        if (__OFSUB__(v54, v59))
        {
          goto LABEL_85;
        }

        v60 = v54 - v59 + v58;
      }

      else
      {
        v60 = 0;
      }

      sub_1D8B12D10();
      v63 = v60;
    }

    v64 = v77;
    v65 = v71;
    sub_1D87A0104(v63, v77, v33, v86);
    v71 = v65;
    sub_1D87C12A4(v64, v33);
    sub_1D87C12A4(v64, v33);
    v62 = v86[0];
    v29 = v76;
LABEL_69:
    sub_1D87C12A4(v29, v30);
    sub_1D88F3180(v20, type metadata accessor for VisualUnderstandingContainer);
    sub_1D88F3180(v84, type metadata accessor for VisualUnderstandingContainer);
    v21 = v82;
    if ((v62 & 1) == 0)
    {
      return 0;
    }

LABEL_46:
    v19 += v78;
    v18 += v78;
    if (!--v16)
    {
      return 1;
    }
  }

  (*v74)(v25, v21);
  v20 = v80;
LABEL_74:
  sub_1D87A14E4(v11, &qword_1ECA64FC0, &qword_1D8B27C80);
LABEL_77:
  sub_1D88F3180(v20, type metadata accessor for VisualUnderstandingContainer);
  sub_1D88F3180(v84, type metadata accessor for VisualUnderstandingContainer);
  return 0;
}

uint64_t sub_1D88E245C(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for BuiltInAction(0);
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58, &qword_1D8B23BF0);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ActionPin.Pill(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v36 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v38 = v11;
    v39 = (v4 + 48);
    v37 = *(v15 + 72);
    while (1)
    {
      sub_1D88F0DD8(v20, v17, type metadata accessor for ActionPin.Pill);
      sub_1D88F0DD8(v21, v14, type metadata accessor for ActionPin.Pill);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v23 = v17[2] == v14[2] && v17[3] == v14[3];
      if (!v23 && (sub_1D8B16BA0() & 1) == 0 || (v17[4] != v14[4] || v17[5] != v14[5]) && (sub_1D8B16BA0() & 1) == 0)
      {
        break;
      }

      v24 = v17[7];
      v25 = v14[7];
      if (v24)
      {
        if (!v25 || (v17[6] != v14[6] || v24 != v25) && (sub_1D8B16BA0() & 1) == 0)
        {
          break;
        }
      }

      else if (v25)
      {
        break;
      }

      if (v17[8] != v14[8])
      {
        break;
      }

      v41 = v20;
      v26 = v8;
      v27 = *(v11 + 36);
      v28 = *(v42 + 48);
      sub_1D88F0DD8(v17 + v27, v10, type metadata accessor for ActionPin.Pill.Source);
      v29 = v14 + v27;
      v30 = v43;
      sub_1D88F0DD8(v29, &v10[v28], type metadata accessor for ActionPin.Pill.Source);
      v31 = *v39;
      if ((*v39)(v10, 1, v30) == 1)
      {
        if (v31(&v10[v28], 1, v43) != 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1D88F0DD8(v10, v8, type metadata accessor for ActionPin.Pill.Source);
        if (v31(&v10[v28], 1, v43) == 1)
        {
          sub_1D88F3180(v8, type metadata accessor for BuiltInAction);
LABEL_34:
          sub_1D87A14E4(v10, &qword_1ECA63E58, &qword_1D8B23BF0);
          break;
        }

        v32 = v40;
        sub_1D88F31E0(&v10[v28], v40, type metadata accessor for BuiltInAction);
        v33 = static BuiltInAction.== infix(_:_:)(v26, v32);
        v34 = v32;
        v8 = v26;
        sub_1D88F3180(v34, type metadata accessor for BuiltInAction);
        sub_1D88F3180(v26, type metadata accessor for BuiltInAction);
        if ((v33 & 1) == 0)
        {
          sub_1D88F3180(v10, type metadata accessor for ActionPin.Pill.Source);
          break;
        }
      }

      sub_1D88F3180(v10, type metadata accessor for ActionPin.Pill.Source);
      sub_1D88F3180(v14, type metadata accessor for ActionPin.Pill);
      sub_1D88F3180(v17, type metadata accessor for ActionPin.Pill);
      v11 = v38;
      v21 += v37;
      v20 = v41 + v37;
      if (!--v18)
      {
        return 1;
      }
    }

    sub_1D88F3180(v14, type metadata accessor for ActionPin.Pill);
    sub_1D88F3180(v17, type metadata accessor for ActionPin.Pill);
  }

  return 0;
}

BOOL sub_1D88E29C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v8;
  v65 = type metadata accessor for DetectionRequest.Originator(0);
  v9 = MEMORY[0x1EEE9AC00](v65);
  v59 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v52 - v15;
  v16 = type metadata accessor for DetectionRequest(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v55 = v13;
  v56 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v53 = (v5 + 32);
  v54 = (v5 + 8);
  v27 = *(v20 + 72);
  v60 = v16;
  v52 = v27;
  while (1)
  {
    sub_1D88F0DD8(v25, v22, type metadata accessor for DetectionRequest);
    sub_1D88F0DD8(v26, v19, type metadata accessor for DetectionRequest);
    if (*v22 != *v19)
    {
      goto LABEL_40;
    }

    v28 = v16[5];
    v29 = v64;
    v30 = v64 + *(v63 + 48);
    sub_1D88F0DD8(&v22[v28], v64, type metadata accessor for DetectionRequest.Originator);
    sub_1D88F0DD8(&v19[v28], v30, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v36 = v55;
      sub_1D88F0DD8(v29, v55, type metadata accessor for DetectionRequest.Originator);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*v54)(v36, v56);
LABEL_39:
        sub_1D87A14E4(v64, &unk_1ECA64FB0, &qword_1D8B25F50);
        goto LABEL_40;
      }

      v37 = *v53;
      v38 = v36;
      v39 = v56;
      (*v53)(v62, v38, v56);
      v40 = v58;
      v37(v58, v30, v39);
      v27 = v52;
      v57 = sub_1D8B13200();
      v41 = *v54;
      (*v54)(v40, v39);
      v41(v62, v39);
      sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
      v16 = v60;
      if ((v57 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v42 = swift_getEnumCaseMultiPayload();
        v16 = v60;
        if (v42 != 4)
        {
          goto LABEL_39;
        }

        goto LABEL_27;
      }

      v32 = v59;
      sub_1D88F0DD8(v29, v59, type metadata accessor for DetectionRequest.Originator);
      v33 = *v32;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_39;
      }

      v34 = sub_1D894FA18(v33, *v30);

      sub_1D88F3180(v29, type metadata accessor for DetectionRequest.Originator);
      v16 = v60;
      if ((v34 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_28:
    if ((sub_1D894CAAC(*&v22[v16[6]], *&v19[v16[6]]) & 1) == 0 || !CGRectEqualToRect(*&v22[v16[7]], *&v19[v16[7]]))
    {
      goto LABEL_40;
    }

    v48 = v16[8];
    v49 = *&v22[v48];
    v50 = *&v19[v48];
    sub_1D88F3180(v19, type metadata accessor for DetectionRequest);
    sub_1D88F3180(v22, type metadata accessor for DetectionRequest);
    result = v49 == v50;
    if (v49 == v50)
    {
      v26 += v27;
      v25 += v27;
      if (--v23)
      {
        continue;
      }
    }

    return result;
  }

  if (!EnumCaseMultiPayload)
  {
    v35 = swift_getEnumCaseMultiPayload();
    v16 = v60;
    if (v35)
    {
      goto LABEL_39;
    }

    sub_1D88F3180(v30, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_27;
  }

  v43 = v61;
  sub_1D88F0DD8(v29, v61, type metadata accessor for DetectionRequest.Originator);
  v44 = *v43;
  v45 = swift_getEnumCaseMultiPayload();
  v16 = v60;
  if (v45 != 1)
  {
    goto LABEL_39;
  }

  v46 = *v30;
  v47 = *(v30 + 4);
  if (*(v61 + 4))
  {
    if (*(v61 + 4) == 1)
    {
      if (v47 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_26;
    }

    sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
    if (v46 != 0.0 || v47 != 2)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  if (v47)
  {
    goto LABEL_43;
  }

LABEL_26:
  if (v44 == v46)
  {
LABEL_27:
    sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_28;
  }

LABEL_43:
  sub_1D88F3180(v64, type metadata accessor for DetectionRequest.Originator);
LABEL_40:
  sub_1D88F3180(v19, type metadata accessor for DetectionRequest);
  sub_1D88F3180(v22, type metadata accessor for DetectionRequest);
  return 0;
}