void sub_1B4F3F1A4(uint64_t a1)
{
  v3 = *(sub_1B4F64964() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4ECBC70(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4F3F280(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4F3F36C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1B4F3F42C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t EnergyMetricUpdated.energyMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64FD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EnergyMetricUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyMetricUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for EnergyMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F7590;
  if (!qword_1EB8F7590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyMetricUpdated.init(energyMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F64FD4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for EnergyMetricUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4F3F714(uint64_t a1)
{
  result = sub_1B4F64FD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4F3F7A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B4F3F7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4F3F844(uint64_t a1)
{
  v46 = sub_1B4F65014();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v4);
  v45 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = v34 - v8;
  v43 = sub_1B4F67004();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v34[1] = v1;
  v53 = MEMORY[0x1E69E7CC0];
  sub_1B4E25A00(0, v13, 0);
  v14 = v53;
  v52 = a1 + 56;
  result = sub_1B4F688B4();
  v16 = 0;
  v40 = v3 + 1;
  v41 = v3 + 2;
  v38 = v12;
  v39 = v9 + 32;
  v35 = a1 + 64;
  v36 = v13;
  v42 = v9;
  v37 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v52 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v49 = 1 << result;
    v50 = result >> 6;
    v18 = *(a1 + 36);
    v47 = v16;
    v48 = v18;
    v19 = *(a1 + 48) + v3[9] * result;
    v20 = v3[2];
    v21 = v44;
    v51 = result;
    v22 = v46;
    v20(v44, v19, v46);
    v23 = v45;
    v20(v45, v21, v22);
    sub_1B4F64FE4();
    sub_1B4F65004();
    sub_1B4F64FF4();
    sub_1B4F66FF4();
    v24 = v3[1];
    v24(v23, v22);
    v24(v21, v22);
    v53 = v14;
    v26 = *(v14 + 16);
    v25 = *(v14 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1B4E25A00((v25 > 1), v26 + 1, 1);
      v14 = v53;
    }

    *(v14 + 16) = v26 + 1;
    (*(v42 + 32))(v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26, v38, v43);
    a1 = v37;
    v17 = 1 << *(v37 + 32);
    result = v51;
    if (v51 >= v17)
    {
      goto LABEL_22;
    }

    v27 = *(v52 + 8 * v50);
    if ((v27 & v49) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v51 & 0x3F));
    if (v28)
    {
      v17 = __clz(__rbit64(v28)) | v51 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v50 << 6;
      v30 = v50 + 1;
      v31 = (v35 + 8 * v50);
      while (v30 < (v17 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          sub_1B4DF3104(v51, v48, 0);
          v17 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      sub_1B4DF3104(v51, v48, 0);
    }

LABEL_4:
    v16 = v47 + 1;
    result = v17;
    if (v47 + 1 == v36)
    {
      return v14;
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
  return result;
}

uint64_t PersonalizationPlaylist.init(_:with:)(uint64_t a1, void *a2)
{
  v4 = sub_1B4F64964();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F67A54();
  v9 = sub_1B4F648F4();
  (*(v5 + 8))(v8, v4);
  v10 = [a2 stringFromDate_];

  sub_1B4F67F74();
  sub_1B4F67A44();
  v11 = sub_1B4F67A84();
  v12 = sub_1B4F3F844(v11);

  sub_1B4DF2E58(v12);

  sub_1B4F67A74();
  sub_1B4F668D4();

  v13 = sub_1B4F67A94();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t PersonalizationPlaylistItem.init(_:)(uint64_t a1)
{
  sub_1B4F64FE4();
  sub_1B4F65004();
  sub_1B4F64FF4();
  sub_1B4F66FF4();
  v2 = sub_1B4F65014();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

unint64_t PersonalizationArchivedSession.init(_:isSampleContent:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75A0, &qword_1B4F7CC08);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v53 - v6;
  v8 = sub_1B4F64A14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F64964();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v55 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4F65904();
  v18 = HIBYTE(v17) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_63;
  }

  v54 = v12;
  if ((v17 & 0x1000000000000000) == 0)
  {
    if ((v17 & 0x2000000000000000) != 0)
    {
      v56[0] = result;
      v56[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v18)
        {
          v19 = v18 - 1;
          if (v18 != 1)
          {
            v34 = 0;
            v35 = v56 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v34;
              if ((v37 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v34 = v37 + v36;
              if (__CFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v19)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v18)
        {
          v41 = 0;
          v42 = v56;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v41;
            if ((v44 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v41 = v44 + v43;
            if (__CFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v18)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v18)
      {
        v19 = v18 - 1;
        if (v18 != 1)
        {
          v26 = 0;
          v27 = v56 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v26;
            if ((v29 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v26 = v29 - v28;
            if (v29 < v28)
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B4F68A34();
        v19 = v52;
      }

      v21 = *result;
      if (v21 == 43)
      {
        if (v19 >= 1)
        {
          if (--v19)
          {
            v30 = 0;
            if (result)
            {
              v31 = (result + 1);
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  goto LABEL_61;
                }

                v33 = 10 * v30;
                if ((v33 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_61;
                }

                v30 = v33 + v32;
                if (__CFADD__(v33, v32))
                {
                  goto LABEL_61;
                }

                ++v31;
                if (!--v19)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_74;
      }

      if (v21 != 45)
      {
        if (v19)
        {
          v38 = 0;
          if (result)
          {
            while (1)
            {
              v39 = *result - 48;
              if (v39 > 9)
              {
                goto LABEL_61;
              }

              v40 = 10 * v38;
              if ((v40 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              v38 = v40 + v39;
              if (__CFADD__(v40, v39))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v19)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOBYTE(v19) = 1;
LABEL_62:
        v57 = v19;
        v45 = v19;

        if (v45)
        {
LABEL_63:
          v46 = sub_1B4F66224();
          sub_1B4F40D30();
          swift_allocError();
          (*(*(v46 - 8) + 104))(v47, *MEMORY[0x1E69CBF58], v46);
          swift_willThrow();
          v48 = sub_1B4F65954();
          return (*(*(v48 - 8) + 8))(a1, v48);
        }

        goto LABEL_66;
      }

      if (v19 >= 1)
      {
        if (--v19)
        {
          v22 = 0;
          if (result)
          {
            v23 = (result + 1);
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v22;
              if ((v25 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              v22 = v25 - v24;
              if (v25 < v24)
              {
                goto LABEL_61;
              }

              ++v23;
              if (!--v19)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v19) = 0;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v57 = 0;
  v49 = sub_1B4F407B4(result, v17, 10);

  if ((v49 & 0x100000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_66:
  v53 = v2;
  sub_1B4F65914();
  sub_1B4F65944();
  sub_1B4F65934();
  v50 = *(v9 + 48);
  if (v50(v7, 1, v8) == 1)
  {
    sub_1B4F64A04();
    if (v50(v7, 1, v8) != 1)
    {
      sub_1B4F40D88(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v54, v7, v8);
  }

  sub_1B4F67234();
  v51 = sub_1B4F65954();
  return (*(*(v51 - 8) + 8))(a1, v51);
}

unint64_t sub_1B4F404B4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B4F68A34();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1B4F40DF0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1B4F407B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1B4F680A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B4F41900(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B4F68A34();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
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

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
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

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
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

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_1B4F40D30()
{
  result = qword_1EB8F75A8;
  if (!qword_1EB8F75A8)
  {
    sub_1B4F66224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F75A8);
  }

  return result;
}

uint64_t sub_1B4F40D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75A0, &qword_1B4F7CC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_1B4F40DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B4F680A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B4F41900(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B4F68A34();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B4F4137C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1B4F680A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B4F41900(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B4F68A34();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
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

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1B4F41900(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B4F680B4();
  v6 = sub_1B4F41980(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B4F41980(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B4F68824();
    if (!v9 || (v10 = v9, v11 = sub_1B4DC5FD8(v9, 0), v12 = sub_1B4F41AD8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B4F67FD4();

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
      return sub_1B4F67FD4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B4F68A34();
LABEL_4:

  return sub_1B4F67FD4();
}

unint64_t sub_1B4F41AD8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1B4F41CF8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B4F68064();
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
          result = sub_1B4F68A34();
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

    result = sub_1B4F41CF8(v12, a6, a7);
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

    result = sub_1B4F68044();
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

unint64_t sub_1B4F41CF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B4F68074();
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
    v5 = MEMORY[0x1B8C81900](15, a1 >> 16);
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

uint64_t PersonalizationHealthKitWorkout.init(_:)(uint64_t a1)
{
  v2 = sub_1B4F64964();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1B4F65D54();
  sub_1B4F65D14();
  sub_1B4F65D64();
  sub_1B4F65D24();
  sub_1B4F67364();
  v4 = sub_1B4F65D74();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t PersonalizationWorkoutPlan.init(_:)(uint64_t a1)
{
  v2 = sub_1B4F64B44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1B4F649A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4F64964();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1B4F64E64();
  sub_1B4F64E54();
  sub_1B4F64974();
  (*(v5 + 8))(v8, v4);
  sub_1B4F64EA4();
  sub_1B4F64EC4();
  sub_1B4F64EB4();
  sub_1B4F66EB4();
  v11 = sub_1B4F64ED4();
  return (*(*(v11 - 8) + 8))(a1, v11);
}

unint64_t PersonalizationUserOnboardingData.init(_:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4F64964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v69 - v13;
  v15 = sub_1B4F66604();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F426F4(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B4F42764(v14);
    sub_1B4F67424();

    return sub_1B4F42764(a1);
  }

  v74 = a1;
  v75 = a3;
  (*(v16 + 32))(v19, v14, v15);
  sub_1B4F665D4();
  v21 = sub_1B4F648F4();
  (*(v7 + 8))(v10, v6);
  v73 = a2;
  v22 = [a2 stringFromDate_];

  v23 = sub_1B4F67F74();
  v71 = v24;
  v72 = v23;

  v25 = sub_1B4F665E4();
  v26 = v25;
  v27 = v25 + 56;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 56);
  v31 = (v28 + 63) >> 6;

  v32 = v76 + 1;
  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  while (v30)
  {
LABEL_11:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = (*(v26 + 48) + ((v33 << 10) | (16 * v36)));
    v39 = *v37;
    v38 = v37[1];
    v40 = HIBYTE(v38) & 0xF;
    v41 = v39 & 0xFFFFFFFFFFFFLL;
    if ((v38 & 0x2000000000000000) != 0)
    {
      v42 = HIBYTE(v38) & 0xF;
    }

    else
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      if ((v38 & 0x1000000000000000) != 0)
      {
        v69 = v34;
        v70 = v32;

        v44 = sub_1B4F407B4(v39, v38, 10);

        v34 = v69;
        v32 = v70;
        if ((v44 & 0x100000000) == 0)
        {
LABEL_73:
          v70 = v32;
          v62 = v34;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B4DE53A0(0, *(v62 + 16) + 1, 1, v62);
            v62 = result;
          }

          v34 = v62;
          v63 = *(v62 + 16);
          v64 = *(v34 + 24);
          v65 = v63 + 1;
          v32 = v70;
          if (v63 >= v64 >> 1)
          {
            v69 = v63 + 1;
            result = sub_1B4DE53A0((v64 > 1), v63 + 1, 1, v34);
            v65 = v69;
            v32 = v70;
            v34 = result;
          }

          *(v34 + 16) = v65;
          *(v34 + 4 * v63 + 32) = v44;
        }
      }

      else
      {
        if ((v38 & 0x2000000000000000) != 0)
        {
          v76[0] = v39;
          v76[1] = v38 & 0xFFFFFFFFFFFFFFLL;
          if (v39 == 43)
          {
            if (!v40)
            {
              goto LABEL_85;
            }

            if (--v40)
            {
              LODWORD(v44) = 0;
              v54 = v32;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  break;
                }

                v56 = 10 * v44;
                if ((v56 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                LODWORD(v44) = v56 + v55;
                if (__CFADD__(v56, v55))
                {
                  break;
                }

                ++v54;
                if (!--v40)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v39 == 45)
          {
            if (!v40)
            {
              goto LABEL_83;
            }

            if (--v40)
            {
              LODWORD(v44) = 0;
              v48 = v32;
              while (1)
              {
                v49 = *v48 - 48;
                if (v49 > 9)
                {
                  break;
                }

                v50 = 10 * v44;
                if ((v50 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                LODWORD(v44) = v50 - v49;
                if (v50 < v49)
                {
                  break;
                }

                ++v48;
                if (!--v40)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v40)
          {
            LODWORD(v44) = 0;
            v59 = v76;
            while (1)
            {
              v60 = *v59 - 48;
              if (v60 > 9)
              {
                break;
              }

              v61 = 10 * v44;
              if ((v61 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v44) = v61 + v60;
              if (__CFADD__(v61, v60))
              {
                break;
              }

              ++v59;
              if (!--v40)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        if ((v39 & 0x1000000000000000) != 0)
        {
          result = (v38 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v66 = v34;
          v67 = v32;
          result = sub_1B4F68A34();
          v32 = v67;
          v34 = v66;
        }

        v43 = *result;
        if (v43 == 43)
        {
          if (v41 < 1)
          {
            goto LABEL_86;
          }

          v40 = v41 - 1;
          if (v41 == 1)
          {
            goto LABEL_71;
          }

          LODWORD(v44) = 0;
          if (result)
          {
            v51 = (result + 1);
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                goto LABEL_71;
              }

              v53 = 10 * v44;
              if ((v53 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_71;
              }

              LODWORD(v44) = v53 + v52;
              if (__CFADD__(v53, v52))
              {
                goto LABEL_71;
              }

              ++v51;
              if (!--v40)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v43 == 45)
        {
          if (v41 < 1)
          {
            goto LABEL_84;
          }

          v40 = v41 - 1;
          if (v41 == 1)
          {
            goto LABEL_71;
          }

          LODWORD(v44) = 0;
          if (result)
          {
            v45 = (result + 1);
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                break;
              }

              v47 = 10 * v44;
              if ((v47 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v44) = v47 - v46;
              if (v47 < v46)
              {
                break;
              }

              ++v45;
              if (!--v40)
              {
                goto LABEL_72;
              }
            }

LABEL_71:
            LODWORD(v44) = 0;
            LOBYTE(v40) = 1;
            goto LABEL_72;
          }
        }

        else
        {
          if (!v41)
          {
            goto LABEL_71;
          }

          LODWORD(v44) = 0;
          if (result)
          {
            do
            {
              v57 = *result - 48;
              if (v57 > 9)
              {
                goto LABEL_71;
              }

              v58 = 10 * v44;
              if ((v58 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_71;
              }

              LODWORD(v44) = v58 + v57;
              if (__CFADD__(v58, v57))
              {
                goto LABEL_71;
              }

              ++result;
            }

            while (--v41);
          }
        }

        LOBYTE(v40) = 0;
LABEL_72:
        v77 = v40;
        if ((v40 & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
      v68 = v34;

      sub_1B4DF2FF4(v68);

      sub_1B4F67424();

      sub_1B4F42764(v74);
      return (*(v16 + 8))(v19, v15);
    }

    v30 = *(v27 + 8 * v35);
    ++v33;
    if (v30)
    {
      v33 = v35;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1B4F426F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F42764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DisplayPreferencesUpdated.displayPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66014();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DisplayPreferencesUpdated.init(displayPreferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66014();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for DisplayPreferencesUpdated(uint64_t a1)
{
  result = qword_1EB8F75B8;
  if (!qword_1EB8F75B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F42928(uint64_t a1)
{
  result = sub_1B4F66014();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall StorefrontCache.updateStorefrontIdentifier(_:)(Swift::String a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B4F67F64();
  v3 = sub_1B4F67F64();
  [v1 setObject:v2 forKey:v3];
}

Swift::Void __swiftcall StorefrontCache.updateLanguageCode(_:)(Swift::String a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B4F67F64();
  v3 = sub_1B4F67F64();
  [v1 setObject:v2 forKey:v3];
}

void StorefrontCache.updateContentAvailability(_:)()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1B4F66174();
  v1 = sub_1B4F67F64();

  v2 = sub_1B4F67F64();
  [v0 setObject:v1 forKey:v2];
}

void sub_1B4F42C08(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B4F67F64();
  v4 = sub_1B4F67F64();
  [v2 setObject:v3 forKey:v4];
}

void sub_1B4F42CC4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1B4F66174();
  v1 = sub_1B4F67F64();

  v2 = sub_1B4F67F64();
  [v0 setObject:v1 forKey:v2];
}

uint64_t _s13SeymourClient15StorefrontCacheC05queryC10IdentifierSSSgyF_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B4F67F64();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B4F67F74();

  return v3;
}

uint64_t sub_1B4F42E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75C8, &qword_1B4F7CC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionClientProtocol.createSession(token:catalogWorkout:supportedMetrics:workoutActivityType:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v20 - v16;
  v18 = sub_1B4F65BC4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(a6 + 16))(a1, a2, a3, a4, v17, a5, a6, a7);
  return sub_1B4F43070(v17);
}

uint64_t sub_1B4F43070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ScriptClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));

  result = swift_allocObject();
  result[2] = v10;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  result[5] = a1;
  result[6] = a2;
  return result;
}

void *ScriptClient.__allocating_init(connection:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B4F16DD0(a1, a4, a5, v5, ObjectType, a2, a3);
}

void *ScriptClient.init(connection:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC88E4(a1, a4, a5, v5, ObjectType, a2, a3);
}

uint64_t ScriptClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ScriptClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ScriptClient.updateJetPack(force:)(char a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F858D0;
  v5._object = 0x80000001B4F85900;
  v5._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 278;
  v9 = a1 & 1;
  return (*(v6 + 16))(&v10, &v9, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v6);
}

uint64_t ScriptClient.queryJetPackInfo()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001B4F858D0;
  v3._object = 0x80000001B4F85920;
  v3._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 279;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v4);
}

uint64_t sub_1B4F43768(char a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F858D0;
  v6._object = 0x80000001B4F85900;
  v6._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v11 = 278;
  v10 = a1 & 1;
  return (*(v7 + 16))(&v11, &v10, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v7);
}

uint64_t sub_1B4F4387C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F858D0;
  v4._object = 0x80000001B4F85920;
  v4._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 279;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v5);
}

uint64_t KeyDeliveryClientProtocol.fetchPlaybackVoucher()(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1B4F66644();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x1E69CC590], v5, v8);
  (*(a2 + 48))(v10, a1, a2);
  return (*(v6 + 8))(v10, v5);
}

id static XPCServer.service(requiredEntitlements:queue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() serviceListener];
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC13SeymourClient9XPCServer_listener] = v6;
  *&v7[OBJC_IVAR____TtC13SeymourClient9XPCServer_requiredEntitlements] = a1;
  v8 = &v7[OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub];
  type metadata accessor for UnfairLock();
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = swift_allocObject();

  v10 = a2;
  v11 = v6;
  v12 = swift_slowAlloc();
  *(v9 + 16) = v12;
  *v12 = 0;
  *&v7[OBJC_IVAR____TtC13SeymourClient9XPCServer_lock] = v9;
  strcpy(v28, "XPCListener: ");
  HIWORD(v28[1]) = -4864;
  v13 = [v11 serviceName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B4F67F74();
    v17 = v16;
  }

  else
  {
    v17 = 0xED00002964656966;
    v15 = 0x69636570736E7528;
  }

  MEMORY[0x1B8C818C0](v15, v17);

  v18 = v28[0];
  v19 = v28[1];
  type metadata accessor for TransportDispatchService();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CC8];
  v20[6] = MEMORY[0x1E69E7CC8];
  v20[7] = v21;
  v20[2] = v10;
  v20[4] = v18;
  v20[5] = v19;
  v22 = swift_allocObject();
  v23 = v10;
  v24 = swift_slowAlloc();
  *(v22 + 16) = v24;
  *v24 = 0;
  v20[3] = v22;
  *&v7[OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService] = v20;
  *&v7[OBJC_IVAR____TtC13SeymourClient9XPCServer_clients] = MEMORY[0x1E69E7CD0];
  v27.receiver = v7;
  v27.super_class = v3;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  [v11 setDelegate_];

  return v25;
}

id XPCServer.__allocating_init(machServiceName:requiredEntitlements:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v9 = sub_1B4F67F64();

  v10 = [v8 initWithMachServiceName_];

  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC13SeymourClient9XPCServer_listener] = v10;
  *&v11[OBJC_IVAR____TtC13SeymourClient9XPCServer_requiredEntitlements] = a3;
  v12 = &v11[OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub];
  type metadata accessor for UnfairLock();
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = swift_allocObject();
  v14 = v10;
  v15 = swift_slowAlloc();
  *(v13 + 16) = v15;
  *v15 = 0;
  *&v11[OBJC_IVAR____TtC13SeymourClient9XPCServer_lock] = v13;
  strcpy(v31, "XPCListener: ");
  HIWORD(v31[1]) = -4864;
  v16 = [v14 serviceName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B4F67F74();
    v20 = v19;
  }

  else
  {
    v20 = 0xED00002964656966;
    v18 = 0x69636570736E7528;
  }

  MEMORY[0x1B8C818C0](v18, v20);

  v21 = v31[0];
  v22 = v31[1];
  type metadata accessor for TransportDispatchService();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CC8];
  v23[6] = MEMORY[0x1E69E7CC8];
  v23[7] = v24;
  v23[2] = a4;
  v23[4] = v21;
  v23[5] = v22;
  v25 = swift_allocObject();
  v26 = a4;
  v27 = swift_slowAlloc();
  *(v25 + 16) = v27;
  *v27 = 0;
  v23[3] = v25;
  *&v11[OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService] = v23;
  *&v11[OBJC_IVAR____TtC13SeymourClient9XPCServer_clients] = MEMORY[0x1E69E7CD0];
  v30.receiver = v11;
  v30.super_class = v5;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  [v14 setDelegate_];

  return v28;
}

id XPCServer.__allocating_init(machServiceName:requiredEntitlements:eventHub:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v13 = sub_1B4F67F64();

  v14 = [v12 initWithMachServiceName_];

  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC13SeymourClient9XPCServer_listener] = v14;
  *&v15[OBJC_IVAR____TtC13SeymourClient9XPCServer_requiredEntitlements] = a3;
  v16 = &v15[OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub];
  *v16 = a4;
  *(v16 + 1) = a5;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = v14;
  swift_unknownObjectRetain();
  v19 = swift_slowAlloc();
  *(v17 + 16) = v19;
  *v19 = 0;
  *&v15[OBJC_IVAR____TtC13SeymourClient9XPCServer_lock] = v17;
  strcpy(v35, "XPCListener: ");
  HIWORD(v35[1]) = -4864;
  v20 = [v18 serviceName];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1B4F67F74();
    v24 = v23;
  }

  else
  {
    v24 = 0xED00002964656966;
    v22 = 0x69636570736E7528;
  }

  MEMORY[0x1B8C818C0](v22, v24);

  v25 = v35[0];
  v26 = v35[1];
  type metadata accessor for TransportDispatchService();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC8];
  v27[6] = MEMORY[0x1E69E7CC8];
  v27[7] = v28;
  v27[2] = a6;
  v27[4] = v25;
  v27[5] = v26;
  v29 = swift_allocObject();
  v30 = a6;
  v31 = swift_slowAlloc();
  *(v29 + 16) = v31;
  *v31 = 0;
  v27[3] = v29;
  *&v15[OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService] = v27;
  *&v15[OBJC_IVAR____TtC13SeymourClient9XPCServer_clients] = MEMORY[0x1E69E7CD0];
  v34.receiver = v15;
  v34.super_class = v7;
  v32 = objc_msgSendSuper2(&v34, sel_init);
  [v18 setDelegate_];

  swift_unknownObjectRelease();
  return v32;
}

id sub_1B4F44330(uint64_t a1, void *a2, const char **a3)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB72490);
  v8._object = 0x80000001B4F85970;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  Logger.trace(file:function:)(v8, v9);
  v10 = *(v3 + OBJC_IVAR____TtC13SeymourClient9XPCServer_listener);
  v11 = *a3;

  return [v10 v11];
}

void sub_1B4F443F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B4F44454(a2);
  }
}

void sub_1B4F44454(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x80000001B4F85970;
  v6._object = 0x80000001B4F85A70;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + OBJC_IVAR____TtC13SeymourClient9XPCServer_lock);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(a1 + 32);
  os_unfair_lock_lock(*(v8 + 16));
  if (*(a1 + 48))
  {
    *(a1 + 48) = 0;
    TransportDispatchService.unregisterAll()();
    v9 = *(a1 + 24);
    [v9 setInterruptionHandler_];
    [v9 setInvalidationHandler_];
    [v9 invalidate];
  }

  os_unfair_lock_unlock(*(v8 + 16));
  os_unfair_lock_unlock(*(v7 + 16));
  os_unfair_lock_lock(*(v7 + 16));
  sub_1B4F446F4(a1, v2);
  v10 = *(v7 + 16);

  os_unfair_lock_unlock(v10);
}

void sub_1B4F445D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6._countAndFlagsBits = 0xD00000000000001DLL;
    v6._object = 0x80000001B4F85970;
    v7._object = 0x80000001B4F85A30;
    v7._countAndFlagsBits = 0xD000000000000016;
    Logger.trace(file:function:)(v6, v7);
    v8 = *&v4[OBJC_IVAR____TtC13SeymourClient9XPCServer_lock];
    os_unfair_lock_lock(*(v8 + 16));
    sub_1B4F446F4(a2, v4);
    os_unfair_lock_unlock(*(v8 + 16));
  }
}

uint64_t sub_1B4F446F4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x80000001B4F85970;
  v6._object = 0x80000001B4F85A50;
  v6._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(a1 + 24);
  v36 = [v7 processIdentifier];
  v8 = *(a1 + 64);
  v39 = *(a1 + 56);
  v9 = *(a1 + 80);
  v37 = *(a1 + 72);
  v10 = OBJC_IVAR____TtC13SeymourClient9XPCServer_clients;
  swift_beginAccess();
  v38 = v9;

  v40 = v8;

  sub_1B4E91BEC(a1);
  swift_endAccess();

  v11 = *(a1 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(a1 + 48) == 2)
  {
    *(a1 + 48) = 1;
    [v7 suspend];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = *(a2 + v10);
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = sub_1B4F688F4();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  swift_retain_n();
  v14 = sub_1B4F67C34();
  v15 = sub_1B4F685E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v16 = 136447234;
    v17 = [v7 serviceName];
    v34 = v13;
    if (v17)
    {
      v18 = v17;
      sub_1B4F67F74();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7690, qword_1B4F6C9F0);
    v21 = sub_1B4F687C4();
    v23 = v22;

    v24 = sub_1B4DC4F88(v21, v23, &v46);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v34;
    *(v16 + 22) = 2082;
    v25 = sub_1B4F687C4();
    v27 = sub_1B4DC4F88(v25, v26, &v46);

    *(v16 + 24) = v27;
    *(v16 + 32) = 1024;
    LODWORD(v24) = [v7 processIdentifier];

    *(v16 + 34) = v24;

    *(v16 + 38) = 2082;
    v20 = v37;
    v19 = v38;
    v41 = v37;
    v42 = v38;
    v28 = sub_1B4F687C4();
    v30 = sub_1B4DC4F88(v28, v29, &v46);

    *(v16 + 40) = v30;
    _os_log_impl(&dword_1B4DC2000, v14, v15, "Removed XPC Client (%{public}s) connection [%ld total] from %{public}s [%d/%{public}s]", v16, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v35, -1, -1);
    MEMORY[0x1B8C831D0](v16, -1, -1);
  }

  else
  {

    v20 = v37;
    v19 = v38;
  }

  if (*(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub))
  {
    v31 = *(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub + 8);
    ObjectType = swift_getObjectType();
    LODWORD(v41) = v36;
    v42 = v39;
    v43 = v40;
    v44 = v20;
    v45 = v19;
    (*(v31 + 8))(&v41, &type metadata for XPCServerClientDisconnected, &protocol witness table for XPCServerClientDisconnected, ObjectType, v31);
  }

  else
  {
  }
}

id XPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t XPCServer.sendRequest(_:)()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_1B4F67604();
}

{
  return MEMORY[0x1EEE6DFA0](sub_1B4F45DE8, 0, 0);
}

uint64_t XPCServer.sendRequest<A>(_:payload:)()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_1B4F67604();
}

{
  return MEMORY[0x1EEE6DFA0](sub_1B4F45DE8, 0, 0);
}

void XPCServer.sendRequest<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69CB4F0], v2);
  sub_1B4F67614();
}

void XPCServer.sendRequest<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v5 = swift_allocError();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69CB4F0], v4);
  sub_1B4F67614();
}

uint64_t sub_1B4F452B4()
{
  v1 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall XPCServer.broadcastEvent(_:)(SeymourClient::TransportEvent a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v47 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v11);
  v57 = &v47 - v12;
  v56 = *v2;
  v13 = *(v1 + OBJC_IVAR____TtC13SeymourClient9XPCServer_lock);
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC13SeymourClient9XPCServer_clients;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = *(v13 + 16);

  os_unfair_lock_unlock(v16);
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_1B4F688E4();
    type metadata accessor for XPCClient();
    sub_1B4DD54E4(&qword_1EB8F7608, type metadata accessor for XPCClient, &protocol conformance descriptor for XPCClient);
    sub_1B4F68544();
    v15 = v66;
    v17 = v67;
    v18 = v68;
    v19 = v69;
    v20 = v70;
  }

  else
  {
    v19 = 0;
    v21 = -1 << *(v15 + 32);
    v17 = v15 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v15 + 56);
  }

  v47 = v18;
  v48 = (v18 + 64) >> 6;
  v53 = v62 + 16;
  v52 = v5 + 7;
  v51 = v62 + 32;
  v50 = v62 + 8;
  v49 = (v10 + 8);
  v54 = v17;
  v55 = v15;
  v24 = v60;
  if (v15 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v25 = v19;
    v26 = v20;
    v27 = v19;
    if (!v20)
    {
      break;
    }

LABEL_12:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v15 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

    if (!v29)
    {
LABEL_18:
      sub_1B4E632A0(v15);
      return;
    }

    while (1)
    {
      v31 = swift_allocObject();
      v63 = v28;
      *(v31 + 16) = v29;
      *(v31 + 24) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
      v32 = v59;
      sub_1B4F675F4();
      v33 = swift_allocObject();
      *(v33 + 16) = v56;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1B4E5630C;
      *(v34 + 24) = v33;
      v35 = v61;
      v36 = v62;
      (*(v62 + 16))(v24, v32, v61);
      v37 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v38 = (v52 + v37) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      (*(v36 + 32))(v39 + v37, v24, v35);
      v40 = (v39 + v38);
      *v40 = sub_1B4E56328;
      v40[1] = v34;
      v41 = v57;
      sub_1B4F675F4();
      v42 = v35;
      v15 = v55;
      (*(v36 + 8))(v32, v42);
      v43 = v58;
      v44 = sub_1B4F67654();
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      v44(sub_1B4DDE050, v45);

      v46 = v43;
      v17 = v54;
      (*v49)(v41, v46);
      v19 = v27;
      v20 = v63;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v30 = sub_1B4F68914();
      if (v30)
      {
        v64 = v30;
        type metadata accessor for XPCClient();
        swift_dynamicCast();
        v29 = v65;
        v27 = v19;
        v28 = v20;
        if (v65)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v48)
    {
      goto LABEL_18;
    }

    v26 = *(v17 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void XPCServer.broadcastEvent<A>(_:payload:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(v5 + OBJC_IVAR____TtC13SeymourClient9XPCServer_lock);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = OBJC_IVAR____TtC13SeymourClient9XPCServer_clients;
  swift_beginAccess();
  v10 = *(v5 + v9);
  v11 = *(v8 + 16);

  os_unfair_lock_unlock(v11);
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_1B4F688E4();
    type metadata accessor for XPCClient();
    sub_1B4DD54E4(&qword_1EB8F7608, type metadata accessor for XPCClient, &protocol conformance descriptor for XPCClient);
    sub_1B4F68544();
    v10 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
  }

  v19 = (v13 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      break;
    }

LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v24)
    {
LABEL_18:
      sub_1B4E632A0(v10);
      return;
    }

    while (1)
    {
      LOBYTE(v28) = v7;
      XPCClient.broadcastEvent<A>(_:payload:)(&v28, a2, a3, a4, a5);

      v14 = v22;
      v15 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B4F68914())
      {
        type metadata accessor for XPCClient();
        swift_dynamicCast();
        v22 = v14;
        v23 = v15;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_18;
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B4F45BE8()
{
  v0 = sub_1B4F658F4();
  sub_1B4DD54E4(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69CB4F0], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_1B4F67604();
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t SessionActivated.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SessionActivated.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F678C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SessionActivated(uint64_t a1)
{
  result = qword_1EDB70CB8;
  if (!qword_1EDB70CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnalyticsEventDomain.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F45FD8()
{
  result = qword_1EB8F76A0;
  if (!qword_1EB8F76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F76A0);
  }

  return result;
}

uint64_t sub_1B4F460A0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v64 = a4;
  v65 = a2;
  v9 = sub_1B4F649A4();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v53 - v14;
  v62 = sub_1B4F64964();
  v66 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v15);
  v55 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v63 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v56 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v53 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v53 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v53 - v33;
  v35 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = a1;
  v35(a3, AssociatedTypeWitness, a6);
  v37 = a3;
  v38 = a6;
  v35(v37, AssociatedTypeWitness, a6);
  v64 = v30;
  v39 = v30;
  v40 = v62;
  sub_1B4F4657C(v39, v26);
  v41 = v66[6];
  if (v41(v26, 1, v40) == 1)
  {
    v42 = v26;
  }

  else
  {
    v54 = v66[4];
    v54(v63, v26, v40);
    v42 = v56;
    sub_1B4F4657C(v34, v56);
    if (v41(v42, 1, v40) != 1)
    {
      v49 = v55;
      v54(v55, v42, v40);
      v50 = v63;
      v46 = sub_1B4F64904();
      v51 = v66[1];
      v51(v49, v40);
      v51(v50, v40);
      goto LABEL_7;
    }

    (v66[1])(v63, v40);
  }

  sub_1B4E5ECFC(v42);
  v43 = *(v38 + 8);
  v44 = v57;
  v43(AssociatedTypeWitness, v38);
  v45 = v58;
  v43(AssociatedTypeWitness, v38);
  v46 = MEMORY[0x1B8C7E230](v44, v45);
  v47 = v61;
  v48 = *(v60 + 8);
  v48(v45, v61);
  v48(v44, v47);
LABEL_7:
  sub_1B4E5ECFC(v64);
  sub_1B4E5ECFC(v34);
  return v46 & 1;
}

uint64_t sub_1B4F4657C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F465EC()
{
  v1 = sub_1B4F66EE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F66ED4();
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD00000000000002DLL;
  v7._object = 0x80000001B4F85A90;
  v8._object = 0x80000001B4F85AC0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v15 = 116;
  v11 = *(v9 + 32);
  v12 = sub_1B4F66354();
  v11(&v15, v5, v1, v12, MEMORY[0x1E69CCC18], MEMORY[0x1E69CCC20], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v9);
  return (*(v2 + 8))(v5, v1);
}

void *ServiceSubscriptionClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F47168(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F4691C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4F46974();
  }

  return result;
}

uint64_t sub_1B4F46974()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v4 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v10);
  v12 = &v23 - v11;
  sub_1B4F465EC();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B4F47330;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B4F47338;
  *(v15 + 24) = v14;
  (*(v1 + 16))(v4, v8, v0);
  v16 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = swift_allocObject();
  (*(v1 + 32))(v17 + v16, v4, v0);
  v18 = (v17 + ((v2 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_1B4F47354;
  v18[1] = v15;
  sub_1B4F675F4();
  (*(v1 + 8))(v8, v0);
  v19 = v24;
  v20 = sub_1B4F67654();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_1B4DDE050, v21);

  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_1B4F46CA8@<X0>(BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    v5 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, &type metadata for ServiceSubscriptionUpdated, &protocol witness table for ServiceSubscriptionUpdated, ObjectType, v5);
    result = swift_unknownObjectRelease();
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t ServiceSubscriptionClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ServiceSubscriptionClient.fetchServiceSubscription(with:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v4._object = 0x80000001B4F85A90;
  v5._object = 0x80000001B4F85AC0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 116;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66EE4();
  v10 = sub_1B4F66354();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CCC18], MEMORY[0x1E69CCC20], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v6);
}

uint64_t sub_1B4F46EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F66354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v10);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_1B4F675F4();
}

void sub_1B4F47024(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1B4DDC730(v6, 0);
}

void *sub_1B4F470B8(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v5, a1);
  if (v5)
  {
    v3 = sub_1B4F65094();
    sub_1B4F4749C();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69CB1E0], v3);
    return swift_willThrow();
  }

  return result;
}

void *sub_1B4F47168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = 12;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v9, sub_1B4F474F4, v7, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F47258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC87C8(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4F4735C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4E1DFD8(a1, a2, v2 + v6, v8, v9);
}

void sub_1B4F47418(void (*a1)(void **), uint64_t a2)
{
  v5 = *(sub_1B4F66354() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1B4F47024(a1, a2, v6, v7, v8);
}

unint64_t sub_1B4F4749C()
{
  result = qword_1EB8F76A8;
  if (!qword_1EB8F76A8)
  {
    sub_1B4F65094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F76A8);
  }

  return result;
}

id AchievementProgressEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AchievementProgressEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementProgressEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL SessionOrigin.isLocal.getter()
{
  v1 = type metadata accessor for SessionOrigin(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F478E0(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = sub_1B4F678C4();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  else
  {
    sub_1B4F47944(v4);
  }

  return EnumCaseMultiPayload != 1;
}

uint64_t type metadata accessor for SessionOrigin(uint64_t a1)
{
  result = qword_1EDB6F0E0;
  if (!qword_1EDB6F0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F478E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionOrigin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F47944(uint64_t a1)
{
  v2 = type metadata accessor for SessionOrigin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SessionOrigin.token.getter()
{
  v1 = v0;
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionOrigin(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F478E0(v1, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v10;
  }

  (*(v3 + 32))(v6, v10, v2);
  v11 = sub_1B4F676B4();
  v13 = v12;
  type metadata accessor for SessionToken();
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v15 = swift_allocObject();
  *(v15 + 20) = 0;
  *(v15 + 16) = 0;
  v14[4] = v15;
  (*(v3 + 8))(v6, v2);
  return v14;
}

uint64_t SessionOrigin.sessionIdentifier.getter()
{
  v1 = v0;
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionOrigin(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F478E0(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_1B4F676B4();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *(*v10 + 16);
  }

  return v11;
}

uint64_t SessionOrigin.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4F678C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionOrigin(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B4F478E0(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v11, v3);
    MEMORY[0x1B8C82740](1);
    sub_1B4F482F0(&qword_1EB8F7720, MEMORY[0x1E69CD270], MEMORY[0x1E69CD278]);
    sub_1B4F67F24();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v13 = *v11;
    MEMORY[0x1B8C82740](0);
    v14 = v13[4];
    os_unfair_lock_lock((v14 + 20));
    if (*(v14 + 16))
    {
      v15 = 0x6576697463616E69;
    }

    else
    {
      v15 = 0x657669746361;
    }

    if (*(v14 + 16))
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    os_unfair_lock_unlock((v14 + 20));
    v17 = v13[3];
    v19 = v13[2];
    v20 = v17;

    MEMORY[0x1B8C818C0](v15, v16);

    v18 = MEMORY[0x1B8C81930](v19, v20);

    MEMORY[0x1B8C82740](v18);
  }
}

uint64_t SessionOrigin.hashValue.getter()
{
  sub_1B4F68E84();
  SessionOrigin.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F47F74()
{
  sub_1B4F68E84();
  SessionOrigin.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F47FB8(uint64_t a1)
{
  sub_1B4F68E84();
  SessionOrigin.hash(into:)(v2);
  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient13SessionOriginO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SessionOrigin(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v27 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7730, &qword_1B4F7D088);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4F478E0(a1, &v27 - v19);
  sub_1B4F478E0(a2, &v20[v22]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4F478E0(v20, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v8, &v20[v22], v4);
      v23 = MEMORY[0x1B8C81120](v12, v8);
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
LABEL_9:
      sub_1B4F47944(v20);
      return v23 & 1;
    }

    (*(v5 + 8))(v12, v4);
  }

  else
  {
    sub_1B4F478E0(v20, v16);
    v25 = *v16;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = _s13SeymourClient12SessionTokenC2eeoiySbAC_ACtFZ_0(v25, *&v20[v22]);

      goto LABEL_9;
    }
  }

  sub_1B4F48430(v20);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1B4F482F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B4F48338(uint64_t a1)
{
  sub_1B4F483E4(319, &qword_1EDB6F210, type metadata accessor for SessionToken);
  if (v1 <= 0x3F)
  {
    sub_1B4F483E4(319, &qword_1EDB713F0, MEMORY[0x1E69CD270]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B4F483E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B4F48430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7730, &qword_1B4F7D088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Error.errorCodeString.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7738, &qword_1B4F7D0A0);
  if (swift_dynamicCast())
  {
    sub_1B4DC933C(v13, v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = (*(v8 + 8))(v7, v8);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      *&v13[0] = sub_1B4F68DE4();
      v11 = sub_1B4F68D04();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    return v11;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1B4F48870(v13);
    v15[0] = sub_1B4F68DE4();
    return sub_1B4F68D04();
  }
}

uint64_t sub_1B4F48870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7740, &qword_1B4F7D0A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Error.errorDomainString.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7738, &qword_1B4F7D0A0);
  if (swift_dynamicCast())
  {
    sub_1B4DC933C(v13, v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = (*(v8 + 16))(v7, v8);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = sub_1B4F68DF4();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    return v11;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1B4F48870(v13);
    return sub_1B4F68DF4();
  }
}

uint64_t UserBodyMassMetricUpdated.userBodyMassMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66084();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UserBodyMassMetricUpdated.init(userBodyMassMetric:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66084();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for UserBodyMassMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F7748;
  if (!qword_1EB8F7748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F48BE4(uint64_t a1)
{
  result = sub_1B4F66084();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t OpenLinkAction.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6974656B72616DLL;
  v2 = 0x65735569746C756DLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0x726F777472617473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4F48CE0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E6974656B72616DLL;
  v4 = *a1;
  v5 = 0x65735569746C756DLL;
  v6 = 0xE900000000000072;
  if (v4 == 2)
  {
    v7 = 0xE900000000000072;
  }

  else
  {
    v5 = 0xD000000000000014;
    v7 = 0x80000001B4F7F990;
  }

  v8 = 0x726F777472617473;
  v9 = 0xEC00000074756F6BLL;
  if (!*a1)
  {
    v8 = 0x6E6974656B72616DLL;
    v9 = 0xE900000000000067;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x65735569746C756DLL;
  if (*a2 != 2)
  {
    v12 = 0xD000000000000014;
    v6 = 0x80000001B4F7F990;
  }

  if (*a2)
  {
    v3 = 0x726F777472617473;
    v2 = 0xEC00000074756F6BLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4F68D54();
  }

  return v15 & 1;
}

unint64_t sub_1B4F48E28@<X0>(Swift::String *a1@<X0>, SeymourClient::OpenLinkAction_optional *a2@<X8>)
{
  result = _s13SeymourClient14OpenLinkActionO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1B4F48E58(unint64_t *a1@<X8>)
{
  v2 = 0x6E6974656B72616DLL;
  v3 = 0xE900000000000072;
  v4 = 0x65735569746C756DLL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001B4F7F990;
  }

  v5 = 0xEC00000074756F6BLL;
  if (*v1)
  {
    v2 = 0x726F777472617473;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_1B4F48F98()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F4906C(uint64_t a1)
{
  sub_1B4F67FE4();
}

uint64_t sub_1B4F4912C(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

unint64_t _s13SeymourClient14OpenLinkActionO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4F68C34();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B4F4924C()
{
  result = qword_1EB8F7758;
  if (!qword_1EB8F7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7758);
  }

  return result;
}

unint64_t sub_1B4F492B0()
{
  result = qword_1EB8F7760;
  if (!qword_1EB8F7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7760);
  }

  return result;
}

uint64_t PlaybackIntentUpdated.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65894();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaybackIntentUpdated.init(playbackIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65894();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for PlaybackIntentUpdated(uint64_t a1)
{
  result = qword_1EB8F7768;
  if (!qword_1EB8F7768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F4945C(uint64_t a1)
{
  result = sub_1B4F65894();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AssetClientProtocol.fetchImageData(remoteURL:priority:pixelWidth:pixelHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1B4F679D4();
  v15 = v14;
  v16 = sub_1B4F679E4();
  v19 = 1;
  (*(a7 + 248))(a1, a2, a3, a4, a5, v13, v15, v16, v17, 1, v19, a6, a7);
}

void *AssetClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F504C8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F499B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 48);
    ObjectType = swift_getObjectType();
    v17 = a4(0);
    (*(*(v17 - 8) + 16))(v13, a1, v17);
    (*(v15 + 8))(v13, v10, a5, ObjectType, v15);
    sub_1B4F51630(v13, a6);
  }

  return result;
}

uint64_t AssetClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AssetClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AssetClient.deleteAllAssets()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F86100;
  v3._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 15;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AssetClient.insertDemoAssetBundle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F66534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB714B8);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = a2;
    v17 = v16;
    v28 = v16;
    *v15 = 136446210;
    sub_1B4F51130(&qword_1EB8F7778, MEMORY[0x1E69CC410], MEMORY[0x1E69CC418]);
    v18 = sub_1B4F68D04();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1B4DC4F88(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "insertDemoAssetBundle request: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B8C831D0](v17, -1, -1);
    v22 = v15;
    a1 = v27;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v29 = 41;
  return (*(v23 + 16))(&v29, a1, v6, MEMORY[0x1E69CC400], MEMORY[0x1E69CC408], ObjectType, v23);
}

uint64_t sub_1B4F49F74(const char *a1, __int16 a2)
{
  v5 = v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7 = sub_1B4F67C34();
  v8 = sub_1B4F685E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B4DC2000, v7, v8, a1, v9, 2u);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = a2;
  return (*(v10 + 8))(&v13, ObjectType, v10);
}

uint64_t AssetClient.pauseAssetBundleOnCurrentDevice(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB714B8);
  v6._object = 0x80000001B4F860E0;
  v7._countAndFlagsBits = 0xD000000000000033;
  v7._object = 0x80000001B4F86120;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 21;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t AssetClient.pauseAssetBundleOnActivePairedDevice(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB714B8);
  v6._object = 0x80000001B4F860E0;
  v7._countAndFlagsBits = 0xD000000000000038;
  v7._object = 0x80000001B4F86160;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 22;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t sub_1B4F4A2FC(uint64_t a1, unint64_t a2, const char *a3, __int16 a4, ...)
{
  v7 = v4;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1B4F67C54();
  __swift_project_value_buffer(v10, qword_1EDB714B8);

  v11 = sub_1B4F67C34();
  v12 = sub_1B4F685E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B4DC4F88(a1, a2, v18);
    _os_log_impl(&dword_1B4DC2000, v11, v12, a3, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B8C831D0](v14, -1, -1);
    MEMORY[0x1B8C831D0](v13, -1, -1);
  }

  v15 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v19 = a4;
  v18[0] = a1;
  v18[1] = a2;
  return (*(v15 + 16))(&v19, v18, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v15);
}

uint64_t AssetClient.cancelAssetRequest(identifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB714B8);
  v6._object = 0x80000001B4F860E0;
  v7._object = 0x80000001B4F861A0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 14;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t AssetClient.failAssetEntry(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F64824();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB714B8);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = a2;
    v17 = v16;
    v28 = v16;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    v18 = sub_1B4F647E4();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1B4DC4F88(v18, v20, &v28);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Client - failAssetEntry for %{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B8C831D0](v17, -1, -1);
    v22 = v15;
    a1 = v27;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v29 = 16;
  return (*(v23 + 16))(&v29, a1, v6, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v23);
}

uint64_t AssetClient.loadIncompleteAssetBundles()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F861C0;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 20;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AssetClient.prefetchAssetBundles()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F861E0;
  v3._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 23;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AssetClient.queryCompletedAssetBundlesOnCurrentDevice()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._object = 0x80000001B4F860E0;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F86200;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 29;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v8 = sub_1B4F506EC();
  v9 = sub_1B4F50770();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AssetClient.queryCompletedAssetBundleCountOnCurrentDevice()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._object = 0x80000001B4F860E0;
  v3._countAndFlagsBits = 0xD00000000000002FLL;
  v3._object = 0x80000001B4F86230;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 42;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v4);
}

uint64_t AssetClient.queryCompletedAssetBundlesOnActivePairedDevice()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._object = 0x80000001B4F860E0;
  v3._countAndFlagsBits = 0xD000000000000030;
  v3._object = 0x80000001B4F86260;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 30;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v8 = sub_1B4F506EC();
  v9 = sub_1B4F50770();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AssetClient.queryAssetBundles(workoutIdentifiers:)(uint64_t a1)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000026;
  v5._object = 0x80000001B4F862A0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 32;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v11 = sub_1B4E9C248();
  v12 = sub_1B4DC5928();
  v13 = sub_1B4F506EC();
  v14 = sub_1B4F50770();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t AssetClient.queryAllAssetEntries()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F862D0;
  v3._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 25;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
  v8 = sub_1B4F50824();
  v9 = sub_1B4F508A8();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AssetClient.queryAllAssetRequests()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F862F0;
  v3._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 27;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
  v8 = sub_1B4F5095C();
  v9 = sub_1B4F509E0();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AssetClient.queryAllAssetResumableLoads()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F86310;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 28;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
  v8 = sub_1B4F50A94();
  v9 = sub_1B4F50B18();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AssetClient.queryAllAssetBundles()()
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB714B8);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F860E0;
  v3._object = 0x80000001B4F86330;
  v3._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 24;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v8 = sub_1B4F506EC();
  v9 = sub_1B4F50770();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AssetClient.queryAllAssetLoadFailures()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v8 = 26;
  v3 = *(v1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77E8, &qword_1B4F7D2D0);
  v5 = sub_1B4F50BCC();
  v6 = sub_1B4F50C50();
  return v3(&v8, v4, v5, v6, ObjectType, v1);
}

uint64_t AssetClient.queryLocalURL(remoteURL:)(uint64_t a1)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x80000001B4F860E0;
  v5._object = 0x80000001B4F86350;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 31;
  v8 = *(v6 + 32);
  v9 = sub_1B4F64824();
  return v8(&v11, a1, v9, v9, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v6);
}

uint64_t AssetClient.queryPreferredStreamingURL(workout:)(uint64_t a1)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86370;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 40;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65804();
  v10 = sub_1B4F64824();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CB410], MEMORY[0x1E69CB418], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v6);
}

uint64_t AssetClient.evaluateStandardImageURLs(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB714B8);
  v6._object = 0x80000001B4F860E0;
  v7._object = 0x80000001B4F863A0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 34;
  v15[0] = a1;
  v15[1] = a2;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v12 = sub_1B4F50D04();
  v13 = sub_1B4F50D88();
  return v10(&v16, v15, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v12, v13, ObjectType, v8);
}

uint64_t AssetClient.evaluateStandardImageMatches(for:)(uint64_t a1)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F863C0;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 33;
  v7 = *(v5 + 32);
  v8 = sub_1B4F67384();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7828, &qword_1B4F7D2E0);
  v10 = sub_1B4E2F2A0(&qword_1EB8F7830, &qword_1EB8F7828, &qword_1B4F7D2E0);
  v11 = sub_1B4F50E3C();
  return v7(&v14, a1, v8, v9, MEMORY[0x1E69CCFE0], MEMORY[0x1E69CCFE8], v10, v11, ObjectType, v5);
}

uint64_t AssetClient.filterAssetBundlesOnCurrentDevice(_:)(uint64_t a1)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F863F0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 43;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65E44();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v11 = sub_1B4F506EC();
  v12 = sub_1B4F50770();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CB958], MEMORY[0x1E69CB960], v11, v12, ObjectType, v6);
}

uint64_t AssetClient.queryStandardImageBestMatches(for:)(uint64_t a1)
{
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F86420;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 35;
  v8 = *(v6 + 32);
  v9 = sub_1B4F67494();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v11 = sub_1B4F50D04();
  v12 = sub_1B4F50D88();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CD138], MEMORY[0x1E69CD140], v11, v12, ObjectType, v6);
}

uint64_t AssetClient.fetchLocalURL(type:remoteURL:priority:expirationPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v54 = a6;
  v45 = a5;
  v47 = a4;
  v48 = a3;
  v44 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v8);
  v50 = v9;
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v46 = &v43 - v12;
  v13 = sub_1B4F64824();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F65CB4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4F64F14();
  v49 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B4F67C54();
  __swift_project_value_buffer(v26, qword_1EDB714B8);
  v27._object = 0x80000001B4F860E0;
  v28._countAndFlagsBits = 0xD000000000000038;
  v28._object = 0x80000001B4F86450;
  v27._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v27, v28);
  sub_1B4F648B4();
  sub_1B4F67FA4();
  sub_1B4F50EF0(a1, v21, v29);
  (*(v14 + 16))(v17, v44, v13);
  v52 = v13;
  if ((v45 & 1) != 0 && !v47)
  {
    sub_1B4F684D4();
  }

  else
  {
    sub_1B4F684C4();
  }

  sub_1B4F64F04();
  v30 = v53;
  v31 = *(v53 + 24);
  ObjectType = swift_getObjectType();
  v56 = 17;
  v33 = *(v31 + 32);
  v34 = sub_1B4F651C4();
  v35 = v46;
  v33(&v56, v25, v22, v34, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v31);
  v36 = v51;
  v37 = v55;
  (*(v7 + 16))(v51, v35, v55);
  v38 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v7 + 32))(v40 + v38, v36, v37);
  v41 = (v40 + v39);
  *v41 = sub_1B4F50F54;
  v41[1] = v30;

  sub_1B4F675F4();
  (*(v7 + 8))(v35, v37);
  return (*(v49 + 8))(v25, v22);
}

uint64_t sub_1B4F4C158(uint64_t a1, double a2)
{
  v3 = sub_1B4F651C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v7);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1B4F64824();
  return sub_1B4F67604();
}

uint64_t AssetClient.fetchImageData(remoteURL:priority:expirationPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v36 = a4;
  v37 = a3;
  v38 = a2;
  v35 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v6);
  v40 = v7;
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v35 - v10;
  v11 = sub_1B4F64824();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4F65CB4();
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = sub_1B4F64F14();
  v39 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F648B4();
  sub_1B4F67FA4();
  swift_storeEnumTagMultiPayload();
  (*(v12 + 16))(v15, v35, v11);
  if ((v36 & 1) != 0 && !v37)
  {
    sub_1B4F684D4();
  }

  else
  {
    sub_1B4F684C4();
  }

  sub_1B4F64F04();
  v22 = v43;
  v23 = *(v43 + 24);
  ObjectType = swift_getObjectType();
  v46 = 17;
  v25 = *(v23 + 32);
  v26 = sub_1B4F651C4();
  v27 = v42;
  v25(&v46, v21, v18, v26, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v23);
  v28 = v41;
  v29 = v45;
  (*(v5 + 16))(v41, v27, v45);
  v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v31 = (v40 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v5 + 32))(v32 + v30, v28, v29);
  v33 = (v32 + v31);
  *v33 = sub_1B4F50F84;
  v33[1] = v22;

  sub_1B4F675F4();
  (*(v5 + 8))(v27, v29);
  return (*(v39 + 8))(v21, v18);
}

uint64_t sub_1B4F4C6E8(uint64_t a1, double a2)
{
  v3 = sub_1B4F651C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v7);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1B4F67604();
}

uint64_t AssetClient.fetchImageData(remoteURL:priority:pixelWidth:pixelHeight:cropCode:fileType:expirationPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v128 = a3;
  v129 = a8;
  v135 = a6;
  v133 = a4;
  v134 = a5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v18);
  v114 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = &v103 - v22;
  v108 = sub_1B4F65CB4();
  MEMORY[0x1EEE9AC00](v108, v23);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1B4F64F14();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v25);
  v111 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v27);
  v118 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v127 = &v103 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v103 - v34;
  v136 = sub_1B4F64824();
  v132 = *(v136 - 8);
  v36 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v136, v37);
  v110 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v107 = &v103 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v106 = &v103 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v130 = &v103 - v46;
  v123 = a1;
  v141 = a1;
  v142 = a2;
  sub_1B4DCAC7C();
  v47 = sub_1B4F68874();
  if (!v48)
  {
    goto LABEL_4;
  }

  v105 = a2;
  v125 = a9;
  v126 = v13;
  v124 = a10;
  v141 = v47;
  v142 = v48;
  v139 = 8222587;
  v140 = 0xE300000000000000;
  LODWORD(v137) = v133;
  v137 = sub_1B4F68D04();
  v138 = v49;
  v50 = sub_1B4F68864();
  v131 = a7;
  v52 = v51;

  v141 = v50;
  v142 = v52;
  v139 = 8218747;
  v140 = 0xE300000000000000;
  LODWORD(v137) = v134;
  v137 = sub_1B4F68D04();
  v138 = v53;
  v54 = sub_1B4F68864();
  v56 = v55;

  v141 = v54;
  v142 = v56;
  v139 = 8217467;
  v140 = 0xE300000000000000;
  v137 = v135;
  v138 = v131;
  v57 = sub_1B4F68864();
  v59 = v58;

  v141 = v57;
  v142 = v59;
  v139 = 8218235;
  v140 = 0xE300000000000000;
  v137 = v129;
  v138 = v124;
  sub_1B4F68864();

  sub_1B4F64814();

  v60 = v132;
  v61 = v136;
  if ((*(v132 + 48))(v35, 1, v136))
  {
    sub_1B4E97050(v35);
LABEL_4:
    v62 = sub_1B4F64A54();
    sub_1B4F51130(&qword_1EB8F7840, MEMORY[0x1E69CAF10], MEMORY[0x1E69CAF18]);
    v63 = swift_allocError();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69CAF00], v62);
    *(swift_allocObject() + 16) = v63;
    return sub_1B4F67604();
  }

  v129 = a11;
  v66 = *(v60 + 32);
  v67 = v106;
  v66(v106, v35, v61);
  v68 = v130;
  v106 = (v60 + 32);
  v104 = v66;
  v66(v130, v67, v61);
  sub_1B4F648B4();
  sub_1B4F67FA4();
  swift_storeEnumTagMultiPayload();
  v69 = *(v60 + 16);
  v108 = v60 + 16;
  v103 = v69;
  v69(v107, v68, v61);
  LODWORD(v124) = a12;
  if ((a12 & 1) != 0 && !v129)
  {
    sub_1B4F684D4();
  }

  else
  {
    sub_1B4F684C4();
  }

  v70 = v111;
  sub_1B4F64F04();
  v71 = *(v126 + 24);
  ObjectType = swift_getObjectType();
  LOWORD(v141) = 17;
  v73 = *(v71 + 32);
  v74 = sub_1B4F651C4();
  v75 = v117;
  v76 = v115;
  v73(&v141, v70, v115, v74, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v71);
  v77 = v119;
  v78 = v114;
  v79 = v120;
  (*(v119 + 16))(v114, v75, v120);
  v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v81 = (v112 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (*(v77 + 32))(v82 + v80, v78, v79);
  v83 = (v82 + v81);
  v84 = v126;
  *v83 = sub_1B4F51698;
  v83[1] = v84;

  v85 = v127;
  sub_1B4F675F4();
  (*(v77 + 8))(v75, v79);
  (*(v113 + 8))(v70, v76);
  v86 = v110;
  v87 = v136;
  v103(v110, v130, v136);
  v88 = v132;
  v89 = (*(v132 + 80) + 81) & ~*(v132 + 80);
  v90 = swift_allocObject();
  v91 = v105;
  *(v90 + 16) = v123;
  *(v90 + 24) = v91;
  v92 = v134;
  *(v90 + 32) = v133;
  *(v90 + 36) = v92;
  v93 = v131;
  *(v90 + 40) = v135;
  *(v90 + 48) = v93;
  v95 = v128;
  v94 = v129;
  *(v90 + 56) = v126;
  *(v90 + 64) = v95;
  *(v90 + 72) = v94;
  *(v90 + 80) = v124 & 1;
  v104(v90 + v89, v86, v87);
  v96 = v121;
  v97 = v118;
  v98 = v122;
  (*(v121 + 16))(v118, v85, v122);
  v99 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v100 = (v116 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  (*(v96 + 32))(v101 + v99, v97, v98);
  v102 = (v101 + v100);
  *v102 = sub_1B4F50FB4;
  v102[1] = v90;

  sub_1B4F675F4();
  (*(v96 + 8))(v127, v98);
  return (*(v88 + 8))(v130, v136);
}

uint64_t sub_1B4F4D41C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v87 = a6;
  v88 = a7;
  v85 = a4;
  v86 = a5;
  v84 = a3;
  v83 = a2;
  v16 = sub_1B4F64824();
  v93 = *(v16 - 8);
  v94 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = v18;
  v91 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F8, &qword_1B4F6CDA8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v92 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v75 - v25;
  v27 = sub_1B4F67494();
  v95 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v97 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v30 = sub_1B4F68DF4();
  v32 = v31;
  if (v30 == sub_1B4F67F74() && v32 == v33)
  {
  }

  else
  {
    v35 = sub_1B4F68D54();

    if ((v35 & 1) == 0)
    {
      *(swift_allocObject() + 16) = a1;
      v36 = a1;
      return sub_1B4F67604();
    }
  }

  v80 = v20;
  v78 = a13;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v96 = v27;
  v81 = v19;
  v82 = a9;
  v79 = a12;
  v77 = a11;
  v76 = a10;
  v38 = sub_1B4F67C54();
  __swift_project_value_buffer(v38, qword_1EDB714B8);
  v39 = a1;
  v40 = a1;
  v41 = sub_1B4F67C34();
  v42 = sub_1B4F685C4();

  v43 = os_log_type_enabled(v41, v42);
  v75 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v100 = v45;
    *v44 = 136446210;
    swift_getErrorValue();
    v46 = MEMORY[0x1B8C826C0](v98, v99);
    v48 = a8;
    v49 = sub_1B4DC4F88(v46, v47, &v100);

    *(v44 + 4) = v49;
    a8 = v48;
    _os_log_impl(&dword_1B4DC2000, v41, v42, "Fallback - querying completed closest match due to error: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1B8C831D0](v45, -1, -1);
    MEMORY[0x1B8C831D0](v44, -1, -1);
  }

  v50 = v97;
  sub_1B4F67484();
  v51._object = 0x80000001B4F860E0;
  v52._countAndFlagsBits = 0xD000000000000023;
  v52._object = 0x80000001B4F86420;
  v51._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v51, v52);
  v53 = a8;
  v54 = *(a8 + 24);
  ObjectType = swift_getObjectType();
  LOWORD(v100) = 35;
  v56 = *(v54 + 32);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v58 = sub_1B4F50D04();
  v59 = sub_1B4F50D88();
  v56(&v100, v50, v96, v57, MEMORY[0x1E69CD138], MEMORY[0x1E69CD140], v58, v59, ObjectType, v54);
  v61 = v93;
  v60 = v94;
  v62 = v91;
  (*(v93 + 16))(v91, v78, v94);
  v63 = (*(v61 + 80) + 49) & ~*(v61 + 80);
  v64 = swift_allocObject();
  v65 = v75;
  *(v64 + 16) = v75;
  *(v64 + 24) = v53;
  v66 = v77;
  *(v64 + 32) = v76;
  *(v64 + 40) = v66;
  *(v64 + 48) = v79 & 1;
  (*(v61 + 32))(v64 + v63, v62, v60);
  v67 = v80;
  v68 = v92;
  v69 = v81;
  (*(v80 + 16))(v92, v26, v81);
  v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v71 = (v90 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v67 + 32))(v72 + v70, v68, v69);
  v73 = (v72 + v71);
  *v73 = sub_1B4F511C8;
  v73[1] = v64;
  v74 = v65;

  sub_1B4F675F4();
  (*(v67 + 8))(v26, v69);
  return (*(v95 + 8))(v97, v96);
}

uint64_t sub_1B4F4DB40@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, void *a8@<X8>)
{
  v114 = a7;
  v96 = a6;
  v97 = a5;
  v100 = a2;
  v101 = a4;
  v108 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4508, &qword_1B4F6CDB8);
  v109 = *(v10 - 8);
  v110 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v103 = &v89 - v15;
  v16 = sub_1B4F65CB4();
  MEMORY[0x1EEE9AC00](v16, v17);
  v116 = sub_1B4F64F14();
  v105 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v18);
  v115 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v112 = *(v20 - 8);
  v113 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v111 = &v89 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v89 - v29;
  v31 = sub_1B4F64824();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v99 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v98 = &v89 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v89 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v89 - v43;
  v45 = *a1;
  v47 = v46;
  sub_1B4E24544(v45, v30);
  if ((*(v47 + 48))(v30, 1, v31) == 1)
  {
    sub_1B4E97050(v30);
    if (qword_1EDB714B0 != -1)
    {
      swift_once();
    }

    v48 = sub_1B4F67C54();
    __swift_project_value_buffer(v48, qword_1EDB714B8);
    v49 = sub_1B4F67C34();
    v50 = sub_1B4F685C4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B4DC2000, v49, v50, "Fallback - no close match found", v51, 2u);
      MEMORY[0x1B8C831D0](v51, -1, -1);
    }

    v52 = swift_allocObject();
    v53 = v100;
    *(v52 + 16) = v100;
    v54 = v53;
    return sub_1B4F67604();
  }

  else
  {
    v100 = a8;
    v56 = *(v47 + 32);
    v93 = v47 + 32;
    v92 = v56;
    v56(v44, v30, v31);
    sub_1B4F648B4();
    sub_1B4F67FA4();
    swift_storeEnumTagMultiPayload();
    v94 = v47;
    v57 = *(v47 + 16);
    v91 = v47 + 16;
    v90 = v57;
    v57(v40, v44, v31);
    v95 = v23;
    v102 = v44;
    if ((v96 & 1) != 0 && !v97)
    {
      sub_1B4F684D4();
    }

    else
    {
      sub_1B4F684C4();
    }

    v58 = v115;
    sub_1B4F64F04();
    v59 = v108;
    v60 = *(v108 + 24);
    ObjectType = swift_getObjectType();
    v117[0] = 17;
    v62 = *(v60 + 32);
    v63 = sub_1B4F651C4();
    v64 = v103;
    v62(v117, v58, v116, v63, MEMORY[0x1E69CB110], MEMORY[0x1E69CB118], MEMORY[0x1E69CB270], MEMORY[0x1E69CB278], ObjectType, v60);
    v66 = v109;
    v65 = v110;
    v67 = v106;
    (*(v109 + 16))(v106, v64, v110);
    v68 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v69 = (v104 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    (*(v66 + 32))(v70 + v68, v67, v65);
    v71 = (v70 + v69);
    *v71 = sub_1B4F51698;
    v71[1] = v59;

    v72 = v111;
    sub_1B4F675F4();
    (*(v66 + 8))(v64, v65);
    (*(v105 + 8))(v115, v116);
    v73 = v98;
    v74 = v90;
    v90(v98, v114, v31);
    v75 = v99;
    v74(v99, v102, v31);
    v76 = v94;
    v77 = *(v94 + 80);
    v78 = (v77 + 16) & ~v77;
    v79 = (v32 + v77 + v78) & ~v77;
    v80 = swift_allocObject();
    v81 = v92;
    v92(v80 + v78, v73, v31);
    v81(v80 + v79, v75, v31);
    v83 = v112;
    v82 = v113;
    v84 = v95;
    (*(v112 + 16))(v95, v72, v113);
    v85 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v86 = (v107 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    (*(v83 + 32))(v87 + v85, v84, v82);
    v88 = (v87 + v86);
    *v88 = sub_1B4F5127C;
    v88[1] = v80;
    sub_1B4F675F4();
    (*(v83 + 8))(v72, v82);
    return (*(v76 + 8))(v102, v31);
  }
}

void sub_1B4F4E468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64824();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  if ((*(a1 + 16) & 1) == 0)
  {
    if (qword_1EDB714B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4F67C54();
    __swift_project_value_buffer(v15, qword_1EDB714B8);
    v16 = *(v7 + 16);
    v16(v14, a2, v6);
    v16(v10, a3, v6);
    v17 = sub_1B4F67C34();
    v18 = sub_1B4F685E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v19 = 141558786;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      v20 = sub_1B4F647E4();
      v22 = v21;
      v23 = *(v7 + 8);
      v23(v14, v6);
      v24 = sub_1B4DC4F88(v20, v22, &v32);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2160;
      *(v19 + 24) = 1752392040;
      *(v19 + 32) = 2080;
      v25 = sub_1B4F647E4();
      v27 = v26;
      v23(v10, v6);
      v28 = sub_1B4DC4F88(v25, v27, &v32);

      *(v19 + 34) = v28;
      _os_log_impl(&dword_1B4DC2000, v17, v18, "Fallback - close match for %{mask.hash}s found: %{mask.hash}s", v19, 0x2Au);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v29, -1, -1);
      MEMORY[0x1B8C831D0](v19, -1, -1);
    }

    else
    {

      v30 = *(v7 + 8);
      v30(v10, v6);
      v30(v14, v6);
    }
  }
}

uint64_t sub_1B4F4E77C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1B4F64824();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F651B4();
  v8 = sub_1B4F64834();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v11 = v8;
  v12 = v9;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t AssetClient.fetchPersistableKeys(for:workoutIdentifier:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v32 = a6;
  v28 = a4;
  v29 = a2;
  v26 = a1;
  v25 = sub_1B4F64824();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F64964();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v27 = sub_1B4F66704();
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F67FA4();

  sub_1B4F67FA4();
  sub_1B4F64954();
  (*(v6 + 16))(v9, v26, v25);
  sub_1B4F666F4();
  v15 = *(v31 + 24);
  ObjectType = swift_getObjectType();
  v33 = 18;
  v17 = *(v15 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7848, &qword_1B4F7D2E8);
  v19 = sub_1B4E2F2A0(&qword_1EB8F7850, &qword_1EB8F7848, &qword_1B4F7D2E8);
  v20 = sub_1B4F5107C();
  v23 = ObjectType;
  v21 = v27;
  v17(&v33, v14, v27, v18, MEMORY[0x1E69CC630], MEMORY[0x1E69CC638], v19, v20, v23, v15);
  return (*(v30 + 8))(v14, v21);
}

uint64_t sub_1B4F4EB70()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86100;
  v4._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 15;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F4ECA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x80000001B4F86120;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 21;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

uint64_t sub_1B4F4EDC0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x80000001B4F86160;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 22;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

uint64_t sub_1B4F4EEDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._object = 0x80000001B4F861A0;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 14;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

uint64_t sub_1B4F4F060()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F861C0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 20;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F4F14C()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F861E0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 23;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F4F284()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F86200;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 29;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v9 = sub_1B4F506EC();
  v10 = sub_1B4F50770();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F4F3B4()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v4._object = 0x80000001B4F86230;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 42;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v5);
}

uint64_t sub_1B4F4F4B8()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._object = 0x80000001B4F860E0;
  v4._countAndFlagsBits = 0xD000000000000030;
  v4._object = 0x80000001B4F86260;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 30;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v9 = sub_1B4F506EC();
  v10 = sub_1B4F50770();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F4F5E8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001B4F862A0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 32;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4DC5928();
  v14 = sub_1B4F506EC();
  v15 = sub_1B4F50770();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4F4F75C()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F862D0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 25;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
  v9 = sub_1B4F50824();
  v10 = sub_1B4F508A8();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F4F890()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F862F0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 27;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
  v9 = sub_1B4F5095C();
  v10 = sub_1B4F509E0();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F4F9C0()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86310;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 28;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
  v9 = sub_1B4F50A94();
  v10 = sub_1B4F50B18();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F4FAF0()
{
  v1 = *v0;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB714B8);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F860E0;
  v4._object = 0x80000001B4F86330;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 24;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v9 = sub_1B4F506EC();
  v10 = sub_1B4F50770();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F4FC48(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001B4F863F0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 43;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65E44();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
  v12 = sub_1B4F506EC();
  v13 = sub_1B4F50770();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CB958], MEMORY[0x1E69CB960], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F4FDA4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001B4F86420;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 35;
  v9 = *(v7 + 32);
  v10 = sub_1B4F67494();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v12 = sub_1B4F50D04();
  v13 = sub_1B4F50D88();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CD138], MEMORY[0x1E69CD140], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F4FF00(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB714B8);
  v7._object = 0x80000001B4F860E0;
  v8._object = 0x80000001B4F863A0;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v17 = 34;
  v16[0] = a1;
  v16[1] = a2;
  v11 = *(v9 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
  v13 = sub_1B4F50D04();
  v14 = sub_1B4F50D88();
  return v11(&v17, v16, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v13, v14, ObjectType, v9);
}

uint64_t sub_1B4F50050(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB714B8);
  v4._object = 0x80000001B4F860E0;
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F863C0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v15 = 33;
  v8 = *(v6 + 32);
  v9 = sub_1B4F67384();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7828, &qword_1B4F7D2E0);
  v11 = sub_1B4E2F2A0(&qword_1EB8F7830, &qword_1EB8F7828, &qword_1B4F7D2E0);
  v12 = sub_1B4F50E3C();
  return v8(&v15, a1, v9, v10, MEMORY[0x1E69CCFE0], MEMORY[0x1E69CCFE8], v11, v12, ObjectType, v6);
}

uint64_t sub_1B4F501CC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._object = 0x80000001B4F860E0;
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F86370;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 40;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65804();
  v11 = sub_1B4F64824();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CB410], MEMORY[0x1E69CB418], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v7);
}

uint64_t sub_1B4F5030C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB714B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB714B8);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F860E0;
  v6._object = 0x80000001B4F86350;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 31;
  v9 = *(v7 + 32);
  v10 = sub_1B4F64824();
  return v9(&v12, a1, v10, v10, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v7);
}

void *sub_1B4F504C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v13 = a1;
  v12 = 2;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F66124();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4F51690, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CBE78], MEMORY[0x1E69CBE80]);

  v13 = a1;
  v12 = 3;
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1B4F64B34();
  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4F51694, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CB000], MEMORY[0x1E69CB008]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F5066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5498(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F506EC()
{
  result = qword_1EDB6DB58;
  if (!qword_1EDB6DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB58);
  }

  return result;
}

unint64_t sub_1B4F50770()
{
  result = qword_1EDB6DB50;
  if (!qword_1EDB6DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7780, &qword_1B4F7D2B0);
    sub_1B4F51130(&qword_1EDB700F0, MEMORY[0x1E69CB020], MEMORY[0x1E69CB010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB50);
  }

  return result;
}

unint64_t sub_1B4F50824()
{
  result = qword_1EB8F7790;
  if (!qword_1EB8F7790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7790);
  }

  return result;
}

unint64_t sub_1B4F508A8()
{
  result = qword_1EB8F7798;
  if (!qword_1EB8F7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7788, &qword_1B4F7D2B8);
    sub_1B4F51130(&qword_1EB8F77A0, MEMORY[0x1E69CAEF0], MEMORY[0x1E69CAEE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7798);
  }

  return result;
}

unint64_t sub_1B4F5095C()
{
  result = qword_1EB8F77B0;
  if (!qword_1EB8F77B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77B0);
  }

  return result;
}

unint64_t sub_1B4F509E0()
{
  result = qword_1EB8F77B8;
  if (!qword_1EB8F77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77A8, &qword_1B4F7D2C0);
    sub_1B4F51130(&qword_1EB8F77C0, MEMORY[0x1E69CB128], MEMORY[0x1E69CB120]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77B8);
  }

  return result;
}

unint64_t sub_1B4F50A94()
{
  result = qword_1EB8F77D0;
  if (!qword_1EB8F77D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77D0);
  }

  return result;
}

unint64_t sub_1B4F50B18()
{
  result = qword_1EB8F77D8;
  if (!qword_1EB8F77D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77C8, &qword_1B4F7D2C8);
    sub_1B4F51130(&qword_1EB8F77E0, MEMORY[0x1E69CBC28], MEMORY[0x1E69CBC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77D8);
  }

  return result;
}

unint64_t sub_1B4F50BCC()
{
  result = qword_1EB8F77F0;
  if (!qword_1EB8F77F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77E8, &qword_1B4F7D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77F0);
  }

  return result;
}

unint64_t sub_1B4F50C50()
{
  result = qword_1EB8F77F8;
  if (!qword_1EB8F77F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F77E8, &qword_1B4F7D2D0);
    sub_1B4F51130(&qword_1EB8F7800, MEMORY[0x1E69CB700], MEMORY[0x1E69CB6F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F77F8);
  }

  return result;
}

unint64_t sub_1B4F50D04()
{
  result = qword_1EB8F7810;
  if (!qword_1EB8F7810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7810);
  }

  return result;
}

unint64_t sub_1B4F50D88()
{
  result = qword_1EB8F7818;
  if (!qword_1EB8F7818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7808, &qword_1B4F7D2D8);
    sub_1B4F51130(&qword_1EB8F7820, MEMORY[0x1E6968FB0], MEMORY[0x1E69CAE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7818);
  }

  return result;
}

unint64_t sub_1B4F50E3C()
{
  result = qword_1EB8F7838;
  if (!qword_1EB8F7838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7828, &qword_1B4F7D2E0);
    sub_1B4F51130(&qword_1EB8F7820, MEMORY[0x1E6968FB0], MEMORY[0x1E69CAE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7838);
  }

  return result;
}

uint64_t sub_1B4F50EF0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1B4F65CB4();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4F5107C()
{
  result = qword_1EB8F7858;
  if (!qword_1EB8F7858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7848, &qword_1B4F7D2E8);
    sub_1B4F51130(&qword_1EB8F7860, MEMORY[0x1E69CB288], MEMORY[0x1E69CB280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7858);
  }

  return result;
}

uint64_t sub_1B4F51130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4F511C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_1B4F64824() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = (v2 + ((*(v5 + 80) + 49) & ~*(v5 + 80)));

  return sub_1B4F4DB40(a1, v6, v7, v8, v9, v10, v11, a2);
}

void sub_1B4F5127C(uint64_t a1)
{
  v3 = *(sub_1B4F64824() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  sub_1B4F4E468(a1, v1 + v5, v6);
}

uint64_t sub_1B4F51340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_46Tm(double a1)
{
  v2 = sub_1B4F651C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1B4F51630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RestrictionError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F5172C()
{
  result = qword_1EB8F7868;
  if (!qword_1EB8F7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void ActivityTracing.endTrace<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v7 = sub_1B4F68F14();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = (&v16 - v11);
  (*(v8 + 16))(&v16 - v11, a1, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = *(a4 + 8);
    v15 = *v12;
    v14(v13, a2, a4);
  }

  else
  {
    (*(a4 + 8))(0, a2, a4);
    (*(v8 + 8))(v12, v7);
  }
}

uint64_t ActivityTracer.Trace.init(completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B4F51A8C()
{
  v0 = sub_1B4F67C54();
  __swift_allocate_value_buffer(v0, qword_1EDB70E18);
  __swift_project_value_buffer(v0, qword_1EDB70E18);
  return sub_1B4F67C44();
}

uint64_t sub_1B4F51B3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B4F51B84(uint64_t result, int a2, int a3)
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

void sub_1B4F51BD0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 40);
  os_unfair_lock_lock((v13 + 44));
  if ((*(v13 + 40) & 1) == 0)
  {
    v14 = *(v13 + 16);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);
    *(v13 + 16) = v14;
    *(v13 + 24) = state;
    *(v13 + 40) = 1;
  }

  os_unfair_lock_unlock((v13 + 44));
  v15 = *(a4 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v15 + 24));
  sub_1B4DDE6FC((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  if (qword_1EDB70E10 != -1)
  {
    swift_once();
  }

  v16 = sub_1B4F67C54();
  __swift_project_value_buffer(v16, qword_1EDB70E18);

  v17 = sub_1B4F67C34();
  v18 = sub_1B4F685E4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = a1;
    v21 = swift_slowAlloc();
    state.opaque[0] = v21;
    *v19 = 136446466;
    *(v19 + 4) = sub_1B4DC4F88(a5, a6, &state);
    *(v19 + 12) = 2082;
    v22 = sub_1B4F689D4();
    v24 = sub_1B4DC4F88(v22, v23, &state);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1B4DC2000, v17, v18, "[%{public}s] %{public}s begin", v19, 0x16u);
    swift_arrayDestroy();
    v25 = v21;
    a1 = v20;
    MEMORY[0x1B8C831D0](v25, -1, -1);
    MEMORY[0x1B8C831D0](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F04();
  v26 = state.opaque[0];
  v27 = state.opaque[1];
  v29 = state.opaque[0];
  v30 = state.opaque[1];
  a1(&v29);
  sub_1B4DDC730(v26, v27);
}

uint64_t StorefrontLanguageUpdated.languageCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RemoteDisplayConnection.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F668F4();

  return sub_1B4F66904();
}

uint64_t sub_1B4F51F34(double a1)
{
  sub_1B4F668F4();

  return sub_1B4F66904();
}

uint64_t FetchedGatedResource.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FetchedGatedResource.init(logger:)(a1);
  return v2;
}

char *FetchedGatedResource.init(logger:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B4F67C54();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  v11(&v2[qword_1EDB73008], a1, v5, v8);
  v20[0] = 0;
  v20[1] = 0;
  v12 = *(v4 + 80);
  v15 = type metadata accessor for FetchedGatedResource.State(0, v12, v13, v14);
  *&v2[qword_1EDB73010] = sub_1B4E41C7C(v20, v15);
  type metadata accessor for GatedResource(0, v12, v16, v17);
  (v11)(v10, a1, v5);
  v18 = GatedResource.__allocating_init(logger:)(v10);
  (*(v6 + 8))(a1, v5);
  *&v2[qword_1EDB73018] = v18;
  return v2;
}

uint64_t FetchedGatedResource.deinit()
{
  FetchedGatedResource.deactivate()();
  v1 = qword_1EDB73008;
  v2 = sub_1B4F67C54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

Swift::Void __swiftcall FetchedGatedResource.deactivate()()
{
  v3 = *(v2 + qword_1EDB73010);
  type metadata accessor for FetchedGatedResource.State(0, *(*v2 + 80), v0, v1);
  sub_1B4E40088(sub_1B4F52F6C, v2, v3);
}

uint64_t FetchedGatedResource.__deallocating_deinit()
{
  FetchedGatedResource.deinit();

  return swift_deallocClassInstance();
}

void sub_1B4F522B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + qword_1EDB73010);
  v7[3] = a1;
  type metadata accessor for FetchedGatedResource.State(0, *(v5 + 80), a3, a4);
  sub_1B4E40088(sub_1B4F532A4, v7, v6);
}

uint64_t sub_1B4F52340(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1B4F68324();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  sub_1B4E4E620(0, 0, v8, &unk_1B4F7D5E0, v10);
}

uint64_t sub_1B4F52464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v9 = sub_1B4F68F14();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = *(v8 - 8);
  v10 = swift_task_alloc();
  v6[8] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_1B4F52650;

  return v13(v10);
}

uint64_t sub_1B4F52650()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B4F52860;
  }

  else
  {
    v2 = sub_1B4F52764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F52764()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  (*(v2 + 16))(v3, v1, v6);
  swift_storeEnumTagMultiPayload();
  sub_1B4F522B4(v3, v7, v8, v9);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B4F52860(double a1)
{
  v2 = v1[10];
  v4 = v1[5];
  v3 = v1[6];
  v5 = v1[4];
  *v3 = v2;
  swift_storeEnumTagMultiPayload();
  v6 = v2;
  sub_1B4F522B4(v3, v7, v8, v9);

  (*(v4 + 8))(v3, v5);

  v10 = v1[1];

  return v10();
}

void FetchedGatedResource.activate(fetching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + qword_1EDB73010);
  v6 = *v4;
  v7[3] = a1;
  v7[4] = a2;
  type metadata accessor for FetchedGatedResource.State(0, *(v6 + 80), a3, a4);
  sub_1B4E40088(sub_1B4F52F88, v7, v5);
}

uint64_t sub_1B4F529C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (*result)
  {
    if (*result != 2)
    {
      return result;
    }

    GatedResource.reset()();
  }

  v7._countAndFlagsBits = 0xD000000000000028;
  v7._object = 0x80000001B4F864D0;
  v8._object = 0x80000001B4F86500;
  v8._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v7, v8);
  *v6 = a3;
  v6[1] = a4;

  result = GatedResource.queueCount.getter();
  if ((v9 & 1) == 0 && result >= 1)
  {

    *v6 = xmmword_1B4F7D500;
    return sub_1B4F52340(a3, a4);
  }

  return result;
}

unint64_t sub_1B4F52AB8(unint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v3 = sub_1B4F68F14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v13 - v6);
  result = *a1;
  if (*a1 >= 2)
  {
    if (*a1 == 2)
    {
      return result;
    }

    sub_1B4F531C8(result, a1[1]);
  }

  v9._countAndFlagsBits = 0x6176697463616564;
  v9._object = 0xEC00000029286574;
  v10._object = 0x80000001B4F864D0;
  v10._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v10, v9);
  *a1 = xmmword_1B4F7D510;
  sub_1B4E4219C();
  v11 = swift_allocError();
  *v12 = 1;
  *v7 = v11;
  swift_storeEnumTagMultiPayload();
  GatedResource.release(with:)(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t FetchedGatedResource.fetch()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F52CEC, 0, 0);
}

uint64_t sub_1B4F52CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = *(v5 + qword_1EDB73010);
  type metadata accessor for FetchedGatedResource.State(0, *(v4[4] + 80), a3, a4);
  sub_1B4E40088(sub_1B4F52FA8, v5, v6);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1B4F2A758;
  v8 = v4[2];

  return GatedResource.fetch()(v8);
}

unint64_t *sub_1B4F52DE8(unint64_t *result)
{
  v1 = *result;
  if (*result >= 3)
  {
    v2 = result[1];
    *result = xmmword_1B4F7D500;
    sub_1B4F52340(v1, v2);
    return sub_1B4F531C8(v1, v2);
  }

  return result;
}

uint64_t sub_1B4F52E70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE13F0;

  return FetchedGatedResource.fetch()(a1);
}

uint64_t sub_1B4F52FC4(uint64_t a1)
{
  result = sub_1B4F67C54();
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

uint64_t sub_1B4F530A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13SeymourClient20FetchedGatedResourceC5StateOyx_G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B4F530FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4F53158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B4F531A8(void *result, int a2)
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

unint64_t sub_1B4F531C8(unint64_t result, uint64_t a2)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1B4F531DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4DE13F0;

  return sub_1B4F52464(a1, v4, v5, v6, v7, v8);
}

void sub_1B4F532A4(_OWORD *a1)
{
  if (*a1 == 1)
  {
    v2 = *(v1 + 24);
    *a1 = xmmword_1B4F7D510;
    GatedResource.release(with:)(v2);
  }
}

SeymourClient::AssetDevice_optional __swiftcall AssetDevice.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SeymourClient_AssetDevice_activePaired;
  }

  else
  {
    v1.value = SeymourClient_AssetDevice_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B4F5332C()
{
  result = qword_1EB8F7870;
  if (!qword_1EB8F7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7870);
  }

  return result;
}

void *sub_1B4F53380@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1B4F533A4()
{
  result = qword_1EB8F7878;
  if (!qword_1EB8F7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7880, &qword_1B4F7D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7878);
  }

  return result;
}

uint64_t WatchConnectionRejection.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66AA4();

  return sub_1B4F66AB4();
}

uint64_t sub_1B4F534C0(double a1)
{
  sub_1B4F66AA4();

  return sub_1B4F66AB4();
}

uint64_t MindfulSessionAccumulator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v3;
  return v0;
}

uint64_t MindfulSessionAccumulator.deinit()
{

  sub_1B4DDB5C4(v0 + OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state);
  return v0;
}

void MindfulSessionAccumulator.startAccumulating(startDate:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1B4F536AC(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1B4F536AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulSessionAccumulator.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24[-v10];
  v12 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  swift_beginAccess();
  sub_1B4F548A0(a1 + v12, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v11, 1, v13);
  sub_1B4DDB5C4(v11);
  if (v15 == 1)
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4F67C54();
    __swift_project_value_buffer(v16, qword_1EDB6DFB0);
    v17._countAndFlagsBits = 0xD00000000000002DLL;
    v17._object = 0x80000001B4F86520;
    v18._object = 0x80000001B4F865E0;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    Logger.trace(file:function:)(v17, v18);
    v19 = sub_1B4F64964();
    (*(*(v19 - 8) + 16))(v7, a2, v19);
    (*(v14 + 56))(v7, 0, 1, v13);
    swift_beginAccess();
    sub_1B4F54904(v7, a1 + v12);
    swift_endAccess();
  }

  else
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v20 = sub_1B4F67C54();
    __swift_project_value_buffer(v20, qword_1EDB6DFB0);
    v21 = sub_1B4F67C34();
    v22 = sub_1B4F685C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B4DC2000, v21, v22, "Repeat calls to start accumulating, ignoring", v23, 2u);
      MEMORY[0x1B8C831D0](v23, -1, -1);
    }
  }
}

void MindfulSessionAccumulator.stopAccumulating(endDate:heartRate:)(char *a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  sub_1B4F53A44(v3, a1, a2, a3 & 1);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_1B4F53A44(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v71 = a4;
  v73 = a3;
  v68 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v67 = v59 - v8;
  v75 = sub_1B4F66894();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v9);
  v70 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = v59 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v66 = v59 - v16;
  v17 = type metadata accessor for MindfulSessionAccumulator.State(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v72 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v59 - v22;
  v24 = sub_1B4F64964();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v59 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v59 - v35;
  v37 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  swift_beginAccess();
  sub_1B4F548A0(a1 + v37, v23);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v64 = *(v38 - 8);
  v65 = v38;
  if ((*(v64 + 48))(v23, 1) == 1)
  {
    sub_1B4DDB5C4(v23);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B4F67C54();
    __swift_project_value_buffer(v39, qword_1EDB6DFB0);
    v40 = sub_1B4F67C34();
    v41 = sub_1B4F685C4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1B4DC2000, v40, v41, "Stop accumulating called in incorrect state", v42, 2u);
      MEMORY[0x1B8C831D0](v42, -1, -1);
    }
  }

  else
  {
    v61 = v37;
    v62 = a1;
    v63 = v4;
    (*(v25 + 32))(v36, v23, v24);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v43 = sub_1B4F67C54();
    __swift_project_value_buffer(v43, qword_1EDB6DFB0);
    v44._countAndFlagsBits = 0xD00000000000002DLL;
    v44._object = 0x80000001B4F86520;
    v45._object = 0x80000001B4F865B0;
    v45._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v44, v45);
    v59[1] = sub_1B4F67FA4();
    v46 = *(v25 + 16);
    v60 = v36;
    v47 = v25;
    v48 = v24;
    v46(v32, v36, v24);
    v46(v28, v68, v24);
    v49 = sub_1B4F65BC4();
    (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
    v50 = v66;
    sub_1B4F66884();
    v51 = v74;
    v52 = v70;
    v53 = v75;
    (*(v74 + 16))(v70, v50, v75);
    v54 = v62;
    swift_beginAccess();
    v55 = v69;
    sub_1B4E7CB20(v69, v52);
    v56 = *(v51 + 8);
    v56(v55, v53);
    swift_endAccess();
    v56(v50, v53);
    (*(v47 + 8))(v60, v48);
    v57 = v72;
    (*(v64 + 56))(v72, 1, 1, v65);
    v58 = v61;
    swift_beginAccess();
    sub_1B4F54904(v57, v54 + v58);
    swift_endAccess();
  }
}

uint64_t MindfulSessionAccumulator.finalize(heartRate:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1B4F64964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DFB0);
  v12._countAndFlagsBits = 0xD00000000000002DLL;
  v12._object = 0x80000001B4F86520;
  v13._object = 0x80000001B4F86550;
  v13._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v12, v13);
  sub_1B4F64954();
  v14 = *(v2 + 24);
  os_unfair_lock_lock(*(v14 + 16));
  sub_1B4F5423C(v3, v10, a1, a2 & 1, &v18);
  os_unfair_lock_unlock(*(v14 + 16));
  v15 = v18;
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_1B4F5423C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v63 = a4;
  v64 = a3;
  v59 = a2;
  v70 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v60 = v55 - v8;
  v9 = sub_1B4F66894();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = v55 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v62 = v55 - v18;
  v68 = sub_1B4F64964();
  v19 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v20);
  v58 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v55 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v55 - v28;
  v30 = type metadata accessor for MindfulSessionAccumulator.State(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v69 = v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v55 - v35;
  v37 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  swift_beginAccess();
  sub_1B4F548A0(a1 + v37, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v67 = v38;
  if (v40(v36, 1) != 1)
  {
    v56 = v19;
    v57 = v29;
    v41 = v68;
    (*(v19 + 32))(v29, v36, v68);
    v55[1] = sub_1B4F67FA4();
    v55[0] = v42;
    v43 = v19;
    v44 = v12;
    v45 = *(v43 + 16);
    v45(v25, v29, v41);
    v45(v58, v59, v41);
    v46 = sub_1B4F65BC4();
    (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
    v47 = v62;
    sub_1B4F66884();
    v49 = v65;
    v48 = v66;
    (*(v65 + 16))(v44, v47, v66);
    swift_beginAccess();
    v50 = v61;
    sub_1B4E7CB20(v61, v44);
    v51 = *(v49 + 8);
    v51(v50, v48);
    swift_endAccess();
    v51(v47, v48);
    (*(v56 + 8))(v57, v68);
  }

  v52 = v69;
  (*(v39 + 56))(v69, 1, 1, v67);
  swift_beginAccess();
  sub_1B4F54904(v52, a1 + v37);
  swift_endAccess();
  result = swift_beginAccess();
  v54 = *(a1 + 16);
  *(a1 + 16) = MEMORY[0x1E69E7CD0];
  *v70 = v54;
  return result;
}

uint64_t sub_1B4F548A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulSessionAccumulator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F54904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulSessionAccumulator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CountdownStarted.countdown.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67AF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CountdownStarted.init(countdown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67AF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CountdownStarted(uint64_t a1)
{
  result = qword_1EB8F7890;
  if (!qword_1EB8F7890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F54AC0(uint64_t a1)
{
  result = sub_1B4F67AF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *SearchClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F561E8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F54C80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RecentSearchTermsUpdated(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v10 = sub_1B4F66BB4();
    (*(*(v10 - 8) + 16))(v6, a1, v10);
    (*(v8 + 8))(v6, v3, &protocol witness table for RecentSearchTermsUpdated, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1B4F567D8(v6);
  }

  return result;
}

uint64_t SearchClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B4F54E10()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF68);
  v3._object = 0x80000001B4F86600;
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F86630;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 364;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78A0, &qword_1B4F7D800);
  v9 = sub_1B4F56374();
  v10 = sub_1B4F563F0();
  *v7 = v0;
  v7[1] = sub_1B4F54F9C;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v8, v5, v9, v10);
}

uint64_t sub_1B4F54F9C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B4EEDF24;
  }

  else
  {
    v2 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t SearchClient.fetchSearchResults(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F550D4, 0, 0);
}

uint64_t sub_1B4F550D4()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF68);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F86600;
  v4._object = 0x80000001B4F86660;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 359;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F652F4();
  v9 = sub_1B4F658D4();
  *v7 = v0;
  v7[1] = sub_1B4E409B8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CB370];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t SearchClient.fetchSearchSuggestions(term:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4F55298, 0, 0);
}

uint64_t sub_1B4F55298()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF68);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F86600;
  v6._object = 0x80000001B4F86680;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 80) = 363;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = sub_1B4F66DE4();
  *v9 = v0;
  v9[1] = sub_1B4F5544C;
  v11 = *(v0 + 32);
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69CD450];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 80), v0 + 16, ObjectType, v12, v10, v7, v13);
}

uint64_t sub_1B4F5544C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F55580, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SearchClient.insertRecentSearchTerm(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F555B8, 0, 0);
}

uint64_t sub_1B4F555B8()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF68);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F86600;
  v4._object = 0x80000001B4F866A0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 360;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F65DE4();
  *v7 = v0;
  v7[1] = sub_1B4EEDDF0;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CB7E8];
  v11 = MEMORY[0x1E69CB7F0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t SearchClient.deleteRecentSearchTerms(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F55748, 0, 0);
}

uint64_t sub_1B4F55748()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF68);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F86600;
  v5._object = 0x80000001B4F866C0;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 361;
  *(v0 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78C0, &qword_1B4F7D828);
  v10 = sub_1B4F564A4();
  v11 = sub_1B4F56528();
  *v8 = v0;
  v8[1] = sub_1B4E409B8;

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 56), v0 + 16, ObjectType, v9, v6, v10, v11);
}

uint64_t SearchClient.deleteAllRecentSearchTerms(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F558FC, 0, 0);
}

uint64_t sub_1B4F558FC()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF68);
  v4._object = 0x80000001B4F86600;
  v5._object = 0x80000001B4F866E0;
  v4._countAndFlagsBits = 0xD000000000000020;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 365;
  *(v0 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78E0, &qword_1B4F7D838);
  v10 = sub_1B4F56624();
  v11 = sub_1B4F566A8();
  *v8 = v0;
  v8[1] = sub_1B4EED954;

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 56), v0 + 16, ObjectType, v9, v6, v10, v11);
}

uint64_t SearchClient.queryRecentSearchTerms(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F55AAC, 0, 0);
}

uint64_t sub_1B4F55AAC()
{
  if (qword_1EDB6DF60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF68);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F86600;
  v5._object = 0x80000001B4F86710;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v4, v5);
  v13 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = 362;
  *(v0 + 24) = v2;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78E0, &qword_1B4F7D838);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F78C0, &qword_1B4F7D828);
  v9 = sub_1B4F56624();
  sub_1B4F566A8();
  sub_1B4F564A4();
  sub_1B4F56528();
  *v6 = v0;
  v6[1] = sub_1B4F55C84;

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 64), v0 + 24, ObjectType, v7, v8, v13, v9);
}

uint64_t sub_1B4F55C84()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B4EF25D8;
  }

  else
  {
    v2 = sub_1B4EEFDF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F55D98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DDECC4;

  return SearchClient.fetchSearchLandingShelfTileDescriptors()();
}

uint64_t sub_1B4F55E28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return SearchClient.fetchSearchResults(request:)(a1, a2);
}

uint64_t sub_1B4F55ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return SearchClient.fetchSearchSuggestions(term:)(a1, a2, a3);
}

uint64_t sub_1B4F55F88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return SearchClient.insertRecentSearchTerm(_:)(a1);
}

uint64_t sub_1B4F56020(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE13F0;

  return SearchClient.deleteRecentSearchTerms(_:)(a1);
}

uint64_t sub_1B4F560B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return SearchClient.deleteAllRecentSearchTerms(for:)(a1);
}

uint64_t sub_1B4F56150(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDED70;

  return SearchClient.queryRecentSearchTerms(for:)(a1);
}

void *sub_1B4F561E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 52;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F66BB4();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v10, sub_1B4F56834, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CCAF0], MEMORY[0x1E69CCAF8]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F562F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC6DC4(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F56374()
{
  result = qword_1EB8F78A8;
  if (!qword_1EB8F78A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78A0, &qword_1B4F7D800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78A8);
  }

  return result;
}

unint64_t sub_1B4F563F0()
{
  result = qword_1EB8F78B0;
  if (!qword_1EB8F78B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78A0, &qword_1B4F7D800);
    sub_1B4F565DC(&qword_1EB8F78B8, MEMORY[0x1E69CC018], MEMORY[0x1E69CC010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78B0);
  }

  return result;
}

unint64_t sub_1B4F564A4()
{
  result = qword_1EB8F78C8;
  if (!qword_1EB8F78C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78C0, &qword_1B4F7D828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78C8);
  }

  return result;
}

unint64_t sub_1B4F56528()
{
  result = qword_1EB8F78D0;
  if (!qword_1EB8F78D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78C0, &qword_1B4F7D828);
    sub_1B4F565DC(&qword_1EB8F78D8, MEMORY[0x1E69CB800], MEMORY[0x1E69CB7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78D0);
  }

  return result;
}

uint64_t sub_1B4F565DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4F56624()
{
  result = qword_1EB8F78E8;
  if (!qword_1EB8F78E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78E0, &qword_1B4F7D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78E8);
  }

  return result;
}

unint64_t sub_1B4F566A8()
{
  result = qword_1EB8F78F0;
  if (!qword_1EB8F78F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F78E0, &qword_1B4F7D838);
    sub_1B4F5672C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78F0);
  }

  return result;
}

unint64_t sub_1B4F5672C()
{
  result = qword_1EB8F78F8;
  if (!qword_1EB8F78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F78F8);
  }

  return result;
}

uint64_t sub_1B4F567D8(uint64_t a1)
{
  v2 = type metadata accessor for RecentSearchTermsUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *AnalyticsEventMonitor.__allocating_init(eventHub:reporter:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1B4DC9368(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

void *sub_1B4F5689C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result[8];
    v5 = result[9];
    __swift_project_boxed_opaque_existential_1(result + 5, v4);
    (*(v5 + 8))(a1, v4, v5);
  }

  return result;
}

void *AnalyticsEventMonitor.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

void *ArchivedSessionClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F59140(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F56B14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6._object = 0x80000001B4F867A0;
    v7._countAndFlagsBits = 0xD000000000000032;
    v7._object = 0x80000001B4F86AC0;
    v6._countAndFlagsBits = 0xD000000000000029;
    Logger.trace(file:function:)(v6, v7);
    v8 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    v11 = v2;
    v10 = *(v8 + 8);

    v10(&v11, &type metadata for ArchivedSessionsUpdated, &protocol witness table for ArchivedSessionsUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1B4F56C5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6._object = 0x80000001B4F867A0;
    v7._countAndFlagsBits = 0xD00000000000003FLL;
    v7._object = 0x80000001B4F86A80;
    v6._countAndFlagsBits = 0xD000000000000029;
    Logger.trace(file:function:)(v6, v7);
    v8 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    v11 = v2;
    v10 = *(v8 + 8);

    v10(&v11, &type metadata for SampleContentArchivedSessionsUpdated, &protocol witness table for SampleContentArchivedSessionsUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t ArchivedSessionClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArchivedSessionClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ArchivedSessionClient.insertArchivedSession(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4F867A0;
  v5._object = 0x80000001B4F867D0;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 2;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65954();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v6);
}

uint64_t ArchivedSessionClient.insertSampleContentArchivedSession(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4F867A0;
  v5._object = 0x80000001B4F867F0;
  v5._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 366;
  v8 = *(v6 + 16);
  v9 = sub_1B4F67144();
  return v8(&v11, a1, v9, MEMORY[0x1E69CCE78], MEMORY[0x1E69CCE80], ObjectType, v6);
}

uint64_t ArchivedSessionClient.countSampleContentArchivedSessions(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F867A0;
  v7._countAndFlagsBits = 0xD000000000000036;
  v7._object = 0x80000001B4F86820;
  v6._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 367;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 32))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t ArchivedSessionClient.deleteAllArchivedSessions()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4F867A0;
  v3._object = 0x80000001B4F86860;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 0;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t ArchivedSessionClient.queryAllArchivedSessions()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4F867A0;
  v3._object = 0x80000001B4F86880;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 3;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v8 = sub_1B4F59364();
  v9 = sub_1B4F593E8();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t ArchivedSessionClient.queryArchivedSession(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x80000001B4F867A0;
  v7._object = 0x80000001B4F868A0;
  v7._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 4;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65954();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v8);
}

uint64_t ArchivedSessionClient.queryArchivedSessions(request:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4F867A0;
  v5._object = 0x80000001B4F868D0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 11;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66F84();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v11 = sub_1B4F59364();
  v12 = sub_1B4F593E8();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], v11, v12, ObjectType, v6);
}

uint64_t ArchivedSessionClient.requireArchivedSessions()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4F867A0;
  v3._object = 0x80000001B4F868F0;
  v3._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 8;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t ArchivedSessionClient.deleteArchivedSession(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F867A0;
  v7._object = 0x80000001B4F86910;
  v6._countAndFlagsBits = 0xD000000000000029;
  v7._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 1;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t ArchivedSessionClient.queryAllResumableSessions()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4F867A0;
  v3._object = 0x80000001B4F86940;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 6;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v8 = sub_1B4F5949C();
  v9 = sub_1B4F59520();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t ArchivedSessionClient.queryResumableSession(workoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F867A0;
  v7._object = 0x80000001B4F86960;
  v6._countAndFlagsBits = 0xD000000000000029;
  v7._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 5;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65E04();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB830], MEMORY[0x1E69CB838], ObjectType, v8);
}

uint64_t ArchivedSessionClient.queryResumableSessions(workoutIdentifiers:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F867A0;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F86990;
  v4._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 7;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v11 = sub_1B4E9C248();
  v12 = sub_1B4DC5928();
  v13 = sub_1B4F5949C();
  v14 = sub_1B4F59520();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t ArchivedSessionClient.queryAllCompletedWorkoutIdentifiers()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001B4F867A0;
  v3._object = 0x80000001B4F869C0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 9;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v8 = sub_1B4E9C248();
  v9 = sub_1B4DC5928();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t ArchivedSessionClient.countArchivedSessions(request:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x80000001B4F867A0;
  v5._object = 0x80000001B4F869F0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 10;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66F84();
  return v8(&v11, a1, v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t ArchivedSessionClient.queryAllSampleContentArchivedSessionIdentifiers()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F867A0;
  v3._countAndFlagsBits = 0xD000000000000031;
  v3._object = 0x80000001B4F86A10;
  v2._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 368;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v8 = sub_1B4E9C248();
  v9 = sub_1B4DC5928();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t sub_1B4F57FA8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F867D0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 2;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65954();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v7);
}

uint64_t sub_1B4F580CC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F869F0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 10;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66F84();
  return v9(&v12, a1, v10, MEMORY[0x1E69E6530], MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v7);
}

uint64_t sub_1B4F58204(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F867F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 366;
  v9 = *(v7 + 16);
  v10 = sub_1B4F67144();
  return v9(&v12, a1, v10, MEMORY[0x1E69CCE78], MEMORY[0x1E69CCE80], ObjectType, v7);
}

uint64_t sub_1B4F58328(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._countAndFlagsBits = 0xD000000000000036;
  v8._object = 0x80000001B4F86820;
  v7._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 367;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 32))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v9);
}

uint64_t sub_1B4F58458()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86860;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 0;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F58540(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F86910;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 1;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

uint64_t sub_1B4F58658()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86880;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 3;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v9 = sub_1B4F59364();
  v10 = sub_1B4F593E8();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F58788(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F868A0;
  v8._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 4;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F65954();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB518], MEMORY[0x1E69CB520], ObjectType, v9);
}

uint64_t sub_1B4F588C0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000029;
  v5._object = 0x80000001B4F867A0;
  v6._object = 0x80000001B4F868D0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 11;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66F84();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7900, &qword_1B4F7D950);
  v12 = sub_1B4F59364();
  v13 = sub_1B4F593E8();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CCC98], MEMORY[0x1E69CCCA0], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F58A1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F867A0;
  v8._object = 0x80000001B4F86960;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 5;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F65E04();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB830], MEMORY[0x1E69CB838], ObjectType, v9);
}

uint64_t sub_1B4F58B50(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F867A0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F86990;
  v5._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 7;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4DC5928();
  v14 = sub_1B4F5949C();
  v15 = sub_1B4F59520();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4F58CC4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F86940;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 6;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7908, &unk_1B4F7D958);
  v9 = sub_1B4F5949C();
  v10 = sub_1B4F59520();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F58DF4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F869C0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 9;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v9 = sub_1B4E9C248();
  v10 = sub_1B4DC5928();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F58F24()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F867A0;
  v4._countAndFlagsBits = 0xD000000000000031;
  v4._object = 0x80000001B4F86A10;
  v3._countAndFlagsBits = 0xD000000000000029;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 368;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v9 = sub_1B4E9C248();
  v10 = sub_1B4DC5928();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F59054()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001B4F867A0;
  v4._object = 0x80000001B4F868F0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 8;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

void *sub_1B4F59140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v14 = a1;
  v13 = 0;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v9 = sub_1B4E9C248();
  v10 = sub_1B4DC5928();
  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4F597A8, v7, ObjectType, v8, &protocol witness table for XPCClient, v9, v10);

  v14 = a1;
  v13 = 1;
  v11 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4F597AC, v11, ObjectType, v8, &protocol witness table for XPCClient, v9, v10);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F592E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5758(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F59364()
{
  result = qword_1EDB6DB28;
  if (!qword_1EDB6DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7900, &qword_1B4F7D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB28);
  }

  return result;
}

unint64_t sub_1B4F593E8()
{
  result = qword_1EDB6DB20;
  if (!qword_1EDB6DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7900, &qword_1B4F7D950);
    sub_1B4F595D4(&qword_1EDB700B0, MEMORY[0x1E69CB538], MEMORY[0x1E69CB528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB20);
  }

  return result;
}

unint64_t sub_1B4F5949C()
{
  result = qword_1EB8F7910;
  if (!qword_1EB8F7910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7908, &unk_1B4F7D958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7910);
  }

  return result;
}

unint64_t sub_1B4F59520()
{
  result = qword_1EB8F7918;
  if (!qword_1EB8F7918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7908, &unk_1B4F7D958);
    sub_1B4F595D4(&qword_1EB8F7920, MEMORY[0x1E69CB850], MEMORY[0x1E69CB840]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7918);
  }

  return result;
}

uint64_t sub_1B4F595D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t Platform.appBundle(for:)(char a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    v2 = 0x6C7070612E6D6F63;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

void HealthKitWorkout.init(workout:)(void *a1)
{
  v2 = sub_1B4F64964();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61C8, &unk_1B4F787F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_1B4F649A4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 duration];
  v14 = [a1 UUID];
  sub_1B4F64994();

  sub_1B4F64974();
  (*(v9 + 8))(v13, v8);
  _HKWorkoutIsIndoor(a1);
  v15 = a1;
  HealthKitSessionReference.init(workout:)(v15, v7);
  v16 = [v15 startDate];
  sub_1B4F64934();

  [v15 workoutActivityType];
  sub_1B4F65D44();
}

uint64_t sub_1B4F59A98(uint64_t a1)
{
  v2 = sub_1B4F5A06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4F59AD4(uint64_t a1)
{
  v2 = sub_1B4F5A06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4F59B10()
{
  if (*v0)
  {
    return 1668184435;
  }

  else
  {
    return 0x636E797361;
  }
}

uint64_t sub_1B4F59B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E797361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B4F68D54() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4F68D54();

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

uint64_t sub_1B4F59C24(uint64_t a1)
{
  v2 = sub_1B4F59FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4F59C60(uint64_t a1)
{
  v2 = sub_1B4F59FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4F59C9C(uint64_t a1)
{
  v2 = sub_1B4F5A018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4F59CD8(uint64_t a1)
{
  v2 = sub_1B4F5A018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventDispatchStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7928, &qword_1B4F7D9E0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7930, &qword_1B4F7D9E8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7938, &qword_1B4F7D9F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4F59FC4();
  sub_1B4F68F54();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_1B4F5A018();
    v17 = v21;
    sub_1B4F68CB4();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_1B4F5A06C();
    sub_1B4F68CB4();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_1B4F59FC4()
{
  result = qword_1EB8F7940;
  if (!qword_1EB8F7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7940);
  }

  return result;
}

unint64_t sub_1B4F5A018()
{
  result = qword_1EB8F7948;
  if (!qword_1EB8F7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7948);
  }

  return result;
}

unint64_t sub_1B4F5A06C()
{
  result = qword_1EB8F7950;
  if (!qword_1EB8F7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7950);
  }

  return result;
}

uint64_t EventDispatchStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7958, &qword_1B4F7D9F8);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7960, &qword_1B4F7DA00);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7968, &unk_1B4F7DA08);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4F59FC4();
  v15 = v34;
  sub_1B4F68F44();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_1B4F68CA4();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1B4E2DC70();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_1B4F68A04();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0);
      *v25 = &type metadata for EventDispatchStrategy;
      sub_1B4F68C64();
      sub_1B4F689F4();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_1B4F5A018();
        sub_1B4F68C54();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_1B4F5A06C();
        sub_1B4F68C54();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t EventDispatchStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F5A624()
{
  result = qword_1EB8F7970;
  if (!qword_1EB8F7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7970);
  }

  return result;
}

unint64_t sub_1B4F5A6AC()
{
  result = qword_1EB8F7978;
  if (!qword_1EB8F7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7978);
  }

  return result;
}

unint64_t sub_1B4F5A704()
{
  result = qword_1EB8F7980;
  if (!qword_1EB8F7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7980);
  }

  return result;
}

unint64_t sub_1B4F5A75C()
{
  result = qword_1EB8F7988;
  if (!qword_1EB8F7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7988);
  }

  return result;
}

unint64_t sub_1B4F5A7B4()
{
  result = qword_1EB8F7990;
  if (!qword_1EB8F7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7990);
  }

  return result;
}

unint64_t sub_1B4F5A80C()
{
  result = qword_1EB8F7998;
  if (!qword_1EB8F7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7998);
  }

  return result;
}

unint64_t sub_1B4F5A864()
{
  result = qword_1EB8F79A0;
  if (!qword_1EB8F79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79A0);
  }

  return result;
}

unint64_t sub_1B4F5A8BC()
{
  result = qword_1EB8F79A8;
  if (!qword_1EB8F79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79A8);
  }

  return result;
}

uint64_t MeditationUpdated.meditation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64AA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MeditationUpdated.init(meditation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64AA4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MeditationUpdated(uint64_t a1)
{
  result = qword_1EB8F79B0;
  if (!qword_1EB8F79B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F5AA78(uint64_t a1)
{
  result = sub_1B4F64AA4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MediaPlayerSyncUpdated.syncUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F664E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MediaPlayerSyncUpdated(uint64_t a1)
{
  result = qword_1EB8F79C0;
  if (!qword_1EB8F79C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F5ABEC(uint64_t a1)
{
  result = sub_1B4F664E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *HealthDataClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F5C308(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F5ADD0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B4F67C54();
    __swift_project_value_buffer(v3, qword_1EDB6DFB0);
    v4._countAndFlagsBits = 0xD000000000000024;
    v4._object = 0x80000001B4F86B00;
    v5._object = 0x80000001B4F86D00;
    v5._countAndFlagsBits = 0xD000000000000020;
    Logger.trace(file:function:)(v4, v5);
    v6 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for HealthKitWorkoutsUpdated, &protocol witness table for HealthKitWorkoutsUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F5AEE4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B4F67C54();
    __swift_project_value_buffer(v3, qword_1EDB6DFB0);
    v4._object = 0x80000001B4F86B00;
    v5._countAndFlagsBits = 0xD000000000000027;
    v5._object = 0x80000001B4F86CD0;
    v4._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v4, v5);
    v6 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for HealthKitMindfulSessionsUpdated, &protocol witness table for HealthKitMindfulSessionsUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F5AFF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MindfulMinutesMetricUpdated(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB6DFB0);
    v10._object = 0x80000001B4F86B00;
    v11._countAndFlagsBits = 0xD000000000000037;
    v11._object = 0x80000001B4F86C90;
    v10._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v10, v11);
    v12 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v14 = sub_1B4F66454();
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    (*(v12 + 8))(v6, v3, &protocol witness table for MindfulMinutesMetricUpdated, ObjectType, v12);
    sub_1B4F5C89C(v6);
  }

  return result;
}

uint64_t HealthDataClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HealthDataClient.queryAllHealthKitWorkouts()()
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DFB0);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F86B00;
  v3._object = 0x80000001B4F86B30;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 139;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v8 = sub_1B4F5C57C();
  v9 = sub_1B4F5C600();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t HealthDataClient.queryHealthKitWorkoutsUsingThreshold(_:)(uint64_t a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4._object = 0x80000001B4F86B00;
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F86B50;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 140;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66B44();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v11 = sub_1B4F5C57C();
  v12 = sub_1B4F5C600();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CCA50], MEMORY[0x1E69CCA58], v11, v12, ObjectType, v6);
}

uint64_t HealthDataClient.queryHealthKitWorkout(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB6DFB0);
  v6._object = 0x80000001B4F86B00;
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x80000001B4F86B80;
  v6._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 143;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65D74();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v8);
}

uint64_t HealthDataClient.insertHealthKitWorkout(_:)(uint64_t a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F86B00;
  v5._object = 0x80000001B4F86BB0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 142;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65D74();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v6);
}

uint64_t HealthDataClient.insertHealthKitMindfulSession(_:)(uint64_t a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F86B00;
  v5._object = 0x80000001B4F86BD0;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 144;
  v8 = *(v6 + 16);
  v9 = sub_1B4F66894();
  return v8(&v11, a1, v9, MEMORY[0x1E69CC6F8], MEMORY[0x1E69CC700], ObjectType, v6);
}

uint64_t HealthDataClient.insertHealthKitStandaloneMindfulSessionJob(_:)(uint64_t a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4._object = 0x80000001B4F86B00;
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  v5._object = 0x80000001B4F86C00;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 146;
  v8 = *(v6 + 16);
  v9 = sub_1B4F674F4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CD1B0], MEMORY[0x1E69CD1B8], ObjectType, v6);
}

uint64_t HealthDataClient.queryHealthKitMindfulSessionsUsingThreshold(_:)(uint64_t a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4._object = 0x80000001B4F86B00;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v5._object = 0x80000001B4F86C30;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 145;
  v8 = *(v6 + 32);
  v9 = sub_1B4F673A4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
  v11 = sub_1B4F5C6B4();
  v12 = sub_1B4F5C738();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CD020], MEMORY[0x1E69CD028], v11, v12, ObjectType, v6);
}

uint64_t sub_1B4F5BA74()
{
  v1 = *v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DFB0);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F86B00;
  v4._object = 0x80000001B4F86B30;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 139;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v9 = sub_1B4F5C57C();
  v10 = sub_1B4F5C600();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F5BBA4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD000000000000028;
  v6._object = 0x80000001B4F86B50;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 140;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66B44();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
  v12 = sub_1B4F5C57C();
  v13 = sub_1B4F5C600();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CCA50], MEMORY[0x1E69CCA58], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F5BD00(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86B00;
  v6._object = 0x80000001B4F86BB0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 142;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65D74();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v7);
}

uint64_t sub_1B4F5BE24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  v7._object = 0x80000001B4F86B00;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x80000001B4F86B80;
  v7._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 143;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F65D74();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB768], MEMORY[0x1E69CB770], ObjectType, v9);
}

uint64_t sub_1B4F5BF5C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F86B00;
  v6._object = 0x80000001B4F86BD0;
  v6._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 144;
  v9 = *(v7 + 16);
  v10 = sub_1B4F66894();
  return v9(&v12, a1, v10, MEMORY[0x1E69CC6F8], MEMORY[0x1E69CC700], ObjectType, v7);
}

uint64_t sub_1B4F5C080(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  v6._object = 0x80000001B4F86C00;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 146;
  v9 = *(v7 + 16);
  v10 = sub_1B4F674F4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CD1B0], MEMORY[0x1E69CD1B8], ObjectType, v7);
}

uint64_t sub_1B4F5C1A8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DFB0);
  v5._object = 0x80000001B4F86B00;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001B4F86C30;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 145;
  v9 = *(v7 + 32);
  v10 = sub_1B4F673A4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
  v12 = sub_1B4F5C6B4();
  v13 = sub_1B4F5C738();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CD020], MEMORY[0x1E69CD028], v12, v13, ObjectType, v7);
}

void *sub_1B4F5C308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v13 = a1;
  v12 = 46;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v12, sub_1B4F5C8F8, v7, ObjectType, &protocol witness table for XPCClient);

  v13 = a1;
  v12 = 47;
  v8 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v12, sub_1B4F5C8FC, v8, ObjectType, &protocol witness table for XPCClient);

  v13 = a1;
  v12 = 48;
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1B4F66454();
  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4F5C900, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CC1E8], MEMORY[0x1E69CC1F0]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F5C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC6370(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F5C57C()
{
  result = qword_1EB8F79D8;
  if (!qword_1EB8F79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79D8);
  }

  return result;
}

unint64_t sub_1B4F5C600()
{
  result = qword_1EB8F79E0;
  if (!qword_1EB8F79E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79D0, &qword_1B4F7DE40);
    sub_1B4F5C7EC(&qword_1EB8F79E8, MEMORY[0x1E69CB780], MEMORY[0x1E69CB778]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79E0);
  }

  return result;
}

unint64_t sub_1B4F5C6B4()
{
  result = qword_1EB8F79F8;
  if (!qword_1EB8F79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F79F8);
  }

  return result;
}

unint64_t sub_1B4F5C738()
{
  result = qword_1EB8F7A00;
  if (!qword_1EB8F7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F79F0, &qword_1B4F7DE48);
    sub_1B4F5C7EC(&qword_1EB8F7A08, MEMORY[0x1E69CC710], MEMORY[0x1E69CC708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7A00);
  }

  return result;
}

uint64_t sub_1B4F5C7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4F5C89C(uint64_t a1)
{
  v2 = type metadata accessor for MindfulMinutesMetricUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GymKitConnection.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F65CE4();

  return sub_1B4F65CF4();
}

uint64_t sub_1B4F5C958(double a1)
{
  sub_1B4F65CE4();

  return sub_1B4F65CF4();
}

uint64_t DaemonSessionUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65504();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DaemonSessionUpdate.init(update:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for DaemonSessionUpdate(uint64_t a1)
{
  result = qword_1EDB6ED88;
  if (!qword_1EDB6ED88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F5CB04(uint64_t a1)
{
  result = sub_1B4F65504();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void TransportDispatchService.dispatchRequest(_:data:completion:)(Swift::Int a1, uint64_t a2, unint64_t a3, void (*a4)(void, unint64_t, void *), uint64_t a5)
{
  v43 = a3;
  v44 = a5;
  v42 = a2;
  v8 = sub_1B4F67D54();
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67D74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TransportRequest.init(rawValue:)(a1);
  v17 = LOWORD(aBlock[0]);
  if (LOWORD(aBlock[0]) == 369)
  {
    v18 = sub_1B4F658F4();
    sub_1B4DD552C(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69CB4F8], v18);
    a4(0, 0xF000000000000000, v19);
  }

  else
  {
    v38 = a4;
    v39 = v13;
    v21 = v5[3];
    os_unfair_lock_lock(*(v21 + 16));
    swift_beginAccess();
    v22 = v5[6];
    v23 = *(v22 + 16);
    v40 = v12;
    if (v23)
    {
      v37 = v8;
      v24 = sub_1B4DCE3F0(v17);
      if (v25)
      {
        v26 = (*(v22 + 56) + 16 * v24);
        v27 = *v26;
        v28 = v26[1];
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v8 = v37;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    swift_endAccess();
    os_unfair_lock_unlock(*(v21 + 16));
    if (v27)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v28;
      v30 = sub_1B4F63088;
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    v37 = v5[2];
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    *(v31 + 32) = v5;
    *(v31 + 40) = v17;
    v33 = v43;
    v32 = v44;
    *(v31 + 48) = v38;
    *(v31 + 56) = v32;
    v34 = v42;
    *(v31 + 64) = v42;
    *(v31 + 72) = v33;
    aBlock[4] = sub_1B4F63084;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_20;
    v35 = _Block_copy(aBlock);
    sub_1B4DEA370(v30, v29);

    sub_1B4DD3000(v34, v33);
    sub_1B4F67D64();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B4DD552C(&qword_1EDB71F90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v16, v11, v35);
    _Block_release(v35);
    sub_1B4DD2C78(v30, v29);
    (*(v41 + 8))(v11, v8);
    (*(v39 + 8))(v16, v40);
  }
}

void sub_1B4F5D068(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1B4F647B4();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1B4F64884();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void TransportDispatchService.dispatchEvent(_:data:)(Swift::Int a1, NSObject *a2, unint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v7 = sub_1B4F67D54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67D74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TransportEvent.init(rawValue:)(a1);
  v17 = LOBYTE(aBlock[0]);
  if (LOBYTE(aBlock[0]) == 57)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B4F67C54();
    __swift_project_value_buffer(v18, qword_1EDB72490);
    v45 = sub_1B4F67C34();
    v19 = sub_1B4F685C4();
    if (os_log_type_enabled(v45, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = a1;
      _os_log_impl(&dword_1B4DC2000, v45, v19, "Invalid eventIdentifier: %{public}ld", v20, 0xCu);
      MEMORY[0x1B8C831D0](v20, -1, -1);
    }

    v21 = v45;

    return;
  }

  v43 = v13;
  v44 = v8;
  v22 = v4[3];
  os_unfair_lock_lock(*(v22 + 16));
  swift_beginAccess();
  v23 = v4[7];
  if (*(v23 + 16))
  {
    v24 = a3;
    v25 = sub_1B4DC51CC(v17);
    if (v26)
    {
      v27 = (*(v23 + 56) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];

      goto LABEL_14;
    }
  }

  else
  {
    v24 = a3;
  }

  v29 = 0;
  v28 = 0;
LABEL_14:
  swift_endAccess();
  os_unfair_lock_unlock(*(v22 + 16));
  if (v29)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    v31 = swift_allocObject();
    v31[2] = sub_1B4F63090;
    v31[3] = v30;
    v32 = v45;
    v31[4] = v45;
    v31[5] = v24;
    aBlock[4] = sub_1B4F630C8;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_12_0;
    v33 = _Block_copy(aBlock);
    swift_retain_n();
    sub_1B4DD3000(v32, v24);
    sub_1B4F67D64();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B4DD552C(&qword_1EDB71F90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v16, v11, v33);
    _Block_release(v33);

    (*(v44 + 8))(v11, v7);
    (*(v43 + 8))(v16, v12);
  }

  else
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v34 = sub_1B4F67C54();
    __swift_project_value_buffer(v34, qword_1EDB72490);

    v35 = sub_1B4F67C34();
    v36 = sub_1B4F685C4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136446466;
      *(v37 + 4) = sub_1B4DC4F88(v4[4], v4[5], aBlock);
      *(v37 + 12) = 2082;
      LOBYTE(v46) = v17;
      v39 = sub_1B4DC5160();
      v40 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v39);
      v42 = sub_1B4DC4F88(v40, v41, aBlock);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_1B4DC2000, v35, v36, "No dispatch handler on %{public}s found for event: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v38, -1, -1);
      MEMORY[0x1B8C831D0](v37, -1, -1);
    }
  }
}

void *TransportDispatchService.__allocating_init(queue:label:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  v6[6] = MEMORY[0x1E69E7CC8];
  v6[7] = v7;
  v6[2] = a1;
  v6[4] = a2;
  v6[5] = a3;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = a1;
  v10 = swift_slowAlloc();
  *(v8 + 16) = v10;
  *v10 = 0;

  v6[3] = v8;
  return v6;
}

uint64_t TransportDispatchService.register(request:handler:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  return sub_1B4F5D7B8(a1, a2, a3, &unk_1F2CE4698, sub_1B4E96400);
}

{
  return sub_1B4F5D7B8(a1, a2, a3, &unk_1F2CE46C0, sub_1B4E96408);
}

uint64_t sub_1B4F5D7B8(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B4F5F760(&v10, a5, v8);
}

uint64_t TransportDispatchService.register<A>(request:handler:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE46E8, sub_1B4F630D4);
}

{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE4710, sub_1B4F630EC);
}

{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE4738, sub_1B4F63104);
}

{
  return sub_1B4F5D8C4(a1, a2, a3, a4, a5, a6, &unk_1F2CE4760, sub_1B4F6311C);
}

uint64_t sub_1B4F5D8C4(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a1;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a2;
  v14[6] = a3;

  sub_1B4F5F760(&v16, a8, v14);
}

uint64_t TransportDispatchService.register<A, B>(request:handler:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1B4F5D9F4(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F2CE4788, sub_1B4F6316C);
}

{
  return sub_1B4F5D9F4(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1F2CE47B0, sub_1B4F63184);
}

uint64_t sub_1B4F5D9F4(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = *a1;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a9;
  v18[8] = a2;
  v18[9] = a3;

  sub_1B4F5F760(&v20, a11, v18);
}

uint64_t TransportDispatchService.register(event:handler:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_1B4F62074(&v7, sub_1B4F631DC, v5);
}

uint64_t TransportDispatchService.register<A>(event:handler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a1;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;

  sub_1B4F62074(&v13, sub_1B4F6320C, v11);
}

Swift::Void __swiftcall TransportDispatchService.unregister(request:)(SeymourClient::TransportRequest request)
{
  v2 = *request;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);

  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B4DC4F88(v1[4], v1[5], v16);
    *(v6 + 12) = 2082;
    v8 = sub_1B4F63370();
    v9 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v8);
    v11 = sub_1B4DC4F88(v9, v10, v16);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "Unregistering request handler (%{public}s): %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v12 = v1[3];
  os_unfair_lock_lock(*(v12 + 16));
  swift_beginAccess();
  v13 = sub_1B4F632DC(v2);
  v15 = v14;
  swift_endAccess();
  sub_1B4DD2C78(v13, v15);
  os_unfair_lock_unlock(*(v12 + 16));
}

Swift::Void __swiftcall TransportDispatchService.unregister(event:)(SeymourClient::TransportEvent event)
{
  v2 = *event;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);

  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B4DC4F88(v1[4], v1[5], v16);
    *(v6 + 12) = 2082;
    v8 = sub_1B4DC5160();
    v9 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v8);
    v11 = sub_1B4DC4F88(v9, v10, v16);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "Unregistering event handler (%{public}s): %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v12 = v1[3];
  os_unfair_lock_lock(*(v12 + 16));
  swift_beginAccess();
  v13 = sub_1B4F633C4(v2);
  v15 = v14;
  swift_endAccess();
  sub_1B4DD2C78(v13, v15);
  os_unfair_lock_unlock(*(v12 + 16));
}

id sub_1B4F5DFE0()
{
  v1 = sub_1B4F658F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v93 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v91[-v7];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v91[-v11];
  v13 = sub_1B4DD552C(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v14 = *(sub_1B4F68E04() + 16);

  if (!v14)
  {
    v15 = sub_1B4F68DD4();
    if (!v15)
    {
      (*(v2 + 16))(v12, v0, v1);
      v80 = sub_1B4F68D24();
      if (v80)
      {
        v81 = v80;
        (*(v2 + 8))(v12, v1);
      }

      else
      {
        v81 = swift_allocError();
        (*(v2 + 32))(v90, v12, v1);
      }

      return v81;
    }
  }

  v95 = v2;
  v16 = sub_1B4F68E04();
  v98 = v13;
  v100 = v0;
  v17 = sub_1B4F68DD4();
  v18 = *MEMORY[0x1E696AA08];
  v99 = v1;
  v96 = v8;
  v102 = v18;
  if (v17)
  {
    v19 = sub_1B4F67F74();
    v21 = v20;
    swift_getErrorValue();
    v22 = Error.sanitized()(v105, v106);
    swift_getErrorValue();
    v23 = v103;
    v24 = v104;
    *(&v115[0] + 1) = v104;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v23, v24);

    sub_1B4E2C940(&v114, &v111);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v109 = v16;
    v0 = &v109;
    sub_1B4E5E93C(&v111, v19, v21, isUniquelyReferenced_nonNull_native);

    v16 = v109;
  }

  v27 = (v16 + 64);
  v28 = 1 << *(v16 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v16 + 64);
  v31 = (v28 + 63) >> 6;
  v94 = *MEMORY[0x1E696A250];

  v97 = 0;
  v32 = 0;
  v101 = v16;
  if (!v30)
  {
LABEL_10:
    if (v31 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v31;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v30 = 0;
        v112 = 0u;
        v113 = 0u;
        v32 = v35;
        v111 = 0u;
        goto LABEL_19;
      }

      v30 = *&v27[8 * v33];
      ++v32;
      if (v30)
      {
        v32 = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_70:
    swift_allocError();
    (*(v31 + 32))(v82, v27, v30);
    goto LABEL_71;
  }

  while (1)
  {
    v33 = v32;
LABEL_18:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = v36 | (v33 << 6);
    v38 = (*(v16 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    sub_1B4DC4F2C(*(v16 + 56) + 32 * v37, &v109);
    *&v111 = v40;
    *(&v111 + 1) = v39;
    sub_1B4E2C940(&v109, &v112);

LABEL_19:
    v114 = v111;
    v115[0] = v112;
    v115[1] = v113;
    v41 = *(&v111 + 1);
    if (!*(&v111 + 1))
    {
      break;
    }

    v17 = v114;
    sub_1B4E2C940(v115, &v109);
    v42 = sub_1B4F67F74();
    v0 = v43;
    if (v17 == v42 && v43 == v41)
    {

LABEL_24:

      goto LABEL_25;
    }

    v44 = sub_1B4F68D54();

    if (v44)
    {
      goto LABEL_24;
    }

    sub_1B4DC4F2C(&v109, &v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
    v0 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1B4DC4F2C(&v109, &v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B4DC4F2C(&v109, &v111);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1B4DC4F2C(&v109, v108);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
          if (!swift_dynamicCast())
          {
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v111);
          v0 = v100;
          if (sub_1B4F5ECB4(&v109))
          {
            goto LABEL_24;
          }
        }
      }
    }

    v45 = sub_1B4F68DF4();
    v47 = v46;
    if (v45 == sub_1B4F67F74() && v47 == v48)
    {

LABEL_35:
      *(&v112 + 1) = MEMORY[0x1E69E6158];
      *&v111 = 0x657070697274733CLL;
      *(&v111 + 1) = 0xEA00000000003E64;
      sub_1B4E2C940(&v111, v108);
      v49 = v101;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v49;
      v51 = sub_1B4DF4344(v17, v41);
      isa = v49[2].isa;
      v53 = (v50 & 1) == 0;
      v54 = isa + v53;
      if (__OFADD__(isa, v53))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        result = sub_1B4F68DB4();
        __break(1u);
        return result;
      }

      if (v49[3].isa >= v54)
      {
        if (v97)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          LODWORD(v101) = v50;
          sub_1B4E29614();
          if ((v101 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        LODWORD(v101) = v50;
        sub_1B4E27F34(v54, v97);
        v55 = sub_1B4DF4344(v17, v41);
        if ((v101 & 1) != (v56 & 1))
        {
          goto LABEL_79;
        }

        v51 = v55;
        if ((v101 & 1) == 0)
        {
LABEL_54:
          v0 = v107;
          v107[(v51 >> 6) + 8].isa = (v107[(v51 >> 6) + 8].isa | (1 << v51));
          v67 = (v0[6].isa + 16 * v51);
          *v67 = v17;
          v67[1] = v41;
          sub_1B4E2C940(v108, v0[7].isa + 2 * v51);
          v68 = v0[2].isa;
          v63 = __OFADD__(v68, 1);
          v69 = (v68 + 1);
          if (v63)
          {
            goto LABEL_76;
          }

          v101 = v0;
          v0[2].isa = v69;
          goto LABEL_56;
        }
      }

      v101 = v107;
      v0 = (v107[7].isa + 32 * v51);
      __swift_destroy_boxed_opaque_existential_1Tm(v0);
      sub_1B4E2C940(v108, v0);
LABEL_56:
      v97 = 1;
      goto LABEL_25;
    }

    v92 = sub_1B4F68D54();

    if (v92)
    {
      goto LABEL_35;
    }

    *&v108[0] = 0;
    *(&v108[0] + 1) = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    sub_1B4F68D34();
    *(&v112 + 1) = MEMORY[0x1E69E6158];
    v111 = v108[0];
    sub_1B4E2C940(&v111, v108);
    v57 = v101;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v57;
    v59 = sub_1B4DF4344(v17, v41);
    v61 = v57[2].isa;
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_77;
    }

    if (v57[3].isa >= v64)
    {
      if ((v58 & 1) == 0)
      {
        v101 = v59;
        v70 = v60;
        sub_1B4E29614();
        v59 = v101;
        if (v70)
        {
LABEL_52:
          v66 = v59;

          v101 = v107;
          v0 = (v107[7].isa + 32 * v66);
          __swift_destroy_boxed_opaque_existential_1Tm(v0);
          sub_1B4E2C940(v108, v0);
          goto LABEL_25;
        }

        goto LABEL_58;
      }
    }

    else
    {
      LODWORD(v101) = v60;
      sub_1B4E27F34(v64, v58);
      v59 = sub_1B4DF4344(v17, v41);
      v65 = v60 & 1;
      LOBYTE(v60) = v101;
      if ((v101 & 1) != v65)
      {
        goto LABEL_79;
      }
    }

    if (v60)
    {
      goto LABEL_52;
    }

LABEL_58:
    v0 = v107;
    v107[(v59 >> 6) + 8].isa = (v107[(v59 >> 6) + 8].isa | (1 << v59));
    v71 = (v0[6].isa + 16 * v59);
    *v71 = v17;
    v71[1] = v41;
    sub_1B4E2C940(v108, v0[7].isa + 2 * v59);
    v72 = v0[2].isa;
    v63 = __OFADD__(v72, 1);
    v73 = (v72 + 1);
    if (v63)
    {
      goto LABEL_78;
    }

    v101 = v0;
    v0[2].isa = v73;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm(&v109);
    if (!v30)
    {
      goto LABEL_10;
    }
  }

  v30 = v99;
  v74 = v100;
  if ((v97 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v75 = sub_1B4F67C54();
  __swift_project_value_buffer(v75, qword_1EDB72490);
  v31 = v95;
  v76 = *(v95 + 16);
  v77 = v96;
  v76(v96, v74, v30);
  v0 = sub_1B4F67C34();
  LOBYTE(v32) = sub_1B4F685C4();
  if (!os_log_type_enabled(v0, v32))
  {

    (*(v31 + 8))(v77, v30);
    goto LABEL_72;
  }

  v17 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  v79 = v77;
  v102 = v78;
  *v17 = 138412290;
  v27 = v93;
  v76(v93, v79, v30);
  if (!sub_1B4F68D24())
  {
    goto LABEL_70;
  }

  (*(v31 + 8))(v27, v30);
LABEL_71:
  v83 = _swift_stdlib_bridgeErrorToNSError();
  (*(v31 + 8))(v96, v30);
  *(v17 + 1) = v83;
  v84 = v102;
  *v102 = v83;
  _os_log_impl(&dword_1B4DC2000, v0, v32, "Found Errors from Core Data, original error before sanitization: %@", v17, 0xCu);
  sub_1B4DD2BC4(v84, &unk_1EB8F6DF0, &qword_1B4F79210);
  MEMORY[0x1B8C831D0](v84, -1, -1);
  MEMORY[0x1B8C831D0](v17, -1, -1);

LABEL_72:
  sub_1B4F68DF4();
  v85 = sub_1B4F68DE4();
  v86 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v87 = sub_1B4F67F64();

  v88 = sub_1B4F67EE4();

  v81 = [v86 initWithDomain:v87 code:v85 userInfo:v88];

  return v81;
}

uint64_t sub_1B4F5ECB4(uint64_t a1)
{
  sub_1B4DC4F2C(a1, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = 0;
    v5 = v30 + 64;
    v4 = *(v30 + 64);
    v29 = v30;
    v6 = 1 << *(v30 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v4;
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = v3;
LABEL_14:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v10 << 6);
      sub_1B4DF47F4(*(v29 + 48) + 40 * v14, &v39);
      sub_1B4DC4F2C(*(v29 + 56) + 32 * v14, &v43);
      v30 = v39;
      v31 = v40;
      *&v32 = v41;
      sub_1B4E2C940(&v43, (&v32 + 8));
      v12 = v10;
LABEL_15:
      v37[0] = v32;
      v37[1] = v33;
      v38 = v34;
      v35 = v30;
      v36 = v31;
      if (!*(&v31 + 1))
      {

        return 1;
      }

      sub_1B4E2C940((v37 + 8), &v39);
      v44 = MEMORY[0x1E69E69B8];
      v15 = swift_allocObject();
      *&v43 = v15;
      v16 = v36;
      *(v15 + 16) = v35;
      *(v15 + 32) = v16;
      *(v15 + 48) = *&v37[0];
      sub_1B4DC4F2C(&v43, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
      if (swift_dynamicCast() && (__swift_destroy_boxed_opaque_existential_1Tm(&v30), (sub_1B4F5ECB4(&v43) & 1) == 0) || (sub_1B4DC4F2C(&v43, &v30), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80), !swift_dynamicCast()) || (swift_unknownObjectRelease(), sub_1B4DC4F2C(&v43, &v30), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020), (swift_dynamicCast() & 1) != 0) || (v3 = v12, sub_1B4DC4F2C(&v43, &v30), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88), (swift_dynamicCast() & 1) != 0))
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v43);
LABEL_40:
        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        return 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v43);
      sub_1B4DC4F2C(&v39, &v43);
      if (swift_dynamicCast() && (__swift_destroy_boxed_opaque_existential_1Tm(&v30), (sub_1B4F5ECB4(&v39) & 1) == 0) || (sub_1B4DC4F2C(&v39, &v30), !swift_dynamicCast()) || (swift_unknownObjectRelease(), sub_1B4DC4F2C(&v39, &v30), (swift_dynamicCast() & 1) != 0))
      {

        goto LABEL_40;
      }

      sub_1B4E2C940(&v39, &v30);
      result = swift_dynamicCast();
      if (result)
      {

        return 0;
      }
    }

    if (v9 <= v3 + 1)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        v8 = 0;
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        goto LABEL_15;
      }

      v8 = *(v5 + 8 * v10);
      ++v3;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B4DC4F2C(a1, &v39);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_1B4DD2BC4(&v30, &unk_1EB8F6E20, &unk_1B4F7E040);
      return 1;
    }

    sub_1B4DC933C(&v30, &v35);
    v17 = __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    (*(v20 + 16))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    *(&v31 + 1) = swift_getAssociatedTypeWitness();
    *&v32 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v30);
    sub_1B4F680C4();
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v22 = sub_1B4F687D4();
      v23 = *(v22 - 8);
      MEMORY[0x1EEE9AC00](v22, v24);
      v26 = &v29 - v25;
      sub_1B4F68834();
      v27 = *(AssociatedTypeWitness - 8);
      if ((*(v27 + 48))(v26, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      *(&v40 + 1) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
      (*(v27 + 32))(boxed_opaque_existential_1, v26, AssociatedTypeWitness);
      sub_1B4E2C940(&v39, &v43);
      sub_1B4DC4F2C(&v43, v42);
      if (swift_dynamicCast() && (__swift_destroy_boxed_opaque_existential_1Tm(&v39), (sub_1B4F5ECB4(&v43) & 1) == 0) || (sub_1B4DC4F2C(&v43, &v39), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80), !swift_dynamicCast()) || (swift_unknownObjectRelease(), sub_1B4DC4F2C(&v43, &v39), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020), (swift_dynamicCast() & 1) != 0))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v43);
LABEL_42:
        __swift_destroy_boxed_opaque_existential_1Tm(&v30);
        __swift_destroy_boxed_opaque_existential_1Tm(&v35);
        return 0;
      }

      sub_1B4E2C940(&v43, &v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
      if (swift_dynamicCast())
      {
        goto LABEL_42;
      }
    }

    (*(v23 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 1;
  }

  return result;
}

void *TransportDispatchService.init(queue:label:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC8];
  v3[6] = MEMORY[0x1E69E7CC8];
  v3[7] = v5;
  v3[2] = a1;
  v3[4] = a2;
  v3[5] = a3;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = a1;
  v8 = swift_slowAlloc();
  *(v6 + 16) = v8;
  *v8 = 0;
  v3[3] = v6;

  return v3;
}

uint64_t sub_1B4F5F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A10, &unk_1B4F7DFD0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v19 - v11;
  a5(v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1B4DD2BC4(v12, &unk_1EB8F7A10, &unk_1B4F7DFD0);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  v17 = sub_1B4F67654();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B4F63E74;
  *(v18 + 24) = v16;

  v17(sub_1B4DDDFD0, v18);

  return (*(v14 + 8))(v12, v13);
}

void sub_1B4F5F760(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);

  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B4DC4F88(v3[4], v3[5], v18);
    *(v11 + 12) = 2082;
    v13 = sub_1B4F63370();
    v14 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v13);
    v16 = sub_1B4DC4F88(v14, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "Registering request handler (%{public}s): %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v12, -1, -1);
    MEMORY[0x1B8C831D0](v11, -1, -1);
  }

  v17 = v3[3];
  os_unfair_lock_lock(*(v17 + 16));
  sub_1B4F61D18(v4, v7, a2, a3);
  os_unfair_lock_unlock(*(v17 + 16));
}

uint64_t sub_1B4F5F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_1B4F68324();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a3;
  v15[7] = a4;

  sub_1B4E4E620(0, 0, v13, &unk_1B4F7DFF8, v15);
}

uint64_t sub_1B4F5FA7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[18] = v8;
  *v8 = v7;
  v8[1] = sub_1B4F5FB68;

  return v10();
}

uint64_t sub_1B4F5FB68()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B4F5FD04;
  }

  else
  {
    v2 = sub_1B4F5FC7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F5FC7C()
{
  v1 = *(v0 + 128);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  *(v0 + 72) = 0u;
  v1(v0 + 72);
  sub_1B4DD2C24(v0 + 72);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4F5FD04()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v3 = v1;
  v2(v0 + 16);

  sub_1B4DD2C24(v0 + 16);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4F5FDA0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(double), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_1B4F67674();
  v16 = sub_1B4F687D4();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v25 - v20;
  a6(v19);
  v22 = *(v15 - 8);
  if ((*(v22 + 48))(v21, 1, v15) != 1)
  {
    v23 = swift_allocObject();
    v23[2] = a8;
    v23[3] = a9;
    v23[4] = a10;
    v23[5] = a4;
    v23[6] = a5;

    sub_1B4F67644();

    v17 = v22;
    v16 = v15;
  }

  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_1B4F5FF58(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v8 = sub_1B4F68F14();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  (*(v12 + 16))(&v15[-1] - v11, a1, v10);
  sub_1B4F65BE4();
  a2(v15);
  return sub_1B4DD2C24(v15);
}

uint64_t sub_1B4F6008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v22 - v17;
  v19 = sub_1B4F68324();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a9;
  v20[7] = a5;
  v20[8] = a6;
  v20[9] = a3;
  v20[10] = a4;

  sub_1B4E4E620(0, 0, v18, &unk_1B4F7DFE8, v20);
}

uint64_t sub_1B4F601DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v16;
  v8[20] = v17;
  v8[17] = a7;
  v8[18] = a8;
  v8[16] = a6;
  v10 = sub_1B4F687D4();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[24] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[25] = v12;
  *v12 = v8;
  v12[1] = sub_1B4F6035C;

  return v14(v11);
}

uint64_t sub_1B4F6035C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B4F605FC;
  }

  else
  {
    v2 = sub_1B4F60470;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F60470()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  (*(*(v0 + 176) + 16))(v1, *(v0 + 192), *(v0 + 168));
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 184);
  if (v4 == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
  }

  else
  {
    v6 = *(v0 + 160);
    v14 = *(v0 + 144);
    *(v0 + 96) = v14;
    *(v0 + 112) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    (*(v3 + 32))(boxed_opaque_existential_1, v5, v14);
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 128);
  *(v0 + 120) = 0;
  v11(v0 + 72);
  (*(v10 + 8))(v8, v9);
  sub_1B4DD2C24(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B4F605FC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v3 = v1;
  v2(v0 + 16);

  sub_1B4DD2C24(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4F606A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A10, &unk_1B4F7DFD0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD3000(a1, a2);
  sub_1B4F66DF4();
  v22 = a4;
  v30(v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    (*(v17 + 8))(v21, a7);
    return sub_1B4DD2BC4(v16, &unk_1EB8F7A10, &unk_1B4F7DFD0);
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = v22;

    v27 = sub_1B4F67654();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1B4F63BE4;
    *(v28 + 24) = v26;

    v27(sub_1B4DDE050, v28);

    (*(v17 + 8))(v21, a7);
    return (*(v24 + 8))(v16, v23);
  }
}

uint64_t sub_1B4F609BC(uint64_t a1, void (*a2)(void *))
{
  sub_1B4DE3B04(*a1, *(a1 + 8));
  sub_1B4F65BF4();
  a2(v4);
  return sub_1B4DD2C24(v4);
}

uint64_t sub_1B4F60A28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v24 - v18;
  v20 = sub_1B4F68324();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a9;
  v21[7] = a1;
  v21[8] = a2;
  v21[9] = a5;
  v22 = v25;
  v21[10] = a6;
  v21[11] = v22;
  v21[12] = a4;
  sub_1B4DD3000(a1, a2);

  sub_1B4E4E620(0, 0, v19, &unk_1B4F7DFC8, v21);
}

uint64_t sub_1B4F60B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v12;
  v8[23] = v13;
  v8[20] = a8;
  v8[21] = v11;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F60C64, 0, 0);
}

uint64_t sub_1B4F60C64()
{
  sub_1B4DD3000(v0[16], v0[17]);
  sub_1B4F66DF4();
  v4 = (v0[18] + *v0[18]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1B4F60E1C;
  v2 = v0[25];

  return v4(v2);
}

uint64_t sub_1B4F60E1C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1B4F60FF0;
  }

  else
  {
    v2 = sub_1B4F60F30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F60F30()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  *(v0 + 72) = 0u;
  v4(v0 + 72);
  sub_1B4DD2C24(v0 + 72);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B4F60FF0()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 176));
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v3 = v1;
  v2(v0 + 16);

  sub_1B4DD2C24(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4F610AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *))
{
  v37 = a6;
  v38 = a5;
  v39 = a4;
  v40 = a3;
  v17 = sub_1B4F67674();
  v18 = sub_1B4F687D4();
  v36 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  v22 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD3000(a1, a2);
  sub_1B4F66DF4();
  v27 = v36;
  v34 = a10;
  v35 = v22;
  v28 = v40;
  v38(v26);
  v29 = *(v17 - 8);
  if ((*(v29 + 48))(v21, 1, v17) == 1)
  {
    (*(v35 + 8))(v26, a7);
    return (*(v27 + 8))(v21, v18);
  }

  else
  {
    v38 = a13;
    v31 = swift_allocObject();
    v31[2] = a7;
    v31[3] = a8;
    v31[4] = v34;
    v31[5] = a11;
    v32 = v38;
    v31[6] = a12;
    v31[7] = v32;
    v31[8] = v28;
    v31[9] = v39;

    sub_1B4F67644();

    (*(v35 + 8))(v26, a7);
    return (*(v29 + 8))(v21, v17);
  }
}

uint64_t sub_1B4F613BC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v11 = sub_1B4F68F14();
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  (*(v15 + 16))(&v18[-1] - v14, a1, v13);
  sub_1B4F65BE4();
  a2(v18);
  return sub_1B4DD2C24(v18);
}

uint64_t sub_1B4F614EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v26 = a5;
  v27 = a3;
  v25 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v25 - v19;
  v21 = sub_1B4F68324();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = a7;
  *(v22 + 40) = a8;
  *(v22 + 48) = v25;
  *(v22 + 64) = a10;
  *(v22 + 72) = a11;
  *(v22 + 80) = a1;
  *(v22 + 88) = a2;
  v23 = v27;
  *(v22 + 96) = v26;
  *(v22 + 104) = a6;
  *(v22 + 112) = v23;
  *(v22 + 120) = a4;
  sub_1B4DD3000(a1, a2);

  sub_1B4E4E620(0, 0, v20, &unk_1B4F7DFB0, v22);
}

uint64_t sub_1B4F61668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = v16;
  v8[26] = v17;
  v8[23] = v14;
  v8[24] = v15;
  v8[21] = v12;
  v8[22] = v13;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_1B4F687D4();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = *(v13 - 8);
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F617A8, 0, 0);
}

uint64_t sub_1B4F617A8()
{
  sub_1B4DD3000(v0[16], v0[17]);
  sub_1B4F66DF4();
  v5 = (v0[18] + *v0[18]);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_1B4F6197C;
  v2 = v0[32];
  v3 = v0[30];

  return v5(v3, v2);
}

uint64_t sub_1B4F6197C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B4F61C48;
  }

  else
  {
    v2 = sub_1B4F61A90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F61A90()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  (*(*(v0 + 224) + 16))(v1, *(v0 + 240), *(v0 + 216));
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 232);
  if (v4 == 1)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
  }

  else
  {
    v6 = *(v0 + 184);
    *(v0 + 96) = v6;
    *(v0 + 104) = *(v0 + 200);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    (*(v3 + 32))(boxed_opaque_existential_1, v5, v6);
  }

  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  *(v0 + 120) = 0;
  v14(v0 + 72);
  (*(v12 + 8))(v10, v11);
  (*(v9 + 8))(v8, v13);
  sub_1B4DD2C24(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B4F61C48()
{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 176));
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  *(v0 + 16) = v1;
  *(v0 + 64) = 1;
  v3 = v1;
  v2(v0 + 16);

  sub_1B4DD2C24(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4F61D18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1[6] + 16) && (sub_1B4DCE3F0(a2), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB72490);

    v10 = sub_1B4F67C34();
    v11 = sub_1B4F685C4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B4DC4F88(a1[4], a1[5], v21);
      *(v12 + 12) = 2082;
      LOWORD(v22) = a2;
      v13 = sub_1B4F63370();
      v14 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v13);
      v16 = sub_1B4DC4F88(v14, v15, v21);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1B4DC2000, v10, v11, "Overwriting existing handler (%{public}s): %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v20, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = a1[6];
  a1[6] = 0x8000000000000000;
  sub_1B4E5EA8C(sub_1B4F63DD8, v17, a2, isUniquelyReferenced_nonNull_native);
  a1[6] = v22;
  return swift_endAccess();
}

uint64_t sub_1B4F61FA0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  a3(v4, v5, sub_1B4F63DE0, v8);
}

void sub_1B4F62074(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);

  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B4DC4F88(v3[4], v3[5], v18);
    *(v11 + 12) = 2082;
    v13 = sub_1B4DC5160();
    v14 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v13);
    v16 = sub_1B4DC4F88(v14, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "Registering event handler (%{public}s): %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v12, -1, -1);
    MEMORY[0x1B8C831D0](v11, -1, -1);
  }

  v17 = v3[3];
  os_unfair_lock_lock(*(v17 + 16));
  sub_1B4F624D8(v4, v7, a2, a3);
  os_unfair_lock_unlock(*(v17 + 16));
}

void sub_1B4F62264(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD3000(v12, v13);
  sub_1B4F66DF4();
  if (v6)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B4F67C54();
    __swift_project_value_buffer(v14, qword_1EDB72490);
    v15 = v6;
    v16 = sub_1B4F67C34();
    v17 = sub_1B4F685C4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = MEMORY[0x1B8C826C0](v23[1], v23[2]);
      v22 = sub_1B4DC4F88(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B4DC2000, v16, v17, "Error deserializing event payload: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B8C831D0](v19, -1, -1);
      MEMORY[0x1B8C831D0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    a3(v11);
    (*(v9 + 8))(v11, a5);
  }
}

uint64_t sub_1B4F624D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1[7] + 16) && (sub_1B4DC51CC(a2), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB72490);

    v10 = sub_1B4F67C34();
    v11 = sub_1B4F685C4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v12 = 136315394;
      *(v12 + 4) = sub_1B4DC4F88(a1[4], a1[5], v21);
      *(v12 + 12) = 2082;
      LOBYTE(v22) = a2;
      v13 = sub_1B4DC5160();
      v14 = MEMORY[0x1B8C813D0](&type metadata for TransportEvent, v13);
      v16 = sub_1B4DC4F88(v14, v15, v21);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1B4DC2000, v10, v11, "Overwriting existing handler (%s): %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v20, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = a1[7];
  a1[7] = 0x8000000000000000;
  sub_1B4E5EBC4(sub_1B4F63E08, v17, a2, isUniquelyReferenced_nonNull_native);
  a1[7] = v22;
  return swift_endAccess();
}

uint64_t sub_1B4F62760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_1B4F63E38;
  v10[1] = v8;

  a5(v11, v10);
}

void sub_1B4F62804(void (*a1)(uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3, __int16 a4, void (*a5)(void, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1B4F658F4();
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;
    sub_1B4DEA370(a1, a2);

    a1(a7, a8, sub_1B4F63E60, v21);

    sub_1B4DD2C78(a1, a2);
  }

  else
  {
    v34[1] = a6;
    v35 = v18;
    v36 = a5;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1B4F67C54();
    __swift_project_value_buffer(v22, qword_1EDB72490);

    v23 = sub_1B4F67C34();
    v24 = sub_1B4F685C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1B4DC4F88(*(a3 + 32), *(a3 + 40), &v38);
      *(v25 + 12) = 2082;
      v37 = a4;
      v27 = sub_1B4F63370();
      v28 = MEMORY[0x1B8C813D0](&type metadata for TransportRequest, v27);
      v30 = sub_1B4DC4F88(v28, v29, &v38);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1B4DC2000, v23, v24, "No dispatch handler on %{public}s found for request: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v26, -1, -1);
      MEMORY[0x1B8C831D0](v25, -1, -1);
    }

    v32 = v35;
    v31 = v36;
    (*(v35 + 104))(v20, *MEMORY[0x1E69CB500], v16);
    v33 = sub_1B4F5DFE0();
    (*(v32 + 8))(v20, v16);
    v31(0, 0xF000000000000000, v33);
  }
}

void sub_1B4F62B50(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  sub_1B4DD2A4C(a1, v13);
  if (v14)
  {
    v3 = *&v13[0];
    swift_getErrorValue();
    v4 = Error.sanitized()(v11, v12);
    a2(0, 0xF000000000000000, v4);
  }

  else
  {
    v10[0] = v13[0];
    v10[1] = v13[1];
    v10[2] = v13[2];
    sub_1B4DD2AA8(v10, v8);
    v5 = v9;
    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v5 = sub_1B4F66E04();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {
      sub_1B4DD2BC4(v8, &unk_1EB8F7A20, qword_1B4F7E000);
      v7 = 0xF000000000000000;
    }

    a2(v5, v7, 0);
    sub_1B4DD2B5C(v5, v7);
    sub_1B4DD2BC4(v10, &unk_1EB8F7A20, qword_1B4F7E000);
  }
}

uint64_t TransportDispatchService.deinit()
{

  return v0;
}

uint64_t sub_1B4F63090(uint64_t a1, uint64_t a2)
{
  v5[1] = a2;
  v3 = *(v2 + 16);
  v5[0] = a1;
  return v3(v5);
}

double sub_1B4F63230@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B4DF4344(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B4E28BB4();
      v10 = v12;
    }

    sub_1B4DC933C((*(v10 + 56) + 40 * v8), a3);
    sub_1B4E8C314(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B4F632DC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4DCE3F0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B4E2905C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_1B4E8C4D0(v8, v7);
  *v2 = v7;
  return v9;
}

unint64_t sub_1B4F63370()
{
  result = qword_1EDB70C58[0];
  if (!qword_1EDB70C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB70C58);
  }

  return result;
}

uint64_t sub_1B4F633C4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4DC51CC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B4E291C0();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_1B4E8C66C(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1B4F63484(Swift::Int a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v40 = a2;
  v41 = a3;
  v8 = sub_1B4F67D54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B4F67D74();
  v13 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  TransportRequest.init(rawValue:)(a1);
  v18 = LOWORD(aBlock[0]);
  if (LOWORD(aBlock[0]) == 369)
  {
    v19 = sub_1B4F658F4();
    sub_1B4DD552C(&qword_1EB8F7600, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69CB4F8], v19);
    _Block_copy(a5);
    v22 = sub_1B4F647B4();
    (a5)[2](a5, 0, v22);
  }

  else
  {
    v39 = v9;
    v24 = a4[3];
    v25 = *(v24 + 16);
    _Block_copy(a5);
    os_unfair_lock_lock(v25);
    swift_beginAccess();
    v26 = a4[6];
    if (*(v26 + 16) && (v27 = sub_1B4DCE3F0(v18), (v28 & 1) != 0))
    {
      v29 = *(v26 + 56) + 16 * v27;
      v31 = *v29;
      v30 = *(v29 + 8);
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    swift_endAccess();
    os_unfair_lock_unlock(*(v24 + 16));
    v38 = v13;
    if (v31)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      v31 = sub_1B4F63E68;
    }

    else
    {
      v32 = 0;
    }

    v37[1] = a4[2];
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    *(v33 + 32) = a4;
    *(v33 + 40) = v18;
    *(v33 + 48) = sub_1B4F63984;
    *(v33 + 56) = v17;
    v35 = v40;
    v34 = v41;
    *(v33 + 64) = v40;
    *(v33 + 72) = v34;
    aBlock[4] = sub_1B4F63E6C;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_54;
    v36 = _Block_copy(aBlock);
    sub_1B4DEA370(v31, v32);

    sub_1B4DD3000(v35, v34);
    sub_1B4F67D64();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B4DD552C(&qword_1EDB71F90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v16, v12, v36);
    _Block_release(v36);
    sub_1B4DD2C78(v31, v32);
    (*(v39 + 8))(v12, v8);
    (*(v38 + 8))(v16, v42);
  }
}

uint64_t sub_1B4F639A4(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[11];
  v9 = v1[10];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE13F0;

  return sub_1B4F61668(a1, v11, v10, v9, v3, v4, v5, v6);
}

uint64_t sub_1B4F63AEC(uint64_t a1)
{
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F60B98(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1B4F63C00(uint64_t a1)
{
  v12 = v1[4];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4F601DC(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t sub_1B4F63D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4F5FA7C(a1, v4, v5, v6, v7, v9, v8);
}

void *ConfigurationClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *ConfigurationClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t ConfigurationClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ConfigurationClient.fetchRemoteConfiguration()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000027;
  v2._object = 0x80000001B4F86D80;
  v3._object = 0x80000001B4F86DB0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 114;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t ConfigurationClient.queryConfiguration()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000027;
  v2._object = 0x80000001B4F86D80;
  v3._object = 0x80000001B4F86DD0;
  v3._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 113;
  v6 = *(v4 + 24);
  v7 = sub_1B4F652B4();
  return v6(&v9, v7, MEMORY[0x1E69CB308], MEMORY[0x1E69CB310], ObjectType, v4);
}

uint64_t ConfigurationClient.resetConfiguration()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000027;
  v2._object = 0x80000001B4F86D80;
  v3._object = 0x80000001B4F86DF0;
  v3._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 115;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t sub_1B4F64334()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DD0;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 113;
  v7 = *(v5 + 24);
  v8 = sub_1B4F652B4();
  return v7(&v10, v8, MEMORY[0x1E69CB308], MEMORY[0x1E69CB310], ObjectType, v5);
}

uint64_t sub_1B4F64448()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DF0;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 115;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}