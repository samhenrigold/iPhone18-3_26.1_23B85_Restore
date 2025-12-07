uint64_t sub_1E1497D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0, &qword_1E1B30510);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1E134E724(v6 + 40 * v4, v19);
      result = sub_1E1AF6F2C();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1E134E724(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x1E68FFC60](v18, v19);
        result = sub_1E134B88C(v18);
        if (v11)
        {
          sub_1E134B88C(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
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

void sub_1E1497E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4798, &unk_1E1B0E350);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_1E1AF5DFC();
      sub_1E1AF762C();
      v26 = v7;
      sub_1E1AF5F0C();
      v8 = sub_1E1AF767C();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_1E1AF5DFC();
        v17 = v16;
        if (v15 == sub_1E1AF5DFC() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_1E1AF74AC();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t sub_1E149805C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4778, &qword_1E1B0E330);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1E1AF762C();
      MEMORY[0x1E6900360](v10);
      result = sub_1E1AF767C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1498198(uint64_t a1)
{
  v2 = sub_1E1AF2FDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4758, &qword_1E1B0E318);
    v9 = sub_1E1AF6F9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E1498AA4(&qword_1EE1D2A78, MEMORY[0x1E698B1B0], MEMORY[0x1E698B1B8]);
      v16 = sub_1E1AF5D0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1E1498AA4(&qword_1ECEB4760, MEMORY[0x1E698B1B0], MEMORY[0x1E698B1C0]);
          v23 = sub_1E1AF5DAC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E14984B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4788, &qword_1E1B0E340);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v43 = v3 + 56;
    v38 = v1;
    v39 = a1 + 32;
    v37 = v3;
    while (1)
    {
      v5 = (v39 + (v4 << 6));
      v6 = v5[3];
      v47 = v5[2];
      v48 = v6;
      v7 = v5[1];
      v45 = *v5;
      v46 = v7;
      v8 = v45;
      sub_1E1AF762C();
      sub_1E1AF764C();
      sub_1E13C5038(&v45, v44);
      if (*(&v8 + 1))
      {
        sub_1E1AF5F0C();
      }

      v9 = v47;
      v41 = *(&v46 + 1);
      v42 = v46;
      sub_1E1AF5F0C();
      sub_1E1AF764C();
      if (*(&v9 + 1))
      {
        sub_1E1AF5F0C();
      }

      v10 = v48;
      if (*(&v48 + 1))
      {
        sub_1E1AF764C();
        sub_1E1AF5F0C();
      }

      else
      {
        sub_1E1AF764C();
      }

      result = sub_1E1AF767C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v43 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      v17 = *(v3 + 48);
      if (((1 << v13) & v15) != 0)
      {
        break;
      }

LABEL_43:
      *(v43 + 8 * v14) = v15 | v16;
      v30 = (v17 + (v13 << 6));
      v31 = v45;
      v32 = v46;
      v33 = v48;
      v30[2] = v47;
      v30[3] = v33;
      *v30 = v31;
      v30[1] = v32;
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v36;
LABEL_45:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v40 = v4;
    v18 = ~v12;
    while (1)
    {
      v19 = (v17 + (v13 << 6));
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = v19[4];
      v25 = v19[5];
      v24 = v19[6];
      v26 = v19[7];
      if (v20)
      {
        if (!*(&v8 + 1))
        {
          goto LABEL_13;
        }

        result = *v19;
        if (*v19 != v8 || v20 != *(&v8 + 1))
        {
          result = sub_1E1AF74AC();
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (*(&v8 + 1))
      {
        goto LABEL_13;
      }

      v28 = v21 == v42 && v22 == v41;
      if (v28 || (result = sub_1E1AF74AC(), (result & 1) != 0))
      {
        if (v25)
        {
          if (*(&v9 + 1))
          {
            v29 = v23 == v9 && v25 == *(&v9 + 1);
            if (v29 || (result = sub_1E1AF74AC(), (result & 1) != 0))
            {
LABEL_35:
              if (v26)
              {
                if (*(&v10 + 1))
                {
                  if (__PAIR128__(v26, v24) == v10 || (result = sub_1E1AF74AC(), (result & 1) != 0))
                  {
LABEL_41:
                    sub_1E13C5094(&v45);
                    v3 = v37;
                    v1 = v38;
                    v4 = v40;
                    goto LABEL_45;
                  }
                }
              }

              else if (!*(&v10 + 1))
              {
                goto LABEL_41;
              }
            }
          }
        }

        else if (!*(&v9 + 1))
        {
          goto LABEL_35;
        }
      }

LABEL_13:
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = *(v43 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v3 = v37;
        v1 = v38;
        v17 = *(v37 + 48);
        v4 = v40;
        goto LABEL_43;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1498818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4770, &qword_1E1B0E328);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
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
          result = sub_1E1AF74AC();
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

uint64_t sub_1E1498980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4768, &qword_1E1B0E320);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_1E1AF761C();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1498AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1498AF8(void *a1, uint64_t a2, double a3)
{
  v242 = a2;
  v4 = sub_1E1AEF59C();
  v223 = *(v4 - 8);
  v224 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v229 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0, &qword_1E1B489E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v243 = &v201 - v7;
  v236 = sub_1E1AEF65C();
  v246 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v228 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8, &qword_1E1B270B0);
  v240 = *(v9 - 8);
  v241 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v239 = &v201 - v10;
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v221 = &v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v222 = &v201 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v235 = &v201 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v218 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v238 = &v201 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v245 = &v201 - v23;
  v24 = sub_1E1AEFEAC();
  v233 = *(v24 - 8);
  v234 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v232 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v214 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v227 = &v201 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v225 = &v201 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v201 - v33;
  v35 = sub_1E1AF3E1C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v220 = &v201 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v219 = &v201 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v226 = &v201 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v244 = &v201 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v231 = &v201 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v230 = &v201 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v201 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v201 - v52;
  v54 = MEMORY[0x1E69E7CC0];
  v266 = MEMORY[0x1E69E7CC0];
  v55 = a1[45];
  v249 = v12;
  v250 = v56;
  v247 = v36;
  v248 = v11;
  v237 = a1;
  if (v55)
  {
    v57 = *(v55 + 16);

    v58._countAndFlagsBits = 0xD000000000000019;
    v58._object = 0x80000001E1B60E10;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    v60 = localizedString(_:comment:)(v58, v59);
    object = v60._object;
    countAndFlagsBits = v60._countAndFlagsBits;
    v217 = sub_1E1926F88(0xD000000000000013, 0x80000001E1B567A0, 20.0, 20.0);

    sub_1E1AF3DFC();
    type metadata accessor for ShareSheetAction(0);
    v61 = swift_allocObject();
    *(v61 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_data) = v57;
    *(v61 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_activities) = v54;
    *(v61 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_shareSheetStyle) = 0;
    v265 = 0;
    v263 = 0u;
    v264 = 0u;
    (*(v36 + 16))(v50, v53, v35);
    v62 = sub_1E1AF46DC();
    (*(*(v62 - 8) + 56))(v34, 1, 1, v62);
    v63 = (v61 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v63 = 0u;
    v63[1] = 0u;
    sub_1E134FD1C(&v263, &v257, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v258 + 1))
    {
      v260 = v257;
      v261 = v258;
      v262 = v259;
    }

    else
    {
      v64 = v232;
      sub_1E1AEFE9C();
      v65 = sub_1E1AEFE7C();
      v67 = v66;
      (*(v233 + 8))(v64, v234);
      *&v253 = v65;
      *(&v253 + 1) = v67;
      v36 = v247;
      sub_1E1AF6F6C();
      sub_1E1308058(&v257, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v263, &unk_1ECEB5670, qword_1E1B03EC0);
    v68 = v250;
    (*(v36 + 8))(v53, v250);
    v69 = v61 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v70 = v261;
    *v69 = v260;
    *(v69 + 1) = v70;
    *(v69 + 4) = v262;
    sub_1E134B7C8(v34, v61 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    v71 = object;
    v61[2] = countAndFlagsBits;
    v61[3] = v71;
    v61[4] = v217;
    v61[5] = 0;
    (*(v36 + 32))(v61 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v50, v68);

    MEMORY[0x1E68FEF20](v72);
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();

    v54 = v266;
    v12 = v249;
    a1 = v237;
  }

  v73 = a1[33];
  if (v73)
  {
    v74 = type metadata accessor for FlowAction(0);
    v75 = swift_dynamicCastClass();
    v76 = v250;
    if (v75)
    {
      v77 = v75;
      v212 = v74;
      object = v73;

      v78._countAndFlagsBits = 0xD00000000000002BLL;
      v78._object = 0x80000001E1B60DE0;
      v79._countAndFlagsBits = 0;
      v79._object = 0xE000000000000000;
      v80 = localizedString(_:comment:)(v78, v79);
      countAndFlagsBits = v80._object;
      v217 = v80._countAndFlagsBits;
      v81 = sub_1E1926F88(1918989427, 0xE400000000000000, 20.0, 20.0);
      v82 = (v77 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData);
      swift_beginAccess();
      v83 = v82[3];
      v213 = v81;
      if (v83)
      {
        v84 = v82[4];
        v85 = __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        v86 = *(v83 - 8);
        v87 = MEMORY[0x1EEE9AC00](v85);
        v89 = &v201 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v86 + 16))(v89, v87);
        (*(v84 + 8))(&v263, v83, v84);
        (*(v86 + 8))(v89, v83);
      }

      else
      {
        v263 = 0u;
        v264 = 0u;
      }

      v90 = v225;
      v91 = v230;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0, &unk_1E1B02CE0);
      v92 = type metadata accessor for ShelfBasedProductPage(0);
      if (swift_dynamicCast())
      {
        if (v257)
        {
          *&v260 = v257;
LABEL_19:

          v225 = v260;
          sub_1E1AF3DFC();
          type metadata accessor for ShelfBasedPageScrollAction(0);
          v93 = swift_allocObject();
          v94 = &v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId];
          strcpy(&v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId], "productRatings");
          v94[15] = -18;
          *&v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId] = xmmword_1E1B0E390;
          *&v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId] = xmmword_1E1B0E390;
          v95 = &v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId];
          *v95 = 0;
          *(v95 + 1) = 0;
          v96 = &v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index];
          *v96 = 0;
          v96[8] = 1;
          v93[OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll] = 1;
          v97 = *(v247 + 16);
          v265 = 0;
          v263 = 0u;
          v264 = 0u;
          v98 = v231;
          v210 = v97;
          v97(v231, v91, v76);
          v99 = sub_1E1AF46DC();
          v100 = *(v99 - 8);
          v208 = *(v100 + 56);
          v209 = v99;
          v207 = v100 + 56;
          v208(v90, 1, 1);
          v101 = &v93[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
          *v101 = 0u;
          *(v101 + 1) = 0u;
          sub_1E134FD1C(&v263, &v257, &unk_1ECEB5670, qword_1E1B03EC0);
          if (*(&v258 + 1))
          {
            v260 = v257;
            v261 = v258;
            v262 = v259;
          }

          else
          {
            v102 = v232;
            sub_1E1AEFE9C();
            v103 = sub_1E1AEFE7C();
            v105 = v104;
            v106 = v102;
            v91 = v230;
            (*(v233 + 8))(v106, v234);
            *&v253 = v103;
            *(&v253 + 1) = v105;
            v98 = v231;
            sub_1E1AF6F6C();
            sub_1E1308058(&v257, &unk_1ECEB5670, qword_1E1B03EC0);
          }

          sub_1E1308058(&v263, &unk_1ECEB5670, qword_1E1B03EC0);
          v107 = v247;
          v108 = *(v247 + 8);
          v230 = (v247 + 8);
          v211 = v108;
          v108(v91, v76);
          v109 = &v93[OBJC_IVAR____TtC11AppStoreKit6Action_id];
          v110 = v261;
          *v109 = v260;
          *(v109 + 1) = v110;
          *(v109 + 4) = v262;
          sub_1E134B7C8(v90, &v93[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
          v111 = countAndFlagsBits;
          *(v93 + 2) = v217;
          *(v93 + 3) = v111;
          *(v93 + 4) = 0;
          *(v93 + 5) = 0;
          v205 = *(v107 + 32);
          v206 = v107 + 32;
          v205(&v93[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v98, v76);
          v112 = v225;
          if (v225)
          {

            v113 = _s11AppStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(v112, v93);
          }

          else
          {

            v113 = 0;
          }

          v265 = 0;
          v263 = 0u;
          v264 = 0u;
          v203 = *(v77 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page);
          sub_1E134FD1C(v77 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, v245, &unk_1ECEB4B60, &unk_1E1B02620);
          v114 = *(v77 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl + 8);
          v202 = *(v77 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
          if (!v113)
          {
            v92 = 0;
            v256[2] = 0;
            v256[1] = 0;
          }

          v256[0] = v113;
          v256[3] = v92;
          v115 = v210;
          v210(v244, (v77 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v76);
          v116 = v113;
          v117 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
          swift_beginAccess();
          v118 = *(v77 + v117);
          v119 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
          swift_beginAccess();
          v120 = *(v77 + v119);
          v204 = *(v77 + 40);

          v231 = v116;

          v121 = sub_1E1AF4D0C();
          v123 = v122;
          v124 = swift_allocObject();
          *(v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
          v125 = v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
          *v125 = 0u;
          *(v125 + 1) = 0u;
          *(v125 + 4) = 0;
          v126 = (v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
          *v126 = 0;
          v126[1] = 0;
          *(v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v203;
          sub_1E134FD1C(v245, v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);
          v127 = (v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
          *v127 = v202;
          v127[1] = v114;
          v128 = v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
          *v128 = xmmword_1E1B04490;
          v128[40] = 0;
          *(v128 + 3) = 0;
          *(v128 + 4) = 0;
          *(v128 + 2) = 0;
          *(v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v118;
          v129 = v250;
          *(v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 1;
          *(v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v120;
          v130 = (v124 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
          *v130 = v121;
          v130[1] = v123;
          sub_1E134FD1C(&v263, &v260, &unk_1ECEB5670, qword_1E1B03EC0);
          v131 = v226;
          v115(v226, v244, v129);
          v132 = v227;
          (v208)(v227, 1, 1, v209);
          v133 = (v124 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
          *v133 = 0u;
          v133[1] = 0u;
          sub_1E134FD1C(&v260, &v253, &unk_1ECEB5670, qword_1E1B03EC0);
          if (*(&v254 + 1))
          {
            v257 = v253;
            v258 = v254;
            v259 = v255;
            v134 = v213;
          }

          else
          {
            v134 = v213;

            v135 = v232;
            sub_1E1AEFE9C();
            v136 = sub_1E1AEFE7C();
            v138 = v137;
            (*(v233 + 8))(v135, v234);
            v251 = v136;
            v252 = v138;
            sub_1E1AF6F6C();
            sub_1E1308058(&v253, &unk_1ECEB5670, qword_1E1B03EC0);
          }

          sub_1E1308058(&v260, &unk_1ECEB5670, qword_1E1B03EC0);
          v139 = v124 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
          v140 = v258;
          *v139 = v257;
          *(v139 + 1) = v140;
          *(v139 + 4) = v259;
          sub_1E134B7C8(v132, v124 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
          v141 = countAndFlagsBits;
          v124[2] = v217;
          v124[3] = v141;
          v142 = v204;
          v143 = v205;
          v124[4] = v134;
          v124[5] = v142;
          v143(v124 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v131, v129);

          FlowAction.setPageData(_:)(v256);

          v211(v244, v129);
          sub_1E1308058(v245, &unk_1ECEB4B60, &unk_1E1B02620);
          sub_1E1308058(&v263, &unk_1ECEB5670, qword_1E1B03EC0);
          sub_1E1308058(v256, &qword_1ECEB2DF0, &unk_1E1B02CE0);

          MEMORY[0x1E68FEF20](v144);
          if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();

          v54 = v266;
          v12 = v249;
          goto LABEL_33;
        }
      }

      else
      {
        *&v257 = 0;
      }

      *(&v264 + 1) = MEMORY[0x1E69E7CA8] + 8;
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v260 = 0;
      }

      goto LABEL_19;
    }
  }

LABEL_33:
  if (qword_1ECEB1470 != -1)
  {
    swift_once();
  }

  v145 = v239;
  sub_1E1AF52EC();
  v146 = v238;
  v147 = v241;
  sub_1E1AF531C();
  (*(v240 + 8))(v145, v147);
  v148 = *(v12 + 48);
  v149 = v248;
  v150 = v148(v146, 1, v248);
  v151 = v246;
  v152 = v243;
  if (v150 == 1)
  {
    sub_1E1308058(v146, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  else
  {
    v153 = v235;
    v244 = *(v12 + 32);
    v245 = v12 + 32;
    (v244)(v235, v146, v149);
    sub_1E1AEF5EC();
    v154 = v236;
    if ((*(v151 + 48))(v152, 1, v236) == 1)
    {
      (*(v12 + 8))(v153, v149);
      sub_1E1308058(v152, &qword_1ECEB39F0, &qword_1E1B489E0);
    }

    else
    {
      (*(v151 + 32))(v228, v152, v154);
      v155 = v237;

      v156 = v229;
      sub_1E1AEF56C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2708, &unk_1E1B02B60);
      v157 = v223;
      v158 = (*(v223 + 80) + 32) & ~*(v223 + 80);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_1E1B02CC0;
      v160 = v159 + v158;
      v161 = v224;
      (*(v157 + 16))(v160, v156, v224);
      sub_1E1AEF5DC();
      v162 = v218;
      sub_1E1AEF5FC();
      v163 = v248;
      if ((v148)(v162, 1) == 1)
      {
        (*(v157 + 8))(v229, v161);
        (*(v246 + 8))(v228, v236);
        (*(v249 + 8))(v235, v163);
        sub_1E1308058(v162, &unk_1ECEB4B60, &unk_1E1B02620);
      }

      else
      {
        v164 = v222;
        (v244)(v222, v162, v163);
        v165._countAndFlagsBits = 0xD000000000000020;
        v165._object = 0x80000001E1B60DB0;
        v166._countAndFlagsBits = 0;
        v166._object = 0xE000000000000000;
        v167 = localizedString(_:comment:)(v165, v166);
        v243 = v167._object;
        v244 = v167._countAndFlagsBits;
        v168 = sub_1E1926F88(0xD000000000000011, 0x80000001E1B56800, 20.0, 20.0);
        v169 = v155[3];
        v240 = v155[2];
        v170 = *(v249 + 16);
        v171 = v221;
        v170(v221, v164, v163);
        v172 = v155[13];
        v173 = v155[6];
        v174 = v155[14];
        v175 = v155[15];
        v241 = v155[12];
        v242 = v174;

        v245 = v168;

        v176 = v219;
        sub_1E1AF3DFC();
        type metadata accessor for WriteReviewAction(0);
        v177 = swift_allocObject();
        v178 = &v177[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_adamId];
        *v178 = v240;
        *(v178 + 1) = v169;
        v179 = v248;
        v170(&v177[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_url], v171, v248);
        v180 = &v177[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appName];
        *v180 = v241;
        v180[1] = v172;
        *&v177[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appIcon] = v173;
        v181 = &v177[OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_itemDescription];
        *v181 = v242;
        v181[1] = v175;
        v265 = 0;
        v263 = 0u;
        v264 = 0u;
        v182 = v176;
        v183 = v250;
        (*(v247 + 16))(v220, v182, v250);
        v184 = sub_1E1AF46DC();
        v185 = v214;
        (*(*(v184 - 8) + 56))(v214, 1, 1, v184);
        v186 = &v177[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
        *v186 = 0u;
        *(v186 + 1) = 0u;
        sub_1E134FD1C(&v263, &v257, &unk_1ECEB5670, qword_1E1B03EC0);
        if (*(&v258 + 1))
        {
          v260 = v257;
          v261 = v258;
          v262 = v259;
        }

        else
        {

          v187 = v232;
          sub_1E1AEFE9C();
          v188 = sub_1E1AEFE7C();
          v190 = v189;
          (*(v233 + 8))(v187, v234);
          *&v253 = v188;
          *(&v253 + 1) = v190;
          v185 = v214;
          sub_1E1AF6F6C();
          sub_1E1308058(&v257, &unk_1ECEB5670, qword_1E1B03EC0);
        }

        v191 = v223;
        sub_1E1308058(&v263, &unk_1ECEB5670, qword_1E1B03EC0);
        v192 = v247;
        (*(v247 + 8))(v219, v183);
        v193 = *(v249 + 8);
        v193(v221, v179);
        v194 = &v177[OBJC_IVAR____TtC11AppStoreKit6Action_id];
        v195 = v261;
        *v194 = v260;
        *(v194 + 1) = v195;
        *(v194 + 4) = v262;
        sub_1E134B7C8(v185, &v177[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
        v196 = v243;
        *(v177 + 2) = v244;
        *(v177 + 3) = v196;
        *(v177 + 4) = v245;
        *(v177 + 5) = 0;
        (*(v192 + 32))(&v177[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v220, v183);

        MEMORY[0x1E68FEF20](v197);
        v198 = v224;
        if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
          v198 = v224;
        }

        sub_1E1AF62AC();

        v193(v222, v179);
        (*(v191 + 8))(v229, v198);
        (*(v246 + 8))(v228, v236);
        v193(v235, v179);
        v54 = v266;
      }
    }
  }

  if (v54 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_49;
    }
  }

  else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    type metadata accessor for FlowPreviewActionsConfiguration();
    v199 = swift_allocObject();
    *(v199 + 48) = 0;
    *(v199 + 56) = 1;
    *(v199 + 24) = 0;
    *(v199 + 32) = 0;
    *(v199 + 16) = v54;
    *(v199 + 40) = 1;
    swift_beginAccess();
    result = v199;
    *(v199 + 48) = 0;
    *(v199 + 56) = 1;
    return result;
  }

  return 0;
}

uint64_t MixedMediaLockupLayout.LockupPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

double sub_1E149A69C()
{
  v3[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000, "(.\b");
  v3[1] = MEMORY[0x1E69E7DE0];
  KeyPath = swift_getKeyPath(byte_1E1B0E5A0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4800, &unk_1E1B4A4B0);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_1E1B0E3A0;
  qword_1EE2158A0 = v1;
  return result;
}

__n128 MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[4];
  *(a5 + 200) = a1[5];
  v9 = a1[7];
  *(a5 + 216) = a1[6];
  *(a5 + 232) = v9;
  *(a5 + 248) = a1[8];
  v10 = *a1;
  *(a5 + 136) = a1[1];
  v11 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v11;
  *(a5 + 184) = v8;
  *(a5 + 120) = v10;
  sub_1E1308EC0(a2, a5);
  sub_1E1308EC0(a3, a5 + 40);
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 80) = *a4;
  *(a5 + 96) = v13;
  *(a5 + 112) = *(a4 + 32);
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  sub_1E1308EC0(a3, a7 + 16);
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  result = sub_1E1308EC0(a6, a7 + 72);
  *(a7 + 112) = a8;
  *(a7 + 120) = a9;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t MixedMediaLockupLayout.Metrics.verticalSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_1E1308EC0(a1, v1 + 72);
}

void MixedMediaLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

double MixedMediaLockupLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_1E149AC60(a1, &v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v8, v9);
    sub_1E1AF11CC();
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    sub_1E1308058(&v8, &qword_1ECEB47D8, &qword_1E1B0E3B8);
  }

  sub_1E149B040(&v8);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);

  return *(v3 + 240) + *(v3 + 256) + a2;
}

uint64_t sub_1E149AC60@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(v2 + 80, &v31, &qword_1ECEB2AD0, &unk_1E1B03790);
  v10 = *(&v32 + 1);
  result = sub_1E1308058(&v31, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (!v10 && *(v2 + 184) != 1)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v12 = *(v2 + 128);
  if (qword_1EE1DA4E8 != -1)
  {
    swift_once();
  }

  *&v31 = qword_1EE2158A0;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v14 = v13;
  v15 = v13;
  v16 = *(v7 + 8);
  v16(v9, v6);

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = a2;
  v17 = v12 * v14;
  if ((v12 * v14) >> 64 != v17 >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1E134FD1C(v3 + 80, &v31, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (!*(&v32 + 1))
  {
    sub_1E1308058(&v31, &qword_1ECEB2AD0, &unk_1E1B03790);
    goto LABEL_16;
  }

  v29 = v33;
  v27 = __swift_project_boxed_opaque_existential_1Tm(&v31, *(&v32 + 1));
  v30 = qword_1EE2158A0;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v19 = v18;
  v20 = v18;
  v16(v9, v6);

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = v12 * v19;
  if ((v12 * v19) >> 64 != result >> 63)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  sub_1E1AF146C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_16:
  v21 = *(v3 + 120);
  v29 = *(v3 + 176);
  sub_1E1300B24(v3 + 136, &v32 + 8);
  LOBYTE(v31) = v21;
  *(&v31 + 1) = v17;
  *&v32 = v29;
  v22 = v28;
  *(v28 + 3) = &type metadata for LineCountTextLayout;
  v22[4] = sub_1E149BD94();
  v22[5] = sub_1E149BDE8();
  v23 = swift_allocObject();
  *v22 = v23;
  sub_1E134FD1C(v3 + 80, (v23 + 5), &qword_1ECEB2AD0, &unk_1E1B03790);
  v24 = v32;
  v23[1] = v31;
  v23[2] = v24;
  v25 = v34;
  v23[3] = v33;
  v23[4] = v25;
  v26 = v29;

  return v26;
}

uint64_t sub_1E149B040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = 1;
  v63 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E63B0];
  v5 = MEMORY[0x1E69ABBA8];
  *(&v48 + 1) = MEMORY[0x1E69E63B0];
  *&v49 = MEMORY[0x1E69ABBA8];
  *&v47 = 0;
  *(&v39 + 1) = MEMORY[0x1E69E63B0];
  *&v40 = MEMORY[0x1E69ABBA8];
  *&v38 = 0;
  sub_1E1300B24(v1, v58);
  sub_1E1300B24(&v47, &v60);
  sub_1E134FD1C(&v38, v61, &unk_1ECEB47F0, &qword_1E1B05780);
  v59 = 0;
  v61[5] = 0;
  sub_1E1308058(&v38, &unk_1ECEB47F0, &qword_1E1B05780);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v57[3] = v4;
  v57[4] = v5;
  v56[4] = v5;
  v57[0] = 0;
  v56[3] = v4;
  v56[0] = 0;
  if ((*(v1 + 120) & 1) == 0)
  {
    sub_1E149BCE4(v58, &v47);
    v7 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1E172D4E0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v10;
    v11 = &v7[136 * v9];
    *(v11 + 2) = v47;
    v12 = v48;
    v13 = v49;
    v14 = v51;
    *(v11 + 5) = v50;
    *(v11 + 6) = v14;
    *(v11 + 3) = v12;
    *(v11 + 4) = v13;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    *(v11 + 20) = v55;
    *(v11 + 8) = v16;
    *(v11 + 9) = v17;
    *(v11 + 7) = v15;
    __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
    sub_1E1300B24(v56, &v52 + 8);
    sub_1E1300B24(v2 + 40, &v47);
    sub_1E1300B24(v57, &v50);
    WORD4(v49) = 0;
    v55 = 0;
    v18 = *(v7 + 2);
    if (!v18)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_1E149BCE4(&v47, &v38);
    v19 = *(v7 + 2);
    if (v19)
    {
      v63 = v7;
      if (v19 < *(v7 + 3) >> 1)
      {
LABEL_10:
        sub_1E14F3120(1uLL, 1, 1, &v38);
        sub_1E149BD40(&v47);
        sub_1E149BD40(v58);
        v20 = v62;
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    v7 = sub_1E172D4E0(1, v19 + 1, 1, v7);
    v63 = v7;
    goto LABEL_10;
  }

  sub_1E134FD1C(v1 + 80, &v47, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (!*(&v48 + 1))
  {
    sub_1E1308058(&v47, &qword_1ECEB2AD0, &unk_1E1B03790);
LABEL_12:
    if (*(v2 + 184) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
  v6 = sub_1E1AF112C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
LABEL_14:
  __swift_assign_boxed_opaque_existential_1(v56, (v2 + 192));
  sub_1E1300B24(v56, &v52 + 8);
  sub_1E1300B24(v2 + 40, &v47);
  sub_1E1300B24(v57, &v50);
  WORD4(v49) = 0;
  v55 = 0;
  sub_1E149BCE4(&v47, &v38);
  v7 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v7 + 2);
  v18 = *(v7 + 3);
  v10 = v2 + 1;
  if (v2 >= v18 >> 1)
  {
LABEL_20:
    v7 = sub_1E172D4E0((v18 > 1), v10, 1, v7);
  }

  sub_1E149BD40(&v47);
  *(v7 + 2) = v10;
  v21 = &v7[136 * v2];
  v22 = v42;
  v23 = v40;
  v24 = v39;
  *(v21 + 5) = v41;
  *(v21 + 6) = v22;
  *(v21 + 3) = v24;
  *(v21 + 4) = v23;
  v25 = v45;
  v26 = v44;
  v27 = v43;
  *(v21 + 20) = v46;
  *(v21 + 8) = v26;
  *(v21 + 9) = v25;
  *(v21 + 7) = v27;
  *(v21 + 2) = v38;
  sub_1E149BCE4(v58, &v47);
  v28 = *(v7 + 3);
  v29 = v2 + 2;
  if (v29 > (v28 >> 1))
  {
    v7 = sub_1E172D4E0((v28 > 1), v29, 1, v7);
  }

  sub_1E149BD40(v58);
  *(v7 + 2) = v29;
  v30 = &v7[136 * v10];
  v31 = v51;
  v33 = v48;
  v32 = v49;
  *(v30 + 5) = v50;
  *(v30 + 6) = v31;
  *(v30 + 3) = v33;
  *(v30 + 4) = v32;
  v35 = v53;
  v34 = v54;
  v36 = v52;
  *(v30 + 20) = v55;
  *(v30 + 8) = v35;
  *(v30 + 9) = v34;
  *(v30 + 7) = v36;
  *(v30 + 2) = v47;
  v20 = 1;
LABEL_18:
  *a1 = v20;
  *(a1 + 8) = v7;
  __swift_destroy_boxed_opaque_existential_1(v56);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

void MixedMediaLockupLayout.placeChildren(relativeTo:in:)(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47E0, &qword_1E1B0E3C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  sub_1E1AF6B0C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1E149AC60(a1, v39);
  sub_1E134FD1C(v39, &v36, &qword_1ECEB47D8, &qword_1E1B0E3B8);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v36, v38);
    sub_1E1AF11CC();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    sub_1E1308058(&v36, &qword_1ECEB47D8, &qword_1E1B0E3B8);
    v21 = 0.0;
  }

  v22 = *(v6 + 120);
  v40.origin.x = v13;
  v40.origin.y = v15;
  v40.size.width = v17;
  v40.size.height = v19;
  MinX = CGRectGetMinX(v40);
  v23 = v13;
  v24 = v15;
  v25 = v17;
  v26 = v19;
  if (v22)
  {
    Width = CGRectGetWidth(*&v23);
    v41.origin.x = v13;
    v41.origin.y = v15;
    v41.size.width = v17;
    v41.size.height = v19;
    Height = CGRectGetHeight(v41);
    v42.origin.x = v13;
    v42.origin.y = v15;
    v42.size.width = v17;
    v42.size.height = v19;
    CGRectGetMinX(v42);
    v43.origin.x = v13;
    v43.origin.y = v15;
    v43.size.width = v17;
    v43.size.height = v19;
    CGRectGetMinY(v43);
    MinY = v21;
  }

  else
  {
    MinY = CGRectGetMinY(*&v23);
    v44.origin.x = v13;
    v44.origin.y = v15;
    v44.size.width = v17;
    v44.size.height = v19;
    Width = CGRectGetWidth(v44);
    v45.origin.x = v13;
    v45.origin.y = v15;
    v45.size.width = v17;
    v45.size.height = v19;
    Height = CGRectGetHeight(v45);
    v46.origin.x = v13;
    v46.origin.y = v15;
    v46.size.width = v17;
    v46.size.height = v19;
    CGRectGetMinX(v46);
    v47.origin.x = v13;
    v47.origin.y = v15;
    v47.size.width = v17;
    v47.size.height = v19;
    CGRectGetMaxY(v47);
  }

  v48.origin.x = v13;
  v48.origin.y = v15;
  v48.size.width = v17;
  v48.size.height = v19;
  CGRectGetWidth(v48);
  sub_1E149B040(&v36);
  v28 = v36;
  v29 = v37;
  sub_1E134FD1C(v39, &v36, &qword_1ECEB47D8, &qword_1E1B0E3B8);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v36, v38);
    sub_1E1AF1B7C();
    v30 = sub_1E1AF111C();
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    sub_1E1308058(v11, &qword_1ECEB47E0, &qword_1E1B0E3C0);
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    sub_1E1308058(&v36, &qword_1ECEB47D8, &qword_1E1B0E3B8);
    v31 = sub_1E1AF111C();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    sub_1E1308058(v11, &qword_1ECEB47E0, &qword_1E1B0E3C0);
  }

  LOBYTE(v36) = v28;
  v37 = v29;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(x8_0, MinX, MinY, Width, Height - v21);
  sub_1E1308058(v39, &qword_1ECEB47D8, &qword_1E1B0E3B8);
}

unint64_t sub_1E149B8C8()
{
  result = qword_1ECEB47E8;
  if (!qword_1ECEB47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB47E8);
  }

  return result;
}

uint64_t sub_1E149B924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1E149B96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E149BA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E149BA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1E149BD94()
{
  result = qword_1EE1DCDE8;
  if (!qword_1EE1DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCDE8);
  }

  return result;
}

unint64_t sub_1E149BDE8()
{
  result = qword_1EE1DCDE0;
  if (!qword_1EE1DCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCDE0);
  }

  return result;
}

uint64_t Gate.Condition.__allocating_init(initialValue:)(char a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t Gate.Condition.init(initialValue:)(char a1)
{
  swift_weakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

double sub_1E149BEF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  return result;
}

uint64_t sub_1E149BF58()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

double sub_1E149BFA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

uint64_t sub_1E149C048(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t sub_1E149C0BC(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t (*sub_1E149C12C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E149C180;
}

uint64_t sub_1E149C180(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1E149DEE8();
    }
  }

  return result;
}

uint64_t Gate.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double Gate.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t Gate.__allocating_init(queue:passingDelay:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Gate.init(queue:passingDelay:)(a1, a2);
  return v4;
}

uint64_t Gate.init(queue:passingDelay:)(uint64_t a1, double a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CE0, &unk_1E1B04940);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v7 = sub_1E1AF470C();
  v8 = MEMORY[0x1E69AB218];
  *(v2 + 104) = v7;
  *(v2 + 112) = v8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 80));
  sub_1E1AF46FC();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double Gate.conditions.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Gate.add(condition:)(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x1E68FEF20](v2);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  return swift_endAccess();
}

Swift::Void __swiftcall Gate.invalidate()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  os_unfair_lock_lock(v2 + 4);
  sub_1E149E254();
  os_unfair_lock_unlock(v2 + 4);
  swift_beginAccess();
  v3 = *(v0 + 56);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v1[7] = MEMORY[0x1E69E7CC0];

    swift_beginAccess();
    v6 = v1[15];
    v7 = v1[16];
    v1[15] = 0;
    v1[16] = 0;
    sub_1E1361B18(v6, v7);
    return;
  }

  v4 = sub_1E1AF71CC();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v5, v3);
      }

      else
      {
      }

      ++v5;
      swift_beginAccess();
      swift_weakAssign();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E149C650(uint64_t a1)
{
  if (*(a1 + 72))
  {

    sub_1E1AF329C();
  }

  *(a1 + 72) = 0;
}

BOOL Gate.isPassing.getter()
{
  v2 = v0;
  i = *v0;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 64) == 1)
  {
    v25 = v7;
    v26 = v5;
    swift_beginAccess();
    v1 = *(v2 + 56);
    v27 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_39;
    }

    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v24 = i;

    if (v8)
    {
      v23 = v4;
      v9 = 0;
      v4 = v1 & 0xC000000000000001;
      i = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v10 = MEMORY[0x1E68FFD80](v9, v1);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v8 = sub_1E1AF71CC();
            goto LABEL_4;
          }

          v10 = *(v1 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_15;
          }
        }

        swift_beginAccess();
        if (*(v10 + 40))
        {
        }

        else
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        ++v9;
        if (v11 == v8)
        {
LABEL_28:
          v14 = v27;
          v4 = v23;
          goto LABEL_31;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v27 = v14;
    v28 = sub_1E149CD28;
    v29 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4810, &qword_1E1B0E5F8);
    sub_1E149E27C();
    v23 = sub_1E1AF5D6C();
    v17 = v16;

    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_1EE216158);
    v19 = v25;
    v20 = v26;
    (*(v26 + 16))(v25, v18, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v30 = v24;
    v27 = v2;

    sub_1E1AF38BC();
    sub_1E13E44F8(&v27);
    sub_1E1AF382C();
    v30 = MEMORY[0x1E69E6158];
    v27 = v23;
    v28 = v17;

    sub_1E1AF38BC();
    sub_1E13E44F8(&v27);
    sub_1E1AF5F1C();

    sub_1E1AF382C();
    sub_1E1AF549C();

    (*(v20 + 8))(v19, v4);
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v21 = sub_1E1AF71CC();
    }

    else
    {
      v21 = *(v14 + 16);
    }

    return v21 == 0;
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v12 = *(v2 + 56);
    v4 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v13 = sub_1E1AF71CC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1E68FFD80](i, v12);
        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v2 = *(v12 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v1 = *(v2 + 40);

      if ((v1 & 1) == 0)
      {

        return 0;
      }
    }

    return 1;
  }
}

double sub_1E149CD28@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
  }

  else
  {
    type metadata accessor for Gate.Condition();

    v4 = sub_1E1AF5E8C();
  }

  *a2 = v4;
  a2[1] = v5;

  return result;
}

uint64_t sub_1E149CDB4@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 72);
  if (v3)
  {

    sub_1E1AF329C();
  }

  *a2 = v3 == 0;
  return result;
}

void sub_1E149CE0C(uint64_t a1)
{
  if (Gate.isPassing.getter())
  {
    swift_beginAccess();
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = *(a1 + 128);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      swift_beginAccess();
      sub_1E1300B24(a1 + 80, v4);
      __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
      sub_1E1AF3FAC();
      sub_1E1361B18(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    Gate.invalidate()();
  }
}

uint64_t Gate.observerScheduler.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));
  sub_1E1308EC0(a1, v1 + 80);
  return swift_endAccess();
}

uint64_t sub_1E149CFC8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E137AFA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E149D05C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E137AFA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  *(v7 + 120) = v6;
  *(v7 + 128) = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1361B18(v8, v9);
}

uint64_t Gate.observer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  sub_1E1300E34(v1, *(v0 + 128));
  return v1;
}

uint64_t Gate.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_1E1361B18(v5, v6);
}

uint64_t Gate.description.getter()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0xE900000000000073;
    v1 = 0x756F6D796E6F6E61;
  }

  sub_1E1AF5D9C();
  sub_1E149E32C();
  v3 = sub_1E1AF606C();
  v5 = v4;
  MEMORY[0x1E68FECA0](v1, v2);

  MEMORY[0x1E68FECA0](58, 0xE100000000000000);
  MEMORY[0x1E68FECA0](v3, v5);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0x2865746147;
}

uint64_t Gate.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  sub_1E1361B18(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t Gate.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  sub_1E1361B18(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t Gate.NotificationCondition.__allocating_init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  swift_weakInit();
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = a5;
  sub_1E13BFF54(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_1E1AF748C();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_updateAutoPlayVideoSettings;
  [a4 addObserver:v10 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_1E13BFF54(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_1E1AF748C();
    v29 = v26;
    v20 = &selRef_updateAutoPlayVideoSettings;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[134]];

  swift_unknownObjectRelease();
  sub_1E13E44F8(a3);
  return v10;
}

uint64_t Gate.NotificationCondition.init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  swift_weakInit();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = a5;
  sub_1E13BFF54(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_1E1AF748C();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_updateAutoPlayVideoSettings;
  [a4 addObserver:v5 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_1E13BFF54(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_1E1AF748C();
    v29 = v26;
    v20 = &selRef_updateAutoPlayVideoSettings;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[134]];

  swift_unknownObjectRelease();
  sub_1E13E44F8(a3);
  return v5;
}

uint64_t sub_1E149DA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1E1AEF55C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1AEF50C();
  swift_beginAccess();
  *(a1 + 40) = a4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E149DEE8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Gate.CountingCondition.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t Gate.CountingCondition.init()()
{
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t sub_1E149DC30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  swift_beginAccess();
  *(v3 + 40) = v2 == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

Swift::Void __swiftcall Gate.CountingCondition.increment()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v3;
    v4 = v3 == 0;
    swift_beginAccess();
    *(v0 + 40) = v4;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }
}

Swift::Bool __swiftcall Gate.CountingCondition.decrement()()
{
  v1 = v0;
  v2 = 1;
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(v1 + 48) = v5;
    v6 = v5 == 0;
    swift_beginAccess();
    *(v1 + 40) = v6;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }

    return *(v1 + 48) == 0;
  }

  return v2;
}

uint64_t sub_1E149DE44()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E149DE74(uint64_t a1)
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1E149DEE8()
{
  v16 = sub_1E1AF326C();
  v15 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v6 = sub_1E1AF320C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v0 + 48);
  v22 = sub_1E149E5BC;
  v23 = v0;
  v8 = v7;
  v14[0] = v7;
  os_unfair_lock_lock(v7 + 4);
  sub_1E149E5D8(aBlock);
  v14[1] = 0;
  os_unfair_lock_unlock(v8 + 4);
  aBlock[4] = sub_1E149E5F4;
  v26 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_16;
  _Block_copy(aBlock);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  sub_1E1AF32AC();
  swift_allocObject();
  v9 = sub_1E1AF328C();

  sub_1E1AF325C();
  sub_1E1AF32DC();
  v10 = *(v15 + 8);
  v11 = v16;
  v10(v2, v16);
  sub_1E1AF68CC();
  v10(v5, v11);
  v20 = v0;
  v21 = v9;
  v17 = sub_1E149E5FC;
  v18 = &v19;
  v12 = v14[0];
  os_unfair_lock_lock((v14[0] + 16));
  sub_1E149E644();
  os_unfair_lock_unlock(v12 + 4);
}

unint64_t sub_1E149E27C()
{
  result = qword_1ECEB4818;
  if (!qword_1ECEB4818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4810, &qword_1E1B0E5F8);
    sub_1E1302CD4(&qword_1ECEB4820, &qword_1ECEB4828, &qword_1E1B0E600, MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4818);
  }

  return result;
}

unint64_t sub_1E149E32C()
{
  result = qword_1ECEB4830;
  if (!qword_1ECEB4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4830);
  }

  return result;
}

uint64_t sub_1E149E5FC()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t SearchResultsContentPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchResultsContentPresenter.init()();
  return v0;
}

void *SearchResultsContentPresenter.init()()
{
  v9 = sub_1E1AF68DC();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1361A80();
  v8[0] = "it4Gate17CountingCondition";
  v8[1] = v6;
  sub_1E1AF322C();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E149FE48(&qword_1EE1E3438, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  v0[2] = sub_1E1AF692C();
  v0[3] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4838, &unk_1E1B0E758);
  swift_allocObject();
  v0[4] = sub_1E1AF35CC();
  return v0;
}

void *sub_1E149E958@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2740, &qword_1E1B02BA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4858, &qword_1E1B0E930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4860, &qword_1E1B0E938);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = MEMORY[0x1E69AAF98];
  sub_1E1302CD4(&qword_1ECEB4868, &qword_1ECEB4860, &qword_1E1B0E938, MEMORY[0x1E69AAF98]);
  sub_1E1302CD4(&qword_1ECEB4870, &qword_1ECEB2740, &qword_1E1B02BA8, v14);
  v45 = v2;
  sub_1E1AF1F7C();
  sub_1E149FDF4();
  sub_1E1AF3CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4880, &unk_1E1B0E940);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B02CC0;
  v39 = v13;
  v40 = v11;
  v17 = *(v11 + 16);
  v41 = v10;
  v17(v16 + v15, v13, v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4850, &unk_1E1B0E920);
  sub_1E1AF1F0C();

  v19 = v43;
  if (v43 >> 62)
  {
    v36 = v43;
    v37 = sub_1E1AF71CC();
    v19 = v36;
    v20 = v37;
  }

  else
  {
    v20 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
LABEL_15:
    v34 = v40;
    v33 = v41;
    v35 = v42;
    (*(v40 + 56))(v42, 1, 1, v41);
    sub_1E1AF1EDC();

    sub_1E149FE90(v35);
    return (*(v34 + 8))(v39, v33);
  }

  v21 = v19;
  v47 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C684(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v43 = v18;
    v23 = v47;
    v24 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        v26 = v24;
        v46 = MEMORY[0x1E68FFD80](v25);
        type metadata accessor for SearchResult(0);
        sub_1E149FE48(&qword_1EE1E0430, 255, type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
        sub_1E1AF3CBC();
        v47 = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1E135C684((v27 > 1), v28 + 1, 1);
          v23 = v47;
        }

        ++v25;
        *(v23 + 16) = v28 + 1;
        (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v7, v45);
        v24 = v26;
      }

      while (v20 != v25);
    }

    else
    {
      v29 = (v21 + 32);
      type metadata accessor for SearchResult(0);
      sub_1E149FE48(&qword_1EE1E0430, 255, type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
      v30 = v38;
      do
      {
        v46 = *v29;

        sub_1E1AF3CBC();
        v47 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1E135C684((v31 > 1), v32 + 1, 1);
          v30 = v38;
          v23 = v47;
        }

        *(v23 + 16) = v32 + 1;
        (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v30, v45);
        ++v29;
        --v20;
      }

      while (v20);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E149EF04(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF324C();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1E149FDE8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E149FE48(&qword_1EE1E3C80, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1E149F1E8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4850, &unk_1E1B0E920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = sub_1E1AF32BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  a1(a3 + 24);
  swift_endAccess();
  v13 = *(a3 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = sub_1E1AF32EC();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {

    sub_1E149E958(v16, v8);

    sub_1E1AF35BC();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SearchResultsContentPresenter.reapplySnapshot()()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF324C();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  aBlock[4] = sub_1E149F900;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_17;
  v8 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1E149FE48(&qword_1EE1E3C80, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1E149F6E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4850, &unk_1E1B0E920);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = sub_1E1AF32BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1E1AF32EC();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();

    sub_1E149E958(v14, v5);

    sub_1E1AF35BC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E149F928(void *a1, uint64_t a2)
{

  *a1 = MEMORY[0x1E69E7CC0];

  sub_1E1728534(v3);
}

uint64_t sub_1E149F994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  sub_1E149EF04(a3, v5);
}

uint64_t SearchResultsContentPresenter.deinit()
{

  return v0;
}

uint64_t SearchResultsContentPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void SearchResultsContentPresenter.Section.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1E1AF72FC();

  *a3 = v4 != 0;
}

unint64_t sub_1E149FBE0()
{
  result = qword_1ECEB4848;
  if (!qword_1ECEB4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4848);
  }

  return result;
}

uint64_t sub_1E149FC34()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E149FCA0(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

void sub_1E149FCF0(BOOL *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  *a2 = v3 != 0;
}

unint64_t sub_1E149FDF4()
{
  result = qword_1ECEB4878;
  if (!qword_1ECEB4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4878);
  }

  return result;
}

uint64_t sub_1E149FE48(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E149FE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4858, &qword_1E1B0E930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppEventDetailPagePresenter.__allocating_init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E14A04C4(a1, a2);

  return v4;
}

uint64_t AppEventDetailPagePresenter.init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E14A04C4(a1, a2);

  return v2;
}

uint64_t sub_1E149FFFC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E14A0068(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E14A0108()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_1EE1EC290;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EE1EC298[0];
    v5 = v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E14A02E0()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E14A03A8()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view);
}

uint64_t AppEventDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view);

  return v0;
}

uint64_t AppEventDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A04C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_appEventDetailPage) = a2;

  v5 = sub_1E138C578(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppEventDetailPage(0);
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_1E14A076C();
  v7[0] = a2;
  swift_beginAccess();

  sub_1E13891EC(v7, v5 + 40);
  swift_endAccess();
  sub_1E138B568();

  sub_1E14A07C4(v7);
  return v5;
}

uint64_t type metadata accessor for AppEventDetailPagePresenter(uint64_t a1)
{
  result = qword_1ECEB4890;
  if (!qword_1ECEB4890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E14A076C()
{
  result = qword_1ECEB48A0;
  if (!qword_1ECEB48A0)
  {
    type metadata accessor for AppEventDetailPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48A0);
  }

  return result;
}

uint64_t sub_1E14A07C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2588, &unk_1E1B05C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E14A084C(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
    v6 = v5;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E14A093C()
{
  result = qword_1ECEB48A8;
  if (!qword_1ECEB48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48A8);
  }

  return result;
}

unint64_t sub_1E14A0998()
{
  result = qword_1ECEB48B0;
  if (!qword_1ECEB48B0)
  {
    type metadata accessor for PersonalizedOfferContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48B0);
  }

  return result;
}

uint64_t sub_1E14A09F0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_1E1AF189C();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1E135C640(0, v9, 0);
  v10 = v19;
  v11 = a3 + 32;
  v15 = v6 + 32;
  while (1)
  {
    v17(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v19 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1E135C640((v12 > 1), v13 + 1, 1);
      v10 = v19;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    v11 += 40;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14A0B9C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1E135C320(0, v4, 0);
    v5 = v17;
    v8 = *(type metadata accessor for ItemLayoutContext(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v16, v9, &v15);
      if (v3)
      {
        break;
      }

      v11 = v16;
      v17 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E135C320((v12 > 1), v13 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v13 + 1;
      *(v5 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

void sub_1E14A0D08(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1E135CA20(0, v5, 0);
    v7 = v23;
    for (i = (a3 + 56); ; i += 4)
    {
      v9 = *i;
      v18 = *(i - 3);
      v19 = *(i - 1);
      v20 = v9;

      a1(v21, &v18);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v21[0];
      v10 = v21[1];
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v22;
        sub_1E135CA20((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 32 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1E14A0E74(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1E135C048(0, v5, 0);
    v8 = v15;
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;

      a1(&v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v14;
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E135C048((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t (*sub_1E14A0FA0(uint64_t (*result)(double *, unint64_t), double a2, uint64_t a3, uint64_t a4))(double *, unint64_t)
{
  v6 = result;
  v7 = 0;
  v10 = a2;
  v8 = *(a4 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(type metadata accessor for ItemLayoutContext(0) - 8);
    result = v6(&v10, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
  }

  while (!v4);
  return result;
}

uint64_t BasePageLayoutSectionProvider.__allocating_init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E1308EC0(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1E1308EC0(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

id sub_1E14A1124(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v63 = a8;
  v64 = a5;
  v65 = a6;
  v62 = a9;
  swift_getKeyPath(asc_1E1B0EAF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  sub_1E1AF3DAC();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v61 = a4;
    v17 = a7;
    v18 = sub_1E13006E4(0, &qword_1EE1E3388, 0x1E6995568);
    v19 = (a2)();
    v20 = swift_beginAccess();
    v21 = v10[8];
    if (*(v19 + 16))
    {
      MEMORY[0x1EEE9AC00](v20);
      v57 = v18;
      v58 = v10 + 2;
      v59 = v21;
      v60 = a10;

      sub_1E14A0FA0(sub_1E14A2628, 0.0, v56, v19);
      v30 = v29;
      v31 = v10[5];
      v32 = v10[6];
      __swift_project_boxed_opaque_existential_1Tm(v10 + 2, v31);
      v33 = (*(v32 + 8))(a1, a10, v31, v32);
      if (v33 && (v34 = v33, (v35 = swift_conformsToProtocol2()) != 0) && ((*(v35 + 24))(a1, a10, v34, v35) & 1) != 0)
      {
        v36 = v19;
        v37 = v30;
        v38 = 1;
      }

      else
      {
        v36 = v19;
        v37 = v30;
        v38 = 0;
      }

      v27 = sub_1E148A668(v36, v38, a1, v63, v62, a10, v37);
    }

    else
    {

      v27 = _sSo23NSCollectionLayoutGroupC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    a7 = v17;
    v48 = [objc_opt_self() sectionWithGroup_];
    v49 = [objc_opt_self() standardUserDefaults];
    v50 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

    [v48 setOrthogonalScrollingBehavior_];
    [v48 setInterGroupSpacing_];
    Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a1, v61, a10, v11[7]);
    if (v51)
    {
      aBlock[4] = v51;
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E14A1CA0;
      aBlock[3] = &block_descriptor_18;
      v53 = _Block_copy(aBlock);
    }

    else
    {
      v53 = 0;
    }

    [v48 setVisibleItemsInvalidationHandler_];
    _Block_release(v53);
  }

  else
  {
    v22 = a2(v16);
    swift_beginAccess();
    v23 = v10[8];
    v24 = sub_1E13006E4(0, &qword_1EE1E3388, 0x1E6995568);
    if (*(v22 + 16))
    {
      MEMORY[0x1EEE9AC00](v24);
      v57 = v25;
      v58 = v10 + 2;
      v59 = v23;
      v60 = a10;

      v26 = sub_1E14A0B9C(sub_1E14A1E28, v56, v22);
      v61 = a7;
      v39 = v26;
      v40 = v10[5];
      v41 = v10[6];
      __swift_project_boxed_opaque_existential_1Tm(v10 + 2, v40);
      v42 = (*(v41 + 8))(a1, a10, v40, v41);
      if (v42 && (v43 = v42, (v44 = swift_conformsToProtocol2()) != 0) && ((*(v44 + 24))(a1, a10, v43, v44) & 1) != 0)
      {
        v45 = v22;
        v46 = v39;
        v47 = 1;
      }

      else
      {
        v45 = v22;
        v46 = v39;
        v47 = 0;
      }

      v28 = sub_1E148AF90(v45, v46, v47, a1, v63, v62, a10);

      a7 = v61;
    }

    else
    {

      v28 = _sSo23NSCollectionLayoutGroupC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(a1);
    }

    v48 = [objc_opt_self() sectionWithGroup_];
  }

  v54 = v48;
  _s11AppStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(v54, a1, v64, v65, a7, a10);

  return v54;
}

BOOL sub_1E14A16EC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E68FFD80](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 1);
  return v3 != v5;
}

void sub_1E14A17CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E68FFD80](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 1)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

BOOL sub_1E14A1908(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E68FFD80](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 alignment];

    v4 = v5 + 1;
  }

  while (v8 != 5);
  return v3 != v5;
}

void sub_1E14A19E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E68FFD80](v3, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      if ([v5 alignment] == 5)
      {
        v7 = [v6 layoutSize];
        v8 = [v7 heightDimension];

        [v8 dimension];
        v10 = v9;

        v4 = v4 + v10;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

id sub_1E14A1B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = [objc_opt_self() sectionWithGroup_];
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

  [v12 setOrthogonalScrollingBehavior_];
  [v12 setInterGroupSpacing_];
  Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(a2, a6, a7, *(v8 + 56));
  if (v15)
  {
    v19[4] = v15;
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E14A1CA0;
    v19[3] = &block_descriptor_3;
    v17 = _Block_copy(v19);
  }

  else
  {
    v17 = 0;
  }

  [v12 setVisibleItemsInvalidationHandler_];
  _Block_release(v17);
  return v12;
}

uint64_t sub_1E14A1CA0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB48D0, &qword_1E1B0EB98);
  v9 = sub_1E1AF621C();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  return swift_unknownObjectRelease();
}

void *BasePageLayoutSectionProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t BasePageLayoutSectionProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id _s11AppStoreKit29BasePageLayoutSectionProviderC27addSupplementariesAndInsets2to3for05shelff7SpacingH00o13SupplementaryH08asPartOfySo012NSCollectionfG0C_AA05ShelfF7ContextVAA0vfpH0_pAA0vqH0_p9JetEngine0D11ObjectGraphCtF_0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v79 = a1;
  v8 = sub_1E1AF745C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v12);
  (*(v13 + 8))(v81, a2, v12, v13);
  v14 = v82;
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  v74 = type metadata accessor for ShelfLayoutContext(0);
  v15 = *(a2 + *(v74 + 40));
  v16 = a2;
  sub_1E13BC274(v14);
  v17 = sub_1E1AF12DC();
  v18 = *(v9 + 8);
  v18(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v19);
  (*(v20 + 16))(v81, a2, v19, v20);
  v21 = v82;
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  sub_1E13BC274(v21);
  v78 = v15;
  v22 = sub_1E1AF12DC();
  v73 = v11;
  v75 = v8;
  v76 = v9 + 8;
  v77 = v18;
  v18(v11, v8);
  v23 = v70;
  v24 = v16;
  __swift_destroy_boxed_opaque_existential_1(v81);
  v25 = v16 + *(v74 + 28);
  v26 = *(v25 + 368);
  v27 = *(v25 + 384);
  ObjectType = swift_getObjectType();
  v29 = a3;
  v30 = a3;
  v31 = v71;
  v32 = (*(v23 + 8))(v16, v30, v71, ObjectType, v23);
  v80 = MEMORY[0x1E69E7CC0];
  LODWORD(v74) = sub_1E14A16EC(v32) && v17 > 0.0;
  if (v74 == 1)
  {
    v33 = ObjectType;
    sub_1E14A17CC(v32);
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension_];
    v38 = [v36 absoluteDimension_];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    v40 = sub_1E1AF5DBC();
    v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v39 elementKind:v40 alignment:1 absoluteOffset:{0.0, -v35}];

    MEMORY[0x1E68FEF20]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    ObjectType = v33;
  }

  sub_1E172854C(v42);
  v43 = sub_1E14A1908(v32);
  v44 = v79;
  if (v43 && v22 > 0.0)
  {
    sub_1E14A19E8(v32);
    v46 = v45;

    v47 = objc_opt_self();
    v48 = [v47 fractionalWidthDimension_];
    v49 = [v47 absoluteDimension_];
    v50 = [objc_opt_self() sizeWithWidthDimension:v48 heightDimension:v49];

    v51 = sub_1E1AF5DBC();
    v52 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v50 elementKind:v51 alignment:5 absoluteOffset:{0.0, v46}];

    MEMORY[0x1E68FEF20]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    v72 = 1;
  }

  else
  {

    v72 = 0;
  }

  sub_1E13006E4(0, &qword_1EE1E32D0, 0x1E6995548);
  v53 = sub_1E1AF620C();

  [v44 setBoundarySupplementaryItems_];

  (*(v23 + 16))(v24, v29, v31, ObjectType, v23);
  sub_1E13006E4(0, &unk_1EE1E3310, 0x1E6995550);
  v54 = sub_1E1AF620C();

  [v44 setDecorationItems_];

  v55 = v29[3];
  v56 = v29[4];
  __swift_project_boxed_opaque_existential_1Tm(v29, v55);
  (*(v56 + 24))(v81, v24, v55, v56);
  v57 = v82;
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  v58 = v73;
  sub_1E13BC274(v57);
  v59 = sub_1E1AF12DC();
  v60 = v75;
  v61 = v77;
  v77(v58, v75);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v62 = v29[3];
  v63 = v29[4];
  __swift_project_boxed_opaque_existential_1Tm(v29, v62);
  (*(v63 + 32))(v81, v24, v62, v63);
  v64 = v82;
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  sub_1E13BC274(v64);
  v65 = sub_1E1AF12DC();
  v61(v58, v60);
  __swift_destroy_boxed_opaque_existential_1(v81);
  if (v74)
  {
    v66 = 0.0;
    v67 = v59 + 0.0;
    if (v72)
    {
      return [v79 setContentInsets_];
    }

    goto LABEL_15;
  }

  v67 = v17 + v59;
  v66 = 0.0;
  if ((v72 & 1) == 0)
  {
LABEL_15:
    v66 = v22;
  }

  return [v79 setContentInsets_];
}

uint64_t EditorialStoryCardLayout.init(metrics:artworkView:headerLabel:titleLabel:descriptionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v10;
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = *(a1 + 144);
  v11 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v11;
  v12 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v12;
  v13 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v13;
  sub_1E1308EC0(a2, a6 + 152);
  sub_1E1308EC0(a3, a6 + 192);
  sub_1E1308EC0(a4, a6 + 232);

  return sub_1E1308EC0(a5, a6 + 272);
}

uint64_t EditorialStoryCardLayout.Metrics.init(headerSpace:titleSpace:descriptionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, (a4 + 5));
  result = sub_1E1308EC0(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

uint64_t EditorialStoryCardLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t EditorialStoryCardLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t EditorialStoryCardLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

void EditorialStoryCardLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = a4;
}

__n128 EditorialStoryCardLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_1E14A2B00@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t EditorialStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v38 = a2;
  v13 = sub_1E1AF111C();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 19, v6[22]);
  sub_1E1AF116C();
  v16 = [a1 traitCollection];
  [v16 layoutDirection];

  *&v35[1] = a3;
  *&v35[2] = a4;
  *&v35[3] = a5;
  *&v35[4] = a6;
  sub_1E1AF6B0C();
  sub_1E1AF6B1C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8, &unk_1E1B02B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v26 = v7[27];
  v27 = v7[28];
  v28 = __swift_project_boxed_opaque_existential_1Tm(v7 + 24, v26);
  v43 = v26;
  v44 = *(v27 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v28, v26);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1E1300B24(v42, inited + 32);
  sub_1E1300B24(v7, inited + 80);
  sub_1E141E104(&v39, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_1E141E174(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v30 = v7[32];
  v31 = v7[33];
  v32 = __swift_project_boxed_opaque_existential_1Tm(v7 + 29, v30);
  v43 = v30;
  v44 = *(v31 + 8);
  v33 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1E1300B24(v42, inited + 168);
  sub_1E1300B24((v7 + 5), inited + 216);
  sub_1E141E104(&v39, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_1E141E174(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  LOBYTE(v42[0]) = 1;
  v42[1] = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v15, v18, v20, v22, v24);
  (*(v36 + 8))(v15, v37);

  __swift_project_boxed_opaque_existential_1Tm(v7 + 34, v7[37]);
  sub_1E1AF11CC();
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  CGRectGetMinX(v45);
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  CGRectGetMaxY(v46);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 34, v7[37]);
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

uint64_t sub_1E14A2F78(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E14A3234();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1E14A3000()
{
  result = qword_1ECEB48D8;
  if (!qword_1ECEB48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48D8);
  }

  return result;
}

uint64_t sub_1E14A305C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_1E14A30A4(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E14A3178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1E14A31C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E14A3234()
{
  result = qword_1ECEB48E0;
  if (!qword_1ECEB48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48E0);
  }

  return result;
}

uint64_t PageChangeMetrics.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageChangeMetrics.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageChangeMetrics.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_1E1AF39DC();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v28 = *(v7 + 8);
  v29 = v6;
  v28(v10, v6);
  v15 = sub_1E1AF40DC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB2B28, qword_1E1B03BE0);
  }

  else
  {
    v17 = sub_1E1AF40BC();
    (*(v16 + 8))(v13, v15);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v17 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);

LABEL_5:
  v18 = v33;
  v19 = v14;
  v20 = v31;
  *(v33 + 16) = v17;
  sub_1E1AF381C();
  v21 = v32;
  (*(v3 + 16))(v5, v32, v20);
  sub_1E1AF3ABC();
  v22 = v30;
  v23 = sub_1E1AF62EC();
  v24 = v20;
  if (v22)
  {
    (*(v3 + 8))(v21, v20);
    v28(v19, v29);

    type metadata accessor for PageChangeMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    (*(v3 + 8))(v21, v24);
    v28(v19, v29);
    *(v18 + 24) = v25;
  }

  return v18;
}

void sub_1E14A36D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = 0;
  v7 = sub_1E1AF3C1C();
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF3B5C();
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = sub_1E1AF3C3C();
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = v95;
  v70 = a2;
  v24 = sub_1E1AF3ADC();
  v25 = *v23;
  v66 = v3;
  if (v25)
  {
    v26 = v23;
    v22 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *v26;
    *v26 = 0x8000000000000000;
    sub_1E14A55BC(v22, sub_1E160785C, 0, isUniquelyReferenced_nonNull_native, &v94);
    v67 = 0;

    *v26 = v94;
  }

  else
  {
    v67 = 0;
  }

  v24(v95, 0);
  v28 = v70;
  v68 = sub_1E1AF3B7C();
  v86 = v29;
  v30 = *v29;
  v82 = *(*v29 + 16);
  if (v82)
  {
    v31 = 0;
    v32 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v84 = v30 + v32;
    v91 = v72 + 16;
    v90 = (v72 + 8);
    v77 = (v71 + 8);
    v88 = v20;
    v89 = v10;
    v78 = v32;
    v81 = v71 + 16;
    v76 = v30;
    while (v31 < *(v30 + 2))
    {
      v80 = *(v71 + 72);
      v33 = *(v71 + 16);
      v33(v20, v84 + v80 * v31, v10);
      v28 = v20;
      v22 = sub_1E1AF3AFC();
      if (qword_1EE1D2A08 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v7, qword_1EE1D2A10);
      if (v22[2])
      {
        v35 = v34;
        v36 = sub_1E14A5508(&qword_1EE1E3B28, MEMORY[0x1E69AAF78]);
        v87 = v35;
        v28 = v35;
        v73 = v36;
        v37 = sub_1E1AF5D0C();
        v38 = -1 << *(v22 + 32);
        v6 = v37 & ~v38;
        if ((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          v79 = v33;
          v39 = ~v38;
          v40 = *(v72 + 72);
          v92 = *(v72 + 16);
          v93 = v40;
          while (1)
          {
            v92(v9, v22[6] + v93 * v6, v7);
            v10 = sub_1E14A5508(&qword_1EE1E3B20, MEMORY[0x1E69AAF80]);
            v28 = sub_1E1AF5DAC();
            v41 = *v90;
            (*v90)(v9, v7);
            if (v28)
            {
              break;
            }

            v6 = (v6 + 1) & v39;
            if (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v76 = *v77;
          v76(v88, v89);
          v6 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_61;
          }

          v42 = v31;
          v43 = *v86;
          v44 = *(*v86 + 16);
          if (v6 != v44)
          {
            v69 = (v71 + 40);
            v50 = v78;
            v22 = v87;
            while (v6 < v44)
            {
              v84 = v42;
              v88 = v6;
              v82 = v6 * v80;
              v28 = v83;
              v79(v83, v43 + v50 + v6 * v80, v89);
              v51 = sub_1E1AF3AFC();
              if (*(v51 + 16) && (v28 = v22, v52 = sub_1E1AF5D0C(), v53 = -1 << *(v51 + 32), v54 = v52 & ~v53, ((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
              {
                v55 = ~v53;
                while (1)
                {
                  v92(v9, *(v51 + 48) + v54 * v93, v7);
                  v28 = sub_1E1AF5DAC();
                  v41(v9, v7);
                  if (v28)
                  {
                    break;
                  }

                  v54 = (v54 + 1) & v55;
                  if (((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                v76(v83, v89);
                v42 = v84;
                v50 = v78;
                v6 = (v88 + 1);
                if (__OFADD__(v88, 1))
                {
                  goto LABEL_53;
                }
              }

              else
              {
LABEL_34:

                v76(v83, v89);
                v56 = v84;
                v6 = v88;
                v50 = v78;
                if (v84 != v88)
                {
                  if ((v84 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_55;
                  }

                  v28 = *v86;
                  v57 = *(*v86 + 16);
                  if (v84 >= v57)
                  {
                    goto LABEL_56;
                  }

                  v58 = v28 + v78;
                  v72 = v84 * v80;
                  v59 = v89;
                  v6 = v81;
                  v22 = v79;
                  v79(v75, v28 + v78 + v84 * v80, v89);
                  if (v88 >= v57)
                  {
                    goto LABEL_57;
                  }

                  (v22)(v74, v58 + v82, v59);
                  v60 = swift_isUniquelyReferenced_nonNull_native();
                  *v86 = v28;
                  if ((v60 & 1) == 0)
                  {
                    v28 = sub_1E14E697C(v28);
                    *v86 = v28;
                  }

                  v56 = v84;
                  v6 = v88;
                  v22 = v69;
                  if (v84 >= *(v28 + 16))
                  {
                    goto LABEL_58;
                  }

                  v61 = v78;
                  v62 = *v69;
                  v63 = v28 + v78 + v72;
                  v28 = v89;
                  (*v69)(v63, v74, v89);
                  if (v6 >= *(*v86 + 16))
                  {
                    goto LABEL_59;
                  }

                  v62(*v86 + v61 + v82, v75, v28);
                  v50 = v61;
                  v22 = v87;
                }

                v64 = __OFADD__(v56, 1);
                v42 = v56 + 1;
                if (v64)
                {
                  goto LABEL_54;
                }

                v64 = __OFADD__(v6++, 1);
                if (v64)
                {
                  goto LABEL_53;
                }
              }

              v43 = *v86;
              v44 = *(*v86 + 16);
              if (v6 == v44)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_52;
          }

LABEL_18:
          v10 = v89;
          if (v6 >= v42)
          {
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_20;
        }
      }

LABEL_6:

      v20 = v88;
      v10 = v89;
      (*v77)(v88, v89);
      ++v31;
      v30 = v76;
      if (v31 == v82)
      {
        v42 = *(*v86 + 16);
        v6 = v42;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_20:
    v42 = 0;
    v6 = 0;
LABEL_21:
    sub_1E1921D14(v42, v6);
    v68(v95, 0);
    v45 = sub_1E1AF3B8C();
    v28 = MEMORY[0x1E69E7CC0];
    v95[0] = MEMORY[0x1E69E7CC0];
    v46 = *(v45 + 16);
    if (!v46)
    {
LABEL_26:

      sub_1E1AF3B9C();
      return;
    }

    v47 = 0;
    v48 = v71;
    v22 = (v71 + 8);
    v6 = v67;
    v49 = v66;
    while (v47 < *(v45 + 16))
    {
      v28 = v85;
      (*(v48 + 16))(v85, v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v10);
      sub_1E14A418C(v28, v49, &v94);
      if (v6)
      {
        goto LABEL_62;
      }

      ++v47;
      (*v22)(v28, v10);
      v28 = v95;
      sub_1E1728564(v94);
      if (v46 == v47)
      {
        goto LABEL_26;
      }
    }

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
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  (*v22)(v28, v10);

  __break(1u);

  *v28 = v94;

  __break(1u);
}

uint64_t sub_1E14A418C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v99 = a3;
  v4 = sub_1E1AF3B5C();
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0, &unk_1E1B08080);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v84 - v15;
  v16 = sub_1E1AF3ABC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v84 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  sub_1E1AF3B3C();
  v33 = sub_1E1AF3AAC();
  v97 = *(v17 + 8);
  v98 = v17 + 8;
  v97(v32, v16);
  if (*(v33 + 16) && (v34 = sub_1E13018F8(0x707954746E657665, 0xE900000000000065), (v35 & 1) != 0))
  {
    sub_1E137A5C4(*(v33 + 56) + 32 * v34, v106);

    v36 = swift_dynamicCast();
    if (v36)
    {
      v37 = v105[0];
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v105[1];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {

    v37 = 0;
    v38 = 0;
  }

  v39 = v101;
  v91 = v37;
  sub_1E14A4CDC(v96, v37, v38, a1, v101);
  sub_1E14A554C(v39, v13);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {

    sub_1E1308058(v13, &qword_1ECEB36B0, &unk_1E1B08080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2538, &qword_1E1B02940);
    v40 = v103;
    v41 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E1B02CC0;
    (*(v40 + 16))(v42 + v41, a1, v102);
    v43 = v39;
LABEL_27:
    result = sub_1E1308058(v43, &qword_1ECEB36B0, &unk_1E1B08080);
LABEL_28:
    *v99 = v42;
    return result;
  }

  v88 = v38;
  v89 = v17;
  (*(v17 + 32))();
  v44 = *(v103 + 16);
  v45 = v95;
  v96 = v103 + 16;
  v90 = v44;
  v44(v95, a1, v102);
  sub_1E1AF3B3C();
  v87 = sub_1E1AF3A8C();
  *&v86 = v46;
  v47 = v16;
  v48 = v16;
  v49 = v97;
  v97(v25, v47);
  if (sub_1E1AF3A2C())
  {
    v85 = 1;
  }

  else
  {
    sub_1E1AF3B3C();
    v85 = sub_1E1AF3A2C();
    v49(v22, v48);
  }

  v50 = v107;
  sub_1E1AF3B3C();
  v51 = sub_1E1AF3AAC();
  v49(v19, v48);
  v52 = sub_1E1AF3AAC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = v51;
  sub_1E14A55BC(v52, sub_1E160785C, 0, isUniquelyReferenced_nonNull_native, v106);
  v107 = v50;
  if (!v50)
  {

    v84 = v106[0];
    sub_1E1AF3B3C();
    v54 = sub_1E1AF3A6C();
    v49(v22, v48);
    v55 = sub_1E1AF3A6C();
    sub_1E15C60CC(v55, v54);
    sub_1E1AF3B3C();
    v56 = sub_1E1AF3A5C();
    v49(v22, v48);
    v57 = sub_1E1AF3A5C();
    sub_1E15C60F8(v57, v56);
    v58 = v94;
    sub_1E1AF3A7C();
    (*(v89 + 16))(v22, v58, v48);
    sub_1E1AF3B4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2538, &qword_1E1B02940);
    v59 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v89 = *(v103 + 72);
    v42 = swift_allocObject();
    v86 = xmmword_1E1B02CC0;
    *(v42 + 16) = xmmword_1E1B02CC0;
    v87 = v59;
    v60 = v102;
    v90(v42 + v59, v45, v102);
    v61 = v101;
    v62 = v93;
    v63 = v48;
    if (v88)
    {
      if (v91 == 1701273968 && v88 == 0xE400000000000000)
      {

LABEL_21:
        v65 = v90;
        v90(v62, v45, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB48E8, &unk_1E1B0EDB8);
        v66 = sub_1E1AF3C1C();
        v67 = *(v66 - 8);
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v86;
        if (qword_1EE1D2A08 != -1)
        {
          swift_once();
        }

        v70 = __swift_project_value_buffer(v66, qword_1EE1D2A10);
        (*(v67 + 16))(v69 + v68, v70, v66);
        sub_1E1497880(v69);
        swift_setDeallocating();
        (*(v67 + 8))(v69 + v68, v66);
        swift_deallocClassInstance();
        sub_1E1AF3B0C();
        v106[3] = MEMORY[0x1E69E6158];
        v106[0] = 0x6E61684365676170;
        v106[1] = 0xEA00000000006567;
        v71 = sub_1E1AF3B2C();
        v72 = sub_1E1AF3A9C();
        sub_1E138692C(v106, 0x707954746E657665, 0xE900000000000065);
        v72(v104, 0);
        v71(v105, 0);
        v65(v92, v62, v102);
        v74 = *(v42 + 16);
        v73 = *(v42 + 24);
        v96 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v42 = sub_1E172E40C((v73 > 1), v74 + 1, 1, v42);
        }

        v75 = v103;
        v76 = *(v103 + 8);
        v77 = v62;
        v78 = v102;
        v76(v77, v102);
        v79 = v63;
        v80 = v63;
        v81 = v97;
        v97(v94, v79);
        v76(v95, v78);
        v81(v100, v80);
        sub_1E1308058(v101, &qword_1ECEB36B0, &unk_1E1B08080);
        *(v42 + 16) = v96;
        result = (*(v75 + 32))(v42 + v87 + v74 * v89, v92, v78);
        goto LABEL_28;
      }

      v64 = sub_1E1AF74AC();

      if (v64)
      {
        goto LABEL_21;
      }
    }

    v83 = v97;
    v97(v58, v48);
    (*(v103 + 8))(v45, v60);
    v83(v100, v48);
    v43 = v61;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void sub_1E14A4CDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a5;
  v62 = a3;
  v53 = a2;
  v7 = sub_1E1AF3ABC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v49 - v13;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  v18 = *(a1 + 24);
  v19 = *(v18 + 16);
  v57 = v8;
  v61 = v19;
  if (!v19)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_24:
    if (!v62 || (v53 != 0x6973736572706D69 || v62 != 0xEB00000000736E6FLL) && (sub_1E1AF74AC() & 1) == 0)
    {
      if (*(v21 + 16))
      {
        v42 = v52;
        (*(v8 + 16))(v52, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7, v15);

LABEL_58:
        v48 = 0;
      }

      else
      {

        v48 = 1;
        v42 = v52;
      }

      goto LABEL_59;
    }

    v33 = v50;
    sub_1E1AF3B3C();
    v34 = sub_1E1AF3AAC();
    v35 = *(v8 + 8);
    v35(v33, v7);
    if (*(v34 + 16) && (v36 = sub_1E13018F8(0x6973736572706D69, 0xEF65756575516E6FLL), (v37 & 1) != 0))
    {
      sub_1E137A5C4(*(v34 + 56) + 32 * v36, v65);

      v38 = swift_dynamicCast();
      v39 = v63;
      if (!v38)
      {
        v39 = 0;
      }

      v62 = v39;
      if (v38)
      {
        v40 = v64;
      }

      else
      {
        v40 = 0;
      }

      v41 = *(v21 + 16);
      if (!v41)
      {
        goto LABEL_54;
      }
    }

    else
    {

      v62 = 0;
      v40 = 0;
      v41 = *(v21 + 16);
      if (!v41)
      {
LABEL_54:

        v48 = 1;
        v42 = v52;
        v8 = v57;
LABEL_59:
        (*(v8 + 56))(v42, v48, 1, v7);
        return;
      }
    }

    v43 = 0;
    while (1)
    {
      if (v43 >= *(v21 + 16))
      {
        goto LABEL_63;
      }

      (*(v57 + 16))(v55, v21 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v43, v7);
      v44 = sub_1E1AF3AAC();
      if (*(v44 + 16) && (v45 = sub_1E13018F8(0x6973736572706D69, 0xEF65756575516E6FLL), (v46 & 1) != 0))
      {
        sub_1E137A5C4(*(v44 + 56) + 32 * v45, v65);

        if (swift_dynamicCast())
        {
          if (v40)
          {
            if (v63 == v62 && v40 == v64)
            {

LABEL_61:

LABEL_57:
              v8 = v57;
              v42 = v52;
              (*(v57 + 32))(v52, v55, v7);
              goto LABEL_58;
            }

            v47 = sub_1E1AF74AC();

            if (v47)
            {

              goto LABEL_61;
            }
          }

          else
          {
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      if (!v40)
      {

        goto LABEL_57;
      }

LABEL_43:
      ++v43;
      v35(v55, v7);
      if (v41 == v43)
      {
        goto LABEL_54;
      }
    }
  }

  v20 = 0;
  v60 = v8 + 16;
  v56 = (v8 + 8);
  v21 = MEMORY[0x1E69E7CC0];
  v58 = (v8 + 32);
  v54 = v7;
  while (v20 < *(v18 + 16))
  {
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = *(v8 + 72);
    (*(v8 + 16))(v17, v18 + v22 + v23 * v20, v7, v15);
    v24 = sub_1E1AF3AAC();
    if (!*(v24 + 16) || (v25 = sub_1E13018F8(0x707954746E657665, 0xE900000000000065), (v26 & 1) == 0))
    {

LABEL_15:
      if (!v62)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    sub_1E137A5C4(*(v24 + 56) + 32 * v25, v65);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v62)
    {
      if (v63 == v53 && v64 == v62)
      {

LABEL_16:
        v27 = *v58;
        (*v58)(v59, v17, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C6C4(0, *(v21 + 16) + 1, 1);
          v21 = v66;
        }

        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1E135C6C4((v29 > 1), v30 + 1, 1);
          v21 = v66;
        }

        *(v21 + 16) = v30 + 1;
        v31 = v21 + v22 + v30 * v23;
        v7 = v54;
        v27(v31, v59, v54);
        v8 = v57;
        goto LABEL_5;
      }

      v32 = sub_1E1AF74AC();

      if (v32)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_4:
    (*v56)(v17, v7);
LABEL_5:
    if (v61 == ++v20)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t PageChangeMetrics.deinit()
{

  return v0;
}

uint64_t PageChangeMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A543C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PageChangeMetrics();
  v8 = swift_allocObject();
  result = PageChangeMetrics.init(deserializing:using:)(a1, a2);
  if (!v4)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1E14A5508(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E1AF3C1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E14A554C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0, &unk_1E1B08080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E14A55BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1E16076FC(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1E1301CF0(v44, v42);
  v14 = *a5;
  result = sub_1E13018F8(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1E168807C(v20, a4 & 1);
    result = sub_1E13018F8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E1AF757C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1E14154D8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1E1301CF0(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1E1301CF0(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1E16076FC(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1E1301CF0(v44, v42);
        v32 = *a5;
        result = sub_1E13018F8(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1E168807C(v36, 1);
          result = sub_1E13018F8(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_1E1301CF0(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1E1301CF0(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1E16076FC(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1E1337ECC(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.init(arcadeSubscriptionManager:appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ArcadeButtonNameFieldsProvider(0) + 24);
  v9 = *MEMORY[0x1E69AB4D8];
  v10 = sub_1E1AF524C();
  result = (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t type metadata accessor for ArcadeButtonNameFieldsProvider(uint64_t a1)
{
  result = qword_1EE1E8420;
  if (!qword_1EE1E8420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeButtonNameFieldsProvider(0) + 24);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeButtonNameFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v11 = v4;
  LOBYTE(v12) = v3;
  sub_1E1361A40(v4, v3);
  v5 = MetricsFieldsContext.adamIdString.getter();
  v7 = sub_1E14A5B58(&v11, v5, v6);
  v9 = v8;

  v13 = MEMORY[0x1E69E6158];
  v11 = v7;
  v12 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  sub_1E1361A60(v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

uint64_t sub_1E14A5B58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_1E14A5C2C(a2, a3);
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v4 = *a1;
    if (v3)
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = v6;
      v9 = v7;
      return sub_1E14A5B58(&v8, a2, a3);
    }

    else if (*a1)
    {
      if (*a1 == 1)
      {
        return 7959156;
      }

      else
      {
        return 0x6269726373627573;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

uint64_t sub_1E14A5C2C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2036427888;
  }

  v5 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  v14[1] = a2;
  (*(v5 + 56))(v14, ObjectType, v5);
  v8 = v7;
  v9 = swift_getObjectType();
  (*(v8 + 16))(v15, v9, v8);
  v10 = v18 >> 60;
  if ((v18 >> 60) <= 4)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        sub_1E139CEA8(v15);
        swift_unknownObjectRelease();
        return 0x64616F6C6E776F64;
      }

      goto LABEL_16;
    }

    sub_1E139CEA8(v15);
    swift_unknownObjectRelease();
    return 0x657461647075;
  }

  else if (v10 == 5)
  {
    sub_1E139CEA8(v15);
    swift_unknownObjectRelease();
    return 0x6C65636E6163;
  }

  else
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        if ((v11 = v17 | v19, v12 = v15[3] | v15[2] | v15[1], v18 == 0x8000000000000000) && !(v11 | v15[0] | v16 | v12) || v18 == 0x8000000000000000 && v15[0] == 4 && !(v11 | v16 | v12))
        {
          swift_unknownObjectRelease();
          return 7959906;
        }
      }

LABEL_16:
      sub_1E139CEA8(v15);
      swift_unknownObjectRelease();
      return 0x7379616C70;
    }

    sub_1E139CEA8(v15);
    swift_unknownObjectRelease();
    return 1852141679;
  }
}

uint64_t sub_1E14A5E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E1AF524C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E14A5EE0(uint64_t a1)
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v2 <= 0x3F)
  {
    result = sub_1E14A5F7C();
    if (v3 <= 0x3F)
    {
      result = sub_1E1AF524C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E14A5F7C()
{
  result = qword_1EE1E17B0;
  if (!qword_1EE1E17B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1E17B0);
  }

  return result;
}

uint64_t static OnboardingStep.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 24);
  v6(v9, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = MEMORY[0x1E68FFC60](v9, v8);
  sub_1E134B88C(v8);
  sub_1E134B88C(v9);
  return v4 & 1;
}

uint64_t OnboardingStep.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(v4, a2, a3);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E134B88C(v4);
}

AppStoreKit::StyledText::MediaType_optional __swiftcall StyledText.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StyledText.MediaType.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x72616D2F74786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C702F74786574;
  }
}

uint64_t sub_1E14A61E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001E1B561C0;
  if (v2 == 1)
  {
    v5 = 0x80000001E1B561C0;
  }

  else
  {
    v3 = 0x72616D2F74786574;
    v5 = 0xED00006E776F646BLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x616C702F74786574;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E69;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14A62F8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E14A63B0(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E14A6454(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14A6514(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x80000001E1B561C0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C702F74786574;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t StyledText.rawText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E14A65C4()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1E14A6640(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1E14A6640(uint64_t a1)
{
  v2 = sub_1E1AEF81C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEF82C();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_1E1AEF91C();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = *(a1 + 32);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (v23)
  {
    if (v23 == 1)
    {
      v26 = objc_opt_self();

      v27 = [v26 systemFontOfSize_];
      v28 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
      v29 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
      v30 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

      *&v48 = 10;
      *(&v48 + 1) = 0xE100000000000000;
      v49 = v27;
      v50 = v28;
      v51 = 161644770;
      v52 = 0xA400000000000000;
      v53 = v29;
      v54 = 606245;
      v55 = 0xE300000000000000;
      v56 = v30;
      v31 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
      v32 = sub_1E1ADBC74(v24, v25, &v48);
      [*&v32[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_parser] parse];
      v33 = OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator;
      v34 = [*&v32[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator] mutableString];
      if (qword_1EE1E3468 != -1)
      {
        swift_once();
      }

      sub_1E16E354C(qword_1EE2160F0);

      v35 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
      v36 = [v35 string];
      v24 = sub_1E1AF5DFC();
    }

    else
    {
      v43 = v20;
      v44 = v19;
      v37 = sub_1E1AEFCCC();
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
      (*(v45 + 104))(v7, *MEMORY[0x1E6968750], v5);
      (*(v46 + 104))(v4, *MEMORY[0x1E6968728], v47);

      sub_1E1AEF83C();
      sub_1E1AEF8EC();
      v40 = v43;
      v39 = v44;
      (*(v43 + 56))(v14, 0, 1, v44);
      (*(v40 + 32))(v22, v14, v39);
      sub_1E13006E4(0, &qword_1EE1E3420, 0x1E696AAB0);
      (*(v40 + 16))(v17, v22, v39);
      v41 = sub_1E1AF69DC();
      v42 = [v41 string];
      v24 = sub_1E1AF5DFC();

      (*(v40 + 8))(v22, v39);
    }
  }

  else
  {
  }

  return v24;
}

double sub_1E14A6C70(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

double (*sub_1E14A6C8C(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1E14A65C4();
  a1[1] = v3;
  return sub_1E14A6CD4;
}

double sub_1E14A6CD4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v2 = *a1;
  v2[1] = v1;

  return result;
}

uint64_t StyledText.__allocating_init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v6 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
  v8 = sub_1E1AEF91C();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return v6;
}

uint64_t StyledText.init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  *(v3 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
  v8 = sub_1E1AEF91C();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  return v3;
}

uint64_t StyledText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = v2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v16 = v12;
    sub_1E1AF381C();
    sub_1E1423CD4();
    sub_1E1AF369C();
    v15(v8, v5);
    v17 = v30;
    type metadata accessor for StyledText(0);
    v18 = swift_allocObject();
    v19 = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
    v20 = sub_1E1AF39DC();
    (*(*(v20 - 8) + 8))(v29, v20);
    v15(a1, v5);
    *(v18 + 40) = v19;
    v21 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
    v22 = sub_1E1AEF91C();
    (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
    result = v18;
    v24 = (v18 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
    *v24 = 0;
    v24[1] = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v14;
    *(v18 + 32) = v17;
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E14A7DE0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v26 = 0x74786554776172;
    v26[1] = 0xE700000000000000;
    v26[2] = v3;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    v27 = sub_1E1AF39DC();
    (*(*(v27 - 8) + 8))(v29, v27);
    return (v15)(a1, v5);
  }

  return result;
}

id sub_1E14A7200(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AEF81C();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEF82C();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v61 - v14;
  swift_beginAccess();
  v16 = *(v1 + 40);

  v17 = a1;
  v18 = sub_1E158EC84(a1, v16);

  if (!v18)
  {
    v62 = v15;
    v63 = v12;
    v64 = v7;
    v65 = v9;
    v66 = v6;
    v19 = v17;
    v20 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v21 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v22 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();
    *&v73 = 10;
    *(&v73 + 1) = 0xE100000000000000;
    v67 = v19;
    *&v74 = v19;
    *(&v74 + 1) = v20;
    *&v75 = 161644770;
    *(&v75 + 1) = 0xA400000000000000;
    *&v76 = v21;
    *(&v76 + 1) = 606245;
    *&v77 = 0xE300000000000000;
    *(&v77 + 1) = v22;
    v23 = v2;
    if (!*(v2 + 32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0, &qword_1E1B0EE60);
      inited = swift_initStackObject();
      v31 = MEMORY[0x1E69DB688];
      *(inited + 16) = xmmword_1E1B02CD0;
      v32 = *v31;
      *(inited + 32) = *v31;
      v33 = *(&v74 + 1);
      v34 = sub_1E13006E4(0, &qword_1EE1E3458, 0x1E69DB7D0);
      *(inited + 40) = v33;
      v35 = *MEMORY[0x1E69DB648];
      *(inited + 64) = v34;
      *(inited + 72) = v35;
      v36 = v74;
      *(inited + 104) = sub_1E13006E4(0, &qword_1EE1E32B0, 0x1E69DB878);
      *(inited + 80) = v36;
      v37 = v32;
      v38 = v33;
      v39 = v35;
      v40 = v36;
      v27 = sub_1E159D27C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9D0, &unk_1E1B19D00);
      swift_arrayDestroy();
      v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v41 = sub_1E1AF5DBC();
      type metadata accessor for Key(0);
      sub_1E14A7DE0(&qword_1EE1E33D0, type metadata accessor for Key, &unk_1E1B00CE8);
      v42 = sub_1E1AF5C6C();

      v18 = [v28 initWithString:v41 attributes:v42];

      goto LABEL_8;
    }

    if (*(v2 + 32) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0, &qword_1E1B0EE60);
      v43 = swift_initStackObject();
      v44 = MEMORY[0x1E69DB688];
      *(v43 + 16) = xmmword_1E1B02CD0;
      v45 = *v44;
      *(v43 + 32) = *v44;
      v46 = *(&v74 + 1);
      v47 = sub_1E13006E4(0, &qword_1EE1E3458, 0x1E69DB7D0);
      *(v43 + 40) = v46;
      v48 = *MEMORY[0x1E69DB648];
      *(v43 + 64) = v47;
      *(v43 + 72) = v48;
      v49 = v74;
      *(v43 + 104) = sub_1E13006E4(0, &qword_1EE1E32B0, 0x1E69DB878);
      *(v43 + 80) = v49;
      v50 = v45;
      v51 = v46;
      v52 = v48;
      v53 = v49;
      sub_1E159D27C(v43);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9D0, &unk_1E1B19D00);
      swift_arrayDestroy();
      sub_1E13006E4(0, &qword_1EE1E3420, 0x1E696AAB0);
      v28 = *(v23 + 16);
      v54 = sub_1E1AEFCCC();
      (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
      (*(v68 + 104))(v65, *MEMORY[0x1E6968750], v64);
      (*(v69 + 104))(v66, *MEMORY[0x1E6968728], v70);

      v27 = v63;
      sub_1E1AEF83C();
      sub_1E1AF69CC();
      v18 = sub_1E1AF69EC();
      goto LABEL_8;
    }

    v24 = *(v2 + 16);
    v25 = *(v2 + 24);
    v72[2] = v75;
    v72[3] = v76;
    v72[4] = v77;
    v72[0] = v73;
    v72[1] = v74;
    v26 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());

    sub_1E13E3AC8(&v73, v71);
    v27 = sub_1E1ADBC74(v24, v25, v72);
    [*(v27 + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_parser) parse];
    v28 = OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator;
    v29 = [*(v27 + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator) mutableString];
    if (qword_1EE1E3468 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      sub_1E16E354C(qword_1EE2160F0);

      v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
LABEL_8:
      swift_beginAccess();
      v55 = *(v23 + 40);
      if ((v55 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (v55 < 0)
      {
        v29 = *(v23 + 40);
      }

      else
      {
        v29 = (v55 & 0xFFFFFFFFFFFFFF8);
      }

      v56 = v18;
      v57 = sub_1E1AF71CC();
      if (!__OFADD__(v57, 1))
      {
        *(v23 + 40) = sub_1E14A7B48(v29, v57 + 1);
        goto LABEL_15;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    v58 = v18;
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *(v23 + 40);
    sub_1E159A06C(v18, v67, isUniquelyReferenced_nonNull_native);
    *(v23 + 40) = v71[0];
    swift_endAccess();
    sub_1E14A7E28(&v73);
  }

  return v18;
}

uint64_t StyledText.deinit()
{

  sub_1E142E974(v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString);

  return v0;
}

uint64_t StyledText.__deallocating_deinit()
{

  sub_1E142E974(v0 + OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A7B1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = StyledText.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E14A7B48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3818, &unk_1E1B25800);
    v2 = sub_1E1AF72BC();
    v19 = v2;
    sub_1E1AF71BC();
    v3 = sub_1E1AF71EC();
    if (v3)
    {
      v4 = v3;
      sub_1E13006E4(0, &qword_1EE1E32B0, 0x1E69DB878);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1E13006E4(0, &qword_1EE1E3420, 0x1E696AAB0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1E168BE64(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1E1AF6CFC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1E1AF71EC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t type metadata accessor for StyledText(uint64_t a1)
{
  result = qword_1EE1F7BB0;
  if (!qword_1EE1F7BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14A7DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E14A7E80()
{
  result = qword_1ECEB48F0;
  if (!qword_1ECEB48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48F0);
  }

  return result;
}

void sub_1E14A7EDC(uint64_t a1)
{
  sub_1E148D2D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL RestrictionsProtocol.doesAllow(_:properties:)(char *a1, uint64_t a2)
{
  v10 = *a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    v2 = *(a2 + 48);
    v4 = *(a2 + 128);
    v5 = *(a2 + 136);
    if (*(a2 + 16) <= 1u || *(a2 + 16) == 2)
    {
      v6 = sub_1E1AF74AC();
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v5 = 1;
  }

  v7.value._countAndFlagsBits = v3;
  v7.value._object = v2;
  v11.value = v4;
  v11.is_nil = v5;
  v8 = RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(&v10, v7, v11, v6 & 1);

  return v8;
}

uint64_t RestrictionsCheckIntent.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

Swift::Bool __swiftcall RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(AppStoreKit::RestrictionsCheckIntent _, Swift::String_optional bundleId, Swift::Int_optional contentRating, Swift::Bool isArcadeApp)
{
  v6 = v5;
  v7 = v4;
  is_nil = contentRating.is_nil;
  value = contentRating.value;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  v13 = *_;
  if (((*(v5 + 24))() & 1) == 0 || ((*(v6 + 40))(v7, v6) & 1) != 0 && !isArcadeApp)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (v13)
  {
    if (is_nil)
    {
      v14 = 1;
      return v14 & 1;
    }

LABEL_11:
    v17.value._countAndFlagsBits = countAndFlagsBits;
    v17.value._object = object;
    v14 = !RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(v17, value);
    return v14 & 1;
  }

  v16 = (*(v6 + 48))(v7, v6);
  v14 = v16 ^ 1;
  if ((v16 & 1) == 0 && !is_nil)
  {
    goto LABEL_11;
  }

  return v14 & 1;
}

Swift::Bool __swiftcall RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(Swift::String_optional bundleId, Swift::Int contentRating)
{
  v4 = v3;
  v5 = v2;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  if ((*(v3 + 24))())
  {
    if ((*(v4 + 8))(v5, v4) >= contentRating)
    {
      return 0;
    }

    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_1E1AF5DFC();
    v12 = v11;
    if (v10 == sub_1E1AF5DFC() && v12 == v13)
    {

      return 0;
    }

    v15 = sub_1E1AF74AC();

    if (v15)
    {
      return 0;
    }

    if (object)
    {
      v17 = (*(v4 + 16))(v5, v4);
      if (*(v17 + 16) && (v18 = sub_1E13018F8(countAndFlagsBits, object), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        if (v20 >= contentRating)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  return 1;
}

unint64_t sub_1E14A851C()
{
  result = qword_1ECEB48F8;
  if (!qword_1ECEB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB48F8);
  }

  return result;
}

unint64_t sub_1E14A8574()
{
  result = qword_1ECEB4900;
  if (!qword_1ECEB4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4908, &qword_1E1B0F058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4900);
  }

  return result;
}

void sub_1E14A85E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF5DBC();
  v6 = [v2 arrayForKey_];

  if (v6 && (v7 = sub_1E1AF621C(), v6, v8 = sub_1E1679410(v7), , v8))
  {
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v17[0] = a1;
  v17[1] = a2;
  MEMORY[0x1EEE9AC00](v9);
  v16[2] = v17;
  v10 = sub_1E14F2168(sub_1E14A937C, v16, v8);

  if ((v10 & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E130C06C(0, *(v8 + 16) + 1, 1, v8);
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      v8 = sub_1E130C06C((v11 > 1), v12 + 1, 1, v8);
    }

    *(v8 + 16) = v12 + 1;
    v13 = v8 + 16 * v12;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
  }

  v14 = sub_1E1AF620C();

  v15 = sub_1E1AF5DBC();
  [v2 setObject:v14 forKey:v15];
}

double sub_1E14A87E8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 24);

  return result;
}

uint64_t sub_1E14A8844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AF320C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 16);
  sub_1E13BFF54(a3, v23);
  v15 = swift_allocObject();
  v16 = v23[1];
  *(v15 + 40) = v23[0];
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 56) = v16;
  aBlock[4] = sub_1E14A9360;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_19;
  v17 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1E14A8B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E13BFF54(a4, &v8);
  if (v9)
  {
    sub_1E1301CF0(&v8, &v10);
  }

  else
  {
    v6 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    *&v10 = v6;
    if (v9)
    {
      sub_1E13E44F8(&v8);
    }
  }

  swift_beginAccess();

  sub_1E138692C(&v10, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1E14A8C00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E1AF320C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = [objc_opt_self() standardUserDefaults];
    sub_1E14A85E8(a1, a2);
  }

  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1E14A9370;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_7_0;
  v17 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1E14A8F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1E13018F8(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E14154D8();
    }

    sub_1E1301CF0((*(v10 + 56) + 32 * v8), v12);
    sub_1E1412DF0(v8, v10);
    *(a1 + 24) = v10;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  swift_endAccess();
  return sub_1E13E44F8(v12);
}

uint64_t sub_1E14A8FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16) && (v9 = sub_1E13018F8(a2, a3), (v10 & 1) != 0))
  {
    sub_1E137A5C4(*(v8 + 56) + 32 * v9, &v13);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  swift_endAccess();
  v11 = *(&v14 + 1) != 0;
  result = sub_1E13E44F8(&v13);
  *a4 = v11;
  return result;
}

uint64_t sub_1E14A9098()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A90FC()
{
  v9 = sub_1E1AF68DC();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1361A80();
  v8[0] = "disabledEngagementFeatures";
  v8[1] = v6;
  sub_1E1AF322C();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 16) = sub_1E1AF692C();
  *(v0 + 24) = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1E14A939C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E1AF5DBC();
  v2 = [v0 arrayForKey_];

  if (v2 && (v3 = sub_1E1AF621C(), v2, v4 = sub_1E1679410(v3), , v4))
  {
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1E13C4BB8(v4);

  return v5;
}

uint64_t EditorsChoice.__allocating_init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v30 = a9;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0;
  sub_1E134FD1C(a1, &v36, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 104) = v36;
    *(v18 + 120) = v19;
    *(v18 + 136) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v28 = a5;
    v21 = a8;
    v22 = v20;
    v29 = v10;
    v10 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v34 = v22;
    v35 = v24;
    a8 = v21;
    a5 = v28;
    a6 = v10;
    LOBYTE(v10) = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(v30, v18 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics);
  *(v18 + 16) = v31 & 1;
  v25 = v33;
  *(v18 + 24) = v32;
  *(v18 + 32) = v25;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = (v10 == 2) | v10 & 1;
  swift_beginAccess();
  *(v18 + 64) = a8;
  return v18;
}

uint64_t EditorsChoice.init(id:showsBadge:title:notes:isCollapsed:clickAction:impressionMetrics:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v12) = a7;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = a9;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 64) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 80) = 0u;
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v29 = a5;
    v21 = a8;
    v22 = v20;
    v30 = v12;
    v12 = a6;
    v24 = v23;
    (*(v17 + 8))(v19, v16);
    v35 = v22;
    v36 = v24;
    a8 = v21;
    a5 = v29;
    a6 = v12;
    LOBYTE(v12) = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v25 = v41;
  *(v10 + 104) = v40;
  *(v10 + 120) = v25;
  *(v10 + 136) = v42;
  sub_1E134B7C8(v31, v10 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics);
  *(v10 + 16) = v32 & 1;
  v26 = v34;
  *(v10 + 24) = v33;
  *(v10 + 32) = v26;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = (v12 == 2) | v12 & 1;
  swift_beginAccess();
  *(v10 + 64) = a8;

  return v10;
}

uint64_t EditorsChoice.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EditorsChoice.notes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void *EditorsChoice.deinit()
{

  sub_1E1308058(v0 + 72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E134B88C(v0 + 104);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t EditorsChoice.__deallocating_deinit()
{

  sub_1E1308058(v0 + 72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E134B88C(v0 + 104);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14A9B20@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E14A9B88(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E14A9B88(char *a1, uint64_t a2)
{
  v77 = a2;
  v63 = sub_1E1AEFEAC();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v70 = sub_1E1AF380C();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v76 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v73 = v5;
  v27 = *(v5 + 16);
  v28 = v9;
  v29 = v77;
  v27(v28, v77, v4);
  v75 = v26;
  v30 = v21;
  sub_1E1AF464C();
  v31 = v29;
  v32 = v65;
  v74 = v4;
  v27(v84, v31, v4);
  v33 = a1;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  if (v35)
  {
    v36 = v67;
    *&v80 = v34;
    *(&v80 + 1) = v35;
  }

  else
  {
    v37 = v67;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    v36 = v37;
    (*(v64 + 8))(v37, v63);
    *&v80 = v38;
    *(&v80 + 1) = v40;
  }

  sub_1E1AF6F6C();
  v41 = *(v68 + 8);
  v42 = v32;
  v43 = v70;
  v41(v42, v70);
  v44 = v66;
  sub_1E1AF381C();
  LODWORD(v70) = sub_1E1AF370C();
  v41(v44, v43);
  v45 = v69;
  sub_1E1AF381C();
  v68 = sub_1E1AF37CC();
  v67 = v46;
  v41(v45, v43);
  v47 = v71;
  sub_1E1AF381C();
  v69 = sub_1E1AF37CC();
  v66 = v48;
  v41(v47, v43);
  v49 = v72;
  sub_1E1AF381C();
  LODWORD(v71) = sub_1E1AF370C();
  v41(v49, v43);
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v72 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v84);
  v50 = v43;
  v41(v30, v43);
  sub_1E134FD1C(v75, v76, &unk_1ECEB1770, &unk_1E1AFED20);
  type metadata accessor for EditorsChoice(0);
  v51 = swift_allocObject();
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 96) = 0;
  sub_1E134FD1C(v83, &v80, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v81 + 1))
  {
    v52 = v81;
    *(v51 + 104) = v80;
    *(v51 + 120) = v52;
    *(v51 + 136) = v82;
  }

  else
  {
    v53 = v36;
    sub_1E1AEFE9C();
    v54 = sub_1E1AEFE7C();
    v56 = v55;
    (*(v64 + 8))(v53, v63);
    v78 = v54;
    v79 = v56;
    sub_1E1AF6F6C();
    sub_1E1308058(&v80, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v57 = v74;
  v58 = *(v73 + 8);
  v58(v77, v74);
  v41(v33, v50);
  sub_1E1308058(v83, &unk_1ECEB5670, qword_1E1B03EC0);
  v58(v84, v57);
  sub_1E1308058(v75, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134B7C8(v76, v51 + OBJC_IVAR____TtC11AppStoreKit13EditorsChoice_impressionMetrics);
  *(v51 + 16) = v70 & 1;
  v59 = v67;
  *(v51 + 24) = v68;
  *(v51 + 32) = v59;
  v60 = v66;
  *(v51 + 40) = v69;
  *(v51 + 48) = v60;
  *(v51 + 56) = (v71 == 2) | v71 & 1;
  swift_beginAccess();
  *(v51 + 64) = v72;
  return v51;
}

unint64_t sub_1E14AA370()
{
  result = qword_1EE1F51E8;
  if (!qword_1EE1F51E8)
  {
    type metadata accessor for EditorsChoice(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F51E8);
  }

  return result;
}

uint64_t type metadata accessor for EditorsChoice(uint64_t a1)
{
  result = qword_1EE1F51D8;
  if (!qword_1EE1F51D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E14AA41C(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double ASKBagContract.impressionableThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E2FE8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double ASKBagContract.fastImpressionsTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D21E8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_1E14AAA64(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1E1AF6F2C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_1E134E724(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x1E68FFC60](v10, a1);
      sub_1E134B88C(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E14AAB3C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 7304045, sub_1E1AF762C(), (a1 & 1) != 0) ? (v5 = 0xE300000000000000) : (v4 = 1701736302, v5 = 0xE400000000000000), sub_1E1AF5F0C(), , v6 = sub_1E1AF767C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 7304045 : 1701736302;
      v11 = *(*(a2 + 48) + v8) ? 0xE300000000000000 : 0xE400000000000000;
      if (v10 == v4 && v11 == v5)
      {
        break;
      }

      v13 = sub_1E1AF74AC();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1E14AACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v6 = sub_1E1AF767C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E14AADA0(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1E1AF762C();
    sub_1E19DC324(v18, a1, a2);
    v6 = sub_1E1AF767C();
    v7 = -1 << *(a3 + 32);
    v8 = v6 & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v17 = ~v7;
      while (1)
      {
        v9 = (*(a3 + 48) + 16 * v8);
        v10 = *v9;
        v11 = v9[1];
        if (v11 <= 4)
        {
          if (v11 > 1)
          {
            if (v11 == 2)
            {
              v13 = 0xE400000000000000;
              v12 = 1936748641;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else if (v11 == 3)
            {
              v13 = 0xE700000000000000;
              v12 = 0x73657461647075;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v13 = 0xE600000000000000;
              v12 = 0x686372616573;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_56;
          }

          if (!v11)
          {
            v13 = 0xE500000000000000;
            v12 = 0x7961646F74;
            if (a2 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_56;
          }

          if (v11 == 1)
          {
            v13 = 0xE500000000000000;
            v12 = 0x73656D6167;
            if (a2 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v11 <= 7)
          {
            if (v11 == 5)
            {
              v13 = 0xE600000000000000;
              v12 = 0x656461637261;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else if (v11 == 6)
            {
              v13 = 0xE800000000000000;
              v12 = 0x6465727574616566;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v12 = 0x69726F6765746163;
              v13 = 0xEA00000000007365;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_56;
          }

          switch(v11)
          {
            case 8:
              v13 = 0xE600000000000000;
              v12 = 0x737472616863;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
            case 9:
              v12 = 0x6573616863727570;
              v13 = 0xE900000000000064;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
            case 10:
              v13 = 0xE900000000000073;
              v12 = 0x64616F6C6E776F64;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
          }
        }

        v12 = *v9;
        v13 = v9[1];
        if (a2 > 4)
        {
LABEL_37:
          if (a2 <= 7)
          {
            if (a2 == 5)
            {
              v14 = 0xE600000000000000;
              if (v12 != 0x656461637261)
              {
                goto LABEL_73;
              }
            }

            else if (a2 == 6)
            {
              v14 = 0xE800000000000000;
              if (v12 != 0x6465727574616566)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v14 = 0xEA00000000007365;
              if (v12 != 0x69726F6765746163)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_72;
          }

          switch(a2)
          {
            case 8:
              v14 = 0xE600000000000000;
              if (v12 != 0x737472616863)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            case 9:
              v14 = 0xE900000000000064;
              if (v12 != 0x6573616863727570)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            case 10:
              v14 = 0xE900000000000073;
              if (v12 != 0x64616F6C6E776F64)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
          }

          goto LABEL_71;
        }

LABEL_56:
        if (a2 <= 1)
        {
          if (!a2)
          {
            v14 = 0xE500000000000000;
            if (v12 != 0x7961646F74)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

          if (a2 == 1)
          {
            v14 = 0xE500000000000000;
            if (v12 != 0x73656D6167)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

LABEL_71:
          v14 = a2;
          if (v12 != a1)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if (a2 == 2)
        {
          v14 = 0xE400000000000000;
          if (v12 != 1936748641)
          {
            goto LABEL_73;
          }
        }

        else if (a2 == 3)
        {
          v14 = 0xE700000000000000;
          if (v12 != 0x73657461647075)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x686372616573)
          {
            goto LABEL_73;
          }
        }

LABEL_72:
        if (v13 == v14)
        {
          sub_1E13BC260(v10, v11);
          sub_1E13BC260(a1, a2);

          v15 = 1;
          return v15 & 1;
        }

LABEL_73:
        v15 = sub_1E1AF74AC();
        sub_1E13BC260(v10, v11);
        sub_1E13BC260(a1, a2);

        if ((v15 & 1) == 0)
        {
          v8 = (v8 + 1) & v17;
          if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            continue;
          }
        }

        return v15 & 1;
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

BOOL sub_1E14AB290(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1);
  v4 = sub_1E1AF767C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1E14AB35C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1E1AF5DFC(), sub_1E1AF762C(), sub_1E1AF5F0C(), v3 = sub_1E1AF767C(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_1E1AF5DFC();
      v9 = v8;
      if (v7 == sub_1E1AF5DFC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E1AF74AC();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1E14AB4B0(__int128 *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a1[1];
  v33 = *a1;
  v34 = v4;
  v5 = a1[3];
  v35 = a1[2];
  v36 = v5;
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)(v32);
  v6 = sub_1E1AF767C();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  v31 = a2 + 56;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *(a1 + 1);
    v30 = *(a1 + 2);
    v28 = *a1;
    v29 = *(a1 + 3);
    v24 = *(a1 + 6);
    v25 = *(a1 + 4);
    v26 = *(a1 + 7);
    v27 = *(a1 + 5);
    v11 = *(a2 + 48);
    do
    {
      v12 = (v11 + (v8 << 6));
      v13 = v12[1];
      v14 = v12[2];
      v16 = v12[3];
      v15 = v12[4];
      v17 = v12[5];
      v18 = v12[6];
      v19 = v12[7];
      if (v13)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        v20 = *v12 == v28 && v13 == v10;
        if (!v20 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v10)
      {
        goto LABEL_5;
      }

      v21 = v14 == v30 && v16 == v29;
      if (!v21 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v17)
      {
        if (!v27)
        {
          goto LABEL_5;
        }

        v22 = v15 == v25 && v17 == v27;
        if (!v22 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v27)
      {
        goto LABEL_5;
      }

      if (v19)
      {
        if (v26 && (v18 == v24 && v19 == v26 || (sub_1E1AF74AC() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v26)
      {
        return 1;
      }

LABEL_5:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v31 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

BOOL sub_1E14AB6C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1E1AF761C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t ASKBagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t ASKBagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

__n128 ASKBagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t ASKBagContract.language.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFF4C();
  v8 = sub_1E1AEFF0C();
  if (!v9)
  {
    v8 = sub_1E1AEFEFC();
  }

  v10 = v8;
  v11 = v9;
  if (qword_1EE1E2DE0 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF536C();
  MEMORY[0x1EEE9AC00](v12);
  *(&v14 - 2) = v10;
  *(&v14 - 1) = v11;
  sub_1E1AF532C();

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

double ASKBagContract.fetchTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3130 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.hideableSystemApps.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910, &qword_1E1B0F2D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1ECEB12C0 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (!v7)
  {
    return 0;
  }

  v4 = sub_1E1679524(v7);

  return v4;
}

uint64_t ASKBagContract.tabs.getter()
{
  if (qword_1EE1D2258 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1E3128;
  if (qword_1EE1E0F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v2 = ASKBagContract.tabs(withFallback:bagKey:)(v1, v0);

  return v2;
}

uint64_t ASKBagContract.tabs(withFallback:bagKey:)(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v2 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E1AF380C();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4918, &qword_1E1B0F2D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v60 - v10;
  v68 = type metadata accessor for StoreTab(0);
  v12 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v61 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v60 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v67 = v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910, &qword_1E1B0F2D0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v60 - v21;
  sub_1E1AF534C();
  sub_1E1AF532C();
  (*(v20 + 8))(v22, v19);
  v23 = *(v75[0] + 16);
  v64 = v12;
  if (v23)
  {
    v66 = v11;
    v60[1] = v75[0];
    v24 = v75[0] + 32;
    v65 = (v5 + 16);
    v25 = (v5 + 8);
    v26 = (v12 + 48);
    v72 = MEMORY[0x1E69E7CC0];
    v63 = v4;
    v27 = v69;
    do
    {
      sub_1E137A5C4(v24, v75);
      sub_1E137A5C4(v75, v74);
      sub_1E1AF37FC();
      v28 = v71;
      (*v65)(v70, v27, v71);
      sub_1E1AF39CC();
      sub_1E14B16A0(v29);
      v30 = v4;
      v31 = v66;
      v32 = v30;
      v33 = v68;
      sub_1E1AF464C();
      (*v25)(v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v75);
      if ((*v26)(v31, 1, v33) == 1)
      {
        sub_1E1308058(v31, &qword_1ECEB4918, &qword_1E1B0F2D8);
        v4 = v32;
      }

      else
      {
        sub_1E14B1770(v31, v67, v34);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v72;
        }

        else
        {
          v36 = sub_1E172E434(0, v72[2] + 1, 1, v72);
        }

        v38 = v36[2];
        v37 = v36[3];
        if (v38 >= v37 >> 1)
        {
          v36 = sub_1E172E434((v37 > 1), v38 + 1, 1, v36);
        }

        v36[2] = v38 + 1;
        v39 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v72 = v36;
        sub_1E14B1770(v67, v36 + v39 + *(v64 + 72) * v38, v35);
        v4 = v63;
      }

      v24 += 32;
      --v23;
    }

    while (v23);

    v41 = v72;
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = v41[2];
  v44 = v61;
  v43 = v62;
  if (v42)
  {
    v74[0] = MEMORY[0x1E69E7CD0];
    v45 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v46 = *(v64 + 72);
    v72 = v41;
    v47 = v41 + v45;
    v43 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E14B16F8(v47, v16, v40);
      v48 = v74[0];
      v49 = *v16;
      v50 = v16[1];

      LOBYTE(v49) = sub_1E14AADA0(v49, v50, v48);

      if (v49)
      {
        sub_1E14B17D4(v16, v51);
      }

      else
      {
        v52 = *v16;
        v53 = v16[1];
        sub_1E13BC260(*v16, v53);
        sub_1E189507C(v75, v52, v53);
        v54 = sub_1E14B175C(v75[0], v75[1]);
        sub_1E14B1770(v16, v44, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C708(0, *(v43 + 16) + 1, 1);
          v43 = v73;
        }

        v58 = *(v43 + 16);
        v57 = *(v43 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1E135C708((v57 > 1), v58 + 1, 1);
          v43 = v73;
        }

        *(v43 + 16) = v58 + 1;
        sub_1E14B1770(v44, v43 + v45 + v58 * v46, v56);
      }

      v47 += v46;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

  return v43;
}

uint64_t ASKBagContract.metricsConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4928, &qword_1E1B0F2E8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  if (qword_1ECEB12F0 != -1)
  {
    swift_once();
  }

  sub_1E1AF529C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  return v5[1];
}

double ASKBagContract.sessionDurationPageRender.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E2F48 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t ASKBagContract.onboardingCardsMap.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4928, &qword_1E1B0F2E8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  if (qword_1EE1D2230 != -1)
  {
    swift_once();
  }

  sub_1E1AF529C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (!v8)
  {
    return 0;
  }

  sub_1E14ACF0C(v8);
  v5 = v4;

  return v5;
}

void sub_1E14ACF0C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB60D0, &unk_1E1B19D80);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_1E134E724(*(v1 + 48) + 40 * v14, v28);
    sub_1E137A5C4(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_1E134E724(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_1E1308058(v25, &qword_1ECEB4948, &unk_1E1B0F440);

LABEL_22:

      return;
    }

    sub_1E137A5C4(v26 + 8, v24);
    sub_1E1308058(v25, &qword_1ECEB4948, &unk_1E1B0F440);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_1E13018F8(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E14AD1EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6020, &unk_1E1B19CF0);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        sub_1E134E724(*(a1 + 48) + 40 * v10, v24);
        sub_1E137A5C4(*(a1 + 56) + 32 * v10, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1E134E724(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1E1308058(v21, &qword_1ECEB4948, &unk_1E1B0F440);

          goto LABEL_23;
        }

        sub_1E137A5C4(v22 + 8, v20);
        sub_1E1308058(v21, &qword_1ECEB4948, &unk_1E1B0F440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v11 = sub_1E13018F8(v18, v19);
        v12 = v11;
        if (v13)
        {
          v8 = (v2[6] + 16 * v11);
          *v8 = v18;
          v8[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
          v14 = (v2[6] + 16 * v11);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v11) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
          }

          v2[2] = v17;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1E14AD4CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D0, &unk_1E1B08360);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_1E134E724(*(a1 + 48) + 40 * v11, v27);
    sub_1E137A5C4(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_1E134E724(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1E137A5C4(v25 + 8, v20);
    sub_1E1308058(v24, &qword_1ECEB4948, &unk_1E1B0F440);
    v21 = v18;
    sub_1E1301CF0(v20, v22);
    v12 = v21;
    sub_1E1301CF0(v22, v23);
    sub_1E1301CF0(v23, &v21);
    v13 = sub_1E13018F8(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1E1301CF0(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_1E1301CF0(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_1E1308058(v24, &qword_1ECEB4948, &unk_1E1B0F440);
}

double ASKBagContract.onboardingCardExpirationThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D2168 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_1E14ADC30(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8, &qword_1E1B270B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF52EC();
  sub_1E1AF531C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t ASKBagContract.arcadeProductFamilyId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  if (qword_1EE1E3040 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_1ECEB13E0 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4(v3, v0);
  return v6[0];
}

uint64_t ASKBagContract.arcadeProductId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  if (qword_1ECEB13C8 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v6[1])
  {
    return v6[0];
  }

  if (qword_1ECEB13E8 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  v4(v3, v0);
  return v6[0];
}

uint64_t sub_1E14AE13C@<X0>(void *a1@<X0>, void *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  result = (*(v7 + 8))(v9, v6);
  v11 = v14;
  if (v14)
  {
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return result;
}

double ASKBagContract.arcadeSubscribePageDismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB13F0 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

unint64_t ASKBagContract.challengeAttemptOptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4928, &qword_1E1B0F2E8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  if (qword_1ECEB1410 != -1)
  {
    swift_once();
  }

  sub_1E1AF529C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (!v8 || (sub_1E14AD1EC(v8), v5 = v4, , !v5))
  {
    v5 = sub_1E15A0538(&unk_1F5C28380);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4930, &qword_1E1B0F2F0);
    swift_arrayDestroy();
  }

  return v5;
}

uint64_t ASKBagContract.gameActivityPartyStartUrl.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  v4 = sub_1E1AF5DBC();
  sub_1E1AF536C();

  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  return v6;
}

double ASKBagContract.playTogetherPlayersGroupTimeThreshold.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB1428 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

double sub_1E14AED10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF532C();
  (*(v6 + 8))(v8, v5);
  return *&v10[1];
}

void *ASKBagContract.resilientDeepLinkPatterns.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910, &qword_1E1B0F2D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1EE1D21C0 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_1E1679410(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_1F5C283D0;
}

uint64_t ASKBagContract.installAttributionTimerDelaySeconds.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  if (qword_1ECEB1490 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E14AF2B4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920, &qword_1E1B0F2E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  sub_1E1AF532C();
  (*(v6 + 8))(v8, v5);
  return v10[1];
}

void *ASKBagContract.personalizedAdsScrollRequiredDisabledRegionCodes.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910, &qword_1E1B0F2D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1ECEB14D0 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_1E1679410(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_1F5C28400;
}

double ASKBagContract.productPageDownloadingOrderingTimeout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E2E08 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFD0], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

AppStoreKit::ASKBagContract::AdPlacementBagValue_optional __swiftcall ASKBagContract.AdPlacementBagValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASKBagContract.AdPlacementBagValue.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C2D686372616573;
  v3 = 0x7961646F74;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x722D686372616573;
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

uint64_t sub_1E14AFA18()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E14AFB14(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E14AFBFC(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14AFD00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E69646E61;
  v4 = 0x6C2D686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xD000000000000011;
  v8 = 0x80000001E1B56A40;
  if (v2 != 3)
  {
    v7 = 0xD000000000000021;
    v8 = 0x80000001E1B56A60;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x722D686372616573;
    v3 = 0xEE0073746C757365;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

char *ASKBagContract.enabledAdPlacements.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910, &qword_1E1B0F2D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  if (qword_1EE1E30B0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    sub_1E1AF534C();
    sub_1E1AF531C();
    v4 = *(v1 + 8);
    v1 += 8;
    v4(v3, v0);
    if (!v14)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v0 = sub_1E1679410(v14);

    if (!v0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = 0;
    v6 = *(v0 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    v3 = &unk_1F5C28460;
LABEL_5:
    v8 = v0 + 40 + 16 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        return v7;
      }

      if (v5 >= *(v0 + 16))
      {
        break;
      }

      ++v5;
      v9 = v8 + 16;

      v1 = sub_1E1AF72FC();

      v8 = v9;
      if (v1 < 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1E172E45C(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_1E172E45C((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v7[v11 + 32] = v1;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

uint64_t ASKBagContract.downloadProgressDisplayRemainingTime.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938, &qword_1E1B0F2F8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920, &qword_1E1B0F2E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  if (qword_1EE1E2E38 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  v8 = v19;
  if (qword_1EE1E3A38 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EE1E3A40);
  v10 = (*(v1 + 16))(v3, v9, v0);
  v11 = ASKBuildTypeGetCurrent(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980, &qword_1E1B0F300);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B03760;
  *(v12 + 32) = @"debug";
  *(v12 + 40) = @"convergence";
  *(v12 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v13 = @"debug";
  v14 = @"convergence";
  v15 = @"internal";
  v16 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v11, v16);

  if (IsAnyOf)
  {
    sub_1E1AF44CC();
    swift_allocObject();
    sub_1E1AF44AC();
    sub_1E1AF3C8C();

    (*(v1 + 8))(v3, v0);
    if (v20 != 1)
    {
      return v19;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}