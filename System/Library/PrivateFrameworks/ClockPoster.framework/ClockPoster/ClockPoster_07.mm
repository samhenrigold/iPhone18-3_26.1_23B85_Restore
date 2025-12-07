void sub_1E495DB80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1E495DBEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v7 = sub_1E4996D8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SystemOverrideClockData(0);
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4996F4C();
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v58 = v16;
    v59 = v15;
    v54 = v13;
    v55 = v10;
    v60 = v8;
    v61 = v7;
    v62 = a2;
    v20 = a1;
    v21 = [v20 customOverrides];
    v22 = [v21 shortTimeEntry];

    if (v22 && (v23 = [v22 isEnabled], v22, (v23 & 1) != 0) || (v24 = objc_msgSend(v20, sel_customOverrides), v25 = objc_msgSend(v24, sel_timeEntry), v24, v25) && (v26 = objc_msgSend(v25, sel_isEnabled), v25, (v26 & 1) != 0) || (v27 = objc_msgSend(v20, sel_customOverrides), v28 = objc_msgSend(v27, sel_dateEntry), v27, v28) && (v29 = objc_msgSend(v28, sel_isEnabled), v28, v29))
    {
      v30 = [v20 customOverrides];
      v31 = [v30 shortTimeEntry];

      if (v31)
      {
        v32 = [v31 stringValue];

        v57 = sub_1E4997EEC();
        v34 = v33;
      }

      else
      {
        v57 = 0;
        v34 = 0;
      }

      v56 = v11;
      v37 = [v20 customOverrides];
      v38 = [v37 timeEntry];

      if (v38)
      {
        v39 = [v38 stringValue];

        v40 = sub_1E4997EEC();
        v38 = v41;
      }

      else
      {
        v40 = 0;
      }

      v42 = [v20 customOverrides];
      v43 = [v42 dateEntry];

      if (v43)
      {
        v44 = [v43 &selRef_setRadialShadowOpacity_];

        v45 = sub_1E4997EEC();
        v43 = v46;
      }

      else
      {
        v45 = 0;
      }

      v47 = v62;
      v48 = v56;
      sub_1E4996F3C();
      sub_1E4959200(v57, v34, v40, v38, v45, v43, v19, v6);

      (*(v58 + 8))(v19, v59);
      v50 = v60;
      v49 = v61;
      if ((*(v60 + 48))(v6, 1, v61) == 1)
      {
        sub_1E48C1338(v6, &qword_1ECF809D0, &qword_1E499D6C0);
        return (*(v63 + 56))(v47, 1, 1, v48);
      }

      else
      {
        v51 = *(v50 + 32);
        v52 = v55;
        v51(v55, v6, v49);
        v53 = v54;
        v51(v54, v52, v49);
        sub_1E495E318(v53, v47);
        return (*(v63 + 56))(v47, 0, 1, v48);
      }
    }

    a2 = v62;
  }

  v35 = *(v63 + 56);

  return v35(a2, 1, 1, v11, v17);
}

uint64_t sub_1E495E1D4()
{
  sub_1E48BFEC4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemOverrideClockData(uint64_t a1)
{
  result = qword_1ECF80EF0;
  if (!qword_1ECF80EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E495E2AC(uint64_t a1)
{
  result = sub_1E4996D8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E495E318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemOverrideClockData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1E495E37C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F280, &qword_1E499B8A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1E495E3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1E499803C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E495E97C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1E49985DC();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
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

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
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

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
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

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
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

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
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

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
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

uint64_t sub_1E495E97C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1E499804C();
  v6 = sub_1E495E9FC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1E495E9FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E49984CC();
    if (!v9 || (v10 = v9, v11 = sub_1E495E37C(v9, 0), v12 = sub_1E495EB54(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E4997F4C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E4997F4C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E49985DC();
LABEL_4:

  return sub_1E4997F4C();
}

unint64_t sub_1E495EB54(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1E495ED74(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E4997FDC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E49985DC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E495ED74(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E4997FBC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1E495ED74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E499800C();
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
    v5 = MEMORY[0x1E691B7E0](15, a1 >> 16);
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

uint64_t sub_1E495EDF0(uint64_t a1, __n128 a2)
{
  v3 = sub_1E4996ECC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v31 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F18, &unk_1E49A4D30);
    v10 = sub_1E499857C();
    v11 = 0;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v36 = v13;
    v37 = v10 + 56;
    v14 = *(v12 + 64);
    v33 = v9;
    v34 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v32 = (v12 + 16);
    while (1)
    {
      v35 = v11;
      v36(v38, v34 + v15 * v11, v3);
      sub_1E495F110(&qword_1ECF80F20, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v17 = sub_1E4997E4C();
      v18 = ~(-1 << *(v10 + 32));
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v37 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) != 0)
      {
        while (1)
        {
          v23 = v12;
          v36(v6, *(v10 + 48) + v19 * v15, v3);
          sub_1E495F110(&qword_1ECF80F28, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v24 = sub_1E4997E9C();
          v25 = *v16;
          (*v16)(v6, v3);
          if (v24)
          {
            break;
          }

          v19 = (v19 + 1) & v18;
          v20 = v19 >> 6;
          v21 = *(v37 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v23;
          if (((1 << v19) & v21) == 0)
          {
            goto LABEL_8;
          }
        }

        v25(v38, v3);
        v12 = v23;
      }

      else
      {
LABEL_8:
        v26 = v38;
        *(v37 + 8 * v20) = v22 | v21;
        result = (*v32)(*(v10 + 48) + v19 * v15, v26, v3);
        v28 = *(v10 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v30;
      }

      v11 = v35 + 1;
      if (v35 + 1 == v33)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E495F110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E495F178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A58, &unk_1E49A4D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E495F1E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F38, qword_1E49A4D68);
    v3 = sub_1E499857C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1E499892C();

      sub_1E4997F5C();
      result = sub_1E499896C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1E499884C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
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
LABEL_4:
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

uint64_t sub_1E495F350(uint64_t a1)
{
  v2 = type metadata accessor for SystemOverrideClockData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1E495F3AC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace;
  type metadata accessor for PlayClockFaceView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[v4] = v5;
  sub_1E48C8304(a1, &v2[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look]);
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode] = 0;
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode] = 0;
  v6 = objc_allocWithZone(type metadata accessor for ClockFaceHostView());
  v7 = v5;
  *&v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_hostView] = sub_1E49120F8(v7);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClockFaceViewController();
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  sub_1E48C8304(a1, v12);
  v9 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  v10 = v8;
  sub_1E48D8EA8(v12, v8 + v9);
  swift_endAccess();
  sub_1E495F590();

  sub_1E48C8360(a1);
  sub_1E48C8360(v12);
  return v10;
}

uint64_t sub_1E495F590()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v88 - v3;
  v5 = sub_1E499708C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48C8304(&v0[v9], v102);
  if (v104 == 2)
  {

    sub_1E48B7448(v102, v93);
    sub_1E48B7448(v103, v90);
    v41 = *&v0[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E49A0CA0;
    v43 = v94;
    v44 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v45 = (*(v44 + 56))(v43, v44);
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = 0x4063200000000000;
    v47 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE188;
    v101 = v46;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_12;
    v48 = _Block_copy(&v96);
    v49 = [v47 initWithDynamicProvider_];
    _Block_release(v48);

    *(v42 + 32) = v49;
    v50 = v91;
    v51 = v92;
    __swift_project_boxed_opaque_existential_1(v90, v91);
    v52 = (*(v51 + 40))(v50, v51);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = 0x4063200000000000;
    v54 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v53;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_29_0;
    v55 = _Block_copy(&v96);
    v56 = [v54 initWithDynamicProvider_];
    _Block_release(v55);

    *(v42 + 40) = v56;
    *(v42 + 48) = [objc_opt_self() clearColor];
    v57 = v94;
    v58 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v59 = (*(v58 + 40))(v57, v58);
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = 0x4063200000000000;
    v61 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v60;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_36_0;
    v62 = _Block_copy(&v96);
    v63 = [v61 initWithDynamicProvider_];
    _Block_release(v62);

    *(v42 + 56) = v63;
    v64 = v91;
    v65 = v92;
    __swift_project_boxed_opaque_existential_1(v90, v91);
    v66 = (*(v65 + 56))(v64, v65);
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = 0x4063200000000000;
    v68 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v67;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_43_0;
    v69 = _Block_copy(&v96);
    v70 = [v68 initWithDynamicProvider_];
    _Block_release(v69);

    *(v42 + 64) = v70;
    *(v41 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors) = v42;

    v71 = *(v41 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView);
    *(*(v71 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel) + 32) = v42;
    swift_bridgeObjectRetain_n();

    sub_1E48DB53C();
    *(*(v71 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel) + 32) = v42;

    sub_1E48DB53C();

    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    return __swift_destroy_boxed_opaque_existential_0Tm(v93);
  }

  if (!v104)
  {

    sub_1E48B7448(v102, v93);
    v10 = *&v0[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E49A0CA0;
    v12 = v94;
    v13 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v14 = (*(v13 + 56))(v12, v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0x4063200000000000;
    v16 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v15;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_50_0;
    v17 = _Block_copy(&v96);
    v18 = [v16 initWithDynamicProvider_];
    _Block_release(v17);

    *(v11 + 32) = v18;
    v19 = v94;
    v20 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v21 = (*(v20 + 40))(v19, v20);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = 0x4063200000000000;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v22;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_57;
    v24 = _Block_copy(&v96);
    v25 = [v23 initWithDynamicProvider_];
    _Block_release(v24);

    *(v11 + 40) = v25;
    *(v11 + 48) = [objc_opt_self() clearColor];
    v26 = v94;
    v27 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v28 = (*(v27 + 56))(v26, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 0x4063200000000000;
    v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v29;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_64;
    v31 = _Block_copy(&v96);
    v32 = [v30 initWithDynamicProvider_];
    _Block_release(v31);

    *(v11 + 56) = v32;
    v33 = v94;
    v34 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v35 = (*(v34 + 40))(v33, v34);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = 0x4063200000000000;
    v37 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v100 = sub_1E48CE240;
    v101 = v36;
    v96 = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E4923F24;
    v99 = &block_descriptor_71;
    v38 = _Block_copy(&v96);
    v39 = [v37 initWithDynamicProvider_];
    _Block_release(v38);

    *(v11 + 64) = v39;
    *(v10 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors) = v11;

    v40 = *(v10 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView);
    *(*(v40 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel) + 32) = v11;
    swift_bridgeObjectRetain_n();

    sub_1E48DB53C();
    *(*(v40 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel) + 32) = v11;

    sub_1E48DB53C();

    return __swift_destroy_boxed_opaque_existential_0Tm(v93);
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v73 = qword_1EE2BB458;
  v74 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v73 + v74, v4, &qword_1ECF7F008, &qword_1E499B170);
  v75 = *(v6 + 48);
  if (v75(v4, 1, v5) == 1)
  {
    sub_1E4904BF4(v8);
    if (v75(v4, 1, v5) != 1)
    {
      sub_1E48C1338(v4, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v76 = v1;
  v77 = sub_1E499706C();
  v78 = sub_1E499830C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90[0] = v89;
    *v79 = 136446466;
    sub_1E48C8304(v1 + v9, &v96);
    v80 = v77;
    v81 = sub_1E48C60D0();
    v83 = v82;
    sub_1E48C8360(&v96);
    v84 = sub_1E48CA094(v81, v83, v90);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2114;
    *(v79 + 14) = v76;
    v85 = v88;
    *v88 = v76;
    v86 = v76;
    _os_log_impl(&dword_1E48B0000, v80, v78, "Unsupported look. Look: '%{public}s' for '%{public}@'", v79, 0x16u);
    sub_1E48C1338(v85, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v85, -1, -1);
    v87 = v89;
    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    MEMORY[0x1E691CED0](v87, -1, -1);
    MEMORY[0x1E691CED0](v79, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
  return sub_1E48C8360(v102);
}

double sub_1E4960284()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for PlayClockFaceViewController();
  v11.receiver = v0;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v5 = sub_1E499816C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E499814C();

  v7 = sub_1E499813C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  sub_1E498DD1C(0, 0, v3, &unk_1E49A4E00, v8);

  return result;
}

uint64_t sub_1E49603F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1E4996D8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_1E499814C();
  v4[24] = sub_1E499813C();
  v10 = sub_1E499811C();
  v4[25] = v10;
  v4[26] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E49606B4, v10, v9);
}

uint64_t sub_1E49606B4()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 216) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E496074C, v1, 0);
}

uint64_t sub_1E496074C()
{
  sub_1E48F0638(v0[19]);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x1EEE6DFA0](sub_1E49607B4, v1, v2);
}

uint64_t sub_1E49607B4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1E499813C();
  v0[28] = v4;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1E49608BC;
  v6 = v0[20];
  v7 = v0[16];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E49608BC()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E4960A00, v3, v2);
}

uint64_t sub_1E4960A00()
{
  v1 = v0[16];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:

    v14 = v0[1];

    return v14();
  }

  sub_1E48D9004(v1, v0[15]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[20];
    v13 = v0[15];

    sub_1E48C1338(v13, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v11 + 8))(v10, v12);
    goto LABEL_7;
  }

  v3 = Strong;
  v4 = v0[14];
  sub_1E48C12D0(v0[15], v4, &qword_1ECF7F728, &unk_1E499CAB0);
  v5 = type metadata accessor for Alarm(0);
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v4, 1, v5);
  v8 = v0[14];
  if (v7 == 1)
  {
    sub_1E48C1338(v0[14], &qword_1ECF7F728, &unk_1E499CAB0);
    v9 = 1;
  }

  else
  {
    (*(v0[7] + 16))(v0[10], v0[14], v0[6]);
    sub_1E48D90D8(v8);
    v9 = 0;
  }

  v16 = v0[15];
  v17 = v0[13];
  (*(v0[7] + 56))(v0[10], v9, 1, v0[6]);
  sub_1E48C12D0(v16, v17, &qword_1ECF7F728, &unk_1E499CAB0);
  v18 = v6(v17, 1, v5);
  v19 = v0[13];
  if (v18 == 1)
  {
    sub_1E48C1338(v19, &qword_1ECF7F728, &unk_1E499CAB0);
  }

  else
  {
    sub_1E48D90D8(v19);
  }

  v20 = v0[10];
  v21 = v0[6];
  v22 = *(v0[7] + 48);
  if (v22(v20, 1, v21) == 1)
  {
    v23 = *&v3[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
    v24 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView;
    v25 = *(v23 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
    if (v25)
    {
      [v25 removeFromSuperview];
      v26 = *(v23 + v24);
      *(v23 + v24) = 0;

      [*(v23 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView) setNeedsLayout];
    }

    v27 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView;
    v28 = *(v23 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = *(v23 + v27);
      *(v23 + v27) = 0;

      [*(v23 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView) setNeedsLayout];
    }
  }

  else
  {
    v30 = v0[9];
    sub_1E48C12D0(v20, v30, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v22(v30, 1, v21) == 1)
    {
      sub_1E48C1338(v0[9], &qword_1ECF809D0, &qword_1E499D6C0);
    }

    else
    {
      (*(v0[7] + 32))(v0[8], v0[9], v0[6]);
      if (v18 == 1)
      {
        (*(v0[7] + 8))(v0[8], v0[6]);
      }

      else
      {
        type metadata accessor for AlarmComplicationCurvedTextView();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v32 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        v33 = [v32 layer];
        [v33 setGeometryFlipped_];

        v34 = *&v32[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter];
        v35 = sub_1E4996CEC();
        [v34 setOverrideDate_];

        v36 = *&v3[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
        v37 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView;
        v38 = *(v36 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
        if (v38)
        {
          [v38 removeFromSuperview];
          v39 = *(v36 + v37);
        }

        else
        {
          v39 = 0;
        }

        *(v36 + v37) = v32;
        v40 = v32;

        v41 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView;
        [*(v36 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView) setNeedsLayout];

        v42 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        v43 = [v42 layer];
        [v43 setGeometryFlipped_];

        v44 = *&v42[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter];
        v45 = sub_1E4996CEC();
        [v44 setOverrideDate_];

        v46 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView;
        v47 = *(v36 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
        if (v47)
        {
          [v47 &off_1E8761078];
          v48 = *(v36 + v46);
        }

        else
        {
          v48 = 0;
        }

        v50 = v0[7];
        v49 = v0[8];
        v51 = v0[6];
        *(v36 + v46) = v42;
        v52 = v42;

        [*(v36 + v41) setNeedsLayout];
        (*(v50 + 8))(v49, v51);
      }
    }
  }

  v53 = v0[15];
  v54 = v0[10];

  sub_1E48C1338(v54, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C1338(v53, &qword_1ECF7F728, &unk_1E499CAB0);
  v55 = sub_1E499813C();
  v0[28] = v55;
  v56 = swift_task_alloc();
  v0[29] = v56;
  *v56 = v0;
  v56[1] = sub_1E49608BC;
  v57 = v0[20];
  v58 = v0[16];
  v59 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v58, v55, v59, v57);
}

id sub_1E4961114(char a1)
{
  sub_1E48C21E0(a1);
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace);
  v5 = sub_1E4913F14(a1, v4);
  v6 = *(v3 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
  if (v6)
  {
    [v6 setNeedsLayout];
  }

  result = *(v3 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
  if (result)
  {

    return [result setNeedsLayout];
  }

  return result;
}

void sub_1E49611B8()
{
  sub_1E48C8360(v0 + OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace);
}

id sub_1E49611F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayClockFaceViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E496129C(uint64_t a1)
{
  result = sub_1E49613E8(&qword_1ECF80F50, MEMORY[0x1E6969F88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E49612E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  return sub_1E48C8304(v1 + v3, a1);
}

uint64_t sub_1E4961338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48D8EA8(a1, v1 + v3);
  swift_endAccess();
  sub_1E495F590();
  return sub_1E48C8360(a1);
}

uint64_t sub_1E49613A4(uint64_t a1)
{
  result = sub_1E49613E8(&qword_1ECF80F58, &unk_1E49A4D9C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E49613E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayClockFaceViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4961440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E49603F0(a1, v4, v5, v6);
}

double sub_1E496152C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1E49615FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E49616D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1E48C12D0(a1, &v6 - v3, &unk_1ECF816F0, &qword_1E49A5090);
  return sub_1E491A6E4(v4);
}

void *sub_1E4961780(uint64_t a1, char a2, __n128 a3)
{
  v5 = sub_1E499758C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_1E499831C();
    v10 = sub_1E49977AC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1E48CA094(0xD000000000000015, 0x80000001E49A88A0, &v15);
      _os_log_impl(&dword_1E48B0000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1E691CED0](v12, -1, -1);
      MEMORY[0x1E691CED0](v11, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    return v15;
  }

  return a1;
}

void *sub_1E4961948(uint64_t a1, char a2, __n128 a3)
{
  v5 = sub_1E499758C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_1E499831C();
    v10 = sub_1E49977AC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1E48CA094(0xD000000000000015, 0x80000001E49A87F0, &v15);
      _os_log_impl(&dword_1E48B0000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1E691CED0](v12, -1, -1);
      MEMORY[0x1E691CED0](v11, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    return v15;
  }

  return a1;
}

void *sub_1E4961B10(uint64_t a1, char a2, __n128 a3)
{
  v5 = sub_1E499758C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_1E499831C();
    v10 = sub_1E49977AC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1E48CA094(0x6C616E6F6974704FLL, 0xEE003E746E6F463CLL, &v16);
      _os_log_impl(&dword_1E48B0000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1E691CED0](v12, -1, -1);
      MEMORY[0x1E691CED0](v11, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();
    v13 = j__swift_release(a1);
    (*(v6 + 8))(v8, v5, v13);
    return v16;
  }

  return a1;
}

uint64_t sub_1E4961D08@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v5 = sub_1E499758C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1E48C12D0(v3, &v18 - v10, &qword_1ECF7FDC0, &qword_1E49A0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E499732C();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = sub_1E499831C();
    v15 = sub_1E49977AC();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1E48CA094(0x694474756F79614CLL, 0xEF6E6F6974636572, &v19);
      _os_log_impl(&dword_1E48B0000, v15, v14, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1E691CED0](v17, -1, -1);
      MEMORY[0x1E691CED0](v16, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_1E4961FDC(uint64_t a1, char a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v9 = sub_1E499758C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v13 = sub_1E499831C();
    v14 = sub_1E49977AC();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E48CA094(a3, a4, &v19);
      _os_log_impl(&dword_1E48B0000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1E691CED0](v16, -1, -1);
      MEMORY[0x1E691CED0](v15, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    return v19;
  }

  return a1;
}

uint64_t sub_1E49621A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F78, &qword_1E49A4F78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F80, &qword_1E49A4F80);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27[-v14];
  v29 = *(a1 + 56);
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v16 = v28;
  *v6 = sub_1E499762C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F90, &qword_1E49A4F90);
  sub_1E496246C(a1, &v6[*(v17 + 44)]);
  v29 = *(a1 + 72);
  sub_1E4997B5C();
  if (v28 == 1)
  {
    v18 = sub_1E4997A4C();
  }

  else
  {
    v18 = sub_1E4997A3C();
  }

  v19 = v18;
  v20 = sub_1E49977CC();
  sub_1E48C15C8(v6, v12, &qword_1ECF80F78, &qword_1E49A4F78);
  v21 = &v12[*(v7 + 36)];
  *v21 = v19;
  v21[8] = v20;
  sub_1E48C15C8(v12, v15, &qword_1ECF80F80, &qword_1E49A4F80);
  v29 = v30;
  sub_1E4997B5C();
  v22 = v28;
  v23 = v28 ^ 1;
  sub_1E48C12D0(v15, v9, &qword_1ECF80F80, &qword_1E49A4F80);
  *a2 = 0;
  *(a2 + 8) = v16;
  *(a2 + 9) = v16 ^ 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F98, &qword_1E49A4F98);
  sub_1E48C12D0(v9, a2 + *(v24 + 48), &qword_1ECF80F80, &qword_1E49A4F80);
  v25 = a2 + *(v24 + 64);
  *v25 = 0;
  *(v25 + 8) = v23;
  *(v25 + 9) = v22;
  sub_1E48C1338(v15, &qword_1ECF80F80, &qword_1E49A4F80);
  return sub_1E48C1338(v9, &qword_1ECF80F80, &qword_1E49A4F80);
}

uint64_t sub_1E496246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v74 = sub_1E499774C();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FA0, &qword_1E49A4FA0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FA8, &qword_1E49A4FA8);
  v6 = *(v5 - 8);
  v76 = v5;
  v77 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FB0, &qword_1E49A4FB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FB8, &qword_1E49A4FB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FC0, &qword_1E49A4FC0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  *v20 = sub_1E49975AC();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FC8, &qword_1E49A4FC8) + 44)];
  v75 = a1;
  sub_1E4963838(a1, v21);
  v22 = sub_1E49977CC();
  v23 = &v20[*(v16 + 44)];
  *v23 = v22;
  *(v23 + 1) = 0x4040000000000000;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = 0;
  v23[40] = 0;
  *&v87 = sub_1E49645C8();
  *(&v87 + 1) = v24;
  sub_1E48D2EE4();
  v25 = sub_1E49978DC();
  v27 = v26;
  v29 = v28;
  v30 = sub_1E499785C();
  v32 = v31;
  v34 = v33;
  v35 = v27;
  v36 = v76;
  sub_1E48C1564(v25, v35, v29 & 1);

  v37 = sub_1E49977EC();
  (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
  sub_1E49977FC();
  sub_1E48C1338(v14, &qword_1ECF80FB8, &qword_1E49A4FB8);
  v38 = sub_1E499788C();
  v79 = v39;
  v80 = v38;
  v41 = v40;
  v81 = v42;
  v43 = v75;

  v44 = v30;
  v45 = v77;
  sub_1E48C1564(v44, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v87 = *(v43 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  v46 = sub_1E4997B5C();
  v47 = 1;
  if ((v86 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v46);
    *(&v69 - 2) = v43;
    sub_1E49977BC();
    v48 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FD0, &qword_1E49A5000);
    sub_1E48C1B44(&qword_1ECF80FD8, &qword_1ECF80FD0, &qword_1E49A5000, MEMORY[0x1E6981F48]);
    v49 = v71;
    sub_1E499718C();
    sub_1E4997CEC();
    sub_1E499722C();
    v50 = v70;
    v51 = &v49[*(v70 + 36)];
    v52 = v88;
    *v51 = v87;
    *(v51 + 1) = v52;
    *(v51 + 2) = v89;
    v53 = v72;
    sub_1E499773C();
    v54 = sub_1E4968074();
    v55 = v69;
    MEMORY[0x1E691B180](v53, v50, v54, 16.0);
    (*(v73 + 8))(v53, v74);
    v56 = v49;
    v41 = v48;
    sub_1E48C1338(v56, &qword_1ECF80FA0, &qword_1E49A4FA0);
    (*(v45 + 32))(v85, v55, v36);
    v47 = 0;
  }

  v57 = v85;
  (*(v45 + 56))(v85, v47, 1, v36);
  v58 = v82;
  sub_1E48C12D0(v20, v82, &qword_1ECF80FC0, &qword_1E49A4FC0);
  v59 = v83;
  sub_1E48C12D0(v57, v83, &qword_1ECF80FB0, &qword_1E49A4FB0);
  v60 = v84;
  sub_1E48C12D0(v58, v84, &qword_1ECF80FC0, &qword_1E49A4FC0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FF8, &qword_1E49A5010);
  v62 = v60 + *(v61 + 48);
  v64 = v80;
  v63 = v81;
  v77 = v20;
  v66 = KeyPath;
  v65 = v79;
  *v62 = v80;
  *(v62 + 8) = v65;
  v67 = v41 & 1;
  *(v62 + 16) = v67;
  *(v62 + 24) = v63;
  *(v62 + 32) = v66;
  *(v62 + 40) = 2;
  sub_1E48C12D0(v59, v60 + *(v61 + 64), &qword_1ECF80FB0, &qword_1E49A4FB0);
  sub_1E48C14F4(v64, v65, v67);

  sub_1E48C1338(v57, &qword_1ECF80FB0, &qword_1E49A4FB0);
  sub_1E48C1338(v77, &qword_1ECF80FC0, &qword_1E49A4FC0);
  sub_1E48C1338(v59, &qword_1ECF80FB0, &qword_1E49A4FB0);
  sub_1E48C1564(v64, v65, v67);

  return sub_1E48C1338(v58, &qword_1ECF80FC0, &qword_1E49A4FC0);
}

uint64_t sub_1E4962C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81000, &qword_1E49A5018);
  MEMORY[0x1EEE9AC00](v40);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for ColorProviderGraph(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81008, &qword_1E49A5020);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81010, &qword_1E49A5028);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v36 = &v36 - v17;
  sub_1E4963160(&v36 - v17);
  type metadata accessor for SolarViewModel(0);
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  *v9 = sub_1E49971EC();
  v9[8] = v19 & 1;
  LOBYTE(v45) = 1;
  sub_1E4997B4C();
  v20 = v47;
  v9[16] = v46;
  *(v9 + 3) = v20;
  v21 = type metadata accessor for ColorProviderPoint(0);
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_1E48C12D0(v6, v3, &qword_1ECF81000, &qword_1E49A5018);
  sub_1E4997B4C();
  sub_1E48C1338(v6, &qword_1ECF81000, &qword_1E49A5018);
  v22 = &v9[*(v7 + 28)];
  v45 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81018, &qword_1E49A5030);
  sub_1E4997B4C();
  v23 = v47;
  *v22 = v46;
  *(v22 + 1) = v23;
  sub_1E4961FDC(*v37, *(v37 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77, v24);
  sub_1E496816C(&qword_1ECF81020, type metadata accessor for ColorProviderGraph, &unk_1E49A5230);
  v25 = v38;
  sub_1E499793C();

  sub_1E4968268(v9, type metadata accessor for ColorProviderGraph);
  v26 = v18;
  v27 = v39;
  sub_1E48C12D0(v26, v39, &qword_1ECF81010, &qword_1E49A5028);
  v28 = v41;
  v29 = v42;
  v30 = *(v41 + 16);
  v31 = v43;
  v30(v43, v25, v42);
  v32 = v44;
  sub_1E48C12D0(v27, v44, &qword_1ECF81010, &qword_1E49A5028);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81028, &qword_1E49A5038);
  v30((v32 + *(v33 + 48)), v31, v29);
  v34 = *(v28 + 8);
  v34(v25, v29);
  sub_1E48C1338(v36, &qword_1ECF81010, &qword_1E49A5028);
  v34(v31, v29);
  return sub_1E48C1338(v27, &qword_1ECF81010, &qword_1E49A5028);
}

void *sub_1E4963160@<X0>(char *a1@<X8>)
{
  v54 = a1;
  v2 = sub_1E49975FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81030, &unk_1E49A5040);
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v64 = *(v1 + 40);
  v62 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B7C();
  v62 = v60;
  v63 = v61;
  v58 = xmmword_1E49A4E10;
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v1 + 64);
  *(v14 + 96) = *(v1 + 80);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  sub_1E49681BC(v1, &v60);
  sub_1E49681F4();
  v57 = v13;
  v17 = MEMORY[0x1E69E63B0];
  sub_1E4997C1C();
  sub_1E49975EC();
  sub_1E49975DC();
  v60 = v64;
  result = sub_1E4997B5C();
  if ((v62 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*&v62 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*&v62 < 9.22337204e18)
  {
    *&v60 = *&v62;
    sub_1E49975BC();
    sub_1E49975DC();
    sub_1E499761C();
    v51 = sub_1E49978BC();
    v50 = v19;
    v21 = v20;
    v52 = v22;
    v60 = *(v1 + 16);
    v61 = *(v1 + 32);
    v62 = *(v1 + 16);
    v63 = *(v1 + 32);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81040, &unk_1E49A5050);
    sub_1E4997C5C();
    v62 = v58;
    v63 = v59;
    v58 = xmmword_1E49A4E20;
    v49 = v10;
    sub_1E4997C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E499B670;
    v62 = v60;
    v63 = v61;
    MEMORY[0x1E691B460](&v58, v23);
    v25 = v58;
    v26 = MEMORY[0x1E69E6438];
    *(v24 + 56) = v17;
    *(v24 + 64) = v26;
    *(v24 + 32) = v25;
    *&v62 = sub_1E4997EFC();
    *(&v62 + 1) = v27;
    sub_1E48D2EE4();
    v46 = sub_1E49978DC();
    v45 = v28;
    v29 = v5;
    v55 = v5;
    v47 = v30;
    v48 = v31;
    v32 = v53;
    v33 = v54;
    v34 = *(v53 + 16);
    v35 = v56;
    v34(v56, v57, v3);
    v21 &= 1u;
    LOBYTE(v62) = v21;
    v34(v29, v10, v3);
    v34(v33, v35, v3);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81048, &qword_1E49A5060);
    v37 = &v33[v36[12]];
    v38 = v51;
    v39 = v50;
    *v37 = v51;
    *(v37 + 1) = v39;
    v37[16] = v21;
    *(v37 + 3) = v52;
    v34(&v33[v36[16]], v55, v3);
    v40 = &v33[v36[20]];
    v41 = v46;
    v42 = v45;
    *v40 = v46;
    *(v40 + 1) = v42;
    LOBYTE(v36) = v47 & 1;
    v40[16] = v47 & 1;
    *(v40 + 3) = v48;
    sub_1E48C14F4(v38, v39, v21);

    sub_1E48C14F4(v41, v42, v36);
    v43 = *(v32 + 8);

    v43(v49, v3);
    v43(v57, v3);
    sub_1E48C1564(v41, v42, v36);

    v43(v55, v3);
    sub_1E48C1564(v38, v39, v62);

    return (v43)(v56, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E4963838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81050, &qword_1E49A50C0);
  v3 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81058, &qword_1E49A50C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v36 = *(a1 + 56);
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  if (v35 == 1)
  {
    sub_1E4963CB0(sub_1E49682C8, sub_1E49682D0, v7);
    sub_1E48C15C8(v7, v18, &qword_1ECF81050, &qword_1E49A50C0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v3 + 56);
  v21 = 1;
  v20(v18, v19, 1, v33);
  sub_1E4963CB0(sub_1E49684D4, sub_1E49684DC, v34);
  v36 = v37;
  sub_1E4997B5C();
  if ((v35 & 1) == 0)
  {
    sub_1E4963CB0(sub_1E49682C8, sub_1E49682D0, v7);
    sub_1E48C15C8(v7, v15, &qword_1ECF81050, &qword_1E49A50C0);
    v21 = 0;
  }

  v22 = v15;
  v20(v15, v21, 1, v33);
  sub_1E48C12D0(v18, v12, &qword_1ECF81058, &qword_1E49A50C8);
  v33 = v18;
  v23 = v12;
  v24 = v34;
  sub_1E48C12D0(v34, v7, &qword_1ECF81050, &qword_1E49A50C0);
  v25 = v15;
  v26 = v31;
  sub_1E48C12D0(v25, v31, &qword_1ECF81058, &qword_1E49A50C8);
  v27 = v32;
  sub_1E48C12D0(v23, v32, &qword_1ECF81058, &qword_1E49A50C8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81060, &qword_1E49A50D0);
  sub_1E48C12D0(v7, v27 + *(v28 + 48), &qword_1ECF81050, &qword_1E49A50C0);
  sub_1E48C12D0(v26, v27 + *(v28 + 64), &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v22, &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v24, &qword_1ECF81050, &qword_1E49A50C0);
  sub_1E48C1338(v33, &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v26, &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v7, &qword_1ECF81050, &qword_1E49A50C0);
  return sub_1E48C1338(v23, &qword_1ECF81058, &qword_1E49A50C8);
}

__n128 sub_1E4963CB0@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a2;
  v28[2] = a3;
  v29 = a4;
  v5 = sub_1E499779C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81068, &qword_1E49A50D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81070, &qword_1E49A50E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - v14;
  v16 = swift_allocObject();
  v17 = *(v4 + 48);
  *(v16 + 48) = *(v4 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v4 + 64);
  *(v16 + 96) = *(v4 + 80);
  v18 = *(v4 + 16);
  *(v16 + 16) = *v4;
  *(v16 + 32) = v18;
  v30 = v4;
  sub_1E49681BC(v4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81078, &qword_1E49A50E8);
  sub_1E49682D8();
  sub_1E4997B9C();
  v19 = sub_1E4997A9C();
  KeyPath = swift_getKeyPath();
  *&v31[0] = v19;
  v21 = sub_1E499723C();
  v22 = &v11[*(v9 + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  sub_1E499778C();
  sub_1E4968390();
  sub_1E496816C(&qword_1ECF810B0, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  sub_1E499792C();
  (*(v6 + 8))(v8, v5);
  sub_1E48C1338(v11, &qword_1ECF81068, &qword_1E49A50D8);
  sub_1E4997CEC();
  sub_1E499736C();
  v23 = v29;
  (*(v13 + 32))(v29, v15, v12);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81050, &qword_1E49A50C0) + 36);
  v25 = v31[5];
  *(v24 + 64) = v31[4];
  *(v24 + 80) = v25;
  *(v24 + 96) = v31[6];
  v26 = v31[1];
  *v24 = v31[0];
  *(v24 + 16) = v26;
  result = v31[3];
  *(v24 + 32) = v31[2];
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_1E4964050(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1E48C12D0(&v5, &v2, &qword_1ECF810B8, &unk_1E49A5130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v3 = v4;
  LOBYTE(v2) = (v2 & 1) == 0;
  sub_1E4997B6C();
  return sub_1E48C1338(&v4, &qword_1ECF80F88, &qword_1E49A4F88);
}

uint64_t sub_1E4964110@<X0>(uint64_t *a2@<X8>)
{
  sub_1E49985BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  if (v9)
  {
    v4 = 1952867692;
  }

  else
  {
    v4 = 0x7468676972;
  }

  if (v9)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E691B7A0](v4, v5);

  MEMORY[0x1E691B7A0](0x2E6572617571732ELL, 0xEC0000006C6C6966);
  v6 = sub_1E4997ADC();
  sub_1E4997A1C();
  KeyPath = swift_getKeyPath();
  result = sub_1E499723C();
  *a2 = v6;
  a2[1] = KeyPath;
  a2[2] = result;
  return result;
}

uint64_t sub_1E4964248(uint64_t a1)
{
  v3 = *(a1 + 72);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1E48C12D0(&v5, &v2, &qword_1ECF810B8, &unk_1E49A5130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v3 = v4;
  LOBYTE(v2) = (v2 & 1) == 0;
  sub_1E4997B6C();
  return sub_1E48C1338(&v4, &qword_1ECF80F88, &qword_1E49A4F88);
}

uint64_t sub_1E4964308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x6873616C732ELL;
  }

  if (v8)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  MEMORY[0x1E691B7A0](v3, v4);

  MEMORY[0x1E691B7A0](0x6C6C69662ELL, 0xE500000000000000);
  v5 = sub_1E4997ADC();
  sub_1E4997B5C();
  if (v9 == 1)
  {
    sub_1E4997A1C();
  }

  else
  {
    sub_1E4997A2C();
  }

  KeyPath = swift_getKeyPath();
  result = sub_1E499723C();
  *a2 = v5;
  a2[1] = KeyPath;
  a2[2] = result;
  return result;
}

void sub_1E4964444(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E4961FDC(*a3, *(a3 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B5C();
  if (v3[4] == v5)
  {
    v3[4] = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E49645C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for CurrentLocationSolarPosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v8 = sub_1E493BCE8();
  v19 = v8;
  v20 = v9;
  v11 = sub_1E4961FDC(*v0, *(v0 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77, v10);
  swift_getKeyPath();
  v18 = v11;
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  v12 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v11 + v12, v3, &unk_1ECF816F0, &qword_1E49A5090);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1E48C1338(v3, &unk_1ECF816F0, &qword_1E49A5090);
  }

  else
  {
    sub_1E4968DB4(v3, v7, type metadata accessor for CurrentLocationSolarPosition);
    v16 = 10;
    v17 = 0xE100000000000000;
    v13 = sub_1E48F4D00();
    MEMORY[0x1E691B7A0](v13);

    MEMORY[0x1E691B7A0](v16, v17);

    sub_1E4968268(v7, type metadata accessor for CurrentLocationSolarPosition);
    return v19;
  }

  return v8;
}

uint64_t sub_1E49648C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_1E49975AC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F68, &qword_1E49A4F68);
  sub_1E49621A4(v8, a1 + *(v5 + 44));
  v6 = sub_1E4997A6C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F70, &qword_1E49A4F70);
  *(a1 + *(result + 36)) = v6;
  return result;
}

id sub_1E49649EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SolarClockFaceDebugHUDUIKitBridgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E4964A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E4964AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4964B40@<X0>(char *a1@<X8>)
{
  v132 = a1;
  v2 = type metadata accessor for ColorProviderGraph(0);
  v3 = *(v2 - 8);
  v154 = v2 - 8;
  v129 = v3;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v130 = v4;
  v131 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81130, &qword_1E49A5280);
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v113 - v5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81138, &qword_1E49A5288);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v113 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81140, &qword_1E49A5290);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v142 = &v113 - v7;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81148, &qword_1E49A5298);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v158 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v113 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81150, &qword_1E49A52A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v120 = &v113 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81158, &qword_1E49A52A8);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v113 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81160, &qword_1E49A52B0);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v118 = &v113 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81168, &qword_1E49A52B8);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v156 = &v113 - v17;
  v18 = type metadata accessor for ColorProviderPoint(0);
  v152 = *(v18 - 8);
  v153 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v149 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81000, &qword_1E49A5018);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v151 = &v113 - v21;
  v22 = sub_1E49975FC();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81170, &qword_1E49A52C0);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v113 - v25;
  sub_1E499760C();
  v150 = v1;
  v28 = *(v1 + 24);
  LOBYTE(v163) = *(v1 + 16);
  v27 = v163;
  v164 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B7C();
  v138 = v26;
  v29 = v151;
  sub_1E4997C2C();
  sub_1E49975EC();
  sub_1E49975DC();
  LOBYTE(v159) = v27;
  v160 = v28;
  sub_1E4997B5C();
  sub_1E49975CC();

  sub_1E49975DC();
  sub_1E499761C();
  v136 = sub_1E49978BC();
  v155 = v30;
  v119 = v31;
  v137 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  sub_1E4997B5C();
  if ((*(v152 + 48))(v29, 1, v153))
  {
    v33 = sub_1E48C1338(v29, &qword_1ECF81000, &qword_1E49A5018);
    v153 = 0;
    v154 = 0;
    v151 = 0;
    v152 = 0;
  }

  else
  {
    v34 = v149;
    sub_1E4968F24(v29, v149, type metadata accessor for ColorProviderPoint);
    sub_1E48C1338(v29, &qword_1ECF81000, &qword_1E49A5018);
    v36 = sub_1E496601C(v35);
    v38 = v37;
    sub_1E4968268(v34, type metadata accessor for ColorProviderPoint);
    v159 = v36;
    v160 = v38;
    sub_1E48D2EE4();
    v39 = sub_1E49978DC();
    v41 = v40;
    v43 = v42;
    v44 = sub_1E499785C();
    v46 = v45;
    v48 = v47;
    sub_1E48C1564(v39, v41, v43 & 1);

    sub_1E499781C();
    v49 = sub_1E499788C();
    v51 = v50;
    LOBYTE(v41) = v52;
    v54 = v53;

    sub_1E48C1564(v44, v46, v48 & 1);

    v153 = v51;
    v154 = v49;
    v151 = (v41 & 1);
    sub_1E48C14F4(v49, v51, v41 & 1);
    v152 = v54;
  }

  MEMORY[0x1EEE9AC00](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81178, &qword_1E49A52C8);
  sub_1E4968AF4();
  v55 = v115;
  sub_1E499712C();
  v159 = &unk_1F5E82D30;
  v56 = sub_1E499715C();
  v57 = *(v56 - 8);
  v149 = *(v57 + 56);
  v148 = v57 + 56;
  v58 = v120;
  v133 = v56;
  (v149)(v120, 1, 1, v56);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811A0, &qword_1E49A52E0);
  v114 = MEMORY[0x1E695B218];
  v60 = sub_1E48C1B44(&qword_1ECF811A8, &qword_1ECF81158, &qword_1E49A52A8, MEMORY[0x1E695B218]);
  v61 = sub_1E4968C7C(&qword_1ECF811B0, &qword_1ECF811A0, &qword_1E49A52E0);
  v62 = v118;
  v63 = v117;
  sub_1E49978FC();
  sub_1E48C1338(v58, &qword_1ECF81150, &qword_1E49A52A0);
  (*(v116 + 8))(v55, v63);
  v163 = sub_1E4966A4C();
  (v149)(v58, 1, 1, v56);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811B8, &qword_1E49A52E8);
  v159 = v63;
  v160 = v59;
  v161 = v60;
  v162 = v61;
  v116 = MEMORY[0x1E695B368];
  swift_getOpaqueTypeConformance2();
  v113 = sub_1E4968C7C(&qword_1ECF811C0, &qword_1ECF811B8, &qword_1E49A52E8);
  v64 = v135;
  sub_1E49978EC();
  sub_1E48C1338(v58, &qword_1ECF81150, &qword_1E49A52A0);

  (*(v134 + 8))(v62, v64);
  sub_1E499760C();
  v134 = sub_1E49978BC();
  v117 = v65;
  LODWORD(v118) = v66;
  v135 = v67;
  MEMORY[0x1EEE9AC00](v134);
  v68 = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811C8, &qword_1E49A52F0);
  sub_1E4968CEC();
  v69 = v121;
  sub_1E499712C();
  v159 = &unk_1F5E82D60;
  (v149)(v58, 1, 1, v133);
  v70 = sub_1E48C1B44(&qword_1ECF811D8, &qword_1ECF81130, &qword_1E49A5280, v114);
  v71 = v123;
  v72 = v124;
  sub_1E49978FC();
  sub_1E48C1338(v58, &qword_1ECF81150, &qword_1E49A52A0);
  (*(v122 + 8))(v69, v72);
  v163 = sub_1E4966A4C();
  (v149)(v58, 1, 1, v133);
  v159 = v72;
  v160 = v59;
  v161 = v70;
  v162 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v126;
  v75 = v115;
  v76 = v113;
  sub_1E49978EC();
  sub_1E48C1338(v58, &qword_1ECF81150, &qword_1E49A52A0);

  v77.n128_f64[0] = (*(v125 + 8))(v71, v74);
  v78 = sub_1E4961FDC(*v68, *(v68 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77, v77);
  swift_getKeyPath();
  v159 = v78;
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  v79 = v78[3];

  v163 = v79;
  v80 = v131;
  sub_1E4968F24(v68, v131, type metadata accessor for ColorProviderGraph);
  v81 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v82 = swift_allocObject();
  sub_1E4968DB4(v80, v82 + v81, type metadata accessor for ColorProviderGraph);
  v159 = v74;
  v160 = v75;
  v161 = OpaqueTypeConformance2;
  v162 = v76;
  swift_getOpaqueTypeConformance2();
  v83 = v128;
  v84 = v142;
  sub_1E499799C();

  (*(v127 + 8))(v84, v83);
  v85 = *(v140 + 16);
  v86 = v139;
  v87 = v141;
  v85(v139, v138, v141);
  LOBYTE(v159) = v119 & 1;
  LOBYTE(v75) = v119 & 1;
  LODWORD(v148) = v119 & 1;
  v149 = *(v144 + 16);
  v88 = v143;
  v89 = v145;
  (v149)(v143, v156, v145);
  v150 = *(v146 + 16);
  v150(v158, v157, v147);
  v90 = v132;
  v85(v132, v86, v87);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811E0, &qword_1E49A5320);
  v92 = &v90[v91[12]];
  v93 = v136;
  v94 = v155;
  *v92 = v136;
  *(v92 + 1) = v94;
  v92[16] = v75;
  *(v92 + 3) = v137;
  v95 = &v90[v91[16]];
  v96 = v153;
  *v95 = v154;
  *(v95 + 1) = v96;
  v97 = v152;
  *(v95 + 2) = v151;
  *(v95 + 3) = v97;
  (v149)(&v90[v91[20]], v88, v89);
  v98 = &v90[v91[24]];
  v99 = v134;
  v100 = v117;
  *v98 = v134;
  *(v98 + 1) = v100;
  LODWORD(v75) = v118 & 1;
  v98[16] = v75;
  LODWORD(v149) = v75;
  *(v98 + 3) = v135;
  v101 = &v90[v91[28]];
  v102 = v147;
  v150(v101, v158, v147);
  sub_1E48C14F4(v93, v155, v148);

  v104 = v153;
  v103 = v154;
  LOBYTE(v80) = v151;
  v105 = v152;
  sub_1E4968E9C(v154, v153, v151, v152);
  sub_1E48C14F4(v99, v100, v75);

  v106 = sub_1E4968EE0(v103, v104, v80, v105);
  v107 = *(v146 + 8);
  v107(v157, v102, v106);
  v108 = *(v144 + 8);
  v109 = v145;
  v108(v156, v145);
  v110 = *(v140 + 8);
  v111 = v141;
  v110(v138, v141);
  (v107)(v158, v102);
  sub_1E48C1564(v134, v100, v149);

  v108(v143, v109);
  sub_1E4968EE0(v154, v153, v151, v152);
  sub_1E48C1564(v136, v155, v159);

  return (v110)(v139, v111);
}

uint64_t sub_1E496601C(__n128 a1)
{
  sub_1E49985BC();

  sub_1E4967D80();
  MEMORY[0x1E691B7A0]();

  MEMORY[0x1E691B7A0](3822368, 0xE300000000000000);
  type metadata accessor for ColorProviderPoint(0);
  sub_1E4967D80();
  MEMORY[0x1E691B7A0]();

  MEMORY[0x1E691B7A0](3818016, 0xE300000000000000);
  sub_1E4967D80();
  MEMORY[0x1E691B7A0]();

  MEMORY[0x1E691B7A0](10, 0xE100000000000000);
  sub_1E49985BC();

  v1 = sub_1E4967EB0();
  MEMORY[0x1E691B7A0](v1);

  MEMORY[0x1E691B7A0](3822368, 0xE300000000000000);
  v2 = sub_1E4967EB0();
  MEMORY[0x1E691B7A0](v2);

  MEMORY[0x1E691B7A0](3818016, 0xE300000000000000);
  v3 = sub_1E4967EB0();
  MEMORY[0x1E691B7A0](v3);

  MEMORY[0x1E691B7A0](0x202D206573696F4ELL, 0xEA00000000003A48);

  return 0x202D2065756C6156;
}

uint64_t sub_1E496621C(uint64_t a1)
{
  type metadata accessor for ColorProviderGraph(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81018, &qword_1E49A5030);
  sub_1E4996DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81190, &qword_1E49A52D0);
  sub_1E48C1B44(&qword_1ECF81210, &qword_1ECF81018, &qword_1E49A5030, MEMORY[0x1E69E6338]);
  sub_1E4968B78();
  sub_1E496816C(&qword_1ECF81218, type metadata accessor for ColorProviderPoint, &unk_1E49A51F8);
  return sub_1E4997C7C();
}

uint64_t sub_1E4966378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for ColorProviderPoint(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81230, &qword_1E49A5390);
  v7 = *(type metadata accessor for ColorProviderPoint.Sample(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E499E4C0;
  v11 = v10 + v9;
  sub_1E4968F24(a1, v11, type metadata accessor for ColorProviderPoint.Sample);
  sub_1E4968F24(a1 + *(v4 + 28), v11 + v8, type metadata accessor for ColorProviderPoint.Sample);
  sub_1E4968F24(a1 + *(v4 + 32), v11 + 2 * v8, type metadata accessor for ColorProviderPoint.Sample);
  v22 = v10;
  sub_1E4968F24(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorProviderPoint);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1E4968DB4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ColorProviderPoint);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81238, &qword_1E49A5398);
  sub_1E4996DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81240, &qword_1E49A53A0);
  sub_1E48C1B44(&qword_1ECF81248, &qword_1ECF81238, &qword_1E49A5398, MEMORY[0x1E69E6338]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81198, &qword_1E49A52D8);
  v18 = sub_1E499714C();
  v19 = MEMORY[0x1E69815C0];
  v20 = MEMORY[0x1E695B2E0];
  v21 = MEMORY[0x1E6981568];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v14;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E496816C(&qword_1ECF81250, type metadata accessor for ColorProviderPoint.Sample, &unk_1E49A5198);
  return sub_1E4997C7C();
}

uint64_t sub_1E49666F0@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81220, &qword_1E49A5380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1E499714C();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81198, &qword_1E49A52D8);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  sub_1E499760C();
  LODWORD(v26) = *(a2 + *(type metadata accessor for ColorProviderPoint(0) + 28));
  sub_1E499711C();

  sub_1E499760C();
  v14 = v21;
  LODWORD(v26) = *v21;
  sub_1E499711C();

  sub_1E499713C();
  v26 = *(v14 + 1);
  v15 = MEMORY[0x1E69815C0];
  v16 = MEMORY[0x1E695B2E0];
  v17 = MEMORY[0x1E6981568];
  sub_1E499710C();
  (*(v22 + 8))(v9, v7);
  v26 = v7;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1E49970FC();
  return (*(v24 + 8))(v13, v18);
}

void *sub_1E4966A4C()
{
  v1 = type metadata accessor for ColorProviderPoint(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = (v0 + *(type metadata accessor for ColorProviderGraph(0) + 28));
  v12 = *v11;
  v13 = v11[1];
  v26 = *v11;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  v14 = *(v25 + 16);

  v15 = 0.0;
  if (v14 >= 3)
  {
    v26 = v12;
    v27 = v13;
    result = sub_1E4997B5C();
    if (*(v25 + 16) < 2uLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    sub_1E4968F24(v25 + *(v2 + 72) + v17, v10, type metadata accessor for ColorProviderPoint);

    v18 = *&v10[*(v1 + 28)];
    sub_1E4968268(v10, type metadata accessor for ColorProviderPoint);
    v26 = v12;
    v27 = v13;
    result = sub_1E4997B5C();
    if (!*(v25 + 16))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_1E4968F24(v25 + v17, v7, type metadata accessor for ColorProviderPoint);

    v19 = *&v7[*(v1 + 28)];
    sub_1E4968268(v7, type metadata accessor for ColorProviderPoint);
    v15 = (v18 - v19) * 110.0;
  }

  v26 = v12;
  v27 = v13;
  sub_1E4997B5C();
  v20 = *(v25 + 16);

  if (v20 < 0x6F)
  {
    v26 = v12;
    v27 = v13;
    sub_1E4997B5C();
    if (*(v25 + 16))
    {
      sub_1E4968F24(v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for ColorProviderPoint);

      v23 = *&v4[*(v1 + 28)];
      sub_1E4968268(v4, type metadata accessor for ColorProviderPoint);
    }

    else
    {

      v23 = 0.0;
    }

    goto LABEL_12;
  }

  v26 = v12;
  v27 = v13;
  sub_1E4997B5C();
  v21 = *(v25 + 16);

  v26 = v12;
  v27 = v13;
  result = sub_1E4997B5C();
  v22 = v21 - 110;
  if (v21 < 0x6E)
  {
    goto LABEL_14;
  }

  if (v22 < *(v25 + 16))
  {
    sub_1E4968F24(v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22, v10, type metadata accessor for ColorProviderPoint);

    v23 = *&v10[*(v1 + 28)];
    sub_1E4968268(v10, type metadata accessor for ColorProviderPoint);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81228, &qword_1E49A5388);
    result = swift_allocObject();
    *(result + 1) = xmmword_1E499A180;
    *(result + 8) = v23;
    *(result + 9) = v15 + v23;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E4966E44()
{
  type metadata accessor for ColorProviderGraph(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81018, &qword_1E49A5030);
  sub_1E4996DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81198, &qword_1E49A52D8);
  sub_1E48C1B44(&qword_1ECF81210, &qword_1ECF81018, &qword_1E49A5030, MEMORY[0x1E69E6338]);
  sub_1E499714C();
  swift_getOpaqueTypeConformance2();
  sub_1E496816C(&qword_1ECF81218, type metadata accessor for ColorProviderPoint, &unk_1E49A51F8);
  return sub_1E4997C7C();
}

uint64_t sub_1E4966FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81220, &qword_1E49A5380);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E499714C();
  v10 = *(v5 - 8);
  v11 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E499760C();
  LODWORD(v13) = *(a1 + *(type metadata accessor for ColorProviderPoint(0) + 28));
  sub_1E499711C();

  sub_1E499760C();
  LODWORD(v13) = *(a1 + 16);
  sub_1E499711C();

  sub_1E499713C();
  v13 = *(a1 + 8);
  v8 = v11;
  sub_1E499710C();
  return (*(v10 + 8))(v7, v8);
}

uint64_t sub_1E4967248(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81000, &qword_1E49A5018);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = type metadata accessor for ColorProviderPoint(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v37 - v16;
  v18 = *a2;
  sub_1E49676BC(&v45);
  if (!*(&v46 + 1))
  {
    return sub_1E48C1338(&v45, &qword_1ECF811E8, &qword_1E49A5328);
  }

  v38 = v11;
  v41 = v7;
  v53[4] = v49;
  v53[5] = v50;
  v53[6] = v51;
  v54 = v52;
  v53[0] = v45;
  v53[1] = v46;
  v53[2] = v47;
  v53[3] = v48;
  sub_1E48CD45C(v53, &v45);
  v19 = v18;
  sub_1E496793C(&v45, v17, v19);
  v20 = type metadata accessor for ColorProviderGraph(0);
  v21 = *(v20 + 28);
  v42 = a3;
  v22 = (a3 + v21);
  v23 = v22[1];
  v37[0] = *v22;
  v37[1] = v20;
  *&v45 = v37[0];
  *(&v45 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  v24 = v44;
  sub_1E4968F24(v17, v14, type metadata accessor for ColorProviderPoint);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1E49069FC(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  v39 = v17;
  v40 = v10;
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1E49069FC((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v28 = *(v12 + 72);
  sub_1E4968DB4(v14, v24 + v27 + v28 * v26, type metadata accessor for ColorProviderPoint);
  if (v26 >= 0x64)
  {
    v29 = v24[2];
    if (v29)
    {
      v44 = v24;
      if ((v29 - 1) <= v24[3] >> 1)
      {
LABEL_9:
        sub_1E496EC18(0, 1, 0);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    v24 = sub_1E49069FC(1, v29, 1, v24);
    v44 = v24;
    goto LABEL_9;
  }

LABEL_10:
  v30 = v37[0];
  *&v45 = v37[0];
  *(&v45 + 1) = v23;
  v43 = v24;
  sub_1E4997B6C();
  *&v45 = v30;
  *(&v45 + 1) = v23;
  sub_1E4997B5C();
  v31 = v43[2];
  if (v31)
  {
    v32 = v43 + v27 + (v31 - 1) * v28;
    v33 = v40;
    sub_1E4968F24(v32, v40, type metadata accessor for ColorProviderPoint);
    v34 = 0;
    v35 = v41;
  }

  else
  {
    v34 = 1;
    v35 = v41;
    v33 = v40;
  }

  (*(v12 + 56))(v33, v34, 1, v38);
  sub_1E48C12D0(v33, v35, &qword_1ECF81000, &qword_1E49A5018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  sub_1E4997B6C();
  sub_1E48C1338(v33, &qword_1ECF81000, &qword_1E49A5018);
  sub_1E4968268(v39, type metadata accessor for ColorProviderPoint);
  return sub_1E4968F8C(v53);
}

void sub_1E49676BC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  LOBYTE(v9[0]) = *(v1 + 16);
  v9[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v5 = sub_1E4961FDC(*v1, *(v1 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77, v4);
  if (LOBYTE(v12[0]) == 1)
  {
    swift_getKeyPath();
    v9[0] = v5;
    sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
    sub_1E4996FCC();

    v6 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
    swift_beginAccess();
    sub_1E48C12D0(v5 + v6, v9, &qword_1ECF801E0, &qword_1E49A5370);

    if (v10)
    {
      v7 = &v11;
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  v9[0] = v5;
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  v8 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E48C12D0(v5 + v8, v9, &qword_1ECF801E0, &qword_1E49A5370);

  if (!v10)
  {
    goto LABEL_10;
  }

  v7 = v9;
LABEL_6:
  sub_1E48CD210(v7, v12);
  sub_1E4920094(v9);
  sub_1E48B7448(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81208, &qword_1E49A5378);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

void sub_1E496793C(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for ColorProviderPoint.Sample(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10 - 8];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35[-v13 - 8];
  v15 = type metadata accessor for ColorProviderPoint(0);
  sub_1E4996DAC();
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = a1[8];
  v20 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v22 = a1[13];
  v23 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, v22);
  v24 = (*(v23 + 8))(v22, v23);
  *(a2 + v15[7]) = a3;
  v25 = sub_1E4997A0C();
  sub_1E48CD210(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F8, &qword_1E49A5338);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    noise2();
    v27 = v26;
    sub_1E4968FE0(&v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1E48C1338(&v36, &qword_1ECF81200, &qword_1E49A5340);
    v27 = 0;
  }

  *v14 = v18;
  *(v14 + 1) = v25;
  *(v14 + 4) = v27;
  sub_1E4996DAC();
  sub_1E4968DB4(v14, a2, type metadata accessor for ColorProviderPoint.Sample);
  v28 = sub_1E4997A0C();
  sub_1E48CD210((a1 + 5), v35);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    noise2();
    v30 = v29;
    sub_1E4968FE0(&v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1E48C1338(&v36, &qword_1ECF81200, &qword_1E49A5340);
    v30 = 0;
  }

  *v11 = v21;
  *(v11 + 1) = v28;
  *(v11 + 4) = v30;
  sub_1E4996DAC();
  sub_1E4968DB4(v11, a2 + v15[5], type metadata accessor for ColorProviderPoint.Sample);
  v31 = sub_1E4997A0C();
  sub_1E48CD210((a1 + 10), v35);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    noise2();
    v33 = v32;
    sub_1E4968FE0(&v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1E48C1338(&v36, &qword_1ECF81200, &qword_1E49A5340);
    v33 = 0;
  }

  *v8 = v24;
  *(v8 + 1) = v31;
  *(v8 + 4) = v33;
  sub_1E4996DAC();
  sub_1E4968F8C(a1);
  sub_1E4968DB4(v8, a2 + v15[6], type metadata accessor for ColorProviderPoint.Sample);
}

void sub_1E4967D80()
{
  v1 = roundf(*v0 * 100.0);
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 >= 9.2234e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v2 = v1;
  if (v1 < 0)
  {
    v3 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v3)
    {
      goto LABEL_22;
    }
  }

  if (v2 >= 10)
  {
    v4 = 0;
  }

  else
  {
    v4 = 48;
  }

  if (v2 >= 10)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (v2 >= 100)
  {
    v6 = 0;
  }

  else
  {
    v6 = 48;
  }

  if (v2 >= 100)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  MEMORY[0x1E691B7A0](v4, v5);

  MEMORY[0x1E691B7A0](v6, v7);

  v8 = sub_1E49987FC();
  MEMORY[0x1E691B7A0](v8);
}

uint64_t sub_1E4967EB0()
{
  v1 = *(v0 + 16);
  if (v1 >= 0.0)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x1E691B7A0](32 * (v1 >= 0.0), v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6448];
  *(v3 + 16) = xmmword_1E499B670;
  v5 = MEMORY[0x1E69E64A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v6);

  return 0;
}

uint64_t sub_1E4967F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1E4996DBC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E4967FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1E4996DBC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_1E4968074()
{
  result = qword_1ECF80FE0;
  if (!qword_1ECF80FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80FA0, &qword_1E49A4FA0);
    sub_1E48C1B44(&qword_1ECF80FE8, &qword_1ECF80FF0, &qword_1E49A5008, MEMORY[0x1E697BE60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80FE0);
  }

  return result;
}

uint64_t sub_1E496816C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E49681F4()
{
  result = qword_1ECF81038;
  if (!qword_1ECF81038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81038);
  }

  return result;
}

uint64_t sub_1E4968268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E49682D8()
{
  result = qword_1ECF81080;
  if (!qword_1ECF81080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81078, &qword_1E49A50E8);
    sub_1E48C1B44(&qword_1ECF81088, &qword_1ECF81090, &qword_1E49A50F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81080);
  }

  return result;
}

unint64_t sub_1E4968390()
{
  result = qword_1ECF81098;
  if (!qword_1ECF81098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81068, &qword_1E49A50D8);
    sub_1E48C1B44(&qword_1ECF810A0, &qword_1ECF810A8, &qword_1E49A5128, MEMORY[0x1E697D680]);
    sub_1E48C1B44(&qword_1ECF81088, &qword_1ECF81090, &qword_1E49A50F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81098);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void *sub_1E49684E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for SolarViewModel(0);
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  v8 = sub_1E49971EC();
  v14 = v9 & 1;
  sub_1E4997B4C();
  sub_1E4997B4C();
  result = sub_1E4997B4C();
  if (!a2)
  {
    result = sub_1E4997C6C();
    a1 = v11;
    a2 = v12;
    a3 = v13;
  }

  *a4 = v8;
  *(a4 + 8) = v14;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  *(a4 + 72) = v11;
  *(a4 + 80) = v12;
  return result;
}

uint64_t sub_1E49686A0(uint64_t a1)
{
  result = type metadata accessor for ColorProviderPoint.Sample(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E4996DBC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4968758(uint64_t a1)
{
  result = sub_1E4996DBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E496880C(uint64_t a1)
{
  sub_1E49688F0(319);
  if (v1 <= 0x3F)
  {
    sub_1E4968948();
    if (v2 <= 0x3F)
    {
      sub_1E4968998(319, &qword_1ECF81108, &qword_1ECF81000, &qword_1E49A5018);
      if (v3 <= 0x3F)
      {
        sub_1E4968998(319, &qword_1ECF81110, &qword_1ECF81018, &qword_1E49A5030);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E49688F0(uint64_t a1)
{
  if (!qword_1ECF810F8)
  {
    type metadata accessor for SolarViewModel(255);
    v1 = sub_1E49971DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF810F8);
    }
  }
}

void sub_1E4968948()
{
  if (!qword_1ECF81100)
  {
    v0 = sub_1E4997B8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF81100);
    }
  }
}

void sub_1E4968998(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E4997B8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E49689EC()
{
  result = qword_1ECF81118;
  if (!qword_1ECF81118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80F70, &qword_1E49A4F70);
    sub_1E48C1B44(&qword_1ECF81120, &qword_1ECF81128, &unk_1E49A5188, MEMORY[0x1E69817F8]);
    sub_1E48C1B44(&qword_1ECF7F6A0, &qword_1ECF7F690, &unk_1E499C150, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81118);
  }

  return result;
}

unint64_t sub_1E4968AF4()
{
  result = qword_1ECF81180;
  if (!qword_1ECF81180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81178, &qword_1E49A52C8);
    sub_1E4968B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81180);
  }

  return result;
}

unint64_t sub_1E4968B78()
{
  result = qword_1ECF81188;
  if (!qword_1ECF81188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81190, &qword_1E49A52D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81198, &qword_1E49A52D8);
    sub_1E499714C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81188);
  }

  return result;
}

uint64_t sub_1E4968C7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4968CEC()
{
  result = qword_1ECF811D0;
  if (!qword_1ECF811D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF811C8, &qword_1E49A52F0);
    sub_1E499714C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF811D0);
  }

  return result;
}

uint64_t sub_1E4968DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4968E1C(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for ColorProviderGraph(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4967248(a1, a2, v6);
}

double sub_1E4968E9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E48C14F4(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1E4968EE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E48C1564(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E4968F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4969034@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorProviderPoint(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E49666F0(a1, v6, a2);
}

uint64_t sub_1E49690B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E48C12D0(a3, v22 - v9, &qword_1ECF7EC60, &unk_1E49A0DC0);
  v11 = sub_1E499816C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E48C1338(v10, &qword_1ECF7EC60, &unk_1E49A0DC0);
  }

  else
  {
    sub_1E499815C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E499811C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4997F3C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E4969364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E48C12D0(a3, v22 - v9, &qword_1ECF7EC60, &unk_1E49A0DC0);
  v11 = sub_1E499816C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E48C1338(v10, &qword_1ECF7EC60, &unk_1E49A0DC0);
  }

  else
  {
    sub_1E499815C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E499811C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4997F3C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF809C0, &qword_1E49A3978);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF809C0, &qword_1E49A3978);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E4969620()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECF80790;

  v1 = sub_1E4998A1C();
  v3 = v2;
  type metadata accessor for Scheduler();
  v4 = swift_allocObject();
  result = sub_1E4969FA8(v0, v1, v3);
  qword_1ECF819B8 = v4;
  return result;
}

double sub_1E49696C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E499816C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1E498DD1C(0, 0, v6, &unk_1E49A5568, v8);

  return result;
}

uint64_t sub_1E49697D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1E48BFD3C;

  return v7();
}

double (*sub_1E49698BC(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3))()
{
  v20 = a3;
  v6 = type metadata accessor for ScheduledTask(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  v21 = swift_allocBox();
  v10 = v9;
  v11 = sub_1E4996DBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  v14 = *(v3 + 80);
  swift_beginAccess();
  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  sub_1E496ABD0();
  sub_1E496BA38(a2, v20, a1, v8);
  sub_1E48C1338(v10, &qword_1ECF812B8, &qword_1E49A5550);
  (*(v12 + 16))(v10, v8, v11);
  v13(v10, 0, 1, v11);
  if (*(v3 + 48) == 1)
  {
    sub_1E496C128(v8);
  }

  sub_1E496D7EC(v8);
  swift_beginAccess();
  os_unfair_lock_unlock(v14 + 4);
  swift_endAccess();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  return sub_1E496DEB8;
}

double sub_1E4969AF0(uint64_t a1, uint64_t a2)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 80);
    v6 = Strong;
    swift_beginAccess();
    os_unfair_lock_lock(v5 + 4);
    swift_endAccess();
    sub_1E4969BB4(v6, v2);
    v7 = *(v6 + 80);
    swift_beginAccess();
    os_unfair_lock_unlock(v7 + 4);
    swift_endAccess();
  }

  return result;
}

void sub_1E4969BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  swift_beginAccess();
  sub_1E48C12D0(a2, v14, &qword_1ECF812B8, &qword_1E49A5550);
  v15 = sub_1E4996DBC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = type metadata accessor for ScheduledTask(0);
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  swift_beginAccess();
  sub_1E4971254(v6, v14);
  swift_endAccess();
  swift_beginAccess();
  sub_1E48C12D0(a2, v11, &qword_1ECF812B8, &qword_1E49A5550);
  if (v17(v11, 1, v15) != 1)
  {
    swift_beginAccess();
    if (*(*(a1 + 64) + 16))
    {

      sub_1E4947F28(v11);
      if (v19)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
        sub_1E49981DC();
      }

      else
      {
      }
    }

    (*(v16 + 8))(v11, v15);
    swift_beginAccess();
    v20 = v24;
    sub_1E48C12D0(a2, v24, &qword_1ECF812B8, &qword_1E49A5550);
    if (v17(v20, 1, v15) == 1)
    {
      goto LABEL_13;
    }

    swift_beginAccess();
    sub_1E4971474(0, v20);
    swift_endAccess();
    swift_beginAccess();
    sub_1E496DEC0((a1 + 72), a2);
    v22 = *(*(a1 + 72) + 16);
    if (v22 >= v21)
    {
      sub_1E496ED7C(v21, v22);
      swift_endAccess();
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1E4969FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-v11];
  v13 = MEMORY[0x1E69E7CC8];
  *(v3 + 40) = 0;
  *(v3 + 56) = v13;
  *(v3 + 64) = v13;
  *(v3 + 72) = MEMORY[0x1E69E7CC0];
  type metadata accessor for CPUnfairLock();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v3 + 80) = v14;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  *(v3 + 16) = a2;
  v15 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v16 = type metadata accessor for OverrideTime(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v9, 1, 1, v16);
  v18 = *(v15 + 40);
  swift_beginAccess();

  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  sub_1E48C1338(v9, &qword_1ECF807E8, &qword_1E49A3200);
  v19 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v15 + v19, v9, &qword_1ECF807E8, &qword_1E49A3200);
  v20 = *(v15 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  v21 = (*(v17 + 48))(v9, 1, v16);
  if (v21)
  {
    sub_1E48C1338(v9, &qword_1ECF807E8, &qword_1E49A3200);
    v22 = sub_1E4996D8C();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  }

  else
  {
    v23 = sub_1E4996D8C();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v12, v9, v23);
    sub_1E48C1338(v9, &qword_1ECF807E8, &qword_1E49A3200);
    (*(v24 + 56))(v12, 0, 1, v23);
  }

  sub_1E48C1338(v12, &qword_1ECF809D0, &qword_1E499D6C0);
  *(v3 + 48) = v21 != 0;
  return v3;
}

void sub_1E496A328(char a1)
{
  v3 = sub_1E4996DBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v73 = v5;
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v67 - v9;
  v71 = sub_1E4996D8C();
  v10 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v83 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B0, &qword_1E49A5540);
  MEMORY[0x1EEE9AC00](v82);
  v89 = &v67 - v12;
  if (*(v1 + 48) != (a1 & 1))
  {
    swift_beginAccess();
    v13 = *(v1 + 56);
    v16 = *(v13 + 64);
    v15 = v13 + 64;
    v14 = v16;
    v17 = 1 << *(*(v1 + 56) + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v81 = *(v1 + 56);
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    v20 = 0;
    v21 = (v17 + 63) >> 6;
    v67 = (v4 + 8);
    v69 = v4 + 32;
    v68 = (v10 + 8);
    v88 = v1;
    v80 = v15;
    v79 = v21;
    v78 = v4 + 16;
    v87 = v3;
    v70 = v4;
    while (v19)
    {
LABEL_13:
      v23 = __clz(__rbit64(v19)) | (v20 << 6);
      v24 = v81;
      v25 = *(v4 + 72);
      v26 = *(v81 + 48) + v25 * v23;
      v27 = v89;
      v86 = *(v4 + 16);
      v86(v89, v26, v3);
      v28 = *(v24 + 56);
      v29 = type metadata accessor for ScheduledTask(0);
      v30 = v27 + *(v82 + 48);
      sub_1E496D724(v28 + *(*(v29 - 8) + 72) * v23, v30);
      v31 = v4;
      v32 = v88;
      if (*(v88 + 48))
      {
        sub_1E493BA48(v83);
        sub_1E4996BAC();
        v34 = v33;
        sub_1E4996BAC();
        v36 = v34 - v35;
        v37 = *(v32 + 24);
        v76 = *(v32 + 16);
        v75 = v37;
        v38 = sub_1E499816C();
        v74 = *(v38 - 8);
        v39 = v85;
        (*(v74 + 56))(v85, 1, 1, v38);
        v40 = swift_allocObject();
        swift_weakInit();
        v41 = v72;
        v77 = v30;
        v42 = v30;
        v43 = v87;
        v86(v72, v42, v87);
        v44 = (*(v31 + 80) + 64) & ~*(v31 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = 0;
        *(v45 + 24) = 0;
        *(v45 + 32) = v36;
        v46 = v75;
        *(v45 + 40) = v76;
        *(v45 + 48) = v46;
        *(v45 + 56) = v40;
        v47 = v41;
        v48 = v38;
        v49 = v74;
        v50 = v84;
        (*(v31 + 32))(v45 + v44, v47, v43);
        sub_1E48C12D0(v39, v50, &qword_1ECF7EC60, &unk_1E49A0DC0);
        LODWORD(v50) = (*(v49 + 48))(v50, 1, v48);

        if (v50 == 1)
        {
          sub_1E48C1338(v84, &qword_1ECF7EC60, &unk_1E49A0DC0);
        }

        else
        {
          v53 = v84;
          sub_1E499815C();
          (*(v49 + 8))(v53, v48);
        }

        v15 = v80;
        v54 = *(v45 + 16);
        swift_unknownObjectRetain();

        v55 = v88;
        if (v54)
        {
          swift_getObjectType();
          v56 = sub_1E499811C();
          v58 = v57;
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }

        sub_1E48C1338(v85, &qword_1ECF7EC60, &unk_1E49A0DC0);
        if (v58 | v56)
        {
          v91 = 0;
          v92 = 0;
          v93 = v56;
          v94 = v58;
        }

        v4 = v70;
        v59 = swift_task_create();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = *(v55 + 64);
        *(v55 + 64) = 0x8000000000000000;
        sub_1E498725C(v59, v77, isUniquelyReferenced_nonNull_native);
        *(v55 + 64) = v90;
        swift_endAccess();
        (*v68)(v83, v71);
        v3 = v87;
        v21 = v79;
      }

      else
      {
        v3 = v87;
        v4 = v31;
        v15 = v80;
        v51 = v30;
        if (*(*(v88 + 64) + 16))
        {

          sub_1E4947F28(v30);
          if (v52)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
            sub_1E49981DC();
          }

          else
          {
          }
        }

        v61 = v88;
        swift_beginAccess();
        v62 = sub_1E4947F28(v51);
        v21 = v79;
        if (v63)
        {
          v64 = v62;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v61 + 64);
          v90 = v66;
          *(v61 + 64) = 0x8000000000000000;
          if (!v65)
          {
            sub_1E4989238();
            v66 = v90;
          }

          (*v67)(*(v66 + 48) + v64 * v25, v3);

          sub_1E4985D3C(v64, v66);
          *(v61 + 64) = v66;
        }

        swift_endAccess();
      }

      v19 &= v19 - 1;
      sub_1E48C1338(v89, &qword_1ECF812B0, &qword_1E49A5540);
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        return;
      }

      v19 = *(v15 + 8 * v22);
      ++v20;
      if (v19)
      {
        v20 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

double sub_1E496ABD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  *&result = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  if (!*(v0 + 40))
  {
    v5 = *(v0 + 32);
    v6 = sub_1E499816C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    v8[5] = v7;

    *(v0 + 40) = sub_1E49690B8(0, 0, v4, &unk_1E49A5528, v8);
  }

  return result;
}

uint64_t sub_1E496AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v6 = sub_1E4996D8C();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v5[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E496AF9C, 0, 0);
}

uint64_t sub_1E496AF9C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_1E493C7A4(v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[36] = 0;
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1E496B0AC;
  v5 = v0[33];
  v6 = v0[29];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E496B0AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E496B1A8, 0, 0);
}

uint64_t sub_1E496B1A8()
{
  v1 = v0[29];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    goto LABEL_2;
  }

  v3 = v0[36];
  sub_1E48C15C8(v1, v0[28], &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E49981FC();
  if (v3)
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    sub_1E48C1338(v0[28], &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v5 + 8))(v4, v6);

    v2 = v0[1];
    goto LABEL_5;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + 80);
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    sub_1E49981FC();
    v11 = v0[27];
    v12 = v0[22];
    v13 = v0[23];
    sub_1E48C12D0(v0[28], v11, &qword_1ECF809D0, &qword_1E499D6C0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1E48C1338(v0[27], &qword_1ECF809D0, &qword_1E499D6C0);
      v14 = *(v9 + 48);
      *(v9 + 48) = 1;
      sub_1E496A328(v14);
      v15 = 0;
    }

    else
    {
      v17 = v0[23];
      v16 = v0[24];
      v18 = v0[22];
      (*(v17 + 32))(v16, v0[27], v18);
      v19 = *(v9 + 48);
      *(v9 + 48) = 0;
      sub_1E496A328(v19);
      v15 = sub_1E496B908(v16);
      (*(v17 + 8))(v16, v18);
    }

    v20 = *(v9 + 80);
    swift_beginAccess();
    os_unfair_lock_unlock(v20 + 4);
    v21 = swift_endAccess();
    if (v15)
    {
      v42 = v15[2];
      if (v42)
      {
        v25 = 0;
        v40 = v15;
        v41 = v15 + 4;
        while (v25 < v15[2])
        {
          v26 = v0[20];
          v27 = v0[21];
          v28 = swift_allocObject();
          *(v28 + 16) = *&v41[2 * v25];
          v29 = sub_1E499816C();
          v30 = *(v29 - 8);
          (*(v30 + 56))(v27, 1, 1, v29);
          v31 = swift_allocObject();
          v31[2] = 0;
          v31[3] = 0;
          v31[4] = sub_1E496DD04;
          v31[5] = v28;
          sub_1E48C12D0(v27, v26, &qword_1ECF7EC60, &unk_1E49A0DC0);
          LODWORD(v26) = (*(v30 + 48))(v26, 1, v29);
          swift_retain_n();

          v32 = v0[20];
          if (v26 == 1)
          {
            sub_1E48C1338(v0[20], &qword_1ECF7EC60, &unk_1E49A0DC0);
          }

          else
          {
            sub_1E499815C();
            (*(v30 + 8))(v32, v29);
          }

          v33 = v31[2];
          swift_unknownObjectRetain();

          if (v33)
          {
            swift_getObjectType();
            v34 = sub_1E499811C();
            v36 = v35;
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          sub_1E48C1338(v0[21], &qword_1ECF7EC60, &unk_1E49A0DC0);
          v37 = swift_allocObject();
          *(v37 + 16) = &unk_1E49A5538;
          *(v37 + 24) = v31;
          if (v36 | v34)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v34;
            v0[5] = v36;
          }

          v15 = v40;
          ++v25;
          swift_task_create();

          if (v42 == v25)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        return MEMORY[0x1EEE6D9C8](v21, v22, v23, v24);
      }

LABEL_28:
    }

    v38 = v0[28];

    sub_1E48C1338(v38, &qword_1ECF809D0, &qword_1E499D6C0);
    v0[36] = 0;
    v39 = swift_task_alloc();
    v0[37] = v39;
    *v39 = v0;
    v39[1] = sub_1E496B0AC;
    v24 = v0[33];
    v21 = v0[29];
    v22 = 0;
    v23 = 0;

    return MEMORY[0x1EEE6D9C8](v21, v22, v23, v24);
  }

  sub_1E48C1338(v0[28], &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_2:
  (*(v0[34] + 8))(v0[35], v0[33]);

  v2 = v0[1];
LABEL_5:

  return v2();
}

uint64_t sub_1E496B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E496B8A4, 0, 0);
}

uint64_t sub_1E496B8A4()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1E496B908(void (*a1)(unint64_t, uint64_t))
{
  v2 = sub_1E496CE18(a1);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (!v6)
    {
      v6 = v7;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1E4906C28(0, v6[2] + 1, 1, v6);
    }

    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      v6 = sub_1E4906C28((v9 > 1), v10 + 1, 1, v6);
    }

    sub_1E48BFEC4(v4, v5);
    v6[2] = v10 + 1;
    v11 = &v6[2 * v10];
    v11[4] = sub_1E496DC1C;
    v11[5] = v8;
    v4 = sub_1E496CE18(a1);
    v5 = v12;
  }

  while (v4);
  return v6;
}

void sub_1E496BA38(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v80 = a1;
  v75 = a2;
  v76 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81298, &qword_1E49A5508);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v62 - v6;
  v7 = type metadata accessor for ScheduledTask(0);
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812A0, &qword_1E49A5510);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = (&v62 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812A8, &qword_1E49A5518);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v78 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v62 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_1E4996DBC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v27 = *(v7 + 20);
  v28 = sub_1E4996D8C();
  v29 = *(*(v28 - 8) + 16);
  v64 = v27;
  v29(a4 + v27, v76, v28);
  sub_1E4996DAC();
  v30 = v7;
  v31 = (a4 + *(v7 + 24));
  v32 = v75;
  *v31 = v80;
  v31[1] = v32;
  v33 = *(v22 + 16);
  v80 = v21;
  v72 = v33;
  v73 = v22 + 16;
  v33(v26, a4, v21);
  v68 = a4;
  sub_1E496D724(a4, v20);
  v34 = *(v69 + 56);
  v67 = v30;
  v34(v20, 0, 1, v30);
  v35 = v79;
  swift_beginAccess();

  sub_1E4971254(v20, v26);
  swift_endAccess();
  swift_beginAccess();
  v36 = *(v35 + 72);
  v37 = *(v36 + 16);
  v38 = (v74 + 56);
  v39 = (v74 + 48);
  v76 = (v22 + 32);
  v70 = v22;
  v40 = (v22 + 8);
  v74 = v36;

  v41 = 0;
  v75 = v37;
  while (1)
  {
    if (v41 == v37)
    {
      v42 = 1;
      v41 = v37;
      v43 = v78;
    }

    else
    {
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v41 >= *(v74 + 16))
      {
        goto LABEL_19;
      }

      v44 = v71;
      v45 = v74 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v41;
      v46 = *(v11 + 48);
      *v71 = v41;
      v72(v44 + v46, v45, v80);
      v47 = v44;
      v43 = v78;
      sub_1E48C15C8(v47, v78, &qword_1ECF812A0, &qword_1E49A5510);
      v42 = 0;
      ++v41;
      v37 = v75;
    }

    (*v38)(v43, v42, 1, v11);
    sub_1E48C15C8(v43, v17, &qword_1ECF812A8, &qword_1E49A5518);
    if ((*v39)(v17, 1, v11) == 1)
    {
      break;
    }

    v48 = *v17;
    v49 = v11;
    v50 = *(v11 + 48);
    v51 = v77;
    (*v76)(v77, v17 + v50, v80);
    v52 = *(v79 + 56);
    if (*(v52 + 16))
    {

      v53 = sub_1E4947F28(v51);
      if ((v54 & 1) == 0)
      {

        goto LABEL_3;
      }

      v55 = v66;
      sub_1E496D724(*(v52 + 56) + *(v69 + 72) * v53, v66);
      (*v40)(v51, v80);

      v56 = v55;
      v57 = v65;
      sub_1E496D788(v56, v65);
      v58 = sub_1E4996D0C();
      v59 = v57;
      v37 = v75;
      sub_1E496D7EC(v59);
      v11 = v49;
      if (v58)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_3:
      (*v40)(v51, v80);
      v11 = v49;
    }
  }

  v48 = 0;
LABEL_15:

  v60 = v79;
  swift_beginAccess();
  if (*(*(v60 + 72) + 16) < v48)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v48 & 0x8000000000000000) == 0)
  {
    v61 = v63;
    v72(v63, v68, v80);
    sub_1E496D9AC(v48, v48, v61);
    swift_endAccess();
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1E496C128(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4996DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1E4996D8C();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E493BA48(v13);
  type metadata accessor for ScheduledTask(0);
  v29 = a1;
  sub_1E4996BAC();
  v15 = v14;
  sub_1E4996BAC();
  v17 = v15 - v16;
  v18 = *(v1 + 24);
  v28 = *(v1 + 16);
  v19 = sub_1E499816C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = a1;
  v22 = v4;
  (*(v5 + 16))(v7, v21, v4);
  v23 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v17;
  *(v24 + 40) = v28;
  *(v24 + 48) = v18;
  *(v24 + 56) = v20;
  (*(v5 + 32))(v24 + v23, v7, v22);
  v25 = sub_1E49690B8(0, 0, v10, &unk_1E49A5500, v24);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_1E498725C(v25, v29, isUniquelyReferenced_nonNull_native);
  *(v2 + 64) = v32;
  swift_endAccess();
  return (*(v30 + 8))(v13, v31);
}

uint64_t sub_1E496C460(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a1;
  v9 = sub_1E499866C();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_1E499865C();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E496C590, 0, 0);
}

uint64_t sub_1E496C590(uint64_t a1)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  sub_1E499863C();
  sub_1E4998A1C();
  sub_1E499864C();
  v7 = *(v4 + 8);
  *(v1 + 232) = v7;
  *(v1 + 240) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  *(v1 + 112) = v6;
  *(v1 + 120) = v5;
  *(v1 + 128) = 0;
  sub_1E49988AC();
  v8 = swift_task_alloc();
  *(v1 + 248) = v8;
  v9 = sub_1E496D964(&qword_1ECF809D8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v8 = v1;
  v8[1] = sub_1E496C6F0;
  v10 = *(v1 + 224);
  v11 = *(v1 + 192);
  v12 = *(v1 + 176);

  return MEMORY[0x1EEE6DA68](v10, v1 + 112, v11, v12, v9);
}

uint64_t sub_1E496C6F0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  *(*v1 + 256) = v0;

  v4 = (v3 + 8);
  v5 = v2[29];
  if (v0)
  {
    v6 = v2[28];
    v7 = v2[25];
    (*v4)(v2[24], v2[22]);
    v5(v6, v7);
    v8 = sub_1E496CA28;
  }

  else
  {
    v9 = v2[28];
    v10 = v2[25];
    (*v4)(v2[24], v2[22]);
    v5(v9, v10);
    v8 = sub_1E496C884;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E496C884()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[32];
    v4 = *(Strong + 80);
    swift_beginAccess();
    os_unfair_lock_lock(v4 + 4);
    swift_endAccess();
    sub_1E49981FC();
    if (v3)
    {
      v5 = *(v2 + 80);
      swift_beginAccess();
      os_unfair_lock_unlock(v5 + 4);
      swift_endAccess();
      swift_willThrow();

      v6 = v0[1];
      goto LABEL_8;
    }

    v7 = sub_1E496CAA8(v0[21]);
    v9 = v8;
    v10 = *(v2 + 80);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    v11 = swift_endAccess();
    if (v7)
    {
      v7(v11);
      sub_1E48BFEC4(v7, v9);
    }
  }

  v6 = v0[1];
LABEL_8:

  return v6();
}

uint64_t sub_1E496CA28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E496CAA8(uint64_t a1)
{
  v3 = sub_1E4996DBC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScheduledTask(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  swift_beginAccess();
  v15 = *(v1 + 56);
  v16 = *(v15 + 16);
  v33 = a1;
  if (v16)
  {

    v17 = sub_1E4947F28(a1);
    if (v18)
    {
      sub_1E496D724(*(v15 + 56) + *(v7 + 72) * v17, v14);
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v7 + 56);
  v20(v14, v19, 1, v6);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_1E48C1338(v14, &qword_1ECF81290, &qword_1E49A54F0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    sub_1E496D724(v14, v9);
    sub_1E48C1338(v14, &qword_1ECF81290, &qword_1E49A54F0);
    v21 = &v9[*(v6 + 24)];
    v22 = *v21;
    v28 = *(v21 + 1);
    v29 = v22;

    sub_1E496D7EC(v9);
  }

  v23 = v32;
  v24 = *(v31 + 16);
  v25 = v33;
  v24(v5, v33, v32);
  v26 = v30;
  v20(v30, 1, 1, v6);
  swift_beginAccess();
  sub_1E4971254(v26, v5);
  swift_endAccess();
  v24(v5, v25, v23);
  swift_beginAccess();
  sub_1E4971474(0, v5);
  swift_endAccess();
  return v29;
}

uint64_t sub_1E496CE18(void (*a1)(unint64_t, uint64_t))
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for ScheduledTask(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1E4996DBC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  swift_beginAccess();
  v19 = *(v1 + 72);
  v20 = *(v19 + 16);
  if (v20)
  {
    v39 = v4;
    v40 = v6;
    v41 = v11;
    v42 = v5;
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = *(v13 + 72);
    v38 = *(v13 + 16);
    v38(v18, v19 + v21 + v22 * (v20 - 1), v12);
    swift_beginAccess();
    v23 = *(v1 + 56);
    if (*(v23 + 16))
    {
      v37 = v1;

      v24 = sub_1E4947F28(v18);
      if (v25)
      {
        sub_1E496D724(*(v23 + 56) + *(v40 + 72) * v24, v8);

        v26 = v41;
        sub_1E496D788(v8, v41);
        if (sub_1E4996D0C())
        {
          v27 = v37;
          swift_beginAccess();
          v28 = *(v27 + 72);
          if (v28[2])
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v30 = v28[2];
              if (v30)
              {
LABEL_8:
                v31 = v30 - 1;
                v43 = *(v13 + 8);
                v43(v28 + v21 + (v30 - 1) * v22, v12);
                v28[2] = v31;
                *(v27 + 72) = v28;
                swift_endAccess();
                v32 = v38;
                v38(v15, v18, v12);
                v33 = v39;
                v34 = v42;
                (*(v40 + 56))(v39, 1, 1, v42);
                swift_beginAccess();
                sub_1E4971254(v33, v15);
                swift_endAccess();
                v32(v15, v18, v12);
                swift_beginAccess();
                sub_1E4971474(0, v15);
                swift_endAccess();
                v43(v18, v12);
                v35 = v41;
                v36 = *&v41[*(v34 + 24)];

                sub_1E496D7EC(v35);
                return v36;
              }

              goto LABEL_16;
            }
          }

          else
          {
            __break(1u);
          }

          result = sub_1E48EA4F8(v28);
          v28 = result;
          v30 = *(result + 16);
          if (v30)
          {
            goto LABEL_8;
          }

LABEL_16:
          __break(1u);
          return result;
        }

        sub_1E496D7EC(v26);
      }

      else
      {
      }
    }

    (*(v13 + 8))(v18, v12);
  }

  return 0;
}

uint64_t sub_1E496D274()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScheduledTask(uint64_t a1)
{
  result = qword_1ECF81268;
  if (!qword_1ECF81268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E496D36C(uint64_t a1)
{
  result = sub_1E4996DBC();
  if (v2 <= 0x3F)
  {
    result = sub_1E4996D8C();
    if (v3 <= 0x3F)
    {
      result = sub_1E496D408();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E496D408()
{
  result = qword_1ECF81278;
  if (!qword_1ECF81278)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECF81278);
  }

  return result;
}

unint64_t sub_1E496D46C()
{
  result = qword_1ECF81280;
  if (!qword_1ECF81280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81280);
  }

  return result;
}

uint64_t sub_1E496D4C0()
{
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E496D548(uint64_t a1)
{
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1E4997E5C();
}

uint64_t sub_1E496D5CC(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

BOOL sub_1E496D650(uint64_t a1, uint64_t a2)
{
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF80B70, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  return (sub_1E4997E9C() & 1) == 0;
}

uint64_t sub_1E496D724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E496D788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E496D7EC(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E496D848(uint64_t a1)
{
  v4 = *(sub_1E4996DBC() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E48ECAA8;

  return sub_1E496C460(v8, a1, v6, v7, v9, v10, v11, v1 + v5);
}

uint64_t sub_1E496D964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E496D9AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1E4906A24(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1E496DA80(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1E496DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1E4996DBC();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1E48C1338(v25, &qword_1ECF81298, &qword_1E49A5508);
  }

  if (v18 < 1)
  {
    return sub_1E48C1338(v25, &qword_1ECF81298, &qword_1E49A5508);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1E48C1338(v25, &qword_1ECF81298, &qword_1E49A5508);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E496DC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E496AD1C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E496DD2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E496B884(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1E4996DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1E496DEC0(uint64_t *a1, uint64_t a2)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812C0, &qword_1E49A5558);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v86 = sub_1E4996DBC();
  v78 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v24 = a1;
  v25 = *a1;
  v26 = v85;
  v27 = sub_1E496E6A4(v25, a2);
  if (!v26)
  {
    v85 = v23;
    v62 = v20;
    v64 = v17;
    v63 = v14;
    v80 = v9;
    v81 = v12;
    v58 = 0;
    if (v28)
    {
      v82 = *(v25 + 16);
      return;
    }

    v61 = v24;
    v82 = v27;
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_33;
    }

    v30 = v25;
    swift_beginAccess();
    v32 = (v25 + 16);
    v31 = *(v25 + 16);
    v33 = v81;
    v34 = v78;
    if (v29 != v31)
    {
      v75 = v78 + 16;
      v67 = v78 + 56;
      v59 = (v78 + 32);
      v69 = (v78 + 8);
      v60 = (v78 + 40);
      v68 = a2;
      v66 = v78 + 48;
      do
      {
        if (v29 >= v31)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v83 = v30;
        v84 = v29;
        v70 = v35;
        v71 = *(v34 + 72);
        v36 = v34;
        v37 = v86;
        v38 = *(v34 + 16);
        v79 = v71 * v29;
        v73 = v30 + v35;
        v74 = v32;
        v39 = v85;
        v38(v85, v30 + v35 + v71 * v29, v86);
        v72 = v38;
        v38(v33, v39, v37);
        (*(v36 + 56))(v33, 0, 1, v37);
        v40 = v80;
        sub_1E48C12D0(a2, v80, &qword_1ECF812B8, &qword_1E49A5550);
        v41 = v76;
        v42 = *(v77 + 48);
        sub_1E48C12D0(v33, v76, &qword_1ECF812B8, &qword_1E49A5550);
        sub_1E48C12D0(v40, v41 + v42, &qword_1ECF812B8, &qword_1E49A5550);
        v43 = *(v36 + 48);
        if (v43(v41, 1, v37) == 1)
        {
          sub_1E48C1338(v40, &qword_1ECF812B8, &qword_1E49A5550);
          sub_1E48C1338(v33, &qword_1ECF812B8, &qword_1E49A5550);
          v44 = v43(v41 + v42, 1, v86);
          a2 = v68;
          if (v44 == 1)
          {
            sub_1E48C1338(v41, &qword_1ECF812B8, &qword_1E49A5550);
            (*v69)(v85, v86);
            v33 = v81;
            v34 = v78;
            v30 = v83;
            v45 = v84;
            goto LABEL_10;
          }
        }

        else
        {
          v46 = v65;
          sub_1E48C12D0(v41, v65, &qword_1ECF812B8, &qword_1E49A5550);
          if (v43(v41 + v42, 1, v86) != 1)
          {
            v54 = v62;
            (*v59)(v62, v41 + v42, v86);
            sub_1E496D964(&qword_1ECF80B70, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v55 = v46;
            v56 = sub_1E4997E9C();
            v57 = *v69;
            (*v69)(v54, v37);
            sub_1E48C1338(v80, &qword_1ECF812B8, &qword_1E49A5550);
            sub_1E48C1338(v81, &qword_1ECF812B8, &qword_1E49A5550);
            v57(v55, v37);
            sub_1E48C1338(v41, &qword_1ECF812B8, &qword_1E49A5550);
            v57(v85, v37);
            a2 = v68;
            v45 = v84;
            if (v56)
            {
              v33 = v81;
              v34 = v78;
              v30 = v83;
              goto LABEL_10;
            }

            goto LABEL_18;
          }

          sub_1E48C1338(v80, &qword_1ECF812B8, &qword_1E49A5550);
          sub_1E48C1338(v81, &qword_1ECF812B8, &qword_1E49A5550);
          (*v69)(v46, v86);
          a2 = v68;
        }

        sub_1E48C1338(v41, &qword_1ECF812C0, &qword_1E49A5558);
        (*v69)(v85, v86);
        v45 = v84;
LABEL_18:
        v47 = v82;
        if (v45 == v82)
        {
          v33 = v81;
          v34 = v78;
          v30 = v83;
        }

        else
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v48 = *v74;
          if (v82 >= *v74)
          {
            goto LABEL_30;
          }

          v49 = v72;
          v50 = v71 * v82;
          v51 = v73;
          v72(v64, &v73[v71 * v82], v86);
          if (v45 >= v48)
          {
            goto LABEL_31;
          }

          v49(v63, &v51[v79], v86);
          v30 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1E48EA4F8(v30);
          }

          v34 = v78;
          v52 = v30 + v70;
          v53 = *v60;
          (*v60)(v30 + v70 + v50, v63, v86);
          if (v45 >= v30[2])
          {
            goto LABEL_32;
          }

          v53(&v52[v79], v64, v86);
          *v61 = v30;
          v33 = v81;
          v47 = v82;
        }

        v82 = v47 + 1;
LABEL_10:
        v29 = v45 + 1;
        v32 = v30 + 2;
        v31 = v30[2];
      }

      while (v29 != v31);
    }
  }
}

uint64_t sub_1E496E6A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4996DBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812C0, &qword_1E49A5558);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  v17 = *(a1 + 16);
  v58 = a2;
  swift_beginAccess();
  v18 = v17 == 0;
  v55 = v17;
  if (!v17)
  {
    return 0;
  }

  v59 = v16;
  v48 = v11;
  v43[1] = v2;
  v19 = 0;
  v53 = (v6 + 56);
  v54 = v6 + 16;
  v20 = (v6 + 48);
  v44 = (v6 + 32);
  v45 = (v6 + 48);
  v47 = (v6 + 8);
  v21 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v22 = *(v6 + 16);
  v51 = *(v6 + 72);
  v52 = v22;
  v23 = &qword_1E49A5550;
  v24 = v49;
  v25 = v56;
  while (1)
  {
    v62 = v19;
    v50 = v18;
    v30 = v5;
    v31 = v59;
    v60 = v21;
    v52(v59);
    (*v53)(v31, 0, 1, v30);
    sub_1E48C12D0(v58, v24, &qword_1ECF812B8, v23);
    v32 = *(v57 + 48);
    sub_1E48C12D0(v31, v25, &qword_1ECF812B8, v23);
    v61 = v32;
    sub_1E48C12D0(v24, v25 + v32, &qword_1ECF812B8, v23);
    v33 = v23;
    v34 = *v20;
    if ((*v20)(v25, 1, v30) == 1)
    {
      break;
    }

    v35 = v48;
    sub_1E48C12D0(v25, v48, &qword_1ECF812B8, v33);
    v36 = v61;
    v5 = v30;
    if (v34(v25 + v61, 1, v30) != 1)
    {
      v37 = v46;
      (*v44)(v46, v25 + v36, v30);
      sub_1E496D964(&qword_1ECF80B70, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v38 = sub_1E4997E9C();
      v39 = *v47;
      (*v47)(v37, v5);
      v40 = v49;
      sub_1E48C1338(v49, &qword_1ECF812B8, v33);
      sub_1E48C1338(v59, &qword_1ECF812B8, v33);
      v41 = v35;
      v42 = v33;
      v27 = v40;
      v20 = v45;
      v39(v41, v5);
      sub_1E48C1338(v25, &qword_1ECF812B8, v42);
      result = v62;
      v23 = v42;
      if (v38)
      {
        return result;
      }

      goto LABEL_5;
    }

    v23 = v33;
    v27 = v49;
    sub_1E48C1338(v49, &qword_1ECF812B8, v23);
    sub_1E48C1338(v59, &qword_1ECF812B8, v23);
    (*v47)(v35, v30);
LABEL_4:
    sub_1E48C1338(v25, &qword_1ECF812C0, &qword_1E49A5558);
    result = v62;
LABEL_5:
    v19 = result + 1;
    v21 = v60 + v51;
    v18 = v55 == v19;
    v24 = v27;
    if (v55 == v19)
    {
      return 0;
    }
  }

  v26 = v33;
  v27 = v24;
  sub_1E48C1338(v24, &qword_1ECF812B8, v26);
  sub_1E48C1338(v31, &qword_1ECF812B8, v26);
  v28 = v34(v25 + v61, 1, v30);
  v5 = v30;
  v23 = v26;
  if (v28 != 1)
  {
    goto LABEL_4;
  }

  sub_1E48C1338(v25, &qword_1ECF812B8, &qword_1E49A5550);
  return v62;
}

unint64_t sub_1E496EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1E496ED7C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1E4906A24(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1E496EC30(v6, a2, 0, MEMORY[0x1E69695A8]);
  *v2 = v4;
  return result;
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E496EE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E49697D4(a1, v4, v5, v6);
}

uint64_t sub_1E496EF78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1E496EFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E496F02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = v3[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  sub_1E48D61D8(a1, v8, a2, v9, a3);
  v10 = v4[8];
  v11 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v10);
  sub_1E48D61D8(a1, v10, a2, v11, a3 + 5);
  v12 = v4[13];
  v13 = v4[14];
  __swift_project_boxed_opaque_existential_1(v4 + 10, v12);
  return sub_1E48D61D8(a1, v12, a2, v13, a3 + 10);
}

id sub_1E496F0FC()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = v0[8];
  v6 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v0[13];
  v9 = v0[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v11 initWithHue:v4 saturation:v7 brightness:v10 alpha:1.0];
}

unint64_t sub_1E496F210(uint64_t a1)
{
  result = sub_1E496F238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E496F238()
{
  result = qword_1ECF812C8;
  if (!qword_1ECF812C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF812C8);
  }

  return result;
}

unint64_t sub_1E496F28C(uint64_t a1)
{
  *(a1 + 8) = sub_1E496F238();
  result = sub_1E496F2BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E496F2BC()
{
  result = qword_1ECF812D0;
  if (!qword_1ECF812D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF812D0);
  }

  return result;
}

BOOL sub_1E496F310(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = a1[8];
  v8 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = a1[13];
  v11 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, v10);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v6 saturation:v9 brightness:(*(v11 + 8))(v10 alpha:{v11), 1.0}];
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = a2[8];
  v17 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = a2[13];
  v20 = a2[14];
  __swift_project_boxed_opaque_existential_1(a2 + 10, v19);
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v15 saturation:v18 brightness:(*(v20 + 8))(v19 alpha:{v20), 1.0}];
  sub_1E496F50C();
  v22 = sub_1E499848C();

  return (v22 & 1) == 0;
}

unint64_t sub_1E496F50C()
{
  result = qword_1ECF7F930;
  if (!qword_1ECF7F930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7F930);
  }

  return result;
}

uint64_t sub_1E496F5A8(uint64_t a1, char a2)
{
  sub_1E499892C();
  MEMORY[0x1E691C170](qword_1E49A5D48[a2]);
  return sub_1E499896C();
}

uint64_t sub_1E496F5F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81630, &qword_1E49A5C30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81630, &qword_1E49A5C30);
    sub_1E4981C28(a2, &qword_1ECF815C0, &qword_1E49A5BD0, &qword_1ECF81638, &qword_1E49A5C38, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81630, &qword_1E49A5C30);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF815C0, &qword_1E49A5BD0, &qword_1ECF81638, &qword_1E49A5C38);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E496F86C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1E48B7448(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1E4986200(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E48C8360(a2);
    *v2 = v6;
  }

  else
  {
    sub_1E48C1338(a1, &qword_1ECF81740, &qword_1E49A5D28);
    sub_1E4981B7C(a2, v7);
    sub_1E48C8360(a2);
    return sub_1E48C1338(v7, &qword_1ECF81740, &qword_1E49A5D28);
  }

  return result;
}

uint64_t sub_1E496F928(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81550, &qword_1E49A5B68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81550, &qword_1E49A5B68);
    sub_1E4981C28(a2, &unk_1ECF81530, &unk_1E49A5B50, &qword_1ECF81558, &qword_1E49A5B70, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81550, &qword_1E49A5B68);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &unk_1ECF81530, &unk_1E49A5B50, &qword_1ECF81558, &qword_1E49A5B70);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E496FB9C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81518, &qword_1E49A5B38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81518, &qword_1E49A5B38);
    sub_1E4981C28(a2, &unk_1ECF814F0, &unk_1E49A5B10, &qword_1ECF81520, &qword_1E49A5B40, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81518, &qword_1E49A5B38);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &unk_1ECF814F0, &unk_1E49A5B10, &qword_1ECF81520, &qword_1E49A5B40);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E496FE10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81730, &qword_1E49A5D18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81730, &qword_1E49A5D18);
    sub_1E4981C28(a2, &qword_1ECF81718, &qword_1E49A5D00, &qword_1ECF81738, &qword_1E49A5D20, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81730, &qword_1E49A5D18);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF81718, &qword_1E49A5D00, &qword_1ECF81738, &qword_1E49A5D20);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E4970084(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815A8, &qword_1E49A5BB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF815A8, &qword_1E49A5BB8);
    sub_1E4981C28(a2, &unk_1ECF81598, &qword_1E49A5BB0, &qword_1ECF815B0, &qword_1E49A5BC0, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF815A8, &qword_1E49A5BB8);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &unk_1ECF81598, &qword_1E49A5BB0, &qword_1ECF815B0, &qword_1E49A5BC0);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E49702F8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorldViewModel.Pin(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF7F848, &qword_1E499D520);
    v16 = sub_1E4948350(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v24 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4987F18();
        v20 = v24;
      }

      sub_1E498AA50(*(v20 + 56) + *(v12 + 72) * v18, v10, type metadata accessor for WorldViewModel.Pin);
      sub_1E4985130(v18, v20);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_1E48C1338(v10, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    sub_1E498AA50(a1, v15, type metadata accessor for WorldViewModel.Pin);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_1E49866C0(v15, v21, a2, a3);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_1E4970560(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A8, &qword_1E49A5AD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF814A8, &qword_1E49A5AD8);
    sub_1E4981C28(a2, &qword_1ECF81478, &qword_1E49A5AA8, &qword_1ECF814C8, &qword_1E49A5AE8, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF814A8, &qword_1E49A5AD8);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF81478, &qword_1E49A5AA8, &qword_1ECF814C8, &qword_1E49A5AE8);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E49707D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81720, &qword_1E49A5D08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81720, &qword_1E49A5D08);
    sub_1E4981C28(a2, &qword_1ECF816E8, &unk_1E49A5CD0, &qword_1ECF81728, &qword_1E49A5D10, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81720, &qword_1E49A5D08);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF816E8, &unk_1E49A5CD0, &qword_1ECF81728, &qword_1E49A5D10);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E4970A48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81670, &qword_1E49A5C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81670, &qword_1E49A5C60);
    sub_1E4981C28(a2, &qword_1ECF815F0, &qword_1E49A5C00, &qword_1ECF81678, &qword_1E49A5C68, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81670, &qword_1E49A5C60);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF815F0, &qword_1E49A5C00, &qword_1ECF81678, &qword_1E49A5C68);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

void sub_1E4970CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81658, &qword_1E49A5C58);
    sub_1E4981E04(a2, a3, v9);

    sub_1E48C1338(v9, &qword_1ECF81658, &qword_1E49A5C58);
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1E4986AB0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }
}

uint64_t sub_1E4970D90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816D0, &qword_1E49A5CB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF816D0, &qword_1E49A5CB8);
    sub_1E4981C28(a2, &qword_1ECF81698, &qword_1E49A5C88, &qword_1ECF816D8, &qword_1E49A5CC0, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF816D0, &qword_1E49A5CB8);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E498649C(v12, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF81698, &qword_1E49A5C88, &qword_1ECF816D8, &qword_1E49A5CC0);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E4971004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1E4996D8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
    v14 = sub_1E4948474(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4988CA4();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1E4985820(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1E4986F20(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1E4971254(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ScheduledTask(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81290, &qword_1E49A54F0);
    sub_1E4981EAC(a2, v7);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E48C1338(v7, &qword_1ECF81290, &qword_1E49A54F0);
  }

  else
  {
    sub_1E498AA50(a1, v11, type metadata accessor for ScheduledTask);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E4987088(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1E4996DBC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1E4971474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1E498725C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1E4996DBC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1E4947F28(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1E4989238();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1E4996DBC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1E4985D3C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1E4996DBC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

double sub_1E4971634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815B8, &qword_1E49A5BC8);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TimeString(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v22, v12, &qword_1ECF815D0, &unk_1E499A370);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v31 = v6;
    v24 = v36;
    sub_1E48C1338(v12, &qword_1ECF815D0, &unk_1E499A370);
    sub_1E48C12D0(v33, v9, &qword_1ECF815D0, &unk_1E499A370);
    if (v23(v9, 1, v13) == 1)
    {
      sub_1E48C1338(v9, &qword_1ECF815D0, &unk_1E499A370);
    }

    else
    {
      v27 = v32;
      sub_1E498AA50(v9, v32, type metadata accessor for TimeString);
      sub_1E498A9E8(v27, v18, type metadata accessor for TimeString);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
      v28 = v31;
      sub_1E499818C();
      (*(v34 + 8))(v28, v35);
      sub_1E49736C8(v27);
      sub_1E4989F40(v27, type metadata accessor for TimeString);
    }

    v26 = v24;
  }

  else
  {
    sub_1E498AA50(v12, v21, type metadata accessor for TimeString);
    sub_1E498A9E8(v21, v18, type metadata accessor for TimeString);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
    v25 = v36;
    sub_1E499818C();
    (*(v34 + 8))(v6, v35);
    sub_1E4989F40(v21, type metadata accessor for TimeString);
    v26 = v25;
  }

  return sub_1E49790D0(v26);
}

double sub_1E4971A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81528, &qword_1E49A5B48);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v22, v12, &unk_1ECF80A60, &unk_1E49A3A10);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v34 = v6;
    v24 = v39;
    sub_1E48C1338(v12, &unk_1ECF80A60, &unk_1E49A3A10);
    sub_1E48C12D0(v36, v9, &unk_1ECF80A60, &unk_1E49A3A10);
    if (v23(v9, 1, v13) == 1)
    {
      v25 = &unk_1ECF80A60;
      v26 = &unk_1E49A3A10;
      v27 = v9;
    }

    else
    {
      v30 = v35;
      sub_1E48C15C8(v9, v35, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v30, v18, &qword_1ECF809D0, &qword_1E499D6C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
      v31 = v34;
      sub_1E499818C();
      (*(v37 + 8))(v31, v38);
      sub_1E4974E44(v30);
      v27 = v30;
      v25 = &qword_1ECF809D0;
      v26 = &qword_1E499D6C0;
    }

    sub_1E48C1338(v27, v25, v26);
    v29 = v24;
  }

  else
  {
    sub_1E48C15C8(v12, v21, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E48C12D0(v21, v18, &qword_1ECF809D0, &qword_1E499D6C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
    v28 = v39;
    sub_1E499818C();
    (*(v37 + 8))(v6, v38);
    sub_1E48C1338(v21, &qword_1ECF809D0, &qword_1E499D6C0);
    v29 = v28;
  }

  return sub_1E49793C0(v29);
}

double sub_1E4971E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814E8, &qword_1E49A5B08);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v22, v12, &qword_1ECF81510, &unk_1E499E0A0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v34 = v6;
    v24 = v39;
    sub_1E48C1338(v12, &qword_1ECF81510, &unk_1E499E0A0);
    sub_1E48C12D0(v36, v9, &qword_1ECF81510, &unk_1E499E0A0);
    if (v23(v9, 1, v13) == 1)
    {
      v25 = &qword_1ECF81510;
      v26 = &unk_1E499E0A0;
      v27 = v9;
    }

    else
    {
      v30 = v35;
      sub_1E48C15C8(v9, v35, &qword_1ECF7F728, &unk_1E499CAB0);
      sub_1E48C12D0(v30, v18, &qword_1ECF7F728, &unk_1E499CAB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
      v31 = v34;
      sub_1E499818C();
      (*(v37 + 8))(v31, v38);
      sub_1E49759A8(v30);
      v27 = v30;
      v25 = &qword_1ECF7F728;
      v26 = &unk_1E499CAB0;
    }

    sub_1E48C1338(v27, v25, v26);
    v29 = v24;
  }

  else
  {
    sub_1E48C15C8(v12, v21, &qword_1ECF7F728, &unk_1E499CAB0);
    sub_1E48C12D0(v21, v18, &qword_1ECF7F728, &unk_1E499CAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
    v28 = v39;
    sub_1E499818C();
    (*(v37 + 8))(v6, v38);
    sub_1E48C1338(v21, &qword_1ECF7F728, &unk_1E499CAB0);
    v29 = v28;
  }

  return sub_1E49796B0(v29);
}

double sub_1E4972284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81710, &qword_1E49A5CF8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  swift_beginAccess();
  v10 = *(a2 + 24);
  if (v10 == 1)
  {
    v11 = *(a3 + 8);
    if (v11 != 1)
    {
      v12 = *(a3 + 16);
      v14 = *(a3 + 24);
      v19 = *a3;
      v13 = v19;
      v20 = v11;
      v21 = v12;
      v22 = v14;
      sub_1E498ADB8(v19, v11);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
      sub_1E499818C();
      (*(v7 + 8))(v9, v6);
      sub_1E4976548(v13, v11, v12, v14);
      sub_1E48EC78C(v13, v11);
    }
  }

  else
  {
    v15 = *(a2 + 40);
    v16 = *(a2 + 32);
    v19 = *(a2 + 16);
    v20 = v10;
    v21 = v16;
    v22 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
    sub_1E499818C();
    (*(v7 + 8))(v9, v6);
  }

  return sub_1E49799A0(a1);
}

double sub_1E497248C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81590, &qword_1E49A5BA8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v10 = *a3;
    if (*a3 != 1)
    {
      v12 = *a3;
      sub_1E498AC20(v10);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
      sub_1E499818C();
      (*(v7 + 8))(v9, v6);
      sub_1E4974B14(v10);
      sub_1E48EC714(v10);
    }
  }

  else
  {
    v12 = *(a2 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
    sub_1E499818C();
    (*(v7 + 8))(v9, v6);
  }

  return sub_1E4979C7C(a1);
}

double sub_1E4972640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81470, &qword_1E49A5AA0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CurrentLocationResult(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v22, v12, &qword_1ECF7F8A8, &unk_1E49A62B0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v31 = v6;
    v24 = v36;
    sub_1E48C1338(v12, &qword_1ECF7F8A8, &unk_1E49A62B0);
    sub_1E48C12D0(v33, v9, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v23(v9, 1, v13) == 1)
    {
      sub_1E48C1338(v9, &qword_1ECF7F8A8, &unk_1E49A62B0);
    }

    else
    {
      v27 = v32;
      sub_1E498AA50(v9, v32, type metadata accessor for CurrentLocationResult);
      sub_1E498A9E8(v27, v18, type metadata accessor for CurrentLocationResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
      v28 = v31;
      sub_1E499818C();
      (*(v34 + 8))(v28, v35);
      sub_1E4976930(v27);
      sub_1E4989F40(v27, type metadata accessor for CurrentLocationResult);
    }

    v26 = v24;
  }

  else
  {
    sub_1E498AA50(v12, v21, type metadata accessor for CurrentLocationResult);
    sub_1E498A9E8(v21, v18, type metadata accessor for CurrentLocationResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
    v25 = v36;
    sub_1E499818C();
    (*(v34 + 8))(v6, v35);
    sub_1E4989F40(v21, type metadata accessor for CurrentLocationResult);
    v26 = v25;
  }

  return sub_1E4979F58(v26);
}

double sub_1E4972A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E0, &qword_1E49A5CC8);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v22, v12, &qword_1ECF7FB70, &unk_1E499E400);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v34 = v6;
    v24 = v39;
    sub_1E48C1338(v12, &qword_1ECF7FB70, &unk_1E499E400);
    sub_1E48C12D0(v36, v9, &qword_1ECF7FB70, &unk_1E499E400);
    if (v23(v9, 1, v13) == 1)
    {
      v25 = &qword_1ECF7FB70;
      v26 = &unk_1E499E400;
      v27 = v9;
    }

    else
    {
      v30 = v35;
      sub_1E48C15C8(v9, v35, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C12D0(v30, v18, &unk_1ECF816F0, &qword_1E49A5090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
      v31 = v34;
      sub_1E499818C();
      (*(v37 + 8))(v31, v38);
      sub_1E4977138(v30);
      v27 = v30;
      v25 = &unk_1ECF816F0;
      v26 = &qword_1E49A5090;
    }

    sub_1E48C1338(v27, v25, v26);
    v29 = v24;
  }

  else
  {
    sub_1E48C15C8(v12, v21, &unk_1ECF816F0, &qword_1E49A5090);
    sub_1E48C12D0(v21, v18, &unk_1ECF816F0, &qword_1E49A5090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
    v28 = v39;
    sub_1E499818C();
    (*(v37 + 8))(v6, v38);
    sub_1E48C1338(v21, &unk_1ECF816F0, &qword_1E49A5090);
    v29 = v28;
  }

  return sub_1E497A248(v29);
}

double sub_1E4972E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815E8, &qword_1E49A5BF8);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = sub_1E4996D8C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  v36 = a2;
  sub_1E48C12D0(a2 + v22, v12, &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v30 = v6;
    v24 = v35;
    sub_1E48C1338(v12, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E48C12D0(v32, v9, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v23(v9, 1, v13) == 1)
    {
      sub_1E48C1338(v9, &qword_1ECF809D0, &qword_1E499D6C0);
    }

    else
    {
      v27 = v31;
      (*(v14 + 32))(v31, v9, v13);
      (*(v14 + 16))(v18, v27, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
      v28 = v30;
      sub_1E499818C();
      (*(v33 + 8))(v28, v34);
      sub_1E4977C88(v27);
      (*(v14 + 8))(v27, v13);
    }

    v26 = v24;
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    (*(v14 + 16))(v18, v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
    v25 = v35;
    sub_1E499818C();
    (*(v33 + 8))(v6, v34);
    (*(v14 + 8))(v21, v13);
    v26 = v25;
  }

  return sub_1E497A538(v26);
}

double sub_1E49732B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81690, &qword_1E49A5C80);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v22, v12, &unk_1ECF816C0, &qword_1E49A5CB0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v34 = v6;
    v24 = v39;
    sub_1E48C1338(v12, &unk_1ECF816C0, &qword_1E49A5CB0);
    sub_1E48C12D0(v36, v9, &unk_1ECF816C0, &qword_1E49A5CB0);
    if (v23(v9, 1, v13) == 1)
    {
      v25 = &unk_1ECF816C0;
      v26 = &qword_1E49A5CB0;
      v27 = v9;
    }

    else
    {
      v30 = v35;
      sub_1E48C15C8(v9, v35, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C12D0(v30, v18, &qword_1ECF80368, &unk_1E49A2840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
      v31 = v34;
      sub_1E499818C();
      (*(v37 + 8))(v31, v38);
      sub_1E4978568(v30);
      v27 = v30;
      v25 = &qword_1ECF80368;
      v26 = &unk_1E49A2840;
    }

    sub_1E48C1338(v27, v25, v26);
    v29 = v24;
  }

  else
  {
    sub_1E48C15C8(v12, v21, &qword_1ECF80368, &unk_1E49A2840);
    sub_1E48C12D0(v21, v18, &qword_1ECF80368, &unk_1E49A2840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
    v28 = v39;
    sub_1E499818C();
    (*(v37 + 8))(v6, v38);
    sub_1E48C1338(v21, &qword_1ECF80368, &unk_1E49A2840);
    v29 = v28;
  }

  return sub_1E497A828(v29);
}

void sub_1E49736C8(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815B8, &qword_1E49A5BC8);
  v60 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v49 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v49 - v4;
  v5 = type metadata accessor for TimeString(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = (&v49 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C8, &unk_1E49A5BD8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v49 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = *(*v1 + 96);
  swift_beginAccess();
  v59 = a1;
  sub_1E498A9E8(a1, v23, type metadata accessor for TimeString);
  v58 = *(v6 + 56);
  (v58)(v23, 0, 1, v5);
  v25 = *(v11 + 56);
  v61 = v1;
  v62 = v24;
  sub_1E48C12D0(v1 + v24, v13, &qword_1ECF815D0, &unk_1E499A370);
  sub_1E48C12D0(v23, &v13[v25], &qword_1ECF815D0, &unk_1E499A370);
  v26 = *(v6 + 48);
  v27 = v26(v13, 1, v5);
  v55 = v6 + 48;
  if (v27 == 1)
  {
    sub_1E48C1338(v23, &qword_1ECF815D0, &unk_1E499A370);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      sub_1E48C1338(v13, &qword_1ECF815D0, &unk_1E499A370);
      return;
    }
  }

  else
  {
    sub_1E48C12D0(v13, v20, &qword_1ECF815D0, &unk_1E499A370);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v46 = &v13[v25];
      v47 = v53;
      sub_1E498AA50(v46, v53, type metadata accessor for TimeString);
      v48 = _s11ClockPoster10TimeStringV2eeoiySbAC_ACtFZ_0(v20, v47);
      sub_1E4989F40(v47, type metadata accessor for TimeString);
      sub_1E48C1338(v23, &qword_1ECF815D0, &unk_1E499A370);
      sub_1E4989F40(v20, type metadata accessor for TimeString);
      sub_1E48C1338(v13, &qword_1ECF815D0, &unk_1E499A370);
      if (v48)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v23, &qword_1ECF815D0, &unk_1E499A370);
    sub_1E4989F40(v20, type metadata accessor for TimeString);
  }

  sub_1E48C1338(v13, &qword_1ECF815C8, &unk_1E49A5BD8);
LABEL_7:
  v28 = v57;
  sub_1E498A9E8(v59, v57, type metadata accessor for TimeString);
  v59 = v5;
  (v58)(v28, 0, 1, v5);
  v58 = v26;
  v30 = v61;
  v29 = v62;
  swift_beginAccess();
  sub_1E48EC0CC(v28, v30 + v29, &qword_1ECF815D0, &unk_1E499A370);
  swift_endAccess();
  v31 = *(*v30 + 112);
  swift_beginAccess();
  v32 = *(v30 + v31);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v57 = v63 + 16;
  v49 = (v60 + 8);
  v56 = (v63 + 8);
  v60 = v32;
  swift_bridgeObjectRetain_n();
  v38 = 0;
  v39 = v64;
  v40 = v54;
  while (v36)
  {
LABEL_17:
    (*(v63 + 16))(v39, *(v60 + 56) + *(v63 + 72) * (__clz(__rbit64(v36)) | (v38 << 6)), v65);
    sub_1E48C12D0(v61 + v62, v40, &qword_1ECF815D0, &unk_1E499A370);
    if (v58(v40, 1, v59) == 1)
    {
      sub_1E48C1338(v40, &qword_1ECF815D0, &unk_1E499A370);
    }

    else
    {
      v42 = v40;
      v43 = v50;
      sub_1E498AA50(v42, v50, type metadata accessor for TimeString);
      sub_1E498A9E8(v43, v53, type metadata accessor for TimeString);
      v44 = v51;
      sub_1E499818C();
      v39 = v64;
      (*v49)(v44, v52);
      v45 = v43;
      v40 = v54;
      sub_1E4989F40(v45, type metadata accessor for TimeString);
    }

    v36 &= v36 - 1;
    (*v56)(v39, v65);
  }

  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v37)
    {

      return;
    }

    v36 = *(v33 + 8 * v41);
    ++v38;
    if (v36)
    {
      v38 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1E4973ED0(uint64_t a1)
{
  v2 = v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81560, &qword_1E49A5B78);
  v92 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v72 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81568, &unk_1E49A5B80);
  v93 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v95 = &v72 - v5;
  v78 = type metadata accessor for City(0);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (&v72 - v13);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81578, &qword_1E49A5B90);
  MEMORY[0x1EEE9AC00](v91);
  v79 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81580, &qword_1E49A5B98);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81588, &qword_1E49A5BA0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v86 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v72 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  v29 = *(*v2 + 96);
  swift_beginAccess();
  v90 = a1;
  sub_1E48C12D0(a1, v28, &qword_1ECF81570, &qword_1E49A4BF8);
  v30 = *(v8 + 56);
  v88 = (v8 + 56);
  v80 = v30;
  (v30)(v28, 0, 1, v7);
  v31 = *(v16 + 56);
  v96 = v2;
  v94 = v29;
  sub_1E48C12D0(v2 + v29, v18, &qword_1ECF81588, &qword_1E49A5BA0);
  sub_1E48C12D0(v28, &v18[v31], &qword_1ECF81588, &qword_1E49A5BA0);
  v34 = *(v8 + 48);
  v32 = v8 + 48;
  v33 = v34;
  if (v34(v18, 1, v7) == 1)
  {
    sub_1E48C1338(v28, &qword_1ECF81588, &qword_1E49A5BA0);
    if (v33(&v18[v31], 1, v7) == 1)
    {
      v35 = v18;
LABEL_4:
      sub_1E48C1338(v35, &qword_1ECF81588, &qword_1E49A5BA0);
      return;
    }

    goto LABEL_7;
  }

  sub_1E48C12D0(v18, v25, &qword_1ECF81588, &qword_1E49A5BA0);
  if (v33(&v18[v31], 1, v7) == 1)
  {
    sub_1E48C1338(v28, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E48C1338(v25, &qword_1ECF81570, &qword_1E49A4BF8);
LABEL_7:
    v91 = v32;
    v36 = &qword_1ECF81580;
    v37 = &qword_1E49A5B98;
    v38 = v18;
LABEL_8:
    sub_1E48C1338(v38, v36, v37);
    goto LABEL_9;
  }

  v63 = *(v91 + 48);
  v74 = v25;
  v64 = v25;
  v65 = v79;
  sub_1E48C12D0(v64, v79, &qword_1ECF81570, &qword_1E49A4BF8);
  v73 = v18;
  sub_1E48C15C8(&v18[v31], v65 + v63, &qword_1ECF81570, &qword_1E49A4BF8);
  v66 = *(v77 + 48);
  v67 = v78;
  if (v66(v65, 1, v78) == 1)
  {
    sub_1E48C1338(v28, &qword_1ECF81588, &qword_1E49A5BA0);
    if (v66(v65 + v63, 1, v67) == 1)
    {
      sub_1E48C1338(v65, &qword_1ECF81570, &qword_1E49A4BF8);
      sub_1E48C1338(v74, &qword_1ECF81570, &qword_1E49A4BF8);
      v35 = v73;
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v68 = v76;
  sub_1E48C12D0(v65, v76, &qword_1ECF81570, &qword_1E49A4BF8);
  if (v66(v65 + v63, 1, v67) == 1)
  {
    sub_1E48C1338(v28, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E4989F40(v68, type metadata accessor for City);
LABEL_28:
    v91 = v32;
    sub_1E48C1338(v65, &qword_1ECF81578, &qword_1E49A5B90);
    sub_1E48C1338(v74, &qword_1ECF81570, &qword_1E49A4BF8);
    v36 = &qword_1ECF81588;
    v37 = &qword_1E49A5BA0;
    v38 = v73;
    goto LABEL_8;
  }

  v91 = v32;
  v69 = v65 + v63;
  v70 = v75;
  sub_1E498AA50(v69, v75, type metadata accessor for City);
  if (*v68 == *v70 && v68[1] == v70[1] || (sub_1E499884C()) && (sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0), (sub_1E499848C()))
  {
    v71 = MEMORY[0x1E691A740](v68 + *(v67 + 24), v70 + *(v67 + 24));
    sub_1E48C1338(v28, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E4989F40(v70, type metadata accessor for City);
    sub_1E4989F40(v68, type metadata accessor for City);
    sub_1E48C1338(v65, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v74, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v73, &qword_1ECF81588, &qword_1E49A5BA0);
    if (v71)
    {
      return;
    }
  }

  else
  {
    sub_1E48C1338(v28, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E4989F40(v70, type metadata accessor for City);
    sub_1E4989F40(v68, type metadata accessor for City);
    sub_1E48C1338(v65, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v74, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v73, &qword_1ECF81588, &qword_1E49A5BA0);
  }

LABEL_9:
  v39 = v89;
  sub_1E48C12D0(v90, v89, &qword_1ECF81570, &qword_1E49A4BF8);
  v90 = v7;
  (v80)(v39, 0, 1, v7);
  v40 = v96;
  v41 = v94;
  swift_beginAccess();
  v42 = v39;
  v43 = &qword_1ECF81588;
  sub_1E48EC0CC(v42, v40 + v41, &qword_1ECF81588, &qword_1E49A5BA0);
  swift_endAccess();
  v44 = *(*v40 + 112);
  swift_beginAccess();
  v45 = *(v40 + v44);
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 64);
  v50 = (v47 + 63) >> 6;
  v89 = v93 + 16;
  v80 = (v92 + 8);
  v88 = (v93 + 8);
  v92 = v45;
  swift_bridgeObjectRetain_n();
  v51 = 0;
  v53 = v86;
  v52 = v87;
  v54 = v95;
  v81 = v33;
  while (v49)
  {
LABEL_19:
    (*(v93 + 16))(v54, *(v92 + 56) + *(v93 + 72) * (__clz(__rbit64(v49)) | (v51 << 6)), v52);
    sub_1E48C12D0(v96 + v94, v53, v43, &qword_1E49A5BA0);
    if (v33(v53, 1, v90) == 1)
    {
      v55 = v53;
      v56 = v43;
      v57 = &qword_1E49A5BA0;
    }

    else
    {
      v59 = v82;
      sub_1E48C15C8(v53, v82, &qword_1ECF81570, &qword_1E49A4BF8);
      sub_1E48C12D0(v59, v83, &qword_1ECF81570, &qword_1E49A4BF8);
      v60 = v43;
      v61 = v84;
      v53 = v86;
      sub_1E499818C();
      v52 = v87;
      v62 = v61;
      v43 = v60;
      v54 = v95;
      (*v80)(v62, v85);
      v55 = v59;
      v33 = v81;
      v56 = &qword_1ECF81570;
      v57 = &qword_1E49A4BF8;
    }

    sub_1E48C1338(v55, v56, v57);
    v49 &= v49 - 1;
    (*v88)(v54, v52);
  }

  while (1)
  {
    v58 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v58 >= v50)
    {

      return;
    }

    v49 = *(v46 + 8 * v58);
    ++v51;
    if (v49)
    {
      v51 = v58;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1E4974B14(uint64_t a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81590, &qword_1E49A5BA8);
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (v9)
  {
    if (v9 != 1)
    {
      if (a1)
      {

        sub_1E49894B8(v10, a1);
        v12 = v11;
        sub_1E48EC714(v9);
        if (v12)
        {
          return;
        }
      }
    }
  }

  else
  {
    sub_1E48EC714(0);
    if (!a1)
    {
      return;
    }
  }

  v13 = *(v1 + 16);
  *(v1 + 16) = a1;

  sub_1E48EC714(v13);
  swift_beginAccess();
  v14 = *(v1 + 32);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v29[0] = v3 + 8;
  v32 = (v6 + 8);
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v29[1] = v6 + 16;
  while (v18)
  {
LABEL_16:
    (*(v6 + 16))(v8, *(v14 + 56) + *(v6 + 72) * (__clz(__rbit64(v18)) | (v20 << 6)), v5);
    if (*(v1 + 16) != 1)
    {
      v33 = *(v1 + 16);

      v22 = v14;
      v23 = v6;
      v24 = v1;
      v25 = v8;
      v26 = v5;
      v27 = v30;
      sub_1E499818C();
      v28 = v27;
      v5 = v26;
      v8 = v25;
      v1 = v24;
      v6 = v23;
      v14 = v22;
      (*v29[0])(v28, v31);
    }

    v18 &= v18 - 1;
    (*v32)(v8, v5);
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1E4974E44(uint64_t a1)
{
  v83 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81528, &qword_1E49A5B48);
  v79 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v64 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
  v84 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v64 - v3;
  v81 = sub_1E4996D8C();
  v68 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v64 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81540, &qword_1E49A5B60);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = *(*v1 + 96);
  swift_beginAccess();
  sub_1E48C12D0(v83, v26, &qword_1ECF809D0, &qword_1E499D6C0);
  v28 = *(v6 + 56);
  v70 = (v6 + 56);
  v69 = v28;
  v28(v26, 0, 1, v5);
  v29 = *(v14 + 56);
  v85 = v1;
  v75 = v27;
  sub_1E48C12D0(v1 + v27, v16, &unk_1ECF80A60, &unk_1E49A3A10);
  sub_1E48C12D0(v26, &v16[v29], &unk_1ECF80A60, &unk_1E49A3A10);
  v30 = *(v6 + 48);
  v31 = v30(v16, 1, v5);
  v77 = v6 + 48;
  v82 = v5;
  if (v31 == 1)
  {
    sub_1E48C1338(v26, &unk_1ECF80A60, &unk_1E49A3A10);
    if (v30(&v16[v29], 1, v5) == 1)
    {
LABEL_3:
      sub_1E48C1338(v16, &unk_1ECF80A60, &unk_1E49A3A10);
      return;
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v16, v23, &unk_1ECF80A60, &unk_1E49A3A10);
  if (v30(&v16[v29], 1, v5) == 1)
  {
    sub_1E48C1338(v26, &unk_1ECF80A60, &unk_1E49A3A10);
    sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_6:
    sub_1E48C1338(v16, &unk_1ECF81540, &qword_1E49A5B60);
    goto LABEL_7;
  }

  v54 = *(v66 + 12);
  v66 = v23;
  v55 = v67;
  sub_1E48C12D0(v23, v67, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C15C8(&v16[v29], v55 + v54, &qword_1ECF809D0, &qword_1E499D6C0);
  v56 = v68;
  v57 = *(v68 + 48);
  v58 = v81;
  if (v57(v55, 1, v81) == 1)
  {
    sub_1E48C1338(v26, &unk_1ECF80A60, &unk_1E49A3A10);
    if (v57(v55 + v54, 1, v58) == 1)
    {
      sub_1E48C1338(v55, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C1338(v66, &qword_1ECF809D0, &qword_1E499D6C0);
      goto LABEL_3;
    }
  }

  else
  {
    v59 = v65;
    sub_1E48C12D0(v55, v65, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v57(v55 + v54, 1, v58) != 1)
    {
      v60 = v55 + v54;
      v61 = v64;
      (*(v56 + 32))(v64, v60, v58);
      sub_1E498AB30(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v62 = sub_1E4997E9C();
      v63 = *(v56 + 8);
      v63(v61, v58);
      sub_1E48C1338(v26, &unk_1ECF80A60, &unk_1E49A3A10);
      v63(v59, v58);
      sub_1E48C1338(v55, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C1338(v66, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C1338(v16, &unk_1ECF80A60, &unk_1E49A3A10);
      v5 = v82;
      if (v62)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v26, &unk_1ECF80A60, &unk_1E49A3A10);
    (*(v56 + 8))(v59, v58);
  }

  sub_1E48C1338(v55, &qword_1ECF7F898, &qword_1E499D6F0);
  sub_1E48C1338(v66, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C1338(v16, &unk_1ECF80A60, &unk_1E49A3A10);
  v5 = v82;
LABEL_7:
  v81 = v30;
  v32 = v80;
  sub_1E48C12D0(v83, v80, &qword_1ECF809D0, &qword_1E499D6C0);
  v69(v32, 0, 1, v5);
  v33 = v85;
  v34 = v75;
  swift_beginAccess();
  v35 = &unk_1ECF80A60;
  sub_1E48EC0CC(v32, v33 + v34, &unk_1ECF80A60, &unk_1E49A3A10);
  swift_endAccess();
  v36 = *(*v33 + 112);
  swift_beginAccess();
  v37 = *(v33 + v36);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v80 = v84 + 16;
  v70 = v79 + 1;
  v79 = (v84 + 8);
  v83 = v37;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v44 = v78;
  v45 = v76;
  while (v41)
  {
LABEL_17:
    (*(v84 + 16))(v86, *(v83 + 56) + *(v84 + 72) * (__clz(__rbit64(v41)) | (v43 << 6)), v44);
    sub_1E48C12D0(v85 + v34, v45, v35, &unk_1E49A3A10);
    if ((v81)(v45, 1, v82) == 1)
    {
      v46 = v45;
      v47 = v35;
      v48 = &unk_1E49A3A10;
    }

    else
    {
      v50 = v71;
      sub_1E48C15C8(v45, v71, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v50, v72, &qword_1ECF809D0, &qword_1E499D6C0);
      v51 = v35;
      v52 = v73;
      v45 = v76;
      sub_1E499818C();
      v44 = v78;
      v53 = v52;
      v35 = v51;
      (*v70)(v53, v74);
      v46 = v50;
      v34 = v75;
      v47 = &qword_1ECF809D0;
      v48 = &qword_1E499D6C0;
    }

    sub_1E48C1338(v46, v47, v48);
    v41 &= v41 - 1;
    (*v79)(v86, v44);
  }

  while (1)
  {
    v49 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v49 >= v42)
    {

      return;
    }

    v41 = *(v38 + 8 * v49);
    ++v43;
    if (v41)
    {
      v43 = v49;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1E49759A8(uint64_t a1)
{
  v2 = v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814E8, &qword_1E49A5B08);
  v93 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v75 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
  v94 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v97 = &v75 - v5;
  v91 = type metadata accessor for Alarm(0);
  v78 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v76 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v75 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81500, &qword_1E49A5B20);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81508, &unk_1E49A5B28);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v87 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = *(*v2 + 96);
  swift_beginAccess();
  v92 = a1;
  sub_1E48C12D0(a1, v28, &qword_1ECF7F728, &unk_1E499CAB0);
  v30 = *(v8 + 56);
  v89 = (v8 + 56);
  v81 = v30;
  (v30)(v28, 0, 1, v7);
  v31 = *(v16 + 56);
  v95 = v29;
  v96 = v2;
  v32 = v2 + v29;
  v33 = v7;
  sub_1E48C12D0(v32, v18, &qword_1ECF81510, &unk_1E499E0A0);
  sub_1E48C12D0(v28, &v18[v31], &qword_1ECF81510, &unk_1E499E0A0);
  v36 = *(v8 + 48);
  v34 = v8 + 48;
  v35 = v36;
  v37 = v36(v18, 1, v7);
  v86 = v36;
  if (v37 == 1)
  {
    sub_1E48C1338(v28, &qword_1ECF81510, &unk_1E499E0A0);
    if (v35(&v18[v31], 1, v7) == 1)
    {
LABEL_3:
      sub_1E48C1338(v18, &qword_1ECF81510, &unk_1E499E0A0);
      return;
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v18, v25, &qword_1ECF81510, &unk_1E499E0A0);
  if (v35(&v18[v31], 1, v7) != 1)
  {
    v39 = *(v77 + 12);
    v77 = v25;
    v40 = v80;
    sub_1E48C12D0(v25, v80, &qword_1ECF7F728, &unk_1E499CAB0);
    sub_1E48C15C8(&v18[v31], v40 + v39, &qword_1ECF7F728, &unk_1E499CAB0);
    v41 = *(v78 + 48);
    v42 = v91;
    if (v41(v40, 1, v91) == 1)
    {
      sub_1E48C1338(v28, &qword_1ECF81510, &unk_1E499E0A0);
      v43 = v41(v40 + v39, 1, v42);
      v38 = v97;
      if (v43 == 1)
      {
        sub_1E48C1338(v40, &qword_1ECF7F728, &unk_1E499CAB0);
        sub_1E48C1338(v77, &qword_1ECF7F728, &unk_1E499CAB0);
        goto LABEL_3;
      }
    }

    else
    {
      sub_1E48C12D0(v40, v79, &qword_1ECF7F728, &unk_1E499CAB0);
      v44 = v41(v40 + v39, 1, v42);
      v38 = v97;
      if (v44 != 1)
      {
        v66 = v40 + v39;
        v67 = v76;
        sub_1E498AA50(v66, v76, type metadata accessor for Alarm);
        v68 = v79;
        v69 = sub_1E4996D2C();
        sub_1E48C1338(v28, &qword_1ECF81510, &unk_1E499E0A0);
        if (v69)
        {
          v70 = *(v42 + 20);
          v71 = *(v68 + v70);
          v72 = v67;
          v73 = *(v67 + v70);
          sub_1E4989F40(v72, type metadata accessor for Alarm);
          sub_1E4989F40(v68, type metadata accessor for Alarm);
          sub_1E48C1338(v40, &qword_1ECF7F728, &unk_1E499CAB0);
          sub_1E48C1338(v77, &qword_1ECF7F728, &unk_1E499CAB0);
          sub_1E48C1338(v18, &qword_1ECF81510, &unk_1E499E0A0);
          v74 = v71 == v73;
          v35 = v86;
          if (v74)
          {
            return;
          }

          goto LABEL_14;
        }

        sub_1E4989F40(v67, type metadata accessor for Alarm);
        sub_1E4989F40(v68, type metadata accessor for Alarm);
        sub_1E48C1338(v40, &qword_1ECF7F728, &unk_1E499CAB0);
        v45 = v77;
        goto LABEL_13;
      }

      sub_1E48C1338(v28, &qword_1ECF81510, &unk_1E499E0A0);
      sub_1E4989F40(v79, type metadata accessor for Alarm);
    }

    sub_1E48C1338(v40, &qword_1ECF81500, &qword_1E49A5B20);
    v45 = v77;
LABEL_13:
    sub_1E48C1338(v45, &qword_1ECF7F728, &unk_1E499CAB0);
    sub_1E48C1338(v18, &qword_1ECF81510, &unk_1E499E0A0);
    v35 = v86;
    goto LABEL_14;
  }

  sub_1E48C1338(v28, &qword_1ECF81510, &unk_1E499E0A0);
  sub_1E48C1338(v25, &qword_1ECF7F728, &unk_1E499CAB0);
LABEL_6:
  sub_1E48C1338(v18, &qword_1ECF81508, &unk_1E49A5B28);
  v38 = v97;
LABEL_14:
  v91 = v34;
  v46 = v90;
  sub_1E48C12D0(v92, v90, &qword_1ECF7F728, &unk_1E499CAB0);
  v92 = v33;
  (v81)(v46, 0, 1, v33);
  v48 = v95;
  v47 = v96;
  swift_beginAccess();
  sub_1E48EC0CC(v46, v47 + v48, &qword_1ECF81510, &unk_1E499E0A0);
  swift_endAccess();
  v49 = *(*v47 + 112);
  swift_beginAccess();
  v50 = *(v47 + v49);
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 64);
  v55 = (v52 + 63) >> 6;
  v90 = v94 + 16;
  v81 = (v93 + 8);
  v89 = (v94 + 8);
  v93 = v50;
  swift_bridgeObjectRetain_n();
  v56 = 0;
  v58 = v87;
  for (i = v88; ; (*v89)(v38, i))
  {
    v61 = &unk_1E499E0A0;
    if (!v54)
    {
      break;
    }

LABEL_24:
    (*(v94 + 16))(v38, *(v93 + 56) + *(v94 + 72) * (__clz(__rbit64(v54)) | (v56 << 6)), i);
    sub_1E48C12D0(v96 + v95, v58, &qword_1ECF81510, &unk_1E499E0A0);
    if (v35(v58, 1, v92) == 1)
    {
      v59 = v58;
      v60 = &qword_1ECF81510;
    }

    else
    {
      v63 = v82;
      v61 = &unk_1E499CAB0;
      sub_1E48C15C8(v58, v82, &qword_1ECF7F728, &unk_1E499CAB0);
      sub_1E48C12D0(v63, v83, &qword_1ECF7F728, &unk_1E499CAB0);
      v64 = v84;
      v58 = v87;
      sub_1E499818C();
      i = v88;
      v65 = v64;
      v38 = v97;
      (*v81)(v65, v85);
      v59 = v63;
      v35 = v86;
      v60 = &qword_1ECF7F728;
    }

    sub_1E48C1338(v59, v60, v61);
    v54 &= v54 - 1;
  }

  while (1)
  {
    v62 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v62 >= v55)
    {

      return;
    }

    v54 = *(v51 + 8 * v62);
    ++v56;
    if (v54)
    {
      v56 = v62;
      goto LABEL_24;
    }
  }

  __break(1u);
}

void sub_1E4976548(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v40) = a4;
  v38 = a3;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81710, &qword_1E49A5CF8);
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-v10];
  swift_beginAccess();
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = *(v4 + 40);
  if (v13)
  {
    if (v13 != 1)
    {
      if (a2)
      {
        if (((v12 ^ v43) & 1) == 0)
        {
          v37 = sub_1E498D6B8(*(v4 + 24), a2);
          sub_1E498ADB8(v12, v13);

          if (v37)
          {
            if (v15)
            {
              if (v40)
              {
                return;
              }
            }

            else if ((v40 & 1) == 0 && v14 == v38)
            {
              return;
            }
          }
        }
      }

      else
      {
        sub_1E498ADB8(*(v4 + 16), *(v4 + 24));
      }
    }
  }

  else
  {
    sub_1E48EC78C(*(v4 + 16), 0);
    if (!a2)
    {
      return;
    }
  }

  v16 = *(v4 + 16);
  v17 = *(v4 + 24);
  *(v4 + 16) = v43;
  *(v4 + 24) = a2;
  *(v4 + 32) = v38;
  *(v4 + 40) = v40;

  sub_1E48EC78C(v16, v17);
  swift_beginAccess();
  v18 = *(v4 + 56);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v43 = v9 + 16;
  v40 = (v6 + 8);
  v24 = (v9 + 8);
  swift_bridgeObjectRetain_n();
  v25 = 0;
  v39 = v4;
  while (v22)
  {
LABEL_21:
    (*(v9 + 16))(v11, *(v18 + 56) + *(v9 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v8);
    v27 = *(v4 + 24);
    if (v27 != 1)
    {
      v28 = *(v4 + 40);
      v29 = *(v4 + 32);
      v44 = *(v4 + 16);
      v45 = v27;
      v46 = v29;
      v47 = v28;

      v30 = v11;
      v31 = v24;
      v32 = v18;
      v33 = v9;
      v34 = v41;
      sub_1E499818C();
      v35 = v34;
      v9 = v33;
      v18 = v32;
      v24 = v31;
      v11 = v30;
      v4 = v39;
      (*v40)(v35, v42);
    }

    v22 &= v22 - 1;
    (*v24)(v11, v8);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_1E4976930(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81470, &qword_1E49A5AA0);
  v60 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v49 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v49 - v4;
  v5 = type metadata accessor for CurrentLocationResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81480, &unk_1E49A5AB0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = *(*v1 + 96);
  swift_beginAccess();
  v59 = a1;
  sub_1E498A9E8(a1, v23, type metadata accessor for CurrentLocationResult);
  v58 = *(v6 + 56);
  (v58)(v23, 0, 1, v5);
  v25 = *(v11 + 56);
  v61 = v1;
  v62 = v24;
  sub_1E48C12D0(v1 + v24, v13, &qword_1ECF7F8A8, &unk_1E49A62B0);
  sub_1E48C12D0(v23, &v13[v25], &qword_1ECF7F8A8, &unk_1E49A62B0);
  v26 = *(v6 + 48);
  v27 = v26(v13, 1, v5);
  v55 = v6 + 48;
  if (v27 == 1)
  {
    sub_1E48C1338(v23, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      sub_1E48C1338(v13, &qword_1ECF7F8A8, &unk_1E49A62B0);
      return;
    }
  }

  else
  {
    sub_1E48C12D0(v13, v20, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v46 = &v13[v25];
      v47 = v53;
      sub_1E498AA50(v46, v53, type metadata accessor for CurrentLocationResult);
      v48 = sub_1E4989BD8(v20, v47);
      sub_1E4989F40(v47, type metadata accessor for CurrentLocationResult);
      sub_1E48C1338(v23, &qword_1ECF7F8A8, &unk_1E49A62B0);
      sub_1E4989F40(v20, type metadata accessor for CurrentLocationResult);
      sub_1E48C1338(v13, &qword_1ECF7F8A8, &unk_1E49A62B0);
      if (v48)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v23, &qword_1ECF7F8A8, &unk_1E49A62B0);
    sub_1E4989F40(v20, type metadata accessor for CurrentLocationResult);
  }

  sub_1E48C1338(v13, &unk_1ECF81480, &unk_1E49A5AB0);
LABEL_7:
  v28 = v57;
  sub_1E498A9E8(v59, v57, type metadata accessor for CurrentLocationResult);
  v59 = v5;
  (v58)(v28, 0, 1, v5);
  v58 = v26;
  v30 = v61;
  v29 = v62;
  swift_beginAccess();
  sub_1E48EC0CC(v28, v30 + v29, &qword_1ECF7F8A8, &unk_1E49A62B0);
  swift_endAccess();
  v31 = *(*v30 + 112);
  swift_beginAccess();
  v32 = *(v30 + v31);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v57 = v63 + 16;
  v49 = (v60 + 8);
  v56 = (v63 + 8);
  v60 = v32;
  swift_bridgeObjectRetain_n();
  v38 = 0;
  v39 = v64;
  v40 = v54;
  while (v36)
  {
LABEL_17:
    (*(v63 + 16))(v39, *(v60 + 56) + *(v63 + 72) * (__clz(__rbit64(v36)) | (v38 << 6)), v65);
    sub_1E48C12D0(v61 + v62, v40, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v58(v40, 1, v59) == 1)
    {
      sub_1E48C1338(v40, &qword_1ECF7F8A8, &unk_1E49A62B0);
    }

    else
    {
      v42 = v40;
      v43 = v50;
      sub_1E498AA50(v42, v50, type metadata accessor for CurrentLocationResult);
      sub_1E498A9E8(v43, v53, type metadata accessor for CurrentLocationResult);
      v44 = v51;
      sub_1E499818C();
      v39 = v64;
      (*v49)(v44, v52);
      v45 = v43;
      v40 = v54;
      sub_1E4989F40(v45, type metadata accessor for CurrentLocationResult);
    }

    v36 &= v36 - 1;
    (*v56)(v39, v65);
  }

  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v37)
    {

      return;
    }

    v36 = *(v33 + 8 * v41);
    ++v38;
    if (v36)
    {
      v38 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1E4977138(uint64_t a1)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E0, &qword_1E49A5CC8);
  v85 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v67 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
  v86 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v89 = &v67 - v4;
  v83 = type metadata accessor for CurrentLocationSolarPosition(0);
  v70 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v67 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v67 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F0, &qword_1E49A5CE0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81700, &unk_1E49A5CE8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v79 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = (&v67 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  v28 = *(*v1 + 96);
  swift_beginAccess();
  v82 = a1;
  sub_1E48C12D0(a1, v27, &unk_1ECF816F0, &qword_1E49A5090);
  v29 = *(v7 + 56);
  v73 = (v7 + 56);
  v72 = v29;
  v29(v27, 0, 1, v6);
  v30 = *(v15 + 56);
  v87 = v1;
  v78 = v28;
  sub_1E48C12D0(v1 + v28, v17, &qword_1ECF7FB70, &unk_1E499E400);
  sub_1E48C12D0(v27, &v17[v30], &qword_1ECF7FB70, &unk_1E499E400);
  v32 = *(v7 + 48);
  v31 = v7 + 48;
  v88 = v32;
  v33 = v32(v17, 1, v6);
  v84 = v6;
  if (v33 == 1)
  {
    sub_1E48C1338(v27, &qword_1ECF7FB70, &unk_1E499E400);
    v34 = v88(&v17[v30], 1, v6);
    v35 = v89;
    if (v34 == 1)
    {
LABEL_3:
      sub_1E48C1338(v17, &qword_1ECF7FB70, &unk_1E499E400);
      return;
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v17, v24, &qword_1ECF7FB70, &unk_1E499E400);
  v36 = v24;
  if (v88(&v17[v30], 1, v6) == 1)
  {
    sub_1E48C1338(v27, &qword_1ECF7FB70, &unk_1E499E400);
    sub_1E48C1338(v24, &unk_1ECF816F0, &qword_1E49A5090);
    v35 = v89;
LABEL_6:
    v83 = v31;
    sub_1E48C1338(v17, &unk_1ECF81700, &unk_1E49A5CE8);
    goto LABEL_7;
  }

  v59 = *(v69 + 48);
  v60 = v71;
  sub_1E48C12D0(v24, v71, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C15C8(&v17[v30], v60 + v59, &unk_1ECF816F0, &qword_1E49A5090);
  v61 = *(v70 + 6);
  v62 = v83;
  if (v61(v60, 1, v83) == 1)
  {
    sub_1E48C1338(v27, &qword_1ECF7FB70, &unk_1E499E400);
    v63 = v61(v60 + v59, 1, v62);
    v35 = v89;
    if (v63 == 1)
    {
      sub_1E48C1338(v60, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C1338(v36, &unk_1ECF816F0, &qword_1E49A5090);
      goto LABEL_3;
    }
  }

  else
  {
    v70 = v24;
    v64 = v68;
    sub_1E48C12D0(v60, v68, &unk_1ECF816F0, &qword_1E49A5090);
    if (v61(v60 + v59, 1, v62) != 1)
    {
      v83 = v31;
      v65 = v67;
      sub_1E498AA50(v60 + v59, v67, type metadata accessor for CurrentLocationSolarPosition);
      v66 = sub_1E48F778C(v64, v65);
      sub_1E4989F40(v65, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v27, &qword_1ECF7FB70, &unk_1E499E400);
      sub_1E4989F40(v64, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v60, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C1338(v70, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C1338(v17, &qword_1ECF7FB70, &unk_1E499E400);
      v35 = v89;
      v6 = v84;
      if (v66)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v27, &qword_1ECF7FB70, &unk_1E499E400);
    sub_1E4989F40(v64, type metadata accessor for CurrentLocationSolarPosition);
    v35 = v89;
    v36 = v70;
  }

  v83 = v31;
  sub_1E48C1338(v60, &qword_1ECF801F0, &qword_1E49A5CE0);
  sub_1E48C1338(v36, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C1338(v17, &qword_1ECF7FB70, &unk_1E499E400);
  v6 = v84;
LABEL_7:
  v37 = v81;
  sub_1E48C12D0(v82, v81, &unk_1ECF816F0, &qword_1E49A5090);
  v72(v37, 0, 1, v6);
  v38 = v87;
  v39 = v78;
  swift_beginAccess();
  sub_1E48EC0CC(v37, v38 + v39, &qword_1ECF7FB70, &unk_1E499E400);
  swift_endAccess();
  v40 = *(*v38 + 112);
  swift_beginAccess();
  v41 = *(v38 + v40);
  v42 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 64);
  v46 = (v43 + 63) >> 6;
  v82 = v86 + 16;
  v73 = (v85 + 8);
  v81 = (v86 + 8);
  v85 = v41;
  swift_bridgeObjectRetain_n();
  v47 = 0;
  v49 = v79;
  v48 = v80;
  while (v45)
  {
LABEL_17:
    (*(v86 + 16))(v35, *(v85 + 56) + *(v86 + 72) * (__clz(__rbit64(v45)) | (v47 << 6)), v48);
    sub_1E48C12D0(v87 + v39, v49, &qword_1ECF7FB70, &unk_1E499E400);
    if (v88(v49, 1, v84) == 1)
    {
      v50 = v49;
      v51 = &qword_1ECF7FB70;
      v52 = &unk_1E499E400;
    }

    else
    {
      v54 = v49;
      v55 = v74;
      sub_1E48C15C8(v54, v74, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C12D0(v55, v75, &unk_1ECF816F0, &qword_1E49A5090);
      v56 = v76;
      v39 = v78;
      sub_1E499818C();
      v48 = v80;
      v57 = v56;
      v58 = v89;
      (*v73)(v57, v77);
      v50 = v55;
      v49 = v79;
      v51 = &unk_1ECF816F0;
      v52 = &qword_1E49A5090;
      v35 = v58;
    }

    sub_1E48C1338(v50, v51, v52);
    v45 &= v45 - 1;
    (*v81)(v35, v48);
  }

  while (1)
  {
    v53 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v53 >= v46)
    {

      return;
    }

    v45 = *(v42 + 8 * v53);
    ++v47;
    if (v45)
    {
      v47 = v53;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1E4977C88(uint64_t a1)
{
  v2 = v1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815E8, &qword_1E49A5BF8);
  v73 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v61 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
  v78 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v81 = &v61 - v5;
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v63 = (&v61 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = *(*v2 + 96);
  swift_beginAccess();
  v25 = v7[2];
  v74 = a1;
  v68 = v25;
  v69 = v7 + 2;
  v25(v23, a1, v6);
  v62 = v7[7];
  (v62)(v23, 0, 1, v6);
  v26 = *(v12 + 56);
  v79 = v2;
  v70 = v24;
  sub_1E48C12D0(v2 + v24, v14, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v23, &v14[v26], &qword_1ECF809D0, &qword_1E499D6C0);
  v77 = v7;
  v29 = v7[6];
  v28 = (v7 + 6);
  v27 = v29;
  v80 = v6;
  if (v29(v14, 1, v6) == 1)
  {
    sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v27(&v14[v26], 1, v80) == 1)
    {
      sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
      return;
    }
  }

  else
  {
    v30 = v75;
    sub_1E48C12D0(v14, v75, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v27(&v14[v26], 1, v80) != 1)
    {
      v76 = v27;
      v55 = &v14[v26];
      v56 = v77;
      v57 = v67;
      v58 = v80;
      (v77[4])(v67, v55, v80);
      sub_1E498AB30(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v59 = sub_1E4997E9C();
      v60 = v56[1];
      v60(v57, v58);
      sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
      v60(v30, v58);
      sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
      if (v59)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
    (v77[1])(v30, v80);
  }

  v76 = v27;
  sub_1E48C1338(v14, &qword_1ECF7F898, &qword_1E499D6F0);
LABEL_7:
  v75 = v28;
  v31 = v63;
  v32 = v80;
  v68(v63, v74, v80);
  (v62)(v31, 0, 1, v32);
  v33 = v79;
  v34 = v70;
  swift_beginAccess();
  v35 = &qword_1E499D6C0;
  v36 = v34;
  sub_1E48EC0CC(v31, v33 + v34, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  v37 = *(*v33 + 112);
  swift_beginAccess();
  v38 = *(v33 + v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v74 = v78 + 16;
  v63 = (v77 + 4);
  v62 = v73 + 1;
  v61 = (v77 + 1);
  v73 = (v78 + 8);
  v77 = v38;
  swift_bridgeObjectRetain_n();
  v44 = 0;
  v46 = v71;
  v45 = v72;
  while (v42)
  {
    v47 = v35;
    v48 = v81;
LABEL_19:
    (*(v78 + 16))(v48, v77[7] + *(v78 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v45);
    v50 = v45;
    v35 = v47;
    sub_1E48C12D0(v79 + v36, v46, &qword_1ECF809D0, v47);
    if (v76(v46, 1, v80) == 1)
    {
      sub_1E48C1338(v46, &qword_1ECF809D0, v47);
    }

    else
    {
      v51 = v80;
      v52 = v64;
      (*v63)(v64, v46, v80);
      v68(v67, v52, v51);
      v53 = v65;
      v46 = v71;
      sub_1E499818C();
      v50 = v72;
      (*v62)(v53, v66);
      v54 = v51;
      v36 = v70;
      (*v61)(v52, v54);
    }

    v42 &= v42 - 1;
    (*v73)(v81, v50);
    v45 = v50;
  }

  v48 = v81;
  while (1)
  {
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v49 >= v43)
    {

      return;
    }

    v42 = *(v39 + 8 * v49);
    ++v44;
    if (v42)
    {
      v47 = v35;
      v44 = v49;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1E4978568(uint64_t a1)
{
  v83 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81690, &qword_1E49A5C80);
  v79 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v64 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
  v84 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v64 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v68 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v64 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v64 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B0, &qword_1E49A5CA0);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B8, &qword_1E49A5CA8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = *(*v1 + 96);
  swift_beginAccess();
  sub_1E48C12D0(v83, v26, &qword_1ECF80368, &unk_1E49A2840);
  v28 = *(v6 + 56);
  v70 = (v6 + 56);
  v69 = v28;
  v28(v26, 0, 1, v5);
  v29 = *(v14 + 56);
  v85 = v1;
  v75 = v27;
  sub_1E48C12D0(v1 + v27, v16, &unk_1ECF816C0, &qword_1E49A5CB0);
  sub_1E48C12D0(v26, &v16[v29], &unk_1ECF816C0, &qword_1E49A5CB0);
  v30 = *(v6 + 48);
  v31 = v30(v16, 1, v5);
  v77 = v6 + 48;
  v82 = v5;
  if (v31 == 1)
  {
    sub_1E48C1338(v26, &unk_1ECF816C0, &qword_1E49A5CB0);
    if (v30(&v16[v29], 1, v5) == 1)
    {
LABEL_3:
      sub_1E48C1338(v16, &unk_1ECF816C0, &qword_1E49A5CB0);
      return;
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v16, v23, &unk_1ECF816C0, &qword_1E49A5CB0);
  if (v30(&v16[v29], 1, v5) == 1)
  {
    sub_1E48C1338(v26, &unk_1ECF816C0, &qword_1E49A5CB0);
    sub_1E48C1338(v23, &qword_1ECF80368, &unk_1E49A2840);
LABEL_6:
    sub_1E48C1338(v16, &qword_1ECF816B8, &qword_1E49A5CA8);
    goto LABEL_7;
  }

  v54 = *(v66 + 12);
  v66 = v23;
  v55 = v67;
  sub_1E48C12D0(v23, v67, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C15C8(&v16[v29], v55 + v54, &qword_1ECF80368, &unk_1E49A2840);
  v56 = v68;
  v57 = *(v68 + 48);
  v58 = v81;
  if (v57(v55, 1, v81) == 1)
  {
    sub_1E48C1338(v26, &unk_1ECF816C0, &qword_1E49A5CB0);
    if (v57(v55 + v54, 1, v58) == 1)
    {
      sub_1E48C1338(v55, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C1338(v66, &qword_1ECF80368, &unk_1E49A2840);
      goto LABEL_3;
    }
  }

  else
  {
    v59 = v65;
    sub_1E48C12D0(v55, v65, &qword_1ECF80368, &unk_1E49A2840);
    if (v57(v55 + v54, 1, v58) != 1)
    {
      v60 = v55 + v54;
      v61 = v64;
      (*(v56 + 32))(v64, v60, v58);
      sub_1E48C1B44(&qword_1ECF80378, &unk_1ECF816A0, &unk_1E49A5C90, MEMORY[0x1E6968090]);
      v62 = sub_1E4997E9C();
      v63 = *(v56 + 8);
      v63(v61, v58);
      sub_1E48C1338(v26, &unk_1ECF816C0, &qword_1E49A5CB0);
      v63(v59, v58);
      sub_1E48C1338(v55, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C1338(v66, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C1338(v16, &unk_1ECF816C0, &qword_1E49A5CB0);
      v5 = v82;
      if (v62)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v26, &unk_1ECF816C0, &qword_1E49A5CB0);
    (*(v56 + 8))(v59, v58);
  }

  sub_1E48C1338(v55, &qword_1ECF816B0, &qword_1E49A5CA0);
  sub_1E48C1338(v66, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C1338(v16, &unk_1ECF816C0, &qword_1E49A5CB0);
  v5 = v82;
LABEL_7:
  v81 = v30;
  v32 = v80;
  sub_1E48C12D0(v83, v80, &qword_1ECF80368, &unk_1E49A2840);
  v69(v32, 0, 1, v5);
  v33 = v85;
  v34 = v75;
  swift_beginAccess();
  v35 = &unk_1ECF816C0;
  sub_1E48EC0CC(v32, v33 + v34, &unk_1ECF816C0, &qword_1E49A5CB0);
  swift_endAccess();
  v36 = *(*v33 + 112);
  swift_beginAccess();
  v37 = *(v33 + v36);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v80 = v84 + 16;
  v70 = v79 + 1;
  v79 = (v84 + 8);
  v83 = v37;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v44 = v78;
  v45 = v76;
  while (v41)
  {
LABEL_17:
    (*(v84 + 16))(v86, *(v83 + 56) + *(v84 + 72) * (__clz(__rbit64(v41)) | (v43 << 6)), v44);
    sub_1E48C12D0(v85 + v34, v45, v35, &qword_1E49A5CB0);
    if ((v81)(v45, 1, v82) == 1)
    {
      v46 = v45;
      v47 = v35;
      v48 = &qword_1E49A5CB0;
    }

    else
    {
      v50 = v71;
      sub_1E48C15C8(v45, v71, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C12D0(v50, v72, &qword_1ECF80368, &unk_1E49A2840);
      v51 = v35;
      v52 = v73;
      v45 = v76;
      sub_1E499818C();
      v44 = v78;
      v53 = v52;
      v35 = v51;
      (*v70)(v53, v74);
      v46 = v50;
      v34 = v75;
      v47 = &qword_1ECF80368;
      v48 = &unk_1E49A2840;
    }

    sub_1E48C1338(v46, v47, v48);
    v41 &= v41 - 1;
    (*v79)(v86, v44);
  }

  while (1)
  {
    v49 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v49 >= v42)
    {

      return;
    }

    v41 = *(v38 + 8 * v49);
    ++v43;
    if (v41)
    {
      v43 = v49;
      goto LABEL_17;
    }
  }

  __break(1u);
}

double sub_1E49790D0(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81630, &qword_1E49A5C30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1E4996DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E4996DAC();
  v18 = *(v5 + 16);
  v18(v7, v10, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_1E496F5F8(v3, v7);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v7, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v7, v4);

  sub_1E499817C();
  (*(v5 + 8))(v10, v4);

  return result;
}