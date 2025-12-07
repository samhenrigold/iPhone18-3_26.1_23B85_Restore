id sub_1D12181EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalHighlightsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1218248()
{
  result = sub_1D139012C();
  qword_1EC60DA08 = result;
  return result;
}

id OAuthCompletionNotificationUserInfoKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D12185A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1D1218614(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1D1218670(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D12186AC()
{
  result = sub_1D139012C();
  qword_1EC60DA18 = result;
  return result;
}

uint64_t sub_1D121877C()
{
  result = sub_1D139012C();
  qword_1EE069580 = result;
  return result;
}

uint64_t sub_1D12187D8()
{
  result = sub_1D139012C();
  qword_1EE069568 = result;
  return result;
}

uint64_t sub_1D1218834()
{
  result = sub_1D139012C();
  qword_1EC60DA28 = result;
  return result;
}

uint64_t sub_1D12188AC()
{
  result = sub_1D139012C();
  qword_1EC60DA30 = result;
  return result;
}

id sub_1D1218934(uint64_t a1, void *a2, void **a3, void **a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  v6 = *a3;
  *a4 = *a3;

  return v6;
}

id sub_1D12189F0()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = [v0 countOfConceptsAssociatedToUserRecordsWithError_];
  v2 = v7[0];
  if (v1)
  {
    v3 = v1;
    v4 = v7[0];
    v2 = [v3 integerValue];
  }

  else
  {
    v5 = v7[0];
    sub_1D138D2BC();

    swift_willThrow();
  }

  return v2;
}

BOOL URL.isCategoryRoomURL.getter()
{
  v0 = sub_1D138D37C();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = sub_1D138D35C();
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v4;
  v7 = v5;
  v30 = v2;
  v31 = v3;
  strcpy(v29, "x-apple-health");
  HIBYTE(v29[1]) = -18;
  sub_1D10940C8();
  v8 = sub_1D1390FCC();

  if (v8)
  {
    goto LABEL_4;
  }

  v30 = v6;
  v31 = v7;
  v29[0] = 0xD00000000000001DLL;
  v29[1] = 0x80000001D13C4B00;
  v10 = sub_1D1390FCC();

  if (v10)
  {
    return 0;
  }

  v11 = sub_1D138D36C();
  v30 = 47;
  v31 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v11);
  v27[2] = &v30;
  v14 = sub_1D1219198(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D1219AF0, v27, v12, v13, &v28);
  v15 = *(v14 + 16);
  if (!v15 || (v16 = (v14 + 32 * v15), v17 = *v16, v18 = v16[1], v20 = v16[2], v19 = v16[3], , , (v18 ^ v17) < 0x4000))
  {
LABEL_4:

    return 0;
  }

  v21 = sub_1D1219B0C(v17, v18, v20, v19, 10);
  if ((v22 & 0x100) != 0)
  {

    sub_1D1219558(v17, v18, v20, v19, 10);
    if ((v26 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v23 = v22;
  v24 = v21;

  if (v23)
  {
LABEL_13:

    goto LABEL_4;
  }

  v25 = v24;
LABEL_15:
  DisplayCategory.Kind.init(rawValue:)(v25);
  swift_bridgeObjectRelease_n();
  return v30 != 11;
}

void URL.chrDisplayCategoryKind.getter(_BYTE *a1@<X8>)
{
  v3 = sub_1D138D36C();
  v19[0] = 47;
  v19[1] = 0xE100000000000000;
  v18[2] = v19;
  v5 = sub_1D1219198(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D121A148, v18, v3, v4, v19);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = (v5 + 32 * v6);
  v8 = *v7;
  v9 = v7[1];
  v11 = v7[2];
  v10 = v7[3];

  if ((v9 ^ v8) < 0x4000)
  {
    goto LABEL_8;
  }

  v12 = sub_1D1219B0C(v8, v9, v11, v10, 10);
  if ((v13 & 0x100) != 0)
  {

    sub_1D1219558(v8, v9, v11, v10, 10);
    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14 = v13;
  v15 = v12;

  if (v14)
  {
LABEL_7:

LABEL_8:

    *a1 = 11;
    return;
  }

  v16 = v15;
LABEL_9:
  DisplayCategory.Kind.init(rawValue:)(v16);
  swift_bridgeObjectRelease_n();
}

BOOL URL.isViewHealthRecordURL.getter()
{
  sub_1D138D37C();
  if (!v0)
  {
    return 0;
  }

  sub_1D138D35C();
  if (!v1 || (sub_1D10940C8(), v2 = sub_1D1390FCC(), , v2))
  {

    return 0;
  }

  v4 = sub_1D1390FCC();

  if (v4)
  {
    return 0;
  }

  v5 = *(sub_1D138D2EC() + 16);

  return v5 == 2;
}

void URL.medicalRecordID.getter(uint64_t a1@<X8>)
{
  if (URL.isViewHealthRecordURL.getter())
  {
    sub_1D138D2FC();
    sub_1D138D58C();
  }

  else
  {
    v2 = sub_1D138D5EC();
    v3 = *(*(v2 - 8) + 56);

    v3(a1, 1, 1, v2);
  }
}

uint64_t static URL.categoryRoomURL(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1219C30(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v12[2] = 0xD00000000000002FLL;
  v12[3] = 0x80000001D13C4B40;
  v12[1] = v7;
  v8 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v8);

  sub_1D138D38C();

  v9 = sub_1D138D39C();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1219198@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D139037C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D10F8458(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D10F8458((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D139035C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D139029C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D139029C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D139037C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D10F8458(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D139037C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D10F8458(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D10F8458((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D139029C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1219558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_1D1219C88();

  v6 = sub_1D139036C();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D12C63DC(v6, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_1D139128C();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
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

          if (v9)
          {
            v25 = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v25 * a5;
              if ((v25 * a5) >> 64 == (v25 * a5) >> 63)
              {
                v25 = v29 + (v27 + v28);
                if (!__OFADD__(v29, (v27 + v28)))
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v9)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
            {
              v33 = v36 + (v34 + v35);
              if (!__OFADD__(v36, (v34 + v35)))
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v16 * a5;
            if ((v16 * a5) >> 64 == (v16 * a5) >> 63)
            {
              v16 = v20 - (v18 + v19);
              if (!__OFSUB__(v20, (v18 + v19)))
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v58 = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v58 * a5) >> 64 == (v58 * a5) >> 63)
          {
            v58 = v65 + (v63 + v64);
            if (!__OFADD__(v65, (v63 + v64)))
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 == (v41 * a5) >> 63)
          {
            v41 = v48 - (v46 + v47);
            if (!__OFSUB__(v48, (v46 + v47)))
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v50 = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v50 * a5) >> 64 == (v50 * a5) >> 63)
        {
          v50 = v57 + (v55 + v56);
          if (!__OFADD__(v57, (v55 + v56)))
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1D1219B0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
    v11 = sub_1D139128C();
  }

  result = sub_1D1219CDC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1D1219BD8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D139162C() & 1;
  }
}

void sub_1D1219C30(uint64_t a1)
{
  if (!qword_1EC60A5F0)
  {
    sub_1D138D39C();
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A5F0);
    }
  }
}

unint64_t sub_1D1219C88()
{
  result = qword_1EC60DA40;
  if (!qword_1EC60DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DA40);
  }

  return result;
}

uint64_t sub_1D1219CDC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_1D12C67D4(a2, a4, a5);
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
  result = sub_1D13902FC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D12C67D4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D12C67D4(a3, a4, a5);
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

  result = sub_1D13902FC();
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

id sub_1D121A164()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D121A20C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setNumberOfLines_];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1D121A2F0()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell_baseAccessibilityIdentifier + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell_baseAccessibilityIdentifier];
    sub_1D10A5C9C(0, &qword_1EE06B560, MEMORY[0x1E69E6158]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E700;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    swift_bridgeObjectRetain_n();
    v4 = sub_1D139044C();

    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v0 setAccessibilityIdentifier_];
    v6 = sub_1D121A164();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D139E710;
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
    *(v7 + 48) = 1852793673;
    *(v7 + 56) = 0xE400000000000000;

    v8 = sub_1D139044C();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
    v10 = sub_1D121A20C();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D139E710;
    *(v11 + 32) = v2;
    *(v11 + 40) = v1;
    *(v11 + 48) = 0x6554636974617453;
    *(v11 + 56) = 0xEA00000000007478;
    v12 = sub_1D139044C();

    v13 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }
}

id sub_1D121A528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel] = 0;
  v5 = &v3[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell_baseAccessibilityIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a3)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for TextWithIconCell();
  v7 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  sub_1D121A6B4();

  return v8;
}

void sub_1D121A6B4()
{
  v1 = [v0 contentView];
  v2 = sub_1D121A164();
  [v1 addSubview_];

  v3 = [v0 &selRef_batches];
  v4 = sub_1D121A20C();
  [v3 addSubview_];

  v48 = objc_opt_self();
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139FBC0;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView;
  v7 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView] widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v5 + 32) = v8;
  v9 = [*&v0[v6] heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v5 + 40) = v10;
  v11 = [*&v0[v6] leadingAnchor];
  v12 = [v0 &selRef_batches];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 &selRef_hrui_insurance + 1];
  v15 = [v11 constraintEqualToAnchor_];

  *(v5 + 48) = v15;
  v16 = [*&v0[v6] topAnchor];
  v17 = [v0 &selRef_batches];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v16 constraintGreaterThanOrEqualToAnchor_];

  *(v5 + 56) = v20;
  v21 = [v0 &selRef_batches];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 bottomAnchor];
  v24 = [*&v0[v6] bottomAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor_];

  *(v5 + 64) = v25;
  v26 = OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel;
  v27 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel] centerYAnchor];
  v28 = [*&v0[v6] centerYAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v5 + 72) = v29;
  v30 = [*&v0[v26] topAnchor];
  v31 = [v0 contentView];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v32 topAnchor];
  v34 = [v30 constraintEqualToAnchor_];

  *(v5 + 80) = v34;
  v35 = [*&v0[v26] leadingAnchor];
  v36 = [*&v0[v6] trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:16.0];

  *(v5 + 88) = v37;
  v38 = [v0 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 trailingAnchor];
  v41 = [*&v0[v26] trailingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v5 + 96) = v42;
  v43 = [v0 contentView];
  v44 = [v43 layoutMarginsGuide];

  v45 = [v44 bottomAnchor];
  v46 = [*&v0[v26] bottomAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v5 + 104) = v47;
  sub_1D1071940();
  v49 = sub_1D139044C();

  [v48 activateConstraints_];
}

id sub_1D121AE44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TextWithIconCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void SettingsViewController.tableView(_:didSelectRowAt:)(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1D138D7DC();
  [a1 deselectRowAtIndexPath:v5 animated:1];

  v6 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;

  v8 = sub_1D115FCFC(v7);

  v9 = sub_1D138D81C();
  if (v9 < 0 || v9 >= *(v8 + 16))
  {
LABEL_25:

    return;
  }

  v10 = *(v8 + v9 + 32);

  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        v11 = sub_1D138D7FC();
        v12 = &OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels;
        goto LABEL_24;
      }

      sub_1D121B468();
      return;
    }

    v13 = *&v2[v6];
    if (v13 >> 62)
    {
      if (!sub_1D13910DC())
      {
        return;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v14 = sub_1D138D7FC();
    v15 = *&v2[v6];
    if (v15 >> 62)
    {
      if (v14 == sub_1D13910DC())
      {
        goto LABEL_20;
      }
    }

    else if (v14 == *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      v16 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
      v17 = [objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController) initWithContext:3 onboardingOptions:0 sourceIdentifier:0 profile:v16 existingAccount:0];
      v18 = [v16 onboardingManager];
      v19 = [v18 getPendingOnboardingGatewayAndClear];

      [v17 setGatewayProxyToTry_];
      v20 = [v16 onboardingManager];
      v21 = swift_allocObject();
      v21[2] = v3;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      aBlock[4] = sub_1D11ECB40;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D116B84C;
      aBlock[3] = &block_descriptor_40;
      v22 = _Block_copy(aBlock);
      v23 = v3;
      v24 = v17;

      [v20 registerInflightOnboardingViewController:v24 completion:v22];
      _Block_release(v22);

      if (qword_1EE06A170 != -1)
      {
        swift_once();
      }

      sub_1D122101C(2, 3, 0);
      return;
    }

    v29 = sub_1D138D7FC();
    v30 = *&v2[v6];
    if ((v30 & 0xC000000000000001) == 0)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v29 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v30 + 8 * v29 + 32);
LABEL_40:
        v32 = *&v3[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
        LOBYTE(aBlock[0]) = 0;
        objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController(0));
        v33 = v31;
        v35 = sub_1D127988C(v33, v32, aBlock, 0, 0);
        [v3 showViewController:v35 sender:0];

LABEL_41:

        return;
      }

      __break(1u);
      return;
    }

    v34 = v29;

    v31 = MEMORY[0x1D3886B70](v34, v30);

    goto LABEL_40;
  }

  if (v10 <= 4)
  {
    if (v10 == 3)
    {
      v11 = sub_1D138D7FC();
      v12 = &OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels;
LABEL_24:
      v25 = *&v3[*v12];

      sub_1D121B564(v11, v25);
      goto LABEL_25;
    }

    v26 = [objc_allocWithZone(WDClinicalSettingsViewController) initWithStyle:2 profile:*&v2[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile]];
    if (!v26)
    {
      return;
    }

    v35 = v26;
    v27 = [v26 navigationItem];
    [v27 setLargeTitleDisplayMode_];

    [v3 showViewController:v35 sender:0];
    goto LABEL_41;
  }

  if (v10 == 5)
  {

    sub_1D121BA30();
  }

  else
  {
    v28 = sub_1D138D7FC();

    sub_1D121BB58(v28);
  }
}

void sub_1D121B468()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
  v3 = type metadata accessor for PDFConfigurationViewController();
  v4 = objc_allocWithZone(v3);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v5 = objc_allocWithZone(v3);
  v6 = v2;
  v7 = sub_1D11B6250(v6, 0, v9);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v8 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_1D121B564(unint64_t a1, uint64_t a2)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v10 = *(a2 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x1D3886B70](a1, a2, v7);
LABEL_5:
  v11 = v10;
  v12 = [v10 source];
  v45[0] = 0;
  v13 = [v12 _fetchBundleWithError_];

  if (v13)
  {
    v14 = v45[0];

    v15 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
    v16 = [v11 source];
    v17 = [objc_allocWithZone(WDClinicalAuthorizationSettingsViewController) initWithProfile:v15 source:v16];

    [v2 showViewController:v17 sender:0];
  }

  else
  {
    v44 = v2;
    v18 = v45[0];
    v19 = sub_1D138D2BC();

    swift_willThrow();
    sub_1D138F05C();
    v20 = v11;
    v21 = v19;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v20;
      v26 = v25;
      v42 = swift_slowAlloc();
      v46[0] = v42;
      *v24 = 138543618;
      v27 = [v43 source];
      *(v24 + 4) = v27;
      *v26 = v27;
      *(v24 + 12) = 2082;
      v45[0] = v19;
      v28 = v19;
      sub_1D10922EC();
      sub_1D13916AC();
      v29 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v30 = sub_1D139020C();
      v32 = sub_1D11DF718(v30, v31, v46);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_1D101F000, v22, v23, "Failed to fetch app bundle for source %{public}@: %{public}s", v24, 0x16u);
      sub_1D10B8240(v26);
      v33 = v26;
      v20 = v43;
      MEMORY[0x1D38882F0](v33, -1, -1);
      v34 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1D38882F0](v34, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v35 = v44;
    v36 = objc_opt_self();
    v37 = [*&v35[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile] healthStore];
    v38 = [v36 sharedInstanceForHealthStore_];

    v39 = [v20 source];
    v40 = [v38 createDeletedSourceMessageViewControllerForSource_];

    v41 = [v40 navigationItem];
    [v41 setLargeTitleDisplayMode_];

    [v35 showViewController:v40 sender:0];
  }
}

void sub_1D121BA30()
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D139012C();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    [v2 setPresentingViewController_];
    [v2 present];
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    sub_1D1223978(0, 1, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D121BB58(uint64_t a1)
{
  v3 = sub_1D138D79C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          return;
        }

        v19 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
        type metadata accessor for EntriesDataSource(0);
        swift_allocObject();
        v20 = v19;
        v21 = v1;
        sub_1D12C2EB4(v20);
        sub_1D121C3B0();
        v22 = sub_1D138F9EC();
        v41[0] = v20;
        v41[1] = v22;
        v41[2] = v23;
        sub_1D121C408(0);
        v25 = objc_allocWithZone(v24);
        v26 = sub_1D138FB6C();
        v27 = sub_1D139012C();
        [v26 setTitle_];

        [v21 showViewController:v26 sender:v21];
        goto LABEL_27;
      }

      v35 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
      objc_allocWithZone(type metadata accessor for InternalSharedItemsViewController(0));
      v39 = sub_1D1263654(v35);
      [v1 showViewController:v39 sender:v1];
      v36 = v39;
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
          v8 = type metadata accessor for InternalStateViewController();
          v9 = objc_allocWithZone(v8);
          *&v9[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections] = MEMORY[0x1E69E7CC0];
          *&v9[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_profile] = v7;
          v10 = type metadata accessor for InternalStateProvider();
          v11 = objc_allocWithZone(v10);
          v12 = v7;
          v13 = [v12 conceptStore];
          v14 = [v12 healthRecordsStore];
          v15 = objc_allocWithZone(v10);
          v16 = v1;
          v17 = sub_1D11E0D98(v13, v14);
          swift_getObjectType();
          swift_deallocPartialClassInstance();
          *&v9[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_dataProvider] = v17;
          v40.receiver = v9;
          v40.super_class = v8;
          v18 = objc_msgSendSuper2(&v40, sel_initWithStyle_, 2);

          [v16 showViewController:v18 sender:v16];
        }

        return;
      }

      if (qword_1EC608EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D136BDAC(byte_1EC6101E8, byte_1F4D04B38);
      v29 = 0;
      if ((v30 & 1) == 0 && v28 <= 0)
      {
        if (v28 < -1)
        {
          __break(1u);
          goto LABEL_30;
        }

        v29 = byte_1F4D04B38[v28 + 33];
      }

      LOBYTE(v41[0]) = v29;
      _s15HealthRecordsUI8FeaturesC7setMode_6notifyyAA013UserInterfaceF0O_SbtFZ_0(v41, 1);

      v32 = sub_1D115FCFC(v31);

      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        while (*(v32 + v34 + 32) != 6)
        {
          if (v33 == ++v34)
          {
            goto LABEL_19;
          }
        }

        v37 = [v1 tableView];
        if (v37)
        {
          v38 = v37;
          sub_1D138D78C();
          v26 = sub_1D138D77C();
          (*(v4 + 8))(v6, v3);
          [v38 reloadSections:v26 withRowAnimation:100];

LABEL_27:
          return;
        }

LABEL_30:
        __break(1u);
        return;
      }

LABEL_19:
    }
  }
}

double block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL sub_1D121C260()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;

  v4 = sub_1D115FCFC(v3);

  v5 = sub_1D138D81C();
  if (v5 < 0 || v5 >= *(v4 + 16))
  {

    return 1;
  }

  v6 = *(v4 + v5 + 32);

  if (!v6)
  {
    v9 = *(v1 + v2);
    if (!(v9 >> 62))
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = sub_1D13910DC();
    return v10 != 0;
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v7 = &OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels;
      goto LABEL_10;
    }

    return 1;
  }

  v7 = &OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels;
LABEL_10:
  v9 = *(v1 + *v7);
  if (v9 >> 62)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  return v10 != 0;
}

void sub_1D121C358(uint64_t a1)
{
  if (!qword_1EE06A518)
  {
    sub_1D10C94AC();
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06A518);
    }
  }
}

unint64_t sub_1D121C3B0()
{
  result = qword_1EC60DA60;
  if (!qword_1EC60DA60)
  {
    type metadata accessor for EntriesDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DA60);
  }

  return result;
}

void sub_1D121C408(uint64_t a1)
{
  if (!qword_1EC60DA68)
  {
    sub_1D121C464();
    v1 = sub_1D138FB7C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DA68);
    }
  }
}

unint64_t sub_1D121C464()
{
  result = qword_1EC60DA70;
  if (!qword_1EC60DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DA70);
  }

  return result;
}

uint64_t sub_1D121C4B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  sub_1D1072E70(v1 + 88, v15);
  v11 = swift_allocObject();
  *(v11 + 128) = 0;
  *(v11 + 136) = 1;
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 72) = v10;
  *(v11 + 80) = a1;
  sub_1D102CC18(v15, v11 + 88);

  v12 = v3;
  v13 = v6;
  return v11;
}

uint64_t sub_1D121C5B4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  sub_1D1072E70((v1 + 9), v13);
  v9 = swift_allocObject();
  *(v9 + 112) = 0;
  *(v9 + 120) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 1;
  *(v9 + 144) = 0;
  *(v9 + 152) = 1;
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *(v9 + 64) = a1;
  sub_1D102CC18(v13, v9 + 72);
  v10 = v3;
  v11 = v6;

  return v9;
}

double sub_1D121C6A4(void *a1)
{
  v3 = 0.0;
  v4 = 0.0;
  if ((*(v1 + 40) & 1) == 0)
  {
    v5 = *(v1 + 32);
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v6);
    v4 = sub_1D112F3EC(v6, v7, v5);
  }

  v8 = MEMORY[0x1EEE9AC00](a1);
  v19[2] = a1;
  v10 = sub_1D10F28B8(sub_1D121EE08, v8, v19, v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    if (v11 <= 3)
    {
      v12 = 0;
LABEL_9:
      v15 = v11 - v12;
      v16 = (v10 + 8 * v12 + 32);
      do
      {
        v17 = *v16++;
        v3 = v3 + v17;
        --v15;
      }

      while (v15);
      goto LABEL_11;
    }

    v12 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v13 = (v10 + 48);
    v14 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v3 = v3 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
      v13 += 4;
      v14 -= 4;
    }

    while (v14);
    if (v11 != v12)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  return v4 + v3;
}

double sub_1D121C7E4()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  result = sub_1D121C81C(v0);
  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  return result;
}

double sub_1D121C81C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    v5 = 0.0;
    goto LABEL_13;
  }

LABEL_3:

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D3886B70](v4, v2);
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v7 = sub_1D13910DC();
        if (v7 < 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
        }

        v3 = v7;
        if (!v7)
        {
          v5 = 0.0;
          goto LABEL_11;
        }

        goto LABEL_3;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    ++v4;
    v6 = sub_1D121C98C();

    v5 = v5 + v6;
  }

  while (v3 != v4);

  if (v2 >> 62)
  {
LABEL_11:
    v7 = sub_1D13910DC();
    goto LABEL_14;
  }

LABEL_13:
  v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  if (__OFSUB__(v7, 1))
  {
    goto LABEL_20;
  }

  v8 = (v7 - 1);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 72), v9);
  return (*(v10 + 48))(v9, v10) * v8 + v5 + *(a1 + 32) + 18.0;
}

double sub_1D121C98C()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  sub_1D121D140(v0);
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t sub_1D121C9C4()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  result = sub_1D121CA00(v0);
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t sub_1D121CA00(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >> 62)
  {
LABEL_40:
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_1D13910DC();
  }

  else
  {
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  v3 = 0;
  v23 = v1 & 0xC000000000000001;
  v20 = v1;
  v21 = v1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (v2 != v24)
  {
    if (v23)
    {
      v6 = MEMORY[0x1D3886B70](v2, v20);
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v2 >= *(v22 + 16))
      {
        goto LABEL_37;
      }

      v6 = *(v21 + 8 * v2);

      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        goto LABEL_36;
      }
    }

    v7 = *(v6 + 80);
    if (v7 >> 62)
    {
      v8 = sub_1D13910DC();
      if (v8)
      {
LABEL_12:
        sub_1D10FDC3C(0, v8 & ~(v8 >> 63), 0);
        if ((v8 & 0x8000000000000000) == 0)
        {
          v9 = 0;
          v10 = v4;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1D3886B70](v9, v7);
            }

            else
            {
            }

            v12 = *(v11 + 48);
            if (v12 >> 62)
            {
              v13 = sub_1D13910DC();
            }

            else
            {
              v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v15 = *(v4 + 16);
            v14 = *(v4 + 24);
            v16 = v15 + 1;
            if (v15 >= v14 >> 1)
            {
              sub_1D10FDC3C((v14 > 1), v15 + 1, 1);
            }

            ++v9;
            *(v4 + 16) = v16;
            *(v4 + 8 * v15 + 32) = v13;
          }

          while (v8 != v9);
          v4 = MEMORY[0x1E69E7CC0];
LABEL_30:
          v1 = 0;
          v17 = 32;
          while (1)
          {
            v18 = *(v10 + v17);
            v5 = __OFADD__(v1, v18);
            v1 += v18;
            if (v5)
            {
              break;
            }

            v17 += 8;
            if (!--v16)
            {

              goto LABEL_5;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    v16 = *(v4 + 16);
    if (v16)
    {
      v10 = v4;
      goto LABEL_30;
    }

    v1 = 0;
LABEL_5:

    v5 = __OFADD__(v3, v1);
    v3 += v1;
    if (v5)
    {
      goto LABEL_38;
    }
  }

  return v3;
}

double sub_1D121CC80()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    return *(v0 + 144);
  }

  sub_1D121CCB8(v0);
  *(v0 + 144) = result;
  *(v0 + 152) = 0;
  return result;
}

uint64_t sub_1D121CCB8(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 >> 62)
  {
LABEL_19:
    result = sub_1D13910DC();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  v3 = 0;
  v4 = 0.0;
  while (1)
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v1 + 32 + 8 * v3++);
      if (v4 <= *(v5 + 24))
      {
        v4 = *(v5 + 24);
      }

      if (v3 == v2)
      {
        return result;
      }
    }

    v6 = v4;
    result = MEMORY[0x1D3886B70](v3, v1);
    if (__OFADD__(v3++, 1))
    {
      break;
    }

    v8 = *(result + 24);
    result = swift_unknownObjectRelease();
    if (v6 > v8)
    {
      v4 = v6;
    }

    else
    {
      v4 = v8;
    }

    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D121CDA8()
{
  v1 = *(v0 + 64);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v1 = *(*(v1 + 32) + 80);

    if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_21:
  v1 = *(MEMORY[0x1D3886B70](0, v1) + 80);

  swift_unknownObjectRelease();
  if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
  {
LABEL_7:
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!sub_1D13910DC())
  {
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

LABEL_8:
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v2 = *(v1 + 32);

    v1 = *(v2 + 48);

    if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v7 = MEMORY[0x1D3886B70](0, v1);

  v1 = *(v7 + 48);

  swift_unknownObjectRelease();
  if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
  {
LABEL_12:
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = sub_1D13910DC();
  if (!result)
  {
LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v4 = MEMORY[0x1D3886B70](0, v1);
    goto LABEL_16;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v4 = *(v1 + 32);

LABEL_16:

  v5 = *(v4 + 16);
  if (v5 >> 62)
  {
    v6 = sub_1D13910DC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

uint64_t sub_1D121CF9C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return swift_deallocClassInstance();
}

double sub_1D121D010()
{
  v1 = v0;
  v2 = 0.0;
  v3 = 0.0;
  if ((*(v0 + 64) & 1) == 0)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 112);
    v6 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v1[14]);
    v7 = sub_1D112F3EC(v5, v6, v4);
    v8 = v1[14];
    v9 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v8);
    v3 = v7 + (*(v9 + 24))(v8, v9);
  }

  if (v1[9])
  {
    sub_1D121D0F4();
    v11 = v10;
    v12 = v1[14];
    v13 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v12);
    v2 = sub_1D112F3EC(v12, v13, v11);
  }

  return v3 + v2;
}

void sub_1D121D0F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      v4 = 0.0;
      do
      {
        v5 = *v3++;
        v6 = v5;
        if (v4 <= v5)
        {
          v4 = v6;
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = 0.0;
    }

    *(v0 + 48) = v4;
    *(v0 + 56) = 0;
  }
}

void sub_1D121D140(void *a1)
{
  v2 = a1[10];
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_29:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_3:
      v43 = MEMORY[0x1E69E7CC0];
      sub_1D10FDC5C(0, v4 & ~(v4 >> 63), 0);
      if ((v4 & 0x8000000000000000) == 0)
      {
        v39 = v3;
        v5 = 0;
        v3 = 0;
        v6 = v43;
        v7 = v2 & 0xC000000000000001;
        v41 = v2 & 0xFFFFFFFFFFFFFF8;
        v42 = v2;
        v40 = v2 + 32;
        while (1)
        {
          v2 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v7)
          {
            v8 = MEMORY[0x1D3886B70]();
            v9 = v8;
          }

          else
          {
            if (v5 >= *(v41 + 16))
            {
              goto LABEL_28;
            }

            v9 = *(v40 + 8 * v5);
          }

          v10 = 0.0;
          if ((*(v9 + 40) & 1) == 0)
          {
            v11 = *(v9 + 32);
            v12 = a1[14];
            v13 = a1[15];
            __swift_project_boxed_opaque_existential_1Tm(a1 + 11, v12);
            v10 = sub_1D112F3EC(v12, v13, v11);
          }

          v14 = MEMORY[0x1EEE9AC00](v8);
          v38[2] = a1 + 11;
          v16 = sub_1D10F28B8(sub_1D121EF28, v14, v38, v15);
          v17 = *(v16 + 16);
          if (v17)
          {
            break;
          }

          v19 = 0.0;
LABEL_22:

          v43 = v6;
          v26 = *(v6 + 16);
          v25 = *(v6 + 24);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            sub_1D10FDC5C((v25 > 1), v26 + 1, 1);
            v6 = v43;
          }

          *(v6 + 16) = v27;
          *(v6 + 8 * v26 + 32) = v10 + v19;
          v5 = v2;
          if (v2 == v4)
          {
            v3 = v39;
            if (v27 > 3)
            {
              goto LABEL_32;
            }

LABEL_26:
            v28 = 0;
            v29 = 0.0;
            v2 = v42;
            goto LABEL_35;
          }
        }

        if (v17 > 3)
        {
          v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          v20 = (v16 + 48);
          v19 = 0.0;
          v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
            v20 += 4;
            v21 -= 4;
          }

          while (v21);
          if (v17 == v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v18 = 0;
          v19 = 0.0;
        }

        v22 = v17 - v18;
        v23 = (v16 + 8 * v18 + 32);
        do
        {
          v24 = *v23++;
          v19 = v19 + v24;
          --v22;
        }

        while (v22);
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  v27 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v27)
  {
    v42 = v2;
    if (v27 <= 3)
    {
      goto LABEL_26;
    }

LABEL_32:
    v28 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = (v6 + 48);
    v29 = 0.0;
    v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v29 = v29 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
      v30 += 4;
      v31 -= 4;
    }

    while (v31);
    v2 = v42;
    if (v27 != v28)
    {
LABEL_35:
      v32 = v27 - v28;
      v33 = (v6 + 8 * v28 + 32);
      do
      {
        v34 = *v33++;
        v29 = v29 + v34;
        --v32;
      }

      while (v32);
    }

    if (!v3)
    {
      goto LABEL_38;
    }

LABEL_40:
    v35 = sub_1D13910DC();
    goto LABEL_41;
  }

  if (v3)
  {
    goto LABEL_40;
  }

LABEL_38:
  v35 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_41:
  if (!__OFSUB__(v35, 1))
  {
    v36 = a1[14];
    v37 = a1[15];
    __swift_project_boxed_opaque_existential_1Tm(a1 + 11, v36);
    (*(v37 + 48))(v36, v37);
    sub_1D121D010();
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1D121D4EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return swift_deallocClassInstance();
}

void sub_1D121D568(void *a1@<X1>, double *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  sub_1D121D0F4();
  *a2 = sub_1D112F3EC(v3, v4, v5);
}

uint64_t sub_1D121D5D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D121D634()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D121D6A4()
{
  result = qword_1EC60DA78;
  if (!qword_1EC60DA78)
  {
    sub_1D121E974(255, &qword_1EC60DA80, 255, sub_1D121D730, MEMORY[0x1E69E69D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DA78);
  }

  return result;
}

unint64_t sub_1D121D730()
{
  result = qword_1EC60DA88;
  if (!qword_1EC60DA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60DA88);
  }

  return result;
}

uint64_t sub_1D121D77C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 64);

  sub_1D121E3E8(0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1D121D7E0()
{
  sub_1D121DFF8(*v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1D121D83C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);

  sub_1D121E514(0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1D121D898()
{
  sub_1D121DE00(*v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1D121D8F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 48);

  sub_1D121E6C4(0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1D121D950()
{
  sub_1D121E1F0(*v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1D121D9AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);

  sub_1D121E878(0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1D121DA08()
{
  sub_1D121DC08(*v0);
  v2 = v1;

  return v2;
}

unint64_t sub_1D121DA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC60DA90;
  if (!qword_1EC60DA90)
  {
    sub_1D121E974(255, &qword_1EC60DA98, a3, _s10SizedValueCMa, MEMORY[0x1E69E69D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DA90);
  }

  return result;
}

unint64_t sub_1D121DAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC60DAA0;
  if (!qword_1EC60DAA0)
  {
    sub_1D121E974(255, &qword_1EC60DAA8, a3, _s15SizedValueGroupCMa, MEMORY[0x1E69E69D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DAA0);
  }

  return result;
}

unint64_t sub_1D121DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC60DAB0;
  if (!qword_1EC60DAB0)
  {
    sub_1D121E974(255, &qword_1EC60DAB8, a3, _s11SizedRecordCMa, MEMORY[0x1E69E69D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DAB0);
  }

  return result;
}

void sub_1D121DC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v29 = v1;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1D3886B70](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D13910DC();
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v9;
        v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_1D106F424();
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 25;
        }

        v19 = v18 >> 3;
        v16[2] = v15;
        v16[3] = (2 * (v18 >> 3)) | 1;
        v20 = (v16 + 4);
        v21 = v3[3] >> 1;
        if (v3[2])
        {
          v22 = v3 + 4;
          if (v16 != v3 || v20 >= v22 + 8 * v21)
          {
            memmove(v16 + 4, v22, 8 * v21);
          }

          v3[2] = 0;
        }

        v7 = (v20 + 8 * v21);
        v5 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v3 = v16;
        v9 = v13;
        v2 = v12;
        v6 = v28;
        v1 = v29;
        v8 = v27;
      }

      v23 = __OFSUB__(v5--, 1);
      if (v23)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:

  v24 = v3[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v5);
    v26 = v25 - v5;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v26;
    }
  }
}

void sub_1D121DE00(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1D3886B70](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D13910DC();
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1D106F424();
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 8 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:

  v23 = v3[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v5);
    v25 = v24 - v5;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v25;
    }
  }
}

void sub_1D121DFF8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1D3886B70](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D13910DC();
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1D106F424();
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 8 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:

  v23 = v3[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v5);
    v25 = v24 - v5;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v25;
    }
  }
}

void sub_1D121E1F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1D3886B70](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D13910DC();
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1D106F424();
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 8 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:

  v23 = v3[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v5);
    v25 = v24 - v5;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v25;
    }
  }
}

void sub_1D121E3E8(uint64_t a1)
{
  if (!qword_1EC60DAC0)
  {
    sub_1D121E5B0(255, &qword_1EC60DAC8, &qword_1EC60B080, _s11SizedRecordCMa, sub_1D1116720);
    sub_1D121E484();
    v1 = sub_1D139123C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DAC0);
    }
  }
}

unint64_t sub_1D121E484()
{
  result = qword_1EC60DAD0;
  if (!qword_1EC60DAD0)
  {
    sub_1D121E5B0(255, &qword_1EC60DAC8, &qword_1EC60B080, _s11SizedRecordCMa, sub_1D1116720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DAD0);
  }

  return result;
}

void sub_1D121E514(uint64_t a1)
{
  if (!qword_1EC60DAD8)
  {
    sub_1D121E5B0(255, &qword_1EC60DAE0, &qword_1EC60B090, _s15SizedValueGroupCMa, sub_1D11167AC);
    sub_1D121E634();
    v1 = sub_1D139123C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DAD8);
    }
  }
}

void sub_1D121E5B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1D121E974(255, a3, a3, a4, MEMORY[0x1E69E62F8]);
    a5();
    v7 = sub_1D139134C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D121E634()
{
  result = qword_1EC60DAE8;
  if (!qword_1EC60DAE8)
  {
    sub_1D121E5B0(255, &qword_1EC60DAE0, &qword_1EC60B090, _s15SizedValueGroupCMa, sub_1D11167AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DAE8);
  }

  return result;
}

void sub_1D121E6C4(uint64_t a1)
{
  if (!qword_1EC60DAF0)
  {
    sub_1D121E5B0(255, &qword_1EC60DAF8, &qword_1EC60DB00, _s10SizedValueCMa, sub_1D121E760);
    sub_1D121E7E8();
    v1 = sub_1D139123C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DAF0);
    }
  }
}

unint64_t sub_1D121E760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC60DB08;
  if (!qword_1EC60DB08)
  {
    sub_1D121E974(255, &qword_1EC60DB00, a3, _s10SizedValueCMa, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DB08);
  }

  return result;
}

unint64_t sub_1D121E7E8()
{
  result = qword_1EC60DB10;
  if (!qword_1EC60DB10)
  {
    sub_1D121E5B0(255, &qword_1EC60DAF8, &qword_1EC60DB00, _s10SizedValueCMa, sub_1D121E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DB10);
  }

  return result;
}

void sub_1D121E878(uint64_t a1)
{
  if (!qword_1EC60DB18)
  {
    sub_1D121E8DC(255);
    sub_1D121EA64();
    v1 = sub_1D139123C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DB18);
    }
  }
}

void sub_1D121E8DC(uint64_t a1)
{
  if (!qword_1EC60DB20)
  {
    sub_1D121E974(255, &qword_1EC60DB28, 255, sub_1D121D730, MEMORY[0x1E69E62F8]);
    sub_1D121E9D8();
    v1 = sub_1D139134C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DB20);
    }
  }
}

void sub_1D121E974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D121E9D8()
{
  result = qword_1EC60DB30;
  if (!qword_1EC60DB30)
  {
    sub_1D121E974(255, &qword_1EC60DB28, 255, sub_1D121D730, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DB30);
  }

  return result;
}

unint64_t sub_1D121EA64()
{
  result = qword_1EC60DB38;
  if (!qword_1EC60DB38)
  {
    sub_1D121E8DC(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DB38);
  }

  return result;
}

uint64_t sub_1D121EABC(char *a1, uint64_t a2, char a3, double a4)
{
  v7 = *v4;
  v8 = *(v4[4] + 16);

  if (v8)
  {
    v10 = sub_1D13904DC();
    *(v10 + 16) = v8;
    bzero((v10 + 32), 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v35 + 16);
  v34 = v7;
  if (v11 >> 62)
  {
    goto LABEL_42;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_46;
  }

  do
  {
    v13 = v11 & 0xC000000000000001;
    if ((v11 & 0xC000000000000001) == 0 && v12 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = 0;
    v37 = v11 + 32;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x1D3886B70](v14, v11);
      }

      else
      {
        v16 = *(v37 + 8 * v14);
      }

      v17 = v16;
      v18 = [v16 string];

      v19 = sub_1D139016C();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1D12FFA8C(a1);
        }

        if (v14 >= *(a1 + 2))
        {
          goto LABEL_39;
        }

        *&a1[8 * v14 + 32] = 0;
        v15 = 0.0;
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_40;
        }

        goto LABEL_10;
      }

      if (v14 >= *(a1 + 2))
      {
        break;
      }

      v23 = *&a1[8 * v14 + 32];
      if (a3 & 1) == 0 && a2 == v14 && (*(v35 + 40))
      {
        v24 = v23 + a4;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v23 + 0.0;
        if (!v13)
        {
LABEL_22:
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v25 = *(v37 + 8 * v14);
          goto LABEL_26;
        }
      }

      v25 = MEMORY[0x1D3886B70](v14, v11);
LABEL_26:
      v26 = v25;
      [v25 boundingRectWithSize:1 options:0 context:{v24, 1.79769313e308}];
      v28 = v27;
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1D12FFA8C(a1);
      }

      if (v14 >= *(a1 + 2))
      {
        goto LABEL_37;
      }

      *&a1[8 * v14 + 32] = ceil(v28);
      if (v14 >= *(v10 + 16))
      {
        goto LABEL_38;
      }

      v15 = ceil(v30);
LABEL_10:
      *(v10 + 32 + 8 * v14++) = v15;
      if (v12 == v14)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v9 = sub_1D13910DC();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_44;
    }

LABEL_45:
    v12 = v9;
  }

  while (v9);
LABEL_46:
  v31 = *(v35 + 40);
  v32 = swift_allocObject();
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  *(v32 + 16) = v11;
  *(v32 + 24) = a1;
  *(v32 + 32) = v10;
  *(v32 + 40) = v31;

  return v32;
}

uint64_t sub_1D121EE30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_1D121EE78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingAllItemsDataSource(uint64_t a1)
{
  result = qword_1EC60DB58;
  if (!qword_1EC60DB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D121EFEC(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v87 = *v2;
  v89 = sub_1D138F0BC();
  v6 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - v9;
  v115 = sub_1D138ED5C();
  v11 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem(0);
  v13 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v82 - v19;
  v20 = MEMORY[0x1E69E7CC0];
  v83 = qword_1EC60DB40;
  *(v3 + qword_1EC60DB40) = MEMORY[0x1E69E7CC0];
  v106 = a2;
  v21 = *(a2 + 48);
  *(v3 + qword_1EC60DB50) = v21;
  v22 = *(v21 + 16);
  v84 = v3;
  *(v3 + qword_1EC60DB48) = v22;
  v23 = a1;

  v94 = sub_1D109C3BC(v20);
  v93 = *(a1 + 16);
  if (v93)
  {
    v25 = 0;
    v108 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v92 = a1 + v108;
    v112 = (v11 + 8);
    v113 = v11 + 16;
    v88 = (v6 + 8);
    *&v24 = 136315138;
    v86 = v24;
    v26 = v90;
    v85 = a1;
    v101 = v10;
    v99 = v11;
    v91 = v13;
    v100 = v15;
    while (v25 < *(v23 + 16))
    {
      v27 = *(v13 + 72);
      v97 = v25;
      v28 = v92 + v27 * v25;
      v29 = v98;
      sub_1D111EC40(v28, v98);
      if (*(v29 + 64))
      {
        v30 = *(v29 + *(v105 + 52));
        if (v30)
        {
          v96 = *(v29 + 64);
          v95 = *(v29 + 56);
          v31 = *(v30 + 16);
          if (v31)
          {
            v117[0] = MEMORY[0x1E69E7CC0];
            sub_1D10FD934(0, v31, 0);
            v23 = 0;
            v26 = v116;
            v32 = v117[0];
            v107 = v30 + v108;
            v103 = v30;
            v104 = v27;
            v102 = v31;
            while (v23 < *(v30 + 16))
            {
              sub_1D111EC40(v107 + v23 * v27, v15);
              sub_1D111EC40(v15, v26);
              v33 = *(v106 + 48);
              v34 = *(v33 + 24);
              v35 = *(v34 + 16);
              v111 = v23;
              if (v35)
              {
                v110 = v32;
                v36 = v33;
                sub_1D121FEAC(&qword_1EC60A930, MEMORY[0x1E69A3918]);
                v109 = v36;

                v37 = sub_1D139006C();
                v38 = -1 << *(v34 + 32);
                v39 = v37 & ~v38;
                if ((*(v34 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
                {
                  v40 = ~v38;
                  v41 = *(v99 + 72);
                  v42 = *(v99 + 16);
                  do
                  {
                    v44 = v114;
                    v43 = v115;
                    v42(v114, *(v34 + 48) + v41 * v39, v115);
                    sub_1D121FEAC(&qword_1EC60A938, MEMORY[0x1E69A3920]);
                    v45 = sub_1D139011C();
                    (*v112)(v44, v43);
                    if (v45)
                    {
                      break;
                    }

                    v39 = (v39 + 1) & v40;
                  }

                  while (((*(v34 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
                }

                else
                {
                  v45 = 0;
                }

                v15 = v100;
                v10 = v101;
                v26 = v116;
                v32 = v110;
                v30 = v103;
                v27 = v104;
                v31 = v102;
              }

              else
              {
                v45 = 0;
              }

              sub_1D111ECA4(v15);
              *(v26 + 49) = v45 & 1;
              v117[0] = v32;
              v47 = *(v32 + 16);
              v46 = *(v32 + 24);
              if (v47 >= v46 >> 1)
              {
                sub_1D10FD934((v46 > 1), v47 + 1, 1);
                v26 = v116;
                v32 = v117[0];
              }

              v23 = v111 + 1;
              *(v32 + 16) = v47 + 1;
              sub_1D10F0DFC(v26, v32 + v108 + v47 * v27);
              if (v23 == v31)
              {
                v23 = v85;
                goto LABEL_30;
              }
            }

            __break(1u);
            break;
          }

          v32 = MEMORY[0x1E69E7CC0];
LABEL_30:
          v26 = v94;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117[0] = v26;
          v64 = sub_1D11362EC(v95, v96);
          v66 = *(v26 + 16);
          v67 = (v65 & 1) == 0;
          v68 = __OFADD__(v66, v67);
          v69 = v66 + v67;
          if (v68)
          {
            goto LABEL_48;
          }

          v70 = v65;
          if (*(v26 + 24) >= v69)
          {
            v26 = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v77 = v23;
              v78 = v64;
              sub_1D1181B14();
              v26 = v90;
              v64 = v78;
              v23 = v77;
            }
          }

          else
          {
            sub_1D117B4CC(v69, isUniquelyReferenced_nonNull_native);
            v64 = sub_1D11362EC(v95, v96);
            if ((v70 & 1) != (v71 & 1))
            {
              goto LABEL_54;
            }

            v26 = v90;
          }

          v94 = v117[0];
          if (v70)
          {
            *(*(v117[0] + 56) + 8 * v64) = v32;
          }

          else
          {
            *(v117[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v72 = v94;
            v73 = (*(v94 + 48) + 16 * v64);
            v74 = v96;
            *v73 = v95;
            v73[1] = v74;
            *(*(v72 + 56) + 8 * v64) = v32;
            v75 = *(v72 + 16);
            v68 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v68)
            {
              goto LABEL_49;
            }

            *(v72 + 16) = v76;
          }
        }

        else
        {
          sub_1D138F06C();
          v56 = sub_1D138F0AC();
          v57 = sub_1D139081C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v117[0] = v59;
            *v58 = v86;
            v60 = sub_1D139184C();
            v62 = sub_1D11DF718(v60, v61, v117);

            *(v58 + 4) = v62;
            _os_log_impl(&dword_1D101F000, v56, v57, "[%s] Item did not have any associate items", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v59);
            MEMORY[0x1D38882F0](v59, -1, -1);
            MEMORY[0x1D38882F0](v58, -1, -1);
          }

          (*v88)(v10, v89);
          v26 = v90;
        }
      }

      else
      {
        sub_1D138F06C();
        v48 = v26;
        v49 = sub_1D138F0AC();
        v50 = sub_1D139081C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v117[0] = v52;
          *v51 = v86;
          v53 = sub_1D139184C();
          v55 = sub_1D11DF718(v53, v54, v117);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_1D101F000, v49, v50, "[%s] Item did not have a name", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x1D38882F0](v52, -1, -1);
          MEMORY[0x1D38882F0](v51, -1, -1);
        }

        (*v88)(v48, v89);
        v26 = v48;
      }

      v25 = v97 + 1;
      sub_1D111ECA4(v98);
      v13 = v91;
      if (v25 == v93)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    if (!sub_1D13910DC())
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

LABEL_40:

  sub_1D121FC44(v94, sub_1D121FC3C);

  v117[0] = sub_1D11131C8(v80, v79);
  sub_1D111D580(v117);

  *(v84 + v83) = v117[0];

  v23 = sub_1D110A1B8(v81);

  v26 = *(sub_1D138E88C() + qword_1EC60DB40);
  if (v26 >> 62)
  {
    goto LABEL_50;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_51:

    return;
  }

LABEL_42:
  if ((v26 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1D3886B70](0, v26);

    goto LABEL_45;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_45:
    type metadata accessor for ClinicalSharingSelectableDatatypesDataSource(0);
    sub_1D138E1DC();

    goto LABEL_51;
  }

  __break(1u);
LABEL_54:
  sub_1D13916CC();
  __break(1u);

  __break(1u);
}

double sub_1D121FB60()
{

  return result;
}

uint64_t sub_1D121FBB0()
{
  sub_1D138E87C();

  return swift_deallocClassInstance();
}

void sub_1D121FC44(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D13912DC();
    v4 = v2 + 64;
    v5 = sub_1D139104C();
    v6 = 0;
    v7 = *(v2 + 36);
    v22 = v2 + 72;
    v23 = v3;
    v25 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v26 = v6;
      v10 = v4;
      v11 = (*(v2 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v2 + 56) + 8 * v5);

      a2(v12, v13, v14);

      sub_1D13912AC();
      sub_1D13912EC();
      v2 = v25;
      sub_1D13912FC();
      sub_1D13912BC();
      v8 = 1 << *(v25 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v15 = *(v10 + 8 * v9);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v4 = v10;
      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (v22 + 8 * v9);
        while (v18 < (v8 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1D1105004(v5, v7, 0);
            v8 = __clz(__rbit64(v20)) + v17;
            goto LABEL_18;
          }
        }

        sub_1D1105004(v5, v7, 0);
LABEL_18:
        v2 = v25;
      }

      v6 = v26 + 1;
      v5 = v8;
      if (v26 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_1D121FEAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D138ED5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D121FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D12262E0(0, &qword_1EC60A900, MEMORY[0x1E69A3690], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1D138E52C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    v15 = MEMORY[0x1E69A3690];
    v16 = MEMORY[0x1E69E6720];
    sub_1D1226790(a1, &qword_1EC60A900, MEMORY[0x1E69A3690], MEMORY[0x1E69E6720], sub_1D12262E0);
    sub_1D12F4DEC(a2, a3, v9);

    sub_1D1226790(v9, &qword_1EC60A900, v15, v16, sub_1D12262E0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D11DA2AC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D1220164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v12 = *(a1 + 64);
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1D11DA46C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E6720];
    sub_1D1226790(a1, &qword_1EC60DBB0, sub_1D11DD350, MEMORY[0x1E69E6720], sub_1D12262E0);
    sub_1D12F4F5C(a2, a3, v11);

    sub_1D1226790(v11, &qword_1EC60DBB0, sub_1D11DD350, v9, sub_1D12262E0);
  }
}

uint64_t sub_1D12202BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, double), void (*a3)(void), double a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    result = a2(a1, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v17;
  }

  else
  {
    result = sub_1D129E314(a4);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v18 = *v5;
      if (!v14)
      {
        a3();
        v15 = v18;
      }

      result = sub_1D1224FF8(v13, v15, v16);
      *v5 = v15;
    }
  }

  return result;
}

uint64_t sub_1D1220390(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v4;
    v12 = *(a1 + 64);
    v5 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_1D11DA8D0(v11, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D138D5EC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v10;
  }

  else
  {
    sub_1D1226790(a1, &unk_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1226344);
    sub_1D12F501C(a2, v11);
    v9 = sub_1D138D5EC();
    (*(*(v9 - 8) + 8))(a2, v9);
    return sub_1D1226790(v11, &unk_1EC60DB98, &qword_1EE06AED0, &type metadata for AccountIcon, sub_1D1226344);
  }

  return result;
}

uint64_t sub_1D12204F0(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v4;
    v10 = *(a1 + 64);
    v5 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1D11DB518(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D1226730(a2, type metadata accessor for BrowseCategory);
    *v2 = v8;
  }

  else
  {
    sub_1D1226790(a1, &qword_1EE06AED8, &qword_1EE06AEE0, &type metadata for BrowseIcon, sub_1D1226344);
    sub_1D12F5320(a2, v9);
    sub_1D1226730(a2, type metadata accessor for BrowseCategory);
    return sub_1D1226790(v9, &qword_1EE06AED8, &qword_1EE06AEE0, &type metadata for BrowseIcon, sub_1D1226344);
  }

  return result;
}

void sub_1D1220618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D11DB800(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_1D11362EC(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_1D1183DC0();
        v13 = v16;
      }

      sub_1D1226130(v9, v13, v14);
      *v4 = v13;
    }
  }
}

uint64_t Presentation.funnelContext()()
{
  v1 = sub_1D138DEBC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  v7 = v6 == *MEMORY[0x1E69A34F8] || v6 == *MEMORY[0x1E69A34F0];
  if (v7)
  {
    return 1;
  }

  if (v6 == *MEMORY[0x1E69A3540])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x1E69A3558])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x1E69A3538] || v6 == *MEMORY[0x1E69A3528])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x1E69A3508] || v6 == *MEMORY[0x1E69A3548])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E69A3518] || v6 == *MEMORY[0x1E69A3500])
  {
    return 6;
  }

  if (v6 == *MEMORY[0x1E69A3550])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x1E69A3520])
  {
    return 7;
  }

  if (v6 == *MEMORY[0x1E69A3510])
  {
    return 9;
  }

  if (v6 == *MEMORY[0x1E69A3560])
  {
    return 0;
  }

  v7 = v6 == *MEMORY[0x1E69A3530];
  result = 0;
  if (!v7)
  {
    result = sub_1D13913BC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D122098C(uint64_t result)
{
  if (result > 1)
  {
    if (result == 2 || result == 3 || result == 4)
    {
      goto LABEL_10;
    }

LABEL_12:
    result = sub_1D139169C();
    __break(1u);
    return result;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  return sub_1D1390DBC();
}

id sub_1D1220AB4()
{
  result = [objc_allocWithZone(type metadata accessor for AnalyticsManager()) init];
  qword_1EE06AEB8 = result;
  return result;
}

id AnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AnalyticsManager.shared.getter()
{
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06AEB8;

  return v1;
}

id AnalyticsManager.init()()
{
  v1 = v0;
  v17 = sub_1D1390A6C();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CHRAnalyticsManager_queuedEvents] = MEMORY[0x1E69E7CC0];
  v16 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  sub_1D138FEEC();
  v19 = v7;
  sub_1D12266A0(&qword_1EE06B770, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D12262E0(0, &qword_1EE06B7A8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D1220F04();
  sub_1D139103C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v17);
  *&v0[v16] = sub_1D1390ABC();
  v0[OBJC_IVAR___CHRAnalyticsManager_optInDetermined] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v9 = OBJC_IVAR___CHRAnalyticsManager_healthStore;
  *&v1[OBJC_IVAR___CHRAnalyticsManager_healthStore] = v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
  *&v1[OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore] = v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E696C038]) initWithHealthStore_];
  *&v1[OBJC_IVAR___CHRAnalyticsManager_conceptStore] = v11;
  v12 = type metadata accessor for AnalyticsManager();
  v18.receiver = v1;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  sub_1D1223F40();

  return v13;
}

unint64_t sub_1D1220F04()
{
  result = qword_1EE06B7A0;
  if (!qword_1EE06B7A0)
  {
    sub_1D12262E0(255, &qword_1EE06B7A8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B7A0);
  }

  return result;
}

void sub_1D122101C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1D138FF3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8018], v7, v9);
  v13 = v12;
  v14 = sub_1D138FF5C();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = v3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D1224068;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1D1096C3C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = v3;

  dispatch_sync(v13, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1D122126C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1D12262E0(0, &qword_1EC60DBA0, sub_1D12263CC, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139EAB0;
  *(inited + 32) = 1885697139;
  *(inited + 40) = 0xE400000000000000;
  sub_1D114949C(a1);
  v9 = sub_1D139012C();

  *(inited + 48) = v9;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  sub_1D11496D4(a2);
  v10 = sub_1D139012C();

  *(inited + 72) = v10;
  *(inited + 80) = 0x6D614E746E657665;
  *(inited + 88) = 0xE900000000000065;
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  *(inited + 96) = sub_1D1390DBC();
  v11 = sub_1D109EE6C(inited);
  swift_setDeallocating();
  sub_1D12263CC(0);
  swift_arrayDestroy();
  if (a3 && (v12 = a3, v13 = swift_isUniquelyReferenced_nonNull_native(), sub_1D11DB800(v12, 0x5579617765746167, 0xEA00000000006C72, v13), (*(a4 + OBJC_IVAR___CHRAnalyticsManager_optInDetermined) & 1) == 0))
  {
    v14 = OBJC_IVAR___CHRAnalyticsManager_queuedEvents;
    swift_beginAccess();
    v15 = *(a4 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D10F94B4(0, v15[2] + 1, 1, v15);
      *(a4 + v14) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1D10F94B4((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v15[v18 + 4] = v11;
    *(a4 + v14) = v15;
    swift_endAccess();
  }

  else
  {
    sub_1D1226444(v11);
  }
}

void sub_1D122157C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = sub_1D138FF3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    sub_1D123E1C4(a4, &aBlock);
    sub_1D1080D98(&aBlock);
    v15 = aBlock;
    if (a5)
    {
LABEL_3:
      v16 = *&v5[OBJC_IVAR___CHRAnalyticsManager_conceptStore];
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      *(v17 + 24) = a1;
      *(v17 + 32) = a2;
      *(v17 + 40) = a3;
      *(v17 + 48) = v15;
      v33 = sub_1D122408C;
      v34 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = sub_1D1226920;
      v32 = &block_descriptor_19_0;
      v18 = _Block_copy(&aBlock);
      v19 = a5;
      v20 = v5;

      [v16 fetchConceptForIdentifier:v19 loadRelationships:0 completionHandler:v18];
      _Block_release(v18);

      return;
    }
  }

  else
  {
    v15 = 11;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v21 = *&v5[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
  *v14 = v21;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8018], v11);
  v22 = v21;
  v23 = sub_1D138FF5C();
  (*(v12 + 8))(v14, v11);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = 0;
  *(v24 + 40) = v15;
  *(v24 + 48) = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D11B6F34;
  *(v25 + 24) = v24;
  v33 = sub_1D1096C64;
  v34 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D10DD3BC;
  v32 = &block_descriptor_13_2;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v22, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
  }
}

void sub_1D1221978(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v11 = sub_1D138FF3C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a4;
  if (a5)
  {
    v17 = *&v5[OBJC_IVAR___CHRAnalyticsManager_conceptStore];
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    *(v18 + 24) = a1;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 48) = v16;
    v33 = sub_1D1226924;
    v34 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1D1226920;
    v32 = &block_descriptor_37;
    v19 = _Block_copy(&aBlock);
    v20 = a5;
    v21 = v5;

    [v17 fetchConceptForIdentifier:v20 loadRelationships:0 completionHandler:v19];
    _Block_release(v19);

    return;
  }

  v22 = *&v5[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
  *v15 = v22;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8018], v11, v13);
  v23 = v22;
  v24 = sub_1D138FF5C();
  (*(v12 + 8))(v15, v11);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = 0;
  *(v25 + 40) = v16;
  *(v25 + 48) = a3;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D11B712C;
  *(v26 + 24) = v25;
  v33 = sub_1D1096C64;
  v34 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D10DD3BC;
  v32 = &block_descriptor_30_2;
  v27 = _Block_copy(&aBlock);

  dispatch_sync(v23, v27);
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1D1221CAC(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, id a6, char isEscapingClosureAtFileLocation)
{
  v13 = sub_1D138FF3C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
LABEL_8:
    v23 = *(&a3->isa + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
    *v17 = v23;
    (*(v14 + 104))(v17, *MEMORY[0x1E69E8018], v13, v15);
    v24 = v23;
    v25 = sub_1D138FF5C();
    (*(v14 + 8))(v17, v13);
    if (v25)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      *(v26 + 24) = a5;
      *(v26 + 32) = 0;
      *(v26 + 40) = isEscapingClosureAtFileLocation;
      *(v26 + 48) = a6;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1D11B712C;
      *(v27 + 24) = v26;
      v35 = sub_1D1096C64;
      v36 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1D10DD3BC;
      v34 = &block_descriptor_165;
      v28 = _Block_copy(&aBlock);

      dispatch_sync(v24, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = a6;
  v18 = a1;
  a6 = [v18 isAdHoc];
  v19 = *(&a3->isa + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v17 = v19;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8018], v13);
  a3 = v19;
  v20 = sub_1D138FF5C();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a6)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  *(v13 + 32) = v21;
  *(v13 + 40) = isEscapingClosureAtFileLocation;
  *(v13 + 48) = v30;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D11B712C;
  *(v14 + 24) = v13;
  v35 = sub_1D1096C64;
  v36 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D10DD3BC;
  v34 = &block_descriptor_176;
  v22 = _Block_copy(&aBlock);
  a5 = v36;

  dispatch_sync(a3, v22);

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }
}

void sub_1D12220C4(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v26 = a3;
  v10 = sub_1D138FF3C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a4;
  v16 = *(v5 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v14 = v16;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10, v12);
  isEscapingClosureAtFileLocation = v16;
  v18 = sub_1D138FF5C();
  (*(v11 + 8))(v14, v10);
  if (a5)
  {
    if ((v18 & 1) == 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = 4;
    *(v19 + 40) = v15;
    *(v19 + 48) = v26;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D11B712C;
    *(v20 + 24) = v19;
    v31 = sub_1D1096C64;
    v32 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D10DD3BC;
    v30 = &block_descriptor_59_1;
    a2 = _Block_copy(&aBlock);
    a1 = v32;

    dispatch_sync(isEscapingClosureAtFileLocation, a2);
    _Block_release(a2);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if ((v18 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = 0;
  *(v21 + 40) = v15;
  *(v21 + 48) = v26;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D11B712C;
  *(v22 + 24) = v21;
  v31 = sub_1D1096C64;
  v32 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D10DD3BC;
  v30 = &block_descriptor_48_0;
  v23 = _Block_copy(&aBlock);

  dispatch_sync(isEscapingClosureAtFileLocation, v23);
  _Block_release(v23);
  v24 = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
LABEL_10:
    __break(1u);
  }
}

void sub_1D1222454(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D138FF3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for BrowseCategory(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10F3604(a2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 2)
    {
LABEL_8:
      v13 = 11;
      v14 = 19;
      goto LABEL_12;
    }

LABEL_7:
    v13 = 11;
    v14 = 6;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v13 = 11;
        v14 = 7;
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D107D12C(0);

    v15 = sub_1D138D5EC();
    (*(*(v15 - 8) + 8))(v11, v15);
    v13 = 11;
    v14 = 5;
  }

  else
  {
    v13 = *v11;
    v14 = 8;
  }

LABEL_12:
  v16 = *(v2 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v8 = v16;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8018], v5);
  v17 = v16;
  v18 = sub_1D138FF5C();
  (*(v6 + 8))(v8, v5);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = v14;
  *(v19 + 32) = 0;
  *(v19 + 40) = v13;
  *(v19 + 48) = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D11B712C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1D1096C64;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_70;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v17, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_16:
    __break(1u);
  }
}

void sub_1D12227B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  v10 = sub_1D1390DBC();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v13[4] = sub_1D12263B8;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D1222AC0;
  v13[3] = &block_descriptor_182;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1D12228E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v8 = a4;
  v9 = sub_1D1213D98(a1);
  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D11DB800(v9, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v12 = sub_1D1213EE8(a2);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D11DB800(v12, 0x747865746E6F63, 0xE700000000000000, v13);
  v14 = sub_1D122098C(a3);
  sub_1D1220618(v14, 0x54747065636E6F63, 0xEB00000000657079);
  if (v8 != 11)
  {
    v15 = DisplayCategory.Kind.categoryAnalyticsName.getter();
    sub_1D1220618(v15, 0x79726F6765746163, 0xEA00000000004449);
  }

  if (a5 > 1)
  {
    sub_1D1220618(0, 0x6E6F69746361, 0xE600000000000000);
  }

  else
  {
    sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
    v16 = sub_1D1390D5C();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D11DB800(v16, 0x6E6F69746361, 0xE600000000000000, v17);
  }

  return v10;
}

id sub_1D1222AC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1D106F934(0, &qword_1EE06B0C0, 0x1E69E58C0);
    v4 = sub_1D138FFEC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1D1222B5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D138FF3C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8018], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1D138FF5C();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    v14 = *(v2 + OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1D1224090;
    *(v15 + 24) = v13;
    aBlock[4] = sub_1D10DD048;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1226920;
    aBlock[3] = &block_descriptor_82;
    v16 = _Block_copy(aBlock);

    [v14 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1222DA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 != 2 && (a1 & 1) != 0)
    {
      v9 = *&Strong[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
      v10 = Strong;
      v11 = swift_allocObject();
      *(v11 + 16) = a4;
      *(v11 + 24) = a5;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1D12263A8;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1D1096C64;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10DD3BC;
      aBlock[3] = &block_descriptor_148;
      v13 = _Block_copy(aBlock);

      dispatch_sync(v9, v13);

      _Block_release(v13);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if ((v9 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_1D1222F44(uint64_t a1, uint64_t a2)
{
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  v4 = sub_1D1390DBC();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1D12263B0;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D1222AC0;
  v7[3] = &block_descriptor_154;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_1D1223048(unint64_t a1, uint64_t a2)
{
  if (a1 > 1 || (sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0), v3 = sub_1D1390DBC(), v4 = MEMORY[0x1E69E7CC8], v5 = swift_isUniquelyReferenced_nonNull_native(), sub_1D11DB800(v3, 0x6E6F69746361, 0xE600000000000000, v5), a2))
  {
    result = sub_1D139169C();
    __break(1u);
  }

  else
  {
    sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
    v6 = sub_1D1390DBC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D11DB800(v6, 0x747865746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    return v4;
  }

  return result;
}

double sub_1D12231B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v9 = *a5;
  v10 = *(a5 + 8);
  if (sub_1D138EEFC())
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a3;
    *(v13 + 32) = a4;
    *(v13 + 40) = v9;
    *(v13 + 48) = v10;
    v14 = *(v6 + OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1D10DD038;
    *(v15 + 24) = v13;
    v17[4] = sub_1D12268B8;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1D1226920;
    v17[3] = &block_descriptor_93;
    v16 = _Block_copy(v17);

    [v14 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];
    _Block_release(v16);
  }

  return result;
}

void sub_1D122333C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 != 2 && (a1 & 1) != 0)
    {
      v13 = 1;
      if (a6)
      {
        v13 = 2;
      }

      if (a6 == 1)
      {
        v13 = 0;
      }

      if (a7)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = Strong;
      sub_1D12233F0(a4, a5, v14);
      Strong = v15;
    }
  }
}

void sub_1D12233F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D138FF3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8018], v7, v9);
  v13 = v12;
  v14 = sub_1D138FF5C();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D12247E4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1D1096C64;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_126;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1D1223630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  v6 = sub_1D1390DBC();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_1D12247F0;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D1222AC0;
  v9[3] = &block_descriptor_132;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

uint64_t sub_1D1223744(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1D1214330(a1);
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D11DB800(v5, 0xD000000000000010, 0x80000001D13C5000, isUniquelyReferenced_nonNull_native);
  if (a2 <= 1 && ((sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0), v8 = sub_1D1390DBC(), v9 = swift_isUniquelyReferenced_nonNull_native(), sub_1D11DB800(v8, 0x657079546D6F6F72, 0xE800000000000000, v9), a3 == 2) || a3 == 1 || !a3))
  {
    sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
    v10 = sub_1D1390DBC();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D11DB800(v10, 0xD000000000000013, 0x80000001D13C5030, v11);
    return v6;
  }

  else
  {
    result = sub_1D139169C();
    __break(1u);
  }

  return result;
}

void sub_1D1223978(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1D138FF3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8018], v7, v9);
  v13 = v12;
  v14 = sub_1D138FF5C();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D122409C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1D1096C64;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_103;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1D1223BBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  v6 = sub_1D1390DBC();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v9[4] = sub_1D122639C;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D1222AC0;
  v9[3] = &block_descriptor_138;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

uint64_t sub_1D1223CD0(unint64_t a1, uint64_t a2, char a3)
{
  if (a1 > 1)
  {
    result = sub_1D139169C();
    __break(1u);
  }

  else
  {
    sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
    v5 = sub_1D1390DBC();
    v6 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D11DB800(v5, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D1375778(a2);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D11DB800(v8, 0x747865746E6F63, 0xE700000000000000, v9);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D11DB800(v10, 0x6E6F69746361, 0xE600000000000000, v11);
    return v6;
  }

  return result;
}

void sub_1D1223EC0(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    (a3)([v4 BOOLValue], 0);
  }

  else
  {
    (a3)(2, a2);
  }
}

uint64_t sub_1D1223F40()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v0 + OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D122668C;
  *(v3 + 24) = v1;
  v6[4] = sub_1D12268B8;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D1226920;
  v6[3] = &block_descriptor_196;
  v4 = _Block_copy(v6);
  swift_retain_n();

  [v2 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];
  _Block_release(v4);
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D12240A8(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1D1226694;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1D1096C64;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10DD3BC;
    aBlock[3] = &block_descriptor_206;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);

    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void sub_1D1224238(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR___CHRAnalyticsManager_optInDetermined) = a2 != 2;
  if (a2 != 2)
  {
    v2 = OBJC_IVAR___CHRAnalyticsManager_queuedEvents;
    swift_beginAccess();
    v3 = *(a1 + v2);
    v4 = *(v3 + 16);

    if (v4)
    {
      v5 = 0;
      while (v5 < *(v3 + 16))
      {
        v6 = *(v3 + 32 + 8 * v5);
        if (*(v6 + 16))
        {

          v7 = sub_1D11362EC(0x6D614E746E657665, 0xE900000000000065);
          if ((v8 & 1) != 0 && (v9 = *(*(v6 + 56) + 8 * v7), objc_opt_self(), swift_dynamicCastObjCClass()) && (aBlock = 0, v26 = 0, v10 = v9, sub_1D139015C(), v10, v26))
          {
            if (*(v6 + 16))
            {
              v11 = sub_1D11362EC(1885697139, 0xE400000000000000);
              v12 = MEMORY[0x1E69E7CC8];
              if (v13)
              {
                v14 = *(*(v6 + 56) + 8 * v11);
                v15 = MEMORY[0x1E69E7CC8];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock = v15;
                sub_1D11DB800(v14, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
                v12 = aBlock;
              }

              if (*(v6 + 16))
              {
                v17 = sub_1D11362EC(0x747865746E6F63, 0xE700000000000000);
                if (v18)
                {
                  v23 = *(*(v6 + 56) + 8 * v17);
                  v19 = swift_isUniquelyReferenced_nonNull_native();
                  aBlock = v12;
                  sub_1D11DB800(v23, 0x747865746E6F63, 0xE700000000000000, v19);
                  v12 = aBlock;
                }
              }
            }

            else
            {
              v12 = MEMORY[0x1E69E7CC8];
            }

            v20 = sub_1D139012C();

            v21 = swift_allocObject();
            *(v21 + 16) = v12;
            v29 = sub_1D12268BC;
            v30 = v21;
            aBlock = MEMORY[0x1E69E9820];
            v26 = 1107296256;
            v27 = sub_1D1222AC0;
            v28 = &block_descriptor_213;
            v22 = _Block_copy(&aBlock);

            AnalyticsSendEventLazy();
            _Block_release(v22);
          }

          else
          {
          }
        }

        if (v4 == ++v5)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:

      *(a1 + v2) = MEMORY[0x1E69E7CC0];
    }
  }
}

id AnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D12247FC(char *a1)
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(v1 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v7 = v11;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3, v5);
  v12 = v11;
  v13 = sub_1D138FF5C();
  (*(v4 + 8))(v7, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v14 = swift_allocObject();
  v14[16] = v8;
  v14[17] = v9;
  v14[18] = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D12266E8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1D1096C64;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_223;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v12, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1D1224A44(unsigned int a1)
{
  v2 = a1 >> 8;
  sub_1D106F934(0, &qword_1EE06A510, 0x1E696AEC0);
  v3 = sub_1D1390DBC();
  v4 = swift_allocObject();
  v4[16] = a1;
  v4[17] = v2;
  v4[18] = BYTE2(a1) & 1;
  v6[4] = sub_1D122670C;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D1222AC0;
  v6[3] = &block_descriptor_229;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

unint64_t sub_1D1224B54()
{
  sub_1D12262E0(0, &qword_1EC60DBA0, sub_1D12263CC, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  SignedClinicalDataImportEvent.eventDescription.getter();
  v1 = sub_1D139012C();

  *(inited + 48) = v1;
  v2 = sub_1D109EE6C(inited);
  swift_setDeallocating();
  sub_1D1226730(inited + 32, sub_1D12263CC);
  return v2;
}

void sub_1D1224C58(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D139105C() + 1) & ~v6;
    while (1)
    {
      sub_1D139177C();

      sub_1D139027C();
      v10 = sub_1D13917CC();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v4);
      v14 = (v12 + 16 * v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1D138E52C() - 8) + 72);
      v17 = v16 * v4;
      v18 = v15 + v16 * v4;
      v19 = v16 * v7;
      v20 = v15 + v16 * v7 + v16;
      if (v17 < v19 || v18 >= v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v19)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_1D1224E44(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D139105C() + 1) & ~v6;
    do
    {
      sub_1D139177C();

      sub_1D139027C();
      v10 = sub_1D13917CC();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 72 * v4);
        v17 = (v15 + 72 * v7);
        if (v4 != v7 || v16 >= v17 + 72)
        {
          memmove(v16, v17, 0x48uLL);
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D1224FF8(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D139105C() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1D139176C();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D1225180(int64_t a1, uint64_t a2)
{
  v38 = sub_1D138D5EC();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = sub_1D139105C();
    v11 = v9;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v35 = (v10 + 1) & v9;
    v36 = v13;
    v14 = *(v12 + 56);
    v33 = (v12 - 8);
    v34 = a2 + 64;
    v39 = v11;
    v15 = v38;
    do
    {
      v16 = v14;
      v17 = v14 * v8;
      v18 = *(a2 + 48) + v14 * v8;
      v19 = v37;
      v20 = v12;
      v36(v37, v18, v15);
      sub_1D12266A0(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1D139006C();
      (*v33)(v19, v15);
      v22 = v39;
      v23 = v21 & v39;
      if (a1 >= v35)
      {
        if (v23 >= v35 && a1 >= v23)
        {
LABEL_15:
          v12 = v20;
          v14 = v16;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            v22 = v39;
            v6 = v34;
          }

          else
          {
            v6 = v34;
            if (v16 * a1 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v39;
            }
          }

          v26 = *(a2 + 56);
          v27 = (v26 + 72 * a1);
          v28 = (v26 + 72 * v8);
          if (a1 != v8 || v27 >= v28 + 72)
          {
            memmove(v27, v28, 0x48uLL);
            v22 = v39;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v35 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v12 = v20;
      v6 = v34;
      v14 = v16;
LABEL_4:
      v8 = (v8 + 1) & v22;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D1225478(uint64_t result, uint64_t a2, __n128 a3)
{
  v3 = a2;
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D139105C() + 1) & ~v6;
    v37 = v5;
    do
    {
      v12 = 32 * v7;
      v13 = v3;
      v14 = *(v3 + 48) + 32 * v7;
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_1D139177C();
      if (v18 == 1)
      {
        v19 = v17 | v15;
        if (v17 | v15 | v16)
        {
          v20 = v16 == 1 && v19 == 0;
          v3 = v13;
          if (v20)
          {
            v22 = 1;
          }

          else if (v16 == 2 && v19 == 0)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }

          MEMORY[0x1D38870E0](v22);
        }

        else
        {
          MEMORY[0x1D38870E0](0);
          v3 = v13;
        }
      }

      else
      {
        MEMORY[0x1D38870E0](4);
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v16;
        }

        else
        {
          v23 = 0;
        }

        MEMORY[0x1D3887110](v23);
        if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v15;
        }

        else
        {
          v24 = 0;
        }

        MEMORY[0x1D3887110](v24);
        if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v25 = v17;
        }

        else
        {
          v25 = 0;
        }

        MEMORY[0x1D3887110](v25);
        v3 = v13;
      }

      result = sub_1D13917CC();
      v26 = result & v8;
      if (v4 >= v9)
      {
        v5 = v37;
        if (v26 < v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v5 = v37;
        if (v26 >= v9)
        {
          goto LABEL_35;
        }
      }

      if (v4 >= v26)
      {
LABEL_35:
        v27 = *(v3 + 48);
        v28 = (v27 + 32 * v4);
        v29 = (v27 + v12);
        if (32 * v4 != v12 || v28 >= v29 + 2)
        {
          v30 = v29[1];
          *v28 = *v29;
          v28[1] = v30;
        }

        v31 = *(v3 + 56);
        v32 = (v31 + 48 * v4);
        v33 = (v31 + 48 * v7);
        if (v4 != v7 || v32 >= v33 + 3)
        {
          v10 = *v33;
          v11 = v33[2];
          v32[1] = v33[1];
          v32[2] = v11;
          *v32 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v34 = *(v3 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v36;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1D12256DC(int64_t a1, uint64_t a2)
{
  v40 = sub_1D138D5EC();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = sub_1D139105C();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = (v11 + 1) & v10;
    v38 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v38(v39, *(v5 + 48) + v16 * v9, v12);
      sub_1D12266A0(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1D139006C();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 48 * a1);
          v28 = (v26 + 48 * v9);
          if (a1 != v9 || v27 >= v28 + 3)
          {
            v29 = *v28;
            v30 = v28[2];
            v27[1] = v28[1];
            v27[2] = v30;
            *v27 = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

void sub_1D1225A00(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D139105C() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      v11 = sub_1D1390D7C();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v4);
          v17 = (v15 + 8 * v7);
          if (v4 != v7 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v4);
          v20 = (v18 + 8 * v7);
          if (v4 != v7 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1D1225B8C(int64_t a1, uint64_t a2)
{
  v38 = sub_1D138D57C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1D139105C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1D12266A0(&qword_1EC608ED8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v22 = sub_1D139006C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1D1225EAC(int64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for BrowseCategory(0);
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1D139105C() + 1) & ~v8;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12 * v9;
      sub_1D10F3604(*(a2 + 48) + v12 * v9, v6);
      sub_1D139177C();
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      v14 = sub_1D13917CC();
      sub_1D1226730(v6, type metadata accessor for BrowseCategory);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        if (v15 < v11)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v11)
      {
        goto LABEL_10;
      }

      if (a1 >= v15)
      {
LABEL_10:
        if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 72 * a1);
        v18 = (v16 + 72 * v9);
        if (a1 != v9 || v17 >= v18 + 72)
        {
          memmove(v17, v18, 0x48uLL);
          a1 = v9;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_1D1226130(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D139105C() + 1) & ~v6;
    do
    {
      sub_1D139177C();

      sub_1D139027C();
      v10 = sub_1D13917CC();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D12262E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1226344(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D11DCF44(255, a3, a4);
    v5 = sub_1D1390F3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D12263CC(uint64_t a1)
{
  if (!qword_1EC60DBA8)
  {
    sub_1D106F934(255, &qword_1EE06B0C0, 0x1E69E58C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60DBA8);
    }
  }
}

void sub_1D1226444(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1D11362EC(0x6D614E746E657665, 0xE900000000000065);
    if (v3)
    {
      v4 = *(*(a1 + 56) + 8 * v2);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v5 = v4;
        sub_1D139015C();
      }
    }
  }
}

uint64_t sub_1D12266A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D12266E8()
{
  if (v0[18])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  sub_1D1224A44(v1 | (v0[17] << 8) | v0[16]);
}

uint64_t sub_1D1226730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1226790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D1226804()
{
  result = qword_1EC60DBB8;
  if (!qword_1EC60DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DBB8);
  }

  return result;
}

void sub_1D1226A00(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = *a1;
  v26[1] = "ETAIL_TEXT_UNKNOWN_REACTION";
  v7 = sub_1D138D67C();
  v8 = *(*(v7 - 8) + 56);
  v27 = v5;
  v8(v5, 1, 1, v7);
  sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v10 = sub_1D138D1CC();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D1089930();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = [v6 displayString];
  v16 = sub_1D139016C();
  v18 = v17;

  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v16;
  *(v9 + 80) = v18;
  v19 = sub_1D138D1CC();
  v21 = v20;
  if (*(v9 + 16))
  {
    v22 = v27;
    v19 = sub_1D139019C();
    v24 = v23;

    sub_1D10CD608(v22);
    v21 = v24;
  }

  else
  {
    sub_1D10CD608(v27);
  }

  v25 = v28;
  *v28 = v19;
  v25[1] = v21;
}

id sub_1D1226D20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AllergyReactionFormatter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D1226D88(uint64_t a1)
{
  result = sub_1D1226DB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1226DB0()
{
  result = qword_1EC60DBD0;
  if (!qword_1EC60DBD0)
  {
    type metadata accessor for AllergyReactionFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DBD0);
  }

  return result;
}

id sub_1D1226E04(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v50 = a1;
  v51 = &v48 - v4;
  v5 = [a1 manifestations];
  sub_1D106F934(0, &qword_1EC609980, 0x1E696C010);
  v6 = sub_1D139045C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v7 = sub_1D13910DC();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D3886B70](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v13 = [v11 localizedPreferredName];
      if (v13)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    v14 = v13;
    v15 = sub_1D139016C();
    v49 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D10F7284(0, *(v9 + 2) + 1, 1, v9);
    }

    v18 = *(v9 + 2);
    v17 = *(v9 + 3);
    if (v18 >= v17 >> 1)
    {
      v9 = sub_1D10F7284((v17 > 1), v18 + 1, 1, v9);
    }

    *(v9 + 2) = v18 + 1;
    v19 = &v9[16 * v18];
    v20 = v49;
    *(v19 + 4) = v15;
    *(v19 + 5) = v20;
  }

  while (v8 != v7);
LABEL_23:

  v21 = Array<A>.newlineJoined.getter(v9);
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v25 = &selRef_removeObserver_name_object_;
  if (v24)
  {
    v49 = v21;
    v26 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v26 setDisplayItemType_];
    v27 = sub_1D138D67C();
    (*(*(v27 - 8) + 56))(v51, 1, 1, v27);
    sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D139E710;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v29 = sub_1D138D1CC();
    v31 = v30;
    v32 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1D1089930();
    *(v28 + 64) = v33;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v34 = [v50 onsetDate];
    if (v34)
    {
      v35 = v34;
      v53 = v34;
      sub_1D1226A00(&v53, v52);

      v37 = v52[0];
      v36 = v52[1];
      v38 = (v28 + 72);
      *(v28 + 96) = v32;
      *(v28 + 104) = v33;
      if (v36)
      {
        *v38 = v37;
LABEL_39:
        *(v28 + 80) = v36;
        sub_1D138D1CC();
        if (*(v28 + 16))
        {
          v44 = v51;
          sub_1D139019C();

          sub_1D10CD608(v44);
        }

        else
        {
          sub_1D10CD608(v51);
        }

        v25 = &selRef_removeObserver_name_object_;
        v45 = sub_1D139012C();

        [v26 setTitle_];

        v46 = sub_1D139012C();

        [v26 setSubtitle_];

        goto LABEL_43;
      }
    }

    else
    {
      v38 = (v28 + 72);
      *(v28 + 96) = v32;
      *(v28 + 104) = v33;
    }

    *v38 = sub_1D138D1CC();
    goto LABEL_39;
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v39 = sub_1D138D1CC();
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    return 0;
  }

  v26 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v26 setDisplayItemType_];
  sub_1D138D1CC();
  v42 = sub_1D139012C();

  [v26 setTitle_];

  v43 = sub_1D139012C();

  [v26 setSubtitle_];

LABEL_43:
  [v26 v25[266]];
  [v26 setSeparatorHidden_];
  [v26 setExtraTopPadding_];

  [v26 v25[266]];
  return v26;
}

id sub_1D1227578(void *a1)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v2 = 0xE000000000000000;
  sub_1D138D1CC();
  v3 = [a1 severity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 localizedPreferredName];

    if (!v5)
    {
LABEL_9:
      v6 = 0;
      v2 = 0xE000000000000000;
      goto LABEL_11;
    }

    v6 = sub_1D139016C();
    v2 = v7;

    v8 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  v9 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v10 setDisplayItemType_];
    v11 = sub_1D139012C();
    [v10 setTitle_];

    v12 = sub_1D139012C();

    [v10 setSubtitle_];

    [v10 setSeparatorStyle_];
    [v10 setSeparatorHidden_];
    [v10 setExtraTopPadding_];
  }

  else
  {

    v13 = sub_1D138D1CC();
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v10 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v10 setDisplayItemType_];
      v16 = sub_1D139012C();

      [v10 setTitle_];

      v17 = sub_1D139012C();

      [v10 setSubtitle_];

      [v10 setSeparatorStyle_];
      [v10 setSeparatorHidden_];
      [v10 setExtraTopPadding_];
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

uint64_t sub_1D1227904(void *a1)
{
  v8[4] = sub_1D1226E04(a1);
  v2 = 0;
  v8[5] = sub_1D1227578(a1);
  v3 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  while (v2 != 2)
  {
    v4 = v8[v2++ + 4];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3885D90]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v3 = v7;
    }
  }

  sub_1D10CD53C(0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1D12279F8(unint64_t a1)
{
  v3 = v1;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];
    sub_1D10FDEAC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_35:
      v24 = v2;
      result = sub_1D139169C();
      __break(1u);
      return result;
    }

    v7 = 0;
    v2 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI24AllergyReactionFormatter_context);
    v22 = v4 & 0xC000000000000001;
    v3 = v25;
    v20 = v4 + 32;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v4 = v23;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v22)
      {
        v9 = MEMORY[0x1D3886B70]();
      }

      else
      {
        if (v7 >= *(v21 + 16))
        {
          goto LABEL_32;
        }

        v9 = *(v20 + 8 * v7);
      }

      v10 = v9;
      if (v2 == 1)
      {
        v23[10] = sub_1D1226E04(v9);
        v11 = 0;
        v23[11] = sub_1D1227578(v10);
        v24 = v6;
        while (v11 != 2)
        {
          v12 = v23[v11++ + 10];
          if (v12)
          {
            v13 = v12;
            MEMORY[0x1D3885D90]();
            if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
            }

            sub_1D13904FC();
            v6 = v24;
          }
        }
      }

      else
      {
        if (v2)
        {
          goto LABEL_35;
        }

        v23[4] = sub_1D1226E04(v9);
        v14 = 0;
        v23[5] = sub_1D1227578(v10);
        v24 = v6;
        while (v14 != 2)
        {
          v15 = v23[v14++ + 4];
          if (v15)
          {
            v16 = v15;
            MEMORY[0x1D3885D90]();
            if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
            }

            sub_1D13904FC();
            v6 = v24;
          }
        }
      }

      sub_1D10CD53C(0);
      swift_arrayDestroy();
      v25 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D10FDEAC((v17 > 1), v18 + 1, 1);
        v3 = v25;
      }

      *(v3 + 16) = v18 + 1;
      *(v3 + 8 * v18 + 32) = v6;
      v7 = v8;
      v6 = MEMORY[0x1E69E7CC0];
      if (v8 == i)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t type metadata accessor for UserDomainConceptDetailViewController(uint64_t a1)
{
  result = qword_1EC60DBF0;
  if (!qword_1EC60DBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1227DF8()
{
  v1 = v0;
  v2 = *&v0[qword_1EC60DBE0];
  v3 = *&v0[qword_1EC60DBD8];
  v4 = *&v0[qword_1EC60DBE8];
  v5 = type metadata accessor for UserDomainConceptDetailDataSourceProvider();
  swift_allocObject();
  v6 = v2;
  v7 = v3;

  v9 = sub_1D122B8E0(v6, v7, v4, v8);

  v18 = v5;
  v19 = sub_1D1228B94(&qword_1EC60DC00, type metadata accessor for UserDomainConceptDetailDataSourceProvider, &unk_1D13AA73C);
  v17 = v9;
  sub_1D138EC5C();
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UserDomainConceptDetailViewController(0);
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode_];

  v11 = [v1 navigationItem];
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 preferredLocalizations];

  v14 = sub_1D139045C();
  HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v14);

  v15 = sub_1D139012C();

  [v11 setTitle_];
}

void sub_1D1228004(void *a1)
{
  v1 = a1;
  sub_1D1227DF8();
}

void sub_1D122804C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D138F1AC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138DEBC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A3558], v7);
  v10 = a1;
  sub_1D139096C();
  sub_1D138F18C();
  sub_1D139097C();
  v11 = type metadata accessor for UserDomainConceptDetailViewController(0);
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

id sub_1D12281C8()
{
  result = [v0 collectionView];
  if (result)
  {
    sub_1D138EC3C();
    sub_1D138EC2C();
    swift_allocObject();
    return sub_1D138EC1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D122824C()
{
  sub_1D138EC6C();
  v1 = sub_1D138EC7C();
  v1();
  sub_1D138EC3C();
  v2 = sub_1D138E82C();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69A3620];
    v6 = MEMORY[0x1E69A3758];
    v9 = v2;
    while (v4 < *(v2 + 16))
    {
      v12 = *(v2 + 16 * v4 + 32);
      sub_1D10FAA88(0, &qword_1EC60A0A0, v5, 0);
      sub_1D10FAA88(0, &qword_1EC60DC08, v6, 1);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_1D102CC18(v10, v13);
        __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
        v7 = [v0 collectionView];
        if (!v7)
        {
          goto LABEL_14;
        }

        v8 = v7;
        sub_1D138E91C();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        v2 = v9;
        v6 = MEMORY[0x1E69A3758];
      }

      else
      {
        swift_unknownObjectRelease();
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        sub_1D1228ADC(v10, &qword_1EC60DC10, &qword_1EC60DC08, v6);
      }

      if (v3 == ++v4)
      {

        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }
}

void sub_1D1228490(void *a1, uint64_t a2, __n128 a3)
{
  v4 = sub_1D138D7DC();
  [a1 deselectItemAtIndexPath:v4 animated:1];

  v5 = sub_1D138D7DC();
  v6 = [a1 cellForItemAtIndexPath_];

  if (v6)
  {
    sub_1D138EC3C();
    sub_1D138E86C();
    sub_1D138E24C();

    sub_1D1072E70(v13, v10);
    sub_1D10FAA88(0, &qword_1EC60F6A0, MEMORY[0x1E69A3310], 1);
    sub_1D10FAA88(0, &unk_1EC60F6C0, MEMORY[0x1E69A3680], 1);
    if (swift_dynamicCast())
    {
      v7 = v8;
LABEL_6:
      sub_1D102CC18(v7, v12);
      __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
      sub_1D138E41C();

      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      return;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D1228ADC(v8, &qword_1EC609C60, &unk_1EC60F6C0, MEMORY[0x1E69A3680]);
    *&v8[0] = v6;
    sub_1D108B188();
    v6 = v6;
    if (swift_dynamicCast())
    {
      v7 = v10;
      goto LABEL_6;
    }

    v11 = 0;
    memset(v10, 0, sizeof(v10));
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_1D1228ADC(v10, &qword_1EC609C60, &unk_1EC60F6C0, MEMORY[0x1E69A3680]);
  }
}

uint64_t sub_1D12286B4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = a1;
  sub_1D1228490(v10, v9, v12);

  return (*(v7 + 8))(v9, v6);
}

double sub_1D1228810()
{

  return result;
}

id sub_1D1228860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDomainConceptDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D1228898(uint64_t a1)
{

  return result;
}

id sub_1D12288FC(void *a1, void *a2)
{
  v3 = v2;
  *&v2[qword_1EC60DBD8] = a2;
  *&v2[qword_1EC60DBE0] = a1;
  v5 = qword_1EE06AF70;
  v6 = a2;
  v7 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE06BB58;
  v9 = [v6 healthStore];
  v10 = [v9 profileIdentifier];

  v14 = *(v8 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v11);
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D1228B94(&qword_1EE06B048, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);

  sub_1D138ED0C();

  *&v3[qword_1EC60DBE8] = v15;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for UserDomainConceptDetailViewController(0);
  return objc_msgSendSuper2(&v13, sel_initWithCollectionViewLayout_, 0);
}

uint64_t sub_1D1228ADC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D1228B38(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D1228B38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D10FAA88(255, a3, a4, 1);
    v5 = sub_1D1390F3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D1228B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HKDiagnosticTestResult.unitString.getter()
{
  v1 = [v0 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() _unitStringForValueCollection_];
  v4 = sub_1D139016C();

  return v4;
}

BOOL TestResultRepresentable.displaysMultipleValues.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 80))(a1) + 16);

  return v2 > 1;
}

id HKDiagnosticTestResult.valueString.getter()
{
  v1 = sub_1D138CF3C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 value];
  if (v6 && (v7 = v6, v8 = [v6 inspectableValue], v7, v8) && (v9 = objc_msgSend(v8, sel_codedValueCollection), v8, v9) && (v10 = objc_msgSend(v9, sel_canonicalBloodPressureDisplay), v9, v10))
  {
    v11 = sub_1D139016C();
  }

  else
  {
    v12 = [v0 value];
    if (!v12 || (v13 = v12, v14 = [v12 displayString], v13, sub_1D139016C(), v14, v15 = sub_1D139023C(), v17 = v16, , !v17))
    {
      v18 = [v0 value];
      if (v18 && (v19 = v18, v20 = [v18 inspectableValue], v19, v20) && (v21 = objc_msgSend(v20, sel_ontologyConcept), v20, v21) && (v22 = objc_msgSend(v21, sel_localizedPreferredName), v21, v22) && (sub_1D139016C(), v22, v15 = sub_1D139023C(), v17 = v23, , v17))
      {
      }

      else
      {
        v24 = [v0 value];
        if (!v24)
        {
          goto LABEL_20;
        }

        v25 = v24;
        v11 = [v24 inspectableValue];

        if (!v11)
        {
          swift_bridgeObjectRelease_n();
          return v11;
        }

        v26 = [v11 stringValue];

        if (!v26)
        {
LABEL_20:
          swift_bridgeObjectRelease_n();
          return 0;
        }

        v15 = sub_1D139016C();
        v17 = v27;
        swift_bridgeObjectRelease_n();
      }
    }

    v29[0] = v15;
    v29[1] = v17;
    sub_1D138CF2C();
    sub_1D10940C8();
    v11 = sub_1D1390FAC();
    (*(v2 + 8))(v5, v1);
  }

  return v11;
}

id HKDiagnosticTestResult.valueInRange.getter()
{
  v1 = [v0 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 referenceRanges];
  v4 = [v2 valueInRangeWithReferenceRanges:v3 includeUnitString:1 allowsNullRange:1];

  return v4;
}

uint64_t HKCodedValue.valueTitle.getter()
{
  v1 = [v0 ontologyConcept];
  v2 = [v1 localizedPreferredName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D139016C();

  return v3;
}

id HKCodedValue.valueInRange.getter()
{
  v1 = [v0 value];
  v2 = [objc_opt_self() inspectableValueCollectionSingleWithValue_];

  v3 = [v0 referenceRanges];
  v4 = [v2 valueInRangeWithReferenceRanges:v3 includeUnitString:1 allowsNullRange:1];

  return v4;
}

uint64_t HKCodedValue.valueString.getter()
{
  v1 = sub_1D138CF3C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 value];
  v7 = [v6 displayString];

  v8 = sub_1D139016C();
  v10 = v9;

  v13[0] = v8;
  v13[1] = v10;
  sub_1D138CF2C();
  sub_1D10940C8();
  v11 = sub_1D1390FAC();
  (*(v2 + 8))(v5, v1);

  return v11;
}

uint64_t HKCodedValue.unitString.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 value];
  v3 = [v1 _unitStringForValue_];

  v4 = sub_1D139016C();
  return v4;
}

uint64_t sub_1D12293F8()
{
  v1 = [*v0 ontologyConcept];
  v2 = [v1 localizedPreferredName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D139016C();

  return v3;
}

id sub_1D1229480()
{
  v1 = *v0;
  v2 = [*v0 value];
  v3 = [objc_opt_self() inspectableValueCollectionSingleWithValue_];

  v4 = [v1 referenceRanges];
  v5 = [v3 valueInRangeWithReferenceRanges:v4 includeUnitString:1 allowsNullRange:1];

  return v5;
}

uint64_t sub_1D1229540()
{
  v1 = sub_1D138CF3C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 value];
  v7 = [v6 displayString];

  v8 = sub_1D139016C();
  v10 = v9;

  v13[0] = v8;
  v13[1] = v10;
  sub_1D138CF2C();
  sub_1D10940C8();
  v11 = sub_1D1390FAC();
  (*(v2 + 8))(v5, v1);

  return v11;
}

uint64_t sub_1D1229690()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [v1 value];
  v4 = [v2 _unitStringForValue_];

  v5 = sub_1D139016C();
  return v5;
}

uint64_t HKDiagnosticTestResult.testResultTitle.getter()
{
  v1 = [v0 preferredDisplayName];
  v2 = sub_1D139016C();

  return v2;
}

uint64_t HKDiagnosticTestResult.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 meaningfulDate];
  if (v3)
  {
    v4 = v3;
    sub_1D138D52C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D138D57C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t HKDiagnosticTestResult.sourceName.getter()
{
  v1 = [v0 sourceRevision];
  v2 = [v1 source];

  v3 = [v2 name];
  v4 = sub_1D139016C();

  return v4;
}

uint64_t HKDiagnosticTestResult.identifier.getter()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 UUID];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1D12299D0(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_1D139016C();

  return v3;
}

void *HKDiagnosticTestResult.valueDisplayables.getter()
{
  v1 = [v0 value];
  if (v1 && (v2 = v1, v3 = [v1 inspectableValue], v2, v3) && (v4 = objc_msgSend(v3, sel_codedValueCollection), v3, v4) && (v5 = objc_msgSend(v4, sel_canonicalBloodPressureDisplay), v4, v5))
  {
  }

  else
  {
    v6 = [v0 value];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 inspectableValue];

      if (v8)
      {
        v9 = [v8 codedValueCollection];

        if (v9)
        {
          v10 = [v9 codedValues];

          sub_1D1229B9C();
          v11 = sub_1D139045C();

          v12 = sub_1D110B098(v11);

          return v12;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1229B9C()
{
  result = qword_1EC60B128;
  if (!qword_1EC60B128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B128);
  }

  return result;
}

uint64_t sub_1D1229C24()
{
  v1 = [*v0 preferredDisplayName];
  v2 = sub_1D139016C();

  return v2;
}

uint64_t sub_1D1229C88()
{
  v1 = [*v0 sourceRevision];
  v2 = [v1 source];

  v3 = [v2 name];
  v4 = sub_1D139016C();

  return v4;
}

uint64_t sub_1D1229D20()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 UUID];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1D1229E7C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_1D139016C();

  return v5;
}

id sub_1D1229ED0()
{
  v1 = *v0;
  v2 = [v1 value];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 referenceRanges];
  v5 = [v3 valueInRangeWithReferenceRanges:v4 includeUnitString:1 allowsNullRange:1];

  return v5;
}

uint64_t sub_1D1229F94()
{
  v1 = [*v0 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() _unitStringForValueCollection_];
  v4 = sub_1D139016C();

  return v4;
}

void *sub_1D122A154@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D110B4F8(*a1);
  *a2 = result;
  return result;
}

void *sub_1D122A180(uint64_t a1)
{
  v2 = v1;
  v48[0] = sub_1D138F0BC();
  v3 = *(v48[0] - 8);
  MEMORY[0x1EEE9AC00](v48[0]);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[0] = sub_1D122A6AC();
  v50[1] = v6;
  v7 = v1[2];
  v50[2] = sub_1D122BC40(v7, 1);
  v50[3] = v8;
  type metadata accessor for EducationDataSource();
  v9 = swift_allocObject();
  v10 = v7;
  v11 = sub_1D122B604(v10, v9);
  v12 = sub_1D122CD98(&qword_1EC60DC40, type metadata accessor for EducationDataSource, &protocol conformance descriptor for ConceptsDataSource);
  v50[4] = v11;
  v50[5] = v12;
  v50[6] = sub_1D122C5E8(v10);
  v50[7] = v13;
  v14 = v2[4];
  v15 = v2[5];
  v16 = [v14 healthStore];
  type metadata accessor for PinnedConceptDataSource();
  swift_allocObject();
  v17 = v10;

  v18 = sub_1D12D7D08(v17, v15, v16);
  v19 = sub_1D122CD98(&qword_1EC60DC48, type metadata accessor for PinnedConceptDataSource, &protocol conformance descriptor for ConceptsDataSource);
  v50[8] = v18;
  v50[9] = v19;
  v20 = v2[6];
  type metadata accessor for RecordDataSource();
  swift_allocObject();

  v21 = RecordDataSource.init(recordPublisher:profile:)(v20, v14);
  v22 = sub_1D122CD98(&qword_1EC60DC50, type metadata accessor for RecordDataSource, &protocol conformance descriptor for ConceptsDataSource);
  v50[10] = v21;
  v50[11] = v22;
  v23 = sub_1D122AEB8(0xD000000000000015, 0x80000001D13C5490);
  result = sub_1D122CD98(&qword_1EC60DC58, type metadata accessor for ShowAllRecordsDataSource, &protocol conformance descriptor for ConceptsDataSource);
  v25 = 0;
  v50[12] = v23;
  v50[13] = result;
  v26 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v25 <= 7)
  {
    v27 = 7;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 + 1;
  v29 = &v50[2 * v25];
  while (v25 != 7)
  {
    if (v28 == ++v25)
    {
      __break(1u);
      return result;
    }

    v30 = v29 + 2;
    v31 = *v29;
    v29 += 2;
    if (v31)
    {
      v32 = *(v30 - 1);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1D10F776C(0, v26[2] + 1, 1, v26);
        v49 = v26;
      }

      v35 = v26[2];
      v34 = v26[3];
      if (v35 >= v34 >> 1)
      {
        v26 = sub_1D10F776C((v34 > 1), v35 + 1, 1, v26);
        v49 = v26;
      }

      ObjectType = swift_getObjectType();
      result = sub_1D11A5FC0(v35, v31, &v49, ObjectType, v32);
      goto LABEL_2;
    }
  }

  sub_1D11A69D0(0);
  swift_arrayDestroy();
  sub_1D138F06C();

  v37 = sub_1D138F0AC();
  v38 = sub_1D139081C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 136446466;
    v48[1] = *v2;
    v49 = v40;
    sub_1D122CCE4();
    v41 = sub_1D13901EC();
    v43 = sub_1D11DF718(v41, v42, &v49);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    v44 = sub_1D10FAA88(0, &qword_1EC60A0A0, MEMORY[0x1E69A3620], 0);
    v45 = MEMORY[0x1D3885DC0](v26, v44);
    v47 = sub_1D11DF718(v45, v46, &v49);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_1D101F000, v37, v38, "[%{public}s] Notifying data sources of hidden display types change, sources: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v40, -1, -1);
    MEMORY[0x1D38882F0](v39, -1, -1);
  }

  (*(v3 + 8))(v5, v48[0]);
  return v26;
}

void *sub_1D122A6AC()
{
  v45 = MEMORY[0x1E69E8050];
  sub_1D122B5A0(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v42 = &v39 - v2;
  sub_1D114B24C(0);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D122CDE0(0, &qword_1EC60DC18, &qword_1EC60B918, &qword_1EC60AEA0, &protocol descriptor for MedicalRecordChartPointRepresentable);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  sub_1D122B4A4(0, v9);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 24);
  type metadata accessor for UserDomainConceptDataProvider();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC8];
  v18[2] = MEMORY[0x1E69E7CC8];
  v18[3] = v19;
  v18[4] = v17;
  v44 = v18;
  v20 = *(v0 + 16);
  v41 = v20;
  v40 = v17;
  v50[0] = sub_1D11D8EE4(v20, 0, 0, 0);
  sub_1D12130C0(0);
  sub_1D122B2B8(0, &qword_1EC60B918, &qword_1EC60AEA0, &protocol descriptor for MedicalRecordChartPointRepresentable, MEMORY[0x1E69E62F8]);
  sub_1D122CD98(&qword_1EC60D898, sub_1D12130C0, MEMORY[0x1E695BED8]);
  sub_1D138F84C();

  v50[0] = MEMORY[0x1E69E7CC0];
  sub_1D122B528(v21);
  sub_1D138F82C();
  (*(v8 + 8))(v11, v7);
  sub_1D122CD98(&qword_1EC60DC30, sub_1D122B4A4, MEMORY[0x1E695BCD0]);
  v22 = sub_1D138F80C();
  (*(v14 + 8))(v16, v13);
  type metadata accessor for ChartDataSource();
  v23 = swift_allocObject();
  v50[3] = sub_1D106F934(0, &qword_1EE06A5C0, 0x1E696C260);
  v50[4] = &protocol witness table for HKMedicalUserDomainConcept;
  v24 = v41;
  v50[0] = v41;
  *(v23 + 112) = 0;
  sub_1D1072E70(v50, v23 + 40);
  v25 = objc_allocWithZone(type metadata accessor for MedicalRecordChartabilityDeterminer());
  v41 = v24;
  *(v23 + 80) = [v25 init];
  v26 = objc_allocWithZone(MEMORY[0x1E69A43C0]);
  v27 = v40;
  *(v23 + 88) = [v26 initWithHealthStore_];
  *(v23 + 96) = 0;
  *(v23 + 104) = 1;
  sub_1D122B5A0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D139E700;
  sub_1D138E50C();
  v29 = ConceptsDataSource.init(arrangedSections:isHidden:)(v28, 0);
  swift_retain_n();
  sub_1D1287820(1);
  v49 = v22;
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v30 = sub_1D1390A7C();
  v48 = v30;
  v31 = sub_1D1390A2C();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  sub_1D122B3AC(0, &qword_1EC60B910, &qword_1EC60B918, &qword_1EC60AEA0, &protocol descriptor for MedicalRecordChartPointRepresentable);
  sub_1D122B42C();
  sub_1D10EDC58();
  v33 = v43;
  sub_1D138F8BC();
  sub_1D122CD28(v32, &qword_1EE06A620, v45);

  v34 = swift_allocObject();
  swift_weakInit();

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = 0;
  *(v35 + 32) = 1;
  sub_1D122CD98(&qword_1EC60B928, sub_1D114B24C, MEMORY[0x1E695BE98]);
  v36 = v46;
  v37 = sub_1D138F90C();

  (*(v47 + 8))(v33, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v29[14] = v37;

  sub_1D122CD98(&qword_1EC60DC38, type metadata accessor for ChartDataSource, &protocol conformance descriptor for ConceptsDataSource);
  return v29;
}

void *sub_1D122AE8C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D110B6D8(*a1);
  *a2 = result;
  return result;
}

void *sub_1D122AEB8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v27 = MEMORY[0x1E69E8050];
  sub_1D122B5A0(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  sub_1D11FC488(0);
  v28 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v11 = v2[6];
  v25 = v2[4];
  v26 = v10;
  type metadata accessor for ShowAllRecordsDataSource();
  v12 = swift_allocObject();
  *(v12 + 40) = v11;
  *(v12 + 48) = 0;

  v13 = ConceptsDataSource.init(arrangedSections:isHidden:)(MEMORY[0x1E69E7CC0], 0);
  v32 = v13[5];
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  swift_retain_n();

  v14 = sub_1D1390A7C();
  v31 = v14;
  v15 = sub_1D1390A2C();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_1D122B3AC(0, &qword_1EC60D478, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable);
  sub_1D122B324();
  sub_1D10EDC58();
  sub_1D138F8BC();
  sub_1D122CD28(v5, &qword_1EE06A620, v27);

  v16 = swift_allocObject();
  v17 = v25;
  v18 = v26;
  v16[2] = v26;
  v16[3] = v17;
  v19 = v30;
  v16[4] = v29;
  v16[5] = v19;
  v16[6] = v13;
  sub_1D122CD98(&qword_1EC60D490, sub_1D11FC488, MEMORY[0x1E695BE98]);
  v20 = v18;
  v21 = v17;

  v22 = v28;
  v23 = sub_1D138F90C();

  (*(v7 + 8))(v9, v22);
  v13[6] = v23;

  return v13;
}

uint64_t sub_1D122B218()
{

  return swift_deallocClassInstance();
}

void sub_1D122B2B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D10FAA88(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D122B324()
{
  result = qword_1EC60D488;
  if (!qword_1EC60D488)
  {
    sub_1D122B3AC(255, &qword_1EC60D478, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D488);
  }

  return result;
}

void sub_1D122B3AC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D122B2B8(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    v6 = sub_1D138F62C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D122B42C()
{
  result = qword_1EC60B920;
  if (!qword_1EC60B920)
  {
    sub_1D122B3AC(255, &qword_1EC60B910, &qword_1EC60B918, &qword_1EC60AEA0, &protocol descriptor for MedicalRecordChartPointRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B920);
  }

  return result;
}

void sub_1D122B4A4(uint64_t a1, __n128 a2)
{
  if (!qword_1EC60DC20)
  {
    sub_1D122CDE0(255, &qword_1EC60DC18, &qword_1EC60B918, &qword_1EC60AEA0, &protocol descriptor for MedicalRecordChartPointRepresentable);
    sub_1D122B528(v2);
    v3 = sub_1D138F52C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC60DC20);
    }
  }
}

unint64_t sub_1D122B528(__n128 a1)
{
  result = qword_1EC60DC28;
  if (!qword_1EC60DC28)
  {
    sub_1D122CDE0(255, &qword_1EC60DC18, &qword_1EC60B918, &qword_1EC60AEA0, &protocol descriptor for MedicalRecordChartPointRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DC28);
  }

  return result;
}

void sub_1D122B5A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D122B604(void *a1, uint64_t a2)
{
  v16[3] = sub_1D106F934(0, &qword_1EE06A5C0, 0x1E696C260);
  v16[4] = &protocol witness table for HKMedicalUserDomainConcept;
  v16[0] = a1;
  sub_1D1072E70(v16, a2 + 40);
  sub_1D1072E70(v16, v15);
  type metadata accessor for EducationItem();
  v4 = swift_allocObject();
  type metadata accessor for EducationCell();
  sub_1D122CD98(&qword_1EC60CC00, type metadata accessor for EducationCell, &unk_1D13B06B0);
  *(v4 + 56) = sub_1D138DECC();
  *(v4 + 64) = v5;
  sub_1D1116EB0(v15, v4 + 16);
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E810;
  *(inited + 32) = v4;
  sub_1D122B5A0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E700;

  HKMedicalUserDomainConcept.educationTitle.getter();
  sub_1D110B278(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D138E50C();
  v8 = ConceptsDataSource.init(arrangedSections:isHidden:)(v7, 0);
  swift_retain_n();
  v9 = [a1 educationContent];
  if (v9)
  {
    v10 = v9;
    sub_1D13868C0();
    v12 = v11;

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  sub_1D1287820(v13 & 1);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v8;
}

void *sub_1D122B8E0(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  sub_1D122CDE0(0, &qword_1EC60DC78, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  sub_1D122CEB8(0);
  v27 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[2] = a1;
  v18 = a1;
  v5[3] = [a2 healthStore];
  v5[4] = a2;
  v5[5] = a3;
  v19 = a2;

  v20 = [v19 healthStore];
  type metadata accessor for UserDomainConceptDataProvider();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC8];
  v21[2] = MEMORY[0x1E69E7CC8];
  v21[3] = v22;
  v21[4] = v20;
  v23 = sub_1D11D8EE4(v18, 3, 0, 0);

  v28 = v23;
  sub_1D12130C0(0);
  sub_1D122B2B8(0, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable, MEMORY[0x1E69E62F8]);
  sub_1D122CD98(&qword_1EC60D898, sub_1D12130C0, MEMORY[0x1E695BED8]);
  sub_1D138F84C();

  v28 = MEMORY[0x1E69E7CC0];
  sub_1D122CF3C();
  sub_1D138F82C();
  (*(v11 + 8))(v13, v10);
  sub_1D122CD98(&qword_1EC60DC90, sub_1D122CEB8, MEMORY[0x1E695BCD0]);
  v24 = v27;
  v25 = sub_1D138F80C();
  (*(v15 + 8))(v17, v24);
  v5[6] = v25;
  return v5;
}

uint64_t sub_1D122BC40(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1D138E35C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1E6968130];
  v5 = MEMORY[0x1E69E6720];
  sub_1D122B5A0(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - v7;
  sub_1D122B5A0(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v5);
  *&v10 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = (&v52 - v11);
  v13 = [a1 UUID];
  sub_1D138D5CC();

  v14 = sub_1D138D5EC();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_1D139092C();
  __swift_project_boxed_opaque_existential_1Tm(v62, v62[3]);
  v60 = sub_1D138D8BC();
  v58 = sub_1D138D99C();
  v53 = sub_1D138DB9C();
  v15 = MEMORY[0x1D38834C0]();
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v54 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139E6F0;
  sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  sub_1D122B2B8(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  v55 = xmmword_1D139E710;
  *(v18 + 16) = xmmword_1D139E710;
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D1089930();
  strcpy((v18 + 32), "pluginPackage");
  *(v18 + 46) = -4864;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = 0xD000000000000025;
  *(v18 + 80) = 0x80000001D13BCBC0;
  *(v17 + 32) = sub_1D139076C();
  sub_1D122B5A0(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v21 = sub_1D138D97C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v52 = xmmword_1D139E700;
  *(v24 + 16) = xmmword_1D139E700;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69A3BF8], v21);
  sub_1D138DA6C();
  v25 = sub_1D138CFBC();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_1D10A5C9C(0, &qword_1EC60A0A8, MEMORY[0x1E69A3C58]);
  v26 = swift_allocObject();
  *(v26 + 16) = v52;
  *(v26 + 32) = sub_1D138D99C();
  v27 = sub_1D138DB4C();

  sub_1D122CD28(v8, &qword_1EC60B290, v59);
  *(v17 + 40) = v27;
  v61 = 11;
  v59 = v12;
  *(v17 + 48) = _s14HealthPlatform8FeedItemC0A9RecordsUIE028predicateForConceptHighlightC5Items4uuid12categoryKind13sourceProfileSo11NSPredicateC10Foundation4UUIDVSg_AD15DisplayCategoryV0N0OSgAA06SourceP0OtFZ_0(v12, &v61);
  v28 = sub_1D139044C();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v15 setPredicate_];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D139E810;
  v31 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v32 = sub_1D139012C();
  v33 = [v31 initWithKey:v32 ascending:1 selector:sel_localizedStandardCompare_];

  *(v30 + 32) = v33;
  sub_1D106F934(0, &qword_1EE06B578, 0x1E696AEB0);
  v34 = sub_1D139044C();

  [v15 setSortDescriptors_];

  [v15 setFetchLimit_];
  v35 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v36 = [v35 initWithFetchRequest:v15 managedObjectContext:v60 sectionNameKeyPath:0 cacheName:0];

  sub_1D10A5CE8(0);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138E31C();
  v37 = v36;
  v38 = sub_1D138E0DC();
  v39 = sub_1D122CD98(&qword_1EC60BE40, sub_1D10A5CE8, MEMORY[0x1E69A35E0]);
  v40 = MEMORY[0x1E69A37E0];
  v41 = sub_1D122CD98(&qword_1EC60A0C0, sub_1D10A5CE8, MEMORY[0x1E69A37E0]);
  v42 = objc_allocWithZone(type metadata accessor for HorizontalHighlightsDataSource(0));
  v43 = v37;
  v44 = sub_1D138EB2C();
  sub_1D122B5A0(0, &qword_1EC60A768, sub_1D10D59CC, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = v55;
  *(inited + 32) = 2;
  v46 = sub_1D122CD98(&qword_1EC60DC68, type metadata accessor for HorizontalHighlightsDataSource, MEMORY[0x1E69A37E8]);
  v47 = sub_1D122CD98(&qword_1EC60DC70, type metadata accessor for HorizontalHighlightsDataSource, v40);
  *(inited + 40) = v44;
  *(inited + 48) = v46;
  *(inited + 56) = v47;
  *(inited + 64) = 1;
  *(inited + 72) = v38;
  *(inited + 80) = v39;
  *(inited + 88) = v41;
  sub_1D109DA60(inited);
  swift_setDeallocating();
  sub_1D10D59CC(0);
  v48 = v44;
  v49 = v38;
  swift_arrayDestroy();
  sub_1D138E9AC();
  swift_allocObject();
  swift_unknownObjectRetain();
  v50 = sub_1D138E99C();

  sub_1D122CD28(v59, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return v50;
}

uint64_t sub_1D122C5E8(void *a1)
{
  v43 = sub_1D138E35C();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v35 - v4;
  v42 = MEMORY[0x1E69695A8];
  sub_1D122B5A0(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v35 - v7;
  v9 = [a1 UUID];
  sub_1D138D5CC();

  v10 = sub_1D138D5EC();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_1D139092C();
  __swift_project_boxed_opaque_existential_1Tm(v45, v45[3]);
  v37 = sub_1D138D8BC();
  v38 = sub_1D138D99C();
  sub_1D138DB9C();
  v11 = MEMORY[0x1D38834C0]();
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v36 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D139E6F0;
  sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  sub_1D122B2B8(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E710;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D1089930();
  strcpy((v14 + 32), "pluginPackage");
  *(v14 + 46) = -4864;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 64) = v16;
  *(v14 + 72) = 0xD000000000000025;
  *(v14 + 80) = 0x80000001D13BCBC0;
  *(v13 + 32) = sub_1D139076C();
  sub_1D122B5A0(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1D138D97C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = xmmword_1D139E700;
  *(v20 + 16) = xmmword_1D139E700;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BB0], v17);
  sub_1D138DA6C();
  sub_1D10A5C9C(0, &qword_1EC60A0A8, MEMORY[0x1E69A3C58]);
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  *(v21 + 32) = sub_1D138D99C();
  v22 = sub_1D138DB3C();

  *(v13 + 40) = v22;
  v44 = 11;
  *(v13 + 48) = _s14HealthPlatform8FeedItemC0A9RecordsUIE015predicateForTipC5Items4uuid12categoryKind13sourceProfileSo11NSPredicateC10Foundation4UUIDVSg_AD15DisplayCategoryV0M0OSgAA06SourceO0OtFZ_0(v8, &v44);
  v23 = sub_1D139044C();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v11 setPredicate_];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D139E810;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1D139012C();
  v28 = [v26 initWithKey:v27 ascending:1 selector:sel_localizedStandardCompare_];

  *(v25 + 32) = v28;
  sub_1D106F934(0, &qword_1EE06B578, 0x1E696AEB0);
  v29 = sub_1D139044C();

  [v11 setSortDescriptors_];

  [v11 setFetchLimit_];
  v30 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v31 = v37;
  [v30 initWithFetchRequest:v11 managedObjectContext:v37 sectionNameKeyPath:0 cacheName:0];
  sub_1D10A5CE8(0);
  v32 = v39;
  sub_1D138E31C();
  sub_1D138E29C();
  (*(v41 + 8))(v32, v43);
  v33 = sub_1D138E0DC();

  sub_1D122CD28(v8, &qword_1EC60D6B0, v42);
  sub_1D122CD98(&qword_1EC60A0C0, sub_1D10A5CE8, MEMORY[0x1E69A37E0]);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return v33;
}

unint64_t sub_1D122CCE4()
{
  result = qword_1EC60DC60;
  if (!qword_1EC60DC60)
  {
    type metadata accessor for UserDomainConceptDetailDataSourceProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60DC60);
  }

  return result;
}

uint64_t sub_1D122CD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D122B5A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D122CD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D122CDE0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D12130C0(255);
    sub_1D122B2B8(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    sub_1D122CD98(&qword_1EC60D898, sub_1D12130C0, MEMORY[0x1E695BED8]);
    v9 = sub_1D138F54C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D122CEB8(uint64_t a1)
{
  if (!qword_1EC60DC80)
  {
    sub_1D122CDE0(255, &qword_1EC60DC78, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable);
    sub_1D122CF3C();
    v1 = sub_1D138F52C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DC80);
    }
  }
}

unint64_t sub_1D122CF3C()
{
  result = qword_1EC60DC88;
  if (!qword_1EC60DC88)
  {
    sub_1D122CDE0(255, &qword_1EC60DC78, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60DC88);
  }

  return result;
}

uint64_t type metadata accessor for PatientDetailsDataSource(uint64_t a1)
{
  result = qword_1EC60DCA8;
  if (!qword_1EC60DCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D122D058(void *a1)
{
  v2 = v1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138FF3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  *v11 = sub_1D1390A7C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = sub_1D138FF5C();
  v14 = *(v9 + 8);
  v13 = (v9 + 8);
  v14(v11, v8);
  if (v12)
  {
    v16 = qword_1EC60DC98;
    v17 = *(v2 + qword_1EC60DC98);
    if (v17)
    {
      if (!a1)
      {
        goto LABEL_6;
      }

      sub_1D106F934(0, &unk_1EC60B630, 0x1E696BEB8);
      v18 = v17;
      v19 = a1;
      v20 = sub_1D1390D8C();

      if (v20)
      {
        return result;
      }

      v17 = *(v2 + v16);
      if (v17)
      {
LABEL_6:
        v13 = *(v2 + qword_1EC60DCA0);
        v21 = v17;
        v22 = [v13 clinicalSourcesDataProvider];
        v54 = v21;
        v23 = [v22 nameAndFormattedBirthDateForAccountOwner:v21 useMultipleLines:1];

        if (v23)
        {
          v24 = sub_1D139016C();
          v51 = v25;
          v52 = v24;
        }

        else
        {
          v51 = 0;
          v52 = 0;
        }

        v55 = v7;
        v56 = v5;
        v57 = v4;
        v58 = v2;
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    else if (!a1)
    {
      return result;
    }

    sub_1D138E58C();
    return result;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_12:
  v26 = sub_1D138D1CC();
  v28 = v27;
  sub_1D1086E1C();
  v29 = swift_allocObject();
  v53 = xmmword_1D139E710;
  *(v29 + 16) = xmmword_1D139E710;
  *(v29 + 32) = sub_1D139016C();
  *(v29 + 40) = v30;
  *(v29 + 48) = 0x746E6569746150;
  *(v29 + 56) = 0xE700000000000000;
  v31 = sub_1D139044C();

  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    v33 = sub_1D139016C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = type metadata accessor for TitleSubtitleDetailItem(0);
  v37 = swift_allocObject();
  sub_1D138D5DC();
  v37[2] = v26;
  v37[3] = v28;
  v38 = v51;
  v37[4] = v52;
  v37[5] = v38;
  v39 = MEMORY[0x1E69E7CC0];
  v37[6] = 0;
  v37[7] = v39;
  v37[8] = v33;
  v37[9] = v35;
  v40 = sub_1D138D1CC();
  v42 = v41;
  v43 = type metadata accessor for FHIRRawResourceItem();
  swift_allocObject();
  v44 = v54;
  v45 = v13;
  v46 = sub_1D122DA54(v40, v42, v45, v44);

  v47 = MEMORY[0x1E69E6F90];
  sub_1D122DEA0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D122DEA0(0, &qword_1EC60B640, sub_1D1159FC8, v47);
  v48 = swift_allocObject();
  *(v48 + 16) = v53;
  *(v48 + 56) = v36;
  *(v48 + 64) = sub_1D122DF04(&qword_1EC60AFF8, 255, type metadata accessor for TitleSubtitleDetailItem, &unk_1D13A2FE0);
  *(v48 + 32) = v37;
  *(v48 + 96) = v43;
  *(v48 + 104) = sub_1D122DF04(&qword_1EC60DCC0, v49, type metadata accessor for FHIRRawResourceItem, &unk_1D13A1994);
  *(v48 + 72) = v46;

  v50 = v55;
  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v56 + 8))(v50, v57);
  sub_1D138E50C();
  sub_1D138E58C();

  return result;
}