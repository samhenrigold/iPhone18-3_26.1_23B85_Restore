uint64_t RingsPropertiesQuery.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4A1F7D4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A09B98(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    while (1)
    {
      if (!v2)
      {
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
      }

      v7 = *(v4 - 16);
      v8 = *v4;
      v38 = v4;
      v39 = v3;
      v9 = *(v3 - 16);
      v10 = *v3;
      v40 = *(v4 - 1);
      v41 = *(v3 - 1);
      v11 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
      if (!v11 && (sub_1B4D18DCC() & 1) == 0)
      {
        return 0;
      }

      v37 = v2;
      v42[0] = v7;
      v43 = v9;
      v12 = FactType.rawValue.getter();
      v14 = v13;
      if (v12 == FactType.rawValue.getter() && v14 == v15)
      {

        v16 = v40;
        v17 = v8;
        sub_1B498FC0C(v40, v8);

        v18 = v10;
        sub_1B498FC0C(v41, v10);
        v19 = v17;
      }

      else
      {
        v20 = sub_1B4D18DCC();

        v16 = v40;
        v19 = v8;
        sub_1B498FC0C(v40, v8);

        v18 = v10;
        sub_1B498FC0C(v41, v10);

        if ((v20 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      v21 = v19 >> 62;
      v22 = v18 >> 62;
      if (v19 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v29 = *(v16 + 16);
          v28 = *(v16 + 24);
          v26 = __OFSUB__(v28, v29);
          v23 = v28 - v29;
          if (v26)
          {
            goto LABEL_71;
          }

          goto LABEL_35;
        }

        v23 = 0;
        if (v22 <= 1)
        {
          goto LABEL_36;
        }
      }

      else if (v21)
      {
        LODWORD(v23) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_72;
        }

        v23 = v23;
        if (v22 <= 1)
        {
LABEL_36:
          if (v22)
          {
            LODWORD(v27) = HIDWORD(v41) - v41;
            if (__OFSUB__(HIDWORD(v41), v41))
            {
              goto LABEL_69;
            }

            v27 = v27;
          }

          else
          {
            v27 = BYTE6(v18);
          }

          goto LABEL_40;
        }
      }

      else
      {
        v23 = BYTE6(v19);
        if (v22 <= 1)
        {
          goto LABEL_36;
        }
      }

LABEL_29:
      if (v22 != 2)
      {
        if (v23)
        {
          goto LABEL_66;
        }

LABEL_6:

        sub_1B49DDD2C(v41, v18);

        v5 = v16;
        v6 = v19;
LABEL_7:
        sub_1B49DDD2C(v5, v6);
        goto LABEL_8;
      }

      v25 = *(v41 + 16);
      v24 = *(v41 + 24);
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v26)
      {
        goto LABEL_70;
      }

LABEL_40:
      if (v23 != v27)
      {
LABEL_66:

        sub_1B49DDD2C(v41, v18);

        sub_1B49DDD2C(v16, v19);
        return 0;
      }

      if (v23 < 1)
      {
        goto LABEL_6;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v32 = *(v16 + 16);
          v31 = *(v16 + 24);
          sub_1B498FC0C(v41, v18);
          v33 = sub_1B4D1750C();
          if (v33)
          {
            v34 = sub_1B4D1752C();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_75;
            }

            v33 += v32 - v34;
          }

          if (__OFSUB__(v31, v32))
          {
            goto LABEL_74;
          }

          goto LABEL_60;
        }

        *&v42[6] = 0;
        *v42 = 0;
        v30 = v41;
        sub_1B498FC0C(v41, v18);
      }

      else
      {
        if (v21)
        {
          if (v16 >> 32 < v16)
          {
            goto LABEL_73;
          }

          sub_1B498FC0C(v41, v18);
          v33 = sub_1B4D1750C();
          if (v33)
          {
            v35 = sub_1B4D1752C();
            if (__OFSUB__(v16, v35))
            {
              goto LABEL_76;
            }

            v33 += v16 - v35;
          }

LABEL_60:
          sub_1B4D1751C();
          sub_1B4A1CB14(v33, v41, v18, v42);
          sub_1B49DDD2C(v41, v18);

          sub_1B49DDD2C(v41, v18);

          sub_1B49DDD2C(v40, v19);
          if ((v42[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_8;
        }

        *v42 = v16;
        *&v42[8] = v19;
        v42[10] = BYTE2(v19);
        v42[11] = BYTE3(v19);
        v42[12] = BYTE4(v19);
        v42[13] = BYTE5(v19);
        v30 = v41;
        sub_1B498FC0C(v41, v18);
      }

      sub_1B4A1CB14(v42, v30, v18, &v43);
      sub_1B49DDD2C(v30, v18);

      sub_1B49DDD2C(v30, v18);

      sub_1B49DDD2C(v16, v19);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

LABEL_8:
      v4 = v38 + 5;
      v3 = v39 + 5;
      v2 = v37 - 1;
      if (v37 == 1)
      {
        return 1;
      }
    }

    v23 = 0;
    if (!v16 && v19 == 0xC000000000000000 && v18 >> 62 == 3)
    {
      v23 = 0;
      if (!v41 && v18 == 0xC000000000000000)
      {

        sub_1B49DDD2C(0, 0xC000000000000000);

        v5 = 0;
        v6 = 0xC000000000000000;
        goto LABEL_7;
      }
    }

LABEL_35:
    if (v22 <= 1)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  return 1;
}

uint64_t sub_1B4A0A164(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0A1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 5)
      {
        if (*v3 > 8u)
        {
          if (v6 == 10)
          {
            v9 = 0x7265626D65766F6ELL;
          }

          else
          {
            v9 = 0x7265626D65636564;
          }

          if (v6 == 9)
          {
            v8 = 0x7265626F74636FLL;
          }

          else
          {
            v8 = v9;
          }

          if (v6 == 9)
          {
            v7 = 0xE700000000000000;
          }

          else
          {
            v7 = 0xE800000000000000;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0xE400000000000000;
          v8 = 2037151082;
        }

        else if (v6 == 7)
        {
          v7 = 0xE600000000000000;
          v8 = 0x747375677561;
        }

        else
        {
          v8 = 0x65626D6574706573;
          v7 = 0xE900000000000072;
        }
      }

      else if (*v3 > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xE500000000000000;
          v8 = 0x6C69727061;
        }

        else if (v6 == 4)
        {
          v7 = 0xE300000000000000;
          v8 = 7954797;
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1701737834;
        }
      }

      else if (*v3)
      {
        if (v6 == 1)
        {
          v7 = 0xE800000000000000;
          v8 = 0x7972617572626566;
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x686372616DLL;
        }
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x797261756E616ALL;
      }

      v10 = *v4;
      if (v10 > 5)
      {
        if (*v4 > 8u)
        {
          if (v10 == 9)
          {
            v11 = 0xE700000000000000;
            if (v8 != 0x7265626F74636FLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0xE800000000000000;
            if (v10 == 10)
            {
              if (v8 != 0x7265626D65766F6ELL)
              {
                goto LABEL_5;
              }
            }

            else if (v8 != 0x7265626D65636564)
            {
              goto LABEL_5;
            }
          }
        }

        else if (v10 == 6)
        {
          v11 = 0xE400000000000000;
          if (v8 != 2037151082)
          {
            goto LABEL_5;
          }
        }

        else if (v10 == 7)
        {
          v11 = 0xE600000000000000;
          if (v8 != 0x747375677561)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE900000000000072;
          if (v8 != 0x65626D6574706573)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 2u)
      {
        if (v10 == 3)
        {
          v11 = 0xE500000000000000;
          if (v8 != 0x6C69727061)
          {
            goto LABEL_5;
          }
        }

        else if (v10 == 4)
        {
          v11 = 0xE300000000000000;
          if (v8 != 7954797)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE400000000000000;
          if (v8 != 1701737834)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        if (v10 == 1)
        {
          v11 = 0xE800000000000000;
          if (v8 != 0x7972617572626566)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          if (v8 != 0x686372616DLL)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        if (v8 != 0x797261756E616ALL)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v11)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0A568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7961646E7573;
      if (v6 == 5)
      {
        v8 = 0x7961647275746173;
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      v10 = 0x7961647372756874;
      if (v6 == 3)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v10 = 0x796164697266;
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0x616473656E646577;
      if (v6 == 1)
      {
        v12 = 0x79616473657574;
      }

      v13 = 0xE900000000000079;
      if (v6 == 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!*v3)
      {
        v12 = 0x7961646E6F6DLL;
        v13 = 0xE600000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE700000000000000;
            if (v14 != 0x79616473657574)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE900000000000079;
            if (v14 != 0x616473656E646577)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x7961646E6F6DLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE800000000000000;
          v17 = 0x647275746173;
LABEL_37:
          if (v14 != (v17 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        }

        v16 = 0xE600000000000000;
        if (v14 != 0x7961646E7573)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v16 = 0xE800000000000000;
          v17 = 0x647372756874;
          goto LABEL_37;
        }

        v16 = 0xE600000000000000;
        if (v14 != 0x796164697266)
        {
          goto LABEL_5;
        }
      }

LABEL_46:
      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0A7D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || ((v5 ^ v7) & 1) != 0)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D179BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for WorkoutMilestoneEntry(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v37 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v44 = (v5 + 48);
  v45 = (&v37 - v17);
  v38 = (v5 + 32);
  v39 = (v5 + 8);
  v41 = *(v16 + 72);
  v42 = v12;
  v43 = v9;
  while (1)
  {
    sub_1B4A1F5E8(v21, v18, type metadata accessor for WorkoutMilestoneEntry);
    sub_1B4A1F5E8(v22, v14, type metadata accessor for WorkoutMilestoneEntry);
    if (*v18 != *v14 || (sub_1B4D177AC() & 1) == 0 || (v24 = *(v12 + 24), v25 = (v18 + v24), v26 = (v14 + v24), *(v18 + v24) != *(v14 + v24)) || v25[1] != v26[1] || v25[2] != v26[2] || v25[3] != v26[3] || v25[4] != v26[4])
    {
      sub_1B4A1F650(v14, type metadata accessor for WorkoutMilestoneEntry);
      sub_1B4A1F650(v18, type metadata accessor for WorkoutMilestoneEntry);
      return 0;
    }

    v46 = v21;
    v27 = v4;
    v28 = *(type metadata accessor for LocalizedDate(0) + 36);
    v29 = *(v9 + 48);
    sub_1B4974FBC(v25 + v28, v11, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v30 = v26 + v28;
    v4 = v27;
    sub_1B4974FBC(v30, &v11[v29], &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v31 = *v44;
    if ((*v44)(v11, 1, v27) != 1)
    {
      break;
    }

    sub_1B4A1F650(v14, type metadata accessor for WorkoutMilestoneEntry);
    v18 = v45;
    sub_1B4A1F650(v45, type metadata accessor for WorkoutMilestoneEntry);
    if (v31(&v11[v29], 1, v4) != 1)
    {
      goto LABEL_24;
    }

    sub_1B4975024(v11, &qword_1EB8A6C20, &unk_1B4D1FBF0);
LABEL_8:
    v12 = v42;
    v22 += v41;
    v21 = v46 + v41;
    result = 1;
    --v19;
    v9 = v43;
    if (!v19)
    {
      return result;
    }
  }

  v32 = v48;
  sub_1B4974FBC(v11, v48, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  if (v31(&v11[v29], 1, v27) != 1)
  {
    v33 = &v11[v29];
    v34 = v47;
    (*v38)(v47, v33, v27);
    sub_1B4A1F7D4(&qword_1EB8A7080, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
    v40 = sub_1B4D1816C();
    v35 = *v39;
    (*v39)(v34, v27);
    sub_1B4A1F650(v14, type metadata accessor for WorkoutMilestoneEntry);
    v36 = v45;
    sub_1B4A1F650(v45, type metadata accessor for WorkoutMilestoneEntry);
    v35(v32, v27);
    v4 = v27;
    v18 = v36;
    sub_1B4975024(v11, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    if ((v40 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  sub_1B4A1F650(v14, type metadata accessor for WorkoutMilestoneEntry);
  sub_1B4A1F650(v45, type metadata accessor for WorkoutMilestoneEntry);
  (*v39)(v32, v27);
LABEL_24:
  sub_1B4975024(v11, &qword_1EB8A7078, &qword_1B4D1CCB8);
  return 0;
}

uint64_t sub_1B4A0AE54(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v15 = 1;
    }

    else
    {
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v14 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v12, v9, &qword_1EB8A72C8, &unk_1B4D1D780);
        sub_1B4974FBC(v13, v6, &qword_1EB8A72C8, &unk_1B4D1D780);
        sub_1B4A1F6B0(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
        v15 = sub_1B4D1816C();
        sub_1B4975024(v6, &qword_1EB8A72C8, &unk_1B4D1D780);
        sub_1B4975024(v9, &qword_1EB8A72C8, &unk_1B4D1D780);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v13 += v14;
        v12 += v14;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A0B05C(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v15 = 1;
    }

    else
    {
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v14 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v12, v9, &qword_1EB8A72C0, &unk_1B4D1D770);
        sub_1B4974FBC(v13, v6, &qword_1EB8A72C0, &unk_1B4D1D770);
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v15 = sub_1B4D1816C();
        sub_1B4975024(v6, &qword_1EB8A72C0, &unk_1B4D1D770);
        sub_1B4975024(v9, &qword_1EB8A72C0, &unk_1B4D1D770);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v13 += v14;
        v12 += v14;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A0B264(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v15 = 1;
    }

    else
    {
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v14 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v12, v9, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        sub_1B4974FBC(v13, v6, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
        v15 = sub_1B4D1816C();
        sub_1B4975024(v6, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        sub_1B4975024(v9, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v13 += v14;
        v12 += v14;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A0B46C(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v15 = 1;
    }

    else
    {
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v14 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v12, v9, &qword_1EB8A6818, &unk_1B4D1AB30);
        sub_1B4974FBC(v13, v6, &qword_1EB8A6818, &unk_1B4D1AB30);
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v15 = sub_1B4D1816C();
        sub_1B4975024(v6, &qword_1EB8A6818, &unk_1B4D1AB30);
        sub_1B4975024(v9, &qword_1EB8A6818, &unk_1B4D1AB30);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v13 += v14;
        v12 += v14;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A0B674(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_14:
    v15 = 0;
    return v15 & 1;
  }

  if (v10 && a1 != a2)
  {
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v17 = *(v7 + 72);
    v18 = v5;
    v19 = &v17 - v8;
    while (1)
    {
      sub_1B4974FBC(v12, v9, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4974FBC(v13, v5, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v14 = *(v20 + 40);
      if (*&v9[v14] != *&v5[v14])
      {
        break;
      }

      if (*&v9[v14 + 8] != *&v5[v14 + 8])
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      type metadata accessor for DistanceSampleIntervalRecord(0);
      sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
      v15 = sub_1B4D1816C();
      v5 = v18;
      sub_1B4975024(v18, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v9 = v19;
      sub_1B4975024(v19, &qword_1EB8A6CE8, &qword_1B4D44B80);
      if (v15)
      {
        v13 += v17;
        v12 += v17;
        if (--v10)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    sub_1B4975024(v18, &qword_1EB8A6CE8, &qword_1B4D44B80);
    sub_1B4975024(v19, &qword_1EB8A6CE8, &qword_1B4D44B80);
    goto LABEL_14;
  }

  v15 = 1;
  return v15 & 1;
}

uint64_t sub_1B4A0B978(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72E0, &unk_1B4D1D790);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v15 = 1;
    }

    else
    {
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v14 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v12, v9, &qword_1EB8A72E0, &unk_1B4D1D790);
        sub_1B4974FBC(v13, v6, &qword_1EB8A72E0, &unk_1B4D1D790);
        sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
        v15 = sub_1B4D1816C();
        sub_1B4975024(v6, &qword_1EB8A72E0, &unk_1B4D1D790);
        sub_1B4975024(v9, &qword_1EB8A72E0, &unk_1B4D1D790);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v13 += v14;
        v12 += v14;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A0BB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendWorkout(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v33 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_18;
  }

  if (!v11 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  v33 = v4;
  v34 = v15;
  while (1)
  {
    sub_1B4A1F5E8(v13, v10, type metadata accessor for ActivitySharingFriendWorkout);
    sub_1B4A1F5E8(v14, v6, type metadata accessor for ActivitySharingFriendWorkout);
    v16 = *v10;
    v17 = *v6;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        break;
      }
    }

    sub_1B49DF540();
    if ((sub_1B4D187AC() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    if ((sub_1B4D1774C() & 1) == 0)
    {
      goto LABEL_17;
    }

    v31 = sub_1B4D1774C();
    sub_1B4A1F650(v6, type metadata accessor for ActivitySharingFriendWorkout);
    sub_1B4A1F650(v10, type metadata accessor for ActivitySharingFriendWorkout);
    if (v31)
    {
      v14 += v34;
      v13 += v34;
      if (--v11)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  v21 = v20;
  v22 = v16;
  v23 = v17;
  [v19 coordinate];
  v25 = v24;
  [v21 coordinate];
  if (v25 == v26)
  {
    [v19 coordinate];
    v28 = v27;
    [v21 coordinate];
    v30 = v29;

    if (v28 != v30)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

LABEL_17:
  sub_1B4A1F650(v6, type metadata accessor for ActivitySharingFriendWorkout);
  sub_1B4A1F650(v10, type metadata accessor for ActivitySharingFriendWorkout);
LABEL_18:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1B4A0BED8(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v15 = 1;
    }

    else
    {
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
      v14 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v12, v9, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        sub_1B4974FBC(v13, v6, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        sub_1B4A1F6B0(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
        v15 = sub_1B4D1816C();
        sub_1B4975024(v6, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        sub_1B4975024(v9, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v13 += v14;
        v12 += v14;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A0C0E0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1B4A0C158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B4A0C1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 32);
      v7 = *(a1 + v5 + 42);
      v8 = *(a1 + v5 + 48);
      v9 = *(a1 + v5 + 56);
      v10 = *(a1 + v5 + 64);
      v11 = *(a2 + v5 + 32);
      v12 = *(a2 + v5 + 40);
      v13 = *(a2 + v5 + 42);
      v15 = *(a2 + v5 + 48);
      v14 = *(a2 + v5 + 56);
      v16 = *(a2 + v5 + 64);
      if (*(a1 + v5 + 41) == 1)
      {
        v17 = *(a1 + v5 + 40);
        if (v6 <= 1)
        {
          if (v6 | v17)
          {
            if (!*(a2 + v5 + 41) || v11 ^ 1 | v12)
            {
              return 0;
            }
          }

          else if (!*(a2 + v5 + 41) || v11 | v12)
          {
            return 0;
          }
        }

        else if (v6 ^ 2 | v17)
        {
          if (v6 ^ 3 | v17)
          {
            if (!*(a2 + v5 + 41) || __PAIR128__(v12, v11) < 4)
            {
              return 0;
            }
          }

          else if (!*(a2 + v5 + 41) || v11 ^ 3 | v12)
          {
            return 0;
          }
        }

        else if (!*(a2 + v5 + 41) || v11 ^ 2 | v12)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + v5 + 41))
        {
          return 0;
        }

        if (*(a1 + v5 + 40))
        {
          if ((v12 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if ((v12 & 1) != 0 || v6 != v11)
          {
            return result;
          }
        }
      }

      if (v7 == 3)
      {
        if (v13 != 3)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v13 == 3)
      {
        return 0;
      }

      if (*(a1 + v5 + 42))
      {
        if (v7 == 1)
        {
          v19 = 0xE700000000000000;
          v20 = 0x746E6572727563;
          v23 = *(a2 + v5 + 56);
          if (!*(a2 + v5 + 42))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v20 = 0x20676E696C6C6F72;
          v19 = 0xEF65676172657661;
          v23 = *(a2 + v5 + 56);
          if (!*(a2 + v5 + 42))
          {
LABEL_51:
            v21 = 0xE700000000000000;
            if (v20 != 0x65676172657661)
            {
              goto LABEL_61;
            }

            goto LABEL_56;
          }
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v20 = 0x65676172657661;
        v23 = *(a2 + v5 + 56);
        if (!*(a2 + v5 + 42))
        {
          goto LABEL_51;
        }
      }

      if (v13 == 1)
      {
        v21 = 0xE700000000000000;
        if (v20 != 0x746E6572727563)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v21 = 0xEF65676172657661;
        if (v20 != 0x20676E696C6C6F72)
        {
          goto LABEL_61;
        }
      }

LABEL_56:
      if (v19 != v21)
      {
LABEL_61:
        v22 = sub_1B4D18DCC();

        v14 = v23;
        if ((v22 & 1) == 0)
        {
          return 0;
        }

LABEL_34:
        if (!v10)
        {
          goto LABEL_58;
        }

        goto LABEL_35;
      }

      v14 = v23;
      if (!v10)
      {
LABEL_58:
        result = 0;
        if (v16 || v8 != v15)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_35:
      if (v10 == 1)
      {
        if (v16 != 1)
        {
          return 0;
        }

        result = 0;
        if (v8 != v15 || v9 != v14)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v16 != 2 || *&v14 | *&v15)
        {
          return result;
        }
      }

LABEL_5:
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1B4A0C530(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v8 = *v3;
      v9 = *v4;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10 && (v11 = v10, objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
      {
        v13 = v12;
        v14 = v8;
        v15 = v9;
        v16 = v14;
        v17 = v15;
        [v11 coordinate];
        v19 = v18;
        [v13 coordinate];
        if (v19 != v20)
        {

          return;
        }

        [v11 coordinate];
        v22 = v21;
        [v13 coordinate];
        v24 = v23;

        if (v22 != v24)
        {
          return;
        }
      }

      else
      {
        sub_1B49DF540();
        v5 = v8;
        v6 = v9;
        v7 = sub_1B4D187AC();

        if ((v7 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1B4A0C6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v18 = *(v8 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v13, v10, type metadata accessor for LocationCoordinate);
      sub_1B4A1F5E8(v14, v6, type metadata accessor for LocationCoordinate);
      if ((sub_1B4D1774C() & 1) == 0 || *&v10[*(v4 + 20)] != *&v6[*(v4 + 20)] || *&v10[*(v4 + 24)] != *&v6[*(v4 + 24)])
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      v15 = sub_1B4D1816C();
      sub_1B4A1F650(v6, type metadata accessor for LocationCoordinate);
      sub_1B4A1F650(v10, type metadata accessor for LocationCoordinate);
      if (v15)
      {
        v14 += v18;
        v13 += v18;
        if (--v11)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    sub_1B4A1F650(v6, type metadata accessor for LocationCoordinate);
    sub_1B4A1F650(v10, type metadata accessor for LocationCoordinate);
    goto LABEL_13;
  }

  v15 = 1;
  return v15 & 1;
}

uint64_t sub_1B4A0C94C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0C9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xE800000000000000;
      v7 = 0x6E776F646C6F6F63;
      switch(*v3)
      {
        case 1:
          v6 = 0xE400000000000000;
          v7 = 1701998435;
          break;
        case 2:
          v6 = 0xE700000000000000;
          v7 = 0x676E696C637963;
          break;
        case 3:
          v6 = 0xE500000000000000;
          v7 = 0x65636E6164;
          break;
        case 4:
          v6 = 0xE90000000000006ELL;
          v7 = 0x7552646564697567;
          break;
        case 5:
          v6 = 0xEA00000000006B6CLL;
          v7 = 0x6157646564697567;
          break;
        case 6:
          v6 = 0xE400000000000000;
          v7 = 1953065320;
          break;
        case 7:
          v7 = 0x69786F626B63696BLL;
          v6 = 0xEA0000000000676ELL;
          break;
        case 8:
          v6 = 0xEA00000000006E6FLL;
          v7 = 0x697461746964656DLL;
          break;
        case 9:
          v6 = 0xE700000000000000;
          v7 = 0x736574616C6970;
          break;
        case 0xA:
          v6 = 0xE600000000000000;
          v7 = 0x676E69776F72;
          break;
        case 0xB:
          v7 = 0x6874676E65727473;
          break;
        case 0xC:
          v7 = 0x6C696D6461657274;
          v6 = 0xE90000000000006CLL;
          break;
        case 0xD:
          v6 = 0xE400000000000000;
          v7 = 1634168697;
          break;
        case 0xE:
          v6 = 0xE500000000000000;
          v7 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v8 = 0xE800000000000000;
      v9 = 0x6E776F646C6F6F63;
      switch(*v4)
      {
        case 1:
          v8 = 0xE400000000000000;
          if (v7 == 1701998435)
          {
            goto LABEL_49;
          }

          goto LABEL_5;
        case 2:
          v8 = 0xE700000000000000;
          if (v7 != 0x676E696C637963)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 3:
          v8 = 0xE500000000000000;
          if (v7 != 0x65636E6164)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 4:
          v8 = 0xE90000000000006ELL;
          if (v7 != 0x7552646564697567)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 5:
          v8 = 0xEA00000000006B6CLL;
          if (v7 != 0x6157646564697567)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 6:
          v8 = 0xE400000000000000;
          if (v7 != 1953065320)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 7:
          v8 = 0xEA0000000000676ELL;
          if (v7 != 0x69786F626B63696BLL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 8:
          v8 = 0xEA00000000006E6FLL;
          if (v7 != 0x697461746964656DLL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 9:
          v8 = 0xE700000000000000;
          if (v7 != 0x736574616C6970)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xA:
          v8 = 0xE600000000000000;
          v9 = 0x676E69776F72;
          goto LABEL_48;
        case 0xB:
          if (v7 != 0x6874676E65727473)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xC:
          v8 = 0xE90000000000006CLL;
          if (v7 != 0x6C696D6461657274)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xD:
          v8 = 0xE400000000000000;
          if (v7 != 1634168697)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xE:
          v8 = 0xE500000000000000;
          if (v7 != 0x726568746FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v7 != v9)
          {
            goto LABEL_5;
          }

LABEL_49:
          if (v6 == v8)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1B4D18DCC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1B4A0CDB8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    v10 = v8 == v9;
    if (v8 != v9)
    {
      return v10;
    }

    if (v8)
    {
      v11 = v6 == v7;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v6 + 40);
      v13 = (v7 + 40);
      while (v8)
      {
        result = *(v12 - 1);
        if (result != *(v13 - 1) || *v12 != *v13)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v12 += 2;
        v13 += 2;
        if (!--v8)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0CEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      v7 = *i;
      v8 = 0xE900000000000079;
      v9 = 0xD000000000000012;
      if (v6 == 3)
      {
        v9 = 0x7974696C61646F6DLL;
      }

      v10 = 0xEC000000646E694BLL;
      if (v6 != 3)
      {
        v10 = 0x80000001B4D48DB0;
      }

      if (v6 == 2)
      {
        v9 = 0x6144664F72756F68;
      }

      else
      {
        v8 = v10;
      }

      v11 = 0x656557664F796164;
      if (*v3)
      {
        v12 = 0xE90000000000006BLL;
      }

      else
      {
        v11 = 0x59664F68746E6F6DLL;
        v12 = 0xEB00000000726165;
      }

      v13 = *v3 <= 1u ? v11 : v9;
      v14 = *v3 <= 1u ? v12 : v8;
      if (*i <= 1u)
      {
        break;
      }

      if (v7 == 2)
      {
        v15 = 0xE900000000000079;
        v16 = 0x6144664F72756F68;
LABEL_32:
        if (v13 != v16)
        {
          goto LABEL_5;
        }

        goto LABEL_33;
      }

      if (v7 == 3)
      {
        v15 = 0xEC000000646E694BLL;
        if (v13 != 0x7974696C61646F6DLL)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0x80000001B4D48DB0;
        if (v13 != 0xD000000000000012)
        {
LABEL_5:
          v5 = sub_1B4D18DCC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

LABEL_33:
      if (v14 != v15)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    v16 = 0x59664F68746E6F6DLL;
    v15 = 0xEB00000000726165;
    if (*i)
    {
      v15 = 0xE90000000000006BLL;
      if (v13 != 0x656557664F796164)
      {
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  return 1;
}

uint64_t sub_1B4A0D0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x756F436C61746F74;
      if (v6 == 4)
      {
        v8 = 0x547942746E756F63;
      }

      v9 = 0xEE0072656E696172;
      if (v6 != 4)
      {
        v9 = 0xEA0000000000746ELL;
      }

      if (v6 == 3)
      {
        v8 = 0x6B726F5774736562;
        v9 = 0xEB0000000074756FLL;
      }

      v10 = 0xD00000000000001ALL;
      if (v6 == 1)
      {
        v11 = 0x80000001B4D48B80;
      }

      else
      {
        v11 = 0x80000001B4D48BA0;
      }

      if (*v3)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v11 = 0x80000001B4D48B40;
      }

      if (*v3 <= 2u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v14 = 0xEB0000000074756FLL;
          if (v12 != 0x6B726F5774736562)
          {
            goto LABEL_5;
          }
        }

        else if (v7 == 4)
        {
          v14 = 0xEE0072656E696172;
          if (v12 != 0x547942746E756F63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xEA0000000000746ELL;
          if (v12 != 0x756F436C61746F74)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        if (v7 == 1)
        {
          v14 = 0x80000001B4D48B80;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0x80000001B4D48BA0;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v14 = 0x80000001B4D48B40;
        if (v12 != 0xD00000000000001ALL)
        {
          goto LABEL_5;
        }
      }

      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0D340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x656557664F796164;
      }

      else
      {
        v8 = 0x646573756170;
      }

      if (v6 == 1)
      {
        v9 = 0xE90000000000006BLL;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x59664F68746E6F6DLL;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xEB00000000726165;
      }

      if (v7 == 1)
      {
        v12 = 0x656557664F796164;
      }

      else
      {
        v12 = 0x646573756170;
      }

      if (v7 == 1)
      {
        v13 = 0xE90000000000006BLL;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x59664F68746E6F6DLL;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xEB00000000726165;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0D49C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEA00000000006B61;
      v7 = 0x6572745365766F6DLL;
      switch(*v3)
      {
        case 1:
          v7 = 0x6573696372657865;
          v6 = 0xEE006B6165727453;
          break;
        case 2:
          v7 = 0x727453646E617473;
          v6 = 0xEB000000006B6165;
          break;
        case 3:
          v7 = 0xD000000000000013;
          v6 = 0x80000001B4D48800;
          break;
        case 4:
          v7 = 0xD000000000000012;
          v6 = 0x80000001B4D48820;
          break;
        case 5:
          v7 = 0xD000000000000018;
          v6 = 0x80000001B4D48840;
          break;
        case 6:
          v7 = 0xD000000000000016;
          v6 = 0x80000001B4D48860;
          break;
        case 7:
          v7 = 0xD000000000000013;
          v6 = 0x80000001B4D48880;
          break;
        case 8:
          v7 = 0x6174537370657473;
          v6 = 0xEF73636974736974;
          break;
        case 9:
          v7 = 0xD000000000000011;
          v6 = 0x80000001B4D488B0;
          break;
        case 0xA:
          v7 = 0xD000000000000012;
          v6 = 0x80000001B4D488D0;
          break;
        case 0xB:
          v7 = 0xD000000000000015;
          v6 = 0x80000001B4D488F0;
          break;
        case 0xC:
          v7 = 0xD000000000000019;
          v6 = 0x80000001B4D48910;
          break;
        case 0xD:
          v7 = 0xD000000000000016;
          v6 = 0x80000001B4D48930;
          break;
        case 0xE:
          v7 = 0xD00000000000001ELL;
          v6 = 0x80000001B4D48950;
          break;
        case 0xF:
          v7 = 0xD000000000000011;
          v6 = 0x80000001B4D48970;
          break;
        case 0x10:
          v7 = 0xD000000000000014;
          v6 = 0x80000001B4D48990;
          break;
        case 0x11:
          v7 = 0xD000000000000011;
          v6 = 0x80000001B4D489B0;
          break;
        case 0x12:
          v7 = 0x616F47646E617473;
          v6 = 0xEE0061746C65446CLL;
          break;
        case 0x13:
          v7 = 0xD000000000000011;
          v6 = 0x80000001B4D489E0;
          break;
        case 0x14:
          v7 = 0xD000000000000015;
          v6 = 0x80000001B4D48A00;
          break;
        case 0x15:
          v7 = 0xD000000000000012;
          v6 = 0x80000001B4D48A20;
          break;
        case 0x16:
          v7 = 0xD000000000000016;
          v6 = 0x80000001B4D48A40;
          break;
        case 0x17:
          v7 = 0xD000000000000015;
          v6 = 0x80000001B4D48A60;
          break;
        case 0x18:
          v7 = 0xD000000000000014;
          v6 = 0x80000001B4D48A80;
          break;
        case 0x19:
          v6 = 0xEA0000000000746ELL;
          v7 = 0x756F436C61746F74;
          break;
        default:
          break;
      }

      v8 = 0x6572745365766F6DLL;
      v9 = 0xEA00000000006B61;
      switch(*v4)
      {
        case 1:
          v10 = 0x6573696372657865;
          v11 = 0x6B6165727453;
          goto LABEL_72;
        case 2:
          v9 = 0xEB000000006B6165;
          if (v7 != 0x727453646E617473)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 3:
          v9 = 0x80000001B4D48800;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 4:
          v9 = 0x80000001B4D48820;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 5:
          v9 = 0x80000001B4D48840;
          if (v7 != 0xD000000000000018)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 6:
          v9 = 0x80000001B4D48860;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 7:
          v9 = 0x80000001B4D48880;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 8:
          v9 = 0xEF73636974736974;
          if (v7 != 0x6174537370657473)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 9:
          v9 = 0x80000001B4D488B0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xA:
          v9 = 0x80000001B4D488D0;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xB:
          v9 = 0x80000001B4D488F0;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xC:
          v9 = 0x80000001B4D48910;
          if (v7 != 0xD000000000000019)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xD:
          v9 = 0x80000001B4D48930;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xE:
          v9 = 0x80000001B4D48950;
          if (v7 != 0xD00000000000001ELL)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xF:
          v9 = 0x80000001B4D48970;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x10:
          v9 = 0x80000001B4D48990;
          if (v7 != 0xD000000000000014)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x11:
          v9 = 0x80000001B4D489B0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x12:
          v10 = 0x616F47646E617473;
          v11 = 0x61746C65446CLL;
LABEL_72:
          v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v7 != v10)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x13:
          v8 = 0xD000000000000011;
          v9 = 0x80000001B4D489E0;
          goto LABEL_81;
        case 0x14:
          v9 = 0x80000001B4D48A00;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x15:
          v9 = 0x80000001B4D48A20;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x16:
          v9 = 0x80000001B4D48A40;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x17:
          v9 = 0x80000001B4D48A60;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x18:
          v9 = 0x80000001B4D48A80;
          if (v7 != 0xD000000000000014)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x19:
          v9 = 0xEA0000000000746ELL;
          if (v7 != 0x756F436C61746F74)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        default:
LABEL_81:
          if (v7 != v8)
          {
            goto LABEL_5;
          }

LABEL_82:
          if (v6 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1B4D18DCC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1B4A0DB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v7 = 0x726F6F646E69;
        }

        else
        {
          v7 = 0x6E776F6E6B6E75;
        }

        if (*v3)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE700000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x726F6F6474756FLL;
      }

      else if (v6 == 3)
      {
        v7 = 0x657461576E65706FLL;
        v8 = 0xE900000000000072;
      }

      else
      {
        v7 = 0x676E696D6D697773;
        v8 = 0xEC0000006C6F6F50;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 0x726F6F646E69;
        }

        else
        {
          v11 = 0x6E776F6E6B6E75;
        }

        if (*v4)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (v7 != v11)
        {
LABEL_5:
          v5 = sub_1B4D18DCC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE700000000000000;
        if (v7 != 0x726F6F6474756FLL)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE900000000000072;
        if (v7 != 0x657461576E65706FLL)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xEC0000006C6F6F50;
        if (v7 != 0x676E696D6D697773)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0DD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0xD000000000000010;
      if (v6 == 4)
      {
        v8 = 0x6E6F697461636F6CLL;
        v9 = 0xEC00000065707954;
      }

      else
      {
        v9 = 0x80000001B4D48D10;
      }

      if (v6 == 3)
      {
        v8 = 0x7974697669746361;
        v9 = 0xEC00000065707954;
      }

      v10 = 0xE900000000000079;
      v11 = 0x656557664F796164;
      if (v6 == 1)
      {
        v10 = 0xE90000000000006BLL;
      }

      else
      {
        v11 = 0x6144664F72756F68;
      }

      if (!*v3)
      {
        v11 = 0x59664F68746E6F6DLL;
        v10 = 0xEB00000000726165;
      }

      if (*v3 <= 2u)
      {
        v12 = v11;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 2u)
      {
        v13 = v10;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v15 = 0x7974697669746361;
LABEL_34:
          v14 = 0xEC00000065707954;
          if (v12 != v15)
          {
            goto LABEL_5;
          }

          goto LABEL_39;
        }

        if (v7 == 4)
        {
          v15 = 0x6E6F697461636F6CLL;
          goto LABEL_34;
        }

        v14 = 0x80000001B4D48D10;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_5;
        }
      }

      else if (*v4)
      {
        if (v7 == 1)
        {
          v14 = 0xE90000000000006BLL;
          if (v12 != 0x656557664F796164)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE900000000000079;
          if (v12 != 0x6144664F72756F68)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v14 = 0xEB00000000726165;
        if (v12 != 0x59664F68746E6F6DLL)
        {
          goto LABEL_5;
        }
      }

LABEL_39:
      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0DFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEE00736369747369;
      v7 = 0x7461745365636170;
      switch(*v3)
      {
        case 1:
          v7 = 0xD000000000000012;
          v6 = 0x80000001B4D488D0;
          break;
        case 2:
          break;
        case 3:
          v7 = 0xD000000000000017;
          v6 = 0x80000001B4D48B20;
          break;
        case 4:
          v7 = 0xD00000000000001ALL;
          v6 = 0x80000001B4D48B40;
          break;
        case 5:
          v7 = 0xD000000000000013;
          v6 = 0x80000001B4D48B60;
          break;
        case 6:
          v7 = 0xD000000000000012;
          v6 = 0x80000001B4D48B80;
          break;
        case 7:
          v7 = 0xD000000000000012;
          v6 = 0x80000001B4D48BA0;
          break;
        case 8:
          v7 = 0xD00000000000001CLL;
          v6 = 0x80000001B4D48BC0;
          break;
        case 9:
          v7 = 0xD000000000000015;
          v6 = 0x80000001B4D48BE0;
          break;
        case 0xA:
          v7 = 0xD000000000000017;
          v6 = 0x80000001B4D48C00;
          break;
        case 0xB:
          v7 = 0xD000000000000013;
          v6 = 0x80000001B4D48C20;
          break;
        case 0xC:
          v7 = 0xD00000000000001CLL;
          v6 = 0x80000001B4D48C40;
          break;
        case 0xD:
          v7 = 0xD000000000000018;
          v6 = 0x80000001B4D48C60;
          break;
        case 0xE:
          v7 = 0xD000000000000017;
          v6 = 0x80000001B4D48C80;
          break;
        case 0xF:
          v7 = 0xD000000000000017;
          v6 = 0x80000001B4D48CA0;
          break;
        case 0x10:
          v7 = 0xD000000000000017;
          v6 = 0x80000001B4D48CC0;
          break;
        case 0x11:
          v7 = 0xD000000000000016;
          v6 = 0x80000001B4D48CE0;
          break;
        case 0x12:
          v7 = 0x756F436C61746F74;
          v6 = 0xEA0000000000746ELL;
          break;
        default:
          v7 = 0xD000000000000011;
          v6 = 0x80000001B4D48AF0;
          break;
      }

      v8 = 0x7461745365636170;
      v9 = 0xEE00736369747369;
      switch(*v4)
      {
        case 1:
          v9 = 0x80000001B4D488D0;
          if (v7 == 0xD000000000000012)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        case 2:
          goto LABEL_60;
        case 3:
          v9 = 0x80000001B4D48B20;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 4:
          v9 = 0x80000001B4D48B40;
          if (v7 != 0xD00000000000001ALL)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 5:
          v9 = 0x80000001B4D48B60;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 6:
          v9 = 0x80000001B4D48B80;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 7:
          v9 = 0x80000001B4D48BA0;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 8:
          v9 = 0x80000001B4D48BC0;
          if (v7 != 0xD00000000000001CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 9:
          v9 = 0x80000001B4D48BE0;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xA:
          v8 = 0xD000000000000017;
          v9 = 0x80000001B4D48C00;
LABEL_60:
          if (v7 == v8)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        case 0xB:
          v9 = 0x80000001B4D48C20;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xC:
          v9 = 0x80000001B4D48C40;
          if (v7 != 0xD00000000000001CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xD:
          v9 = 0x80000001B4D48C60;
          if (v7 != 0xD000000000000018)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xE:
          v9 = 0x80000001B4D48C80;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xF:
          v9 = 0x80000001B4D48CA0;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0x10:
          v9 = 0x80000001B4D48CC0;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0x11:
          v9 = 0x80000001B4D48CE0;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0x12:
          v9 = 0xEA0000000000746ELL;
          if (v7 != 0x756F436C61746F74)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        default:
          v9 = 0x80000001B4D48AF0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

LABEL_61:
          if (v6 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1B4D18DCC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1B4A0E52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1B4A1F5E8(v20, v17, a4);
        sub_1B4A1F5E8(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_1B4A1F650(v13, a6);
        sub_1B4A1F650(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1B4A0E6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1B4A1F5E8(v26 + v15 * v12, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    if (v12 == v11)
    {
      break;
    }

    result = sub_1B4A1F5E8(v14 + v15 * v12, v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    v17 = *v10;
    v18 = *v6;
    v19 = *(*v10 + 16);
    if (v19 != *(*v6 + 16))
    {
LABEL_22:
      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      goto LABEL_23;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v22 = (v17 + 40);
      v23 = (v18 + 40);
      while (v19)
      {
        result = *(v22 - 1);
        if (result != *(v23 - 1) || *v22 != *v23)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v22 += 2;
        v23 += 2;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v21 = sub_1B4D1816C();
    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    if ((v21 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0E980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v68 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB0, &unk_1B4D202A0);
  MEMORY[0x1EEE9AC00](v78);
  v87 = &v68 - v9;
  v89 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v10 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v68 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC0, &qword_1B4D202B0);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v68 - v14;
  v86 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v16 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v91 = &v68 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD0, &unk_1B4D202C0);
  MEMORY[0x1EEE9AC00](v85);
  v21 = &v68 - v20;
  v92 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v68 - v25);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_36:
    v65 = 0;
    return v65 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v65 = 1;
    return v65 & 1;
  }

  v73 = v21;
  v69 = v4;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v74 = (v16 + 48);
  v68 = (v5 + 48);
  v70 = *(v24 + 72);
  v31 = v77;
  v32 = v91;
  v33 = v88;
  v80 = v15;
  v72 = (v10 + 48);
  v71 = &v68 - v25;
  while (1)
  {
    v90 = v27;
    v83 = v29;
    result = sub_1B4A1F5E8(v29, v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    if (!v90)
    {
      break;
    }

    v82 = v30;
    sub_1B4A1F5E8(v30, v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    if (*v26 != *v33 || v26[1] != v33[1])
    {
      goto LABEL_35;
    }

    v35 = v32;
    v36 = *(v92 + 28);
    v37 = *(v85 + 48);
    v38 = v33;
    v39 = v73;
    sub_1B4974FBC(v26 + v36, v73, &qword_1EB8A7DC8, &qword_1B4D202B8);
    sub_1B4974FBC(v38 + v36, v39 + v37, &qword_1EB8A7DC8, &qword_1B4D202B8);
    v40 = *v74;
    v41 = v86;
    if ((*v74)(v39, 1, v86) == 1)
    {
      if (v40(v39 + v37, 1, v41) != 1)
      {
        goto LABEL_28;
      }

      sub_1B4975024(v39, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v42 = v72;
      v33 = v88;
      v43 = v80;
    }

    else
    {
      sub_1B4974FBC(v39, v35, &qword_1EB8A7DC8, &qword_1B4D202B8);
      if (v40(v39 + v37, 1, v41) == 1)
      {
        sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
LABEL_28:
        sub_1B4975024(v39, &qword_1EB8A7DD0, &unk_1B4D202C0);
        v33 = v88;
        goto LABEL_35;
      }

      v44 = v79;
      sub_1B4A1F750(v39 + v37, v79, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v45 = static Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.== infix(_:_:)(v91, v44);
      sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4A1F650(v91, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4975024(v39, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v42 = v72;
      v33 = v88;
      v43 = v80;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v46 = *(v92 + 32);
    v47 = *(v84 + 48);
    sub_1B4974FBC(v26 + v46, v43, &qword_1EB8A7DB8, &unk_1B4D27B10);
    sub_1B4974FBC(v33 + v46, v43 + v47, &qword_1EB8A7DB8, &unk_1B4D27B10);
    v48 = *v42;
    v49 = v89;
    if ((*v42)(v43, 1, v89) == 1)
    {
      v50 = v48(v43 + v47, 1, v49);
      v26 = v71;
      if (v50 != 1)
      {
        goto LABEL_30;
      }

      sub_1B4975024(v43, &qword_1EB8A7DB8, &unk_1B4D27B10);
      v32 = v91;
    }

    else
    {
      v51 = v81;
      sub_1B4974FBC(v43, v81, &qword_1EB8A7DB8, &unk_1B4D27B10);
      if (v48(v43 + v47, 1, v49) == 1)
      {
        sub_1B4A1F650(v51, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
        v26 = v71;
LABEL_30:
        v66 = &qword_1EB8A7DC0;
        v67 = &qword_1B4D202B0;
        goto LABEL_34;
      }

      sub_1B4A1F750(v43 + v47, v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      v52 = *(v78 + 48);
      v53 = v87;
      sub_1B4974FBC(v51, v87, &qword_1EB8A6D38, &qword_1B4D1BCB8);
      sub_1B4974FBC(v31, v53 + v52, &qword_1EB8A6D38, &qword_1B4D1BCB8);
      v54 = *v68;
      v55 = v53;
      v56 = v69;
      v57 = (*v68)(v55, 1, v69);
      v26 = v71;
      if (v57 == 1)
      {
        v58 = v51;
        v59 = v31;
        if (v54(v87 + v52, 1, v56) != 1)
        {
          goto LABEL_32;
        }

        sub_1B4975024(v87, &qword_1EB8A6D38, &qword_1B4D1BCB8);
        v43 = v80;
      }

      else
      {
        v60 = v87;
        v61 = v76;
        sub_1B4974FBC(v87, v76, &qword_1EB8A6D38, &qword_1B4D1BCB8);
        if (v54(v60 + v52, 1, v56) == 1)
        {
          sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
          v59 = v77;
          v58 = v81;
LABEL_32:
          sub_1B4975024(v87, &qword_1EB8A7DB0, &unk_1B4D202A0);
          v43 = v80;
LABEL_33:
          sub_1B4A1F650(v59, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
          sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
          v66 = &qword_1EB8A7DB8;
          v67 = &unk_1B4D27B10;
LABEL_34:
          sub_1B4975024(v43, v66, v67);
LABEL_35:
          sub_1B4A1F650(v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
          sub_1B4A1F650(v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
          goto LABEL_36;
        }

        v62 = v75;
        sub_1B4A1F750(v60 + v52, v75, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        v63 = static Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType.== infix(_:_:)(v61, v62);
        sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        sub_1B4975024(v60, &qword_1EB8A6D38, &qword_1B4D1BCB8);
        v59 = v77;
        v43 = v80;
        v58 = v81;
        if ((v63 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v64 = sub_1B4D1816C();
      v31 = v59;
      sub_1B4A1F650(v59, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      sub_1B4975024(v43, &qword_1EB8A7DB8, &unk_1B4D27B10);
      v32 = v91;
      if ((v64 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v65 = sub_1B4D1816C();
    sub_1B4A1F650(v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    sub_1B4A1F650(v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    if (v65)
    {
      v27 = v90 - 1;
      v30 = v82 + v70;
      v29 = v83 + v70;
      if (v90 != 1)
      {
        continue;
      }
    }

    return v65 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0F598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v132 = (v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v131 = (v116 - v7);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E48, &qword_1B4D20348);
  MEMORY[0x1EEE9AC00](v130);
  v129 = v116 - v8;
  v136 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v144 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v10 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v133 = v116 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E50, &unk_1B4D28FE0);
  MEMORY[0x1EEE9AC00](v135);
  v152 = v116 - v13;
  v153 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v128 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v145 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v146 = v116 - v16;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E58, &unk_1B4D28FD0);
  MEMORY[0x1EEE9AC00](v147);
  v18 = v116 - v17;
  v127 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  MEMORY[0x1EEE9AC00](v127);
  v139 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v138 = v116 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E60, &unk_1B4D20360);
  MEMORY[0x1EEE9AC00](v22);
  v134 = v116 - v23;
  v142 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v24 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v137 = v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v140 = v116 - v27;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E68, &unk_1B4D20370);
  MEMORY[0x1EEE9AC00](v141);
  v29 = v116 - v28;
  v154 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v30 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v148 = v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v151 = v116 - v33;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E70, &unk_1B4D20380);
  MEMORY[0x1EEE9AC00](v149);
  v35 = v116 - v34;
  v155 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v155);
  v157 = v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v116 - v39;
  v41 = *(a1 + 16);
  if (v41 != *(a2 + 16))
  {
LABEL_58:
    v109 = 0;
    return v109 & 1;
  }

  if (!v41 || a1 == a2)
  {
    v109 = 1;
    return v109 & 1;
  }

  v143 = v35;
  v116[1] = v4;
  v42 = 0;
  v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v126 = a1 + v43;
  v125 = a2 + v43;
  v124 = (v30 + 48);
  v120 = (v24 + 48);
  v122 = (v128 + 48);
  v119 = (v144 + 48);
  v128 = *(v38 + 72);
  v118 = v22;
  v121 = v29;
  v117 = v10;
  v44 = v151;
  v156 = v116 - v39;
  v150 = v41;
  v123 = v18;
  while (1)
  {
    v45 = v128 * v42;
    v46 = v40;
    result = sub_1B4A1F5E8(v126 + v128 * v42, v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    if (v42 == v150)
    {
      break;
    }

    v144 = v42;
    v48 = v157;
    sub_1B4A1F5E8(v125 + v45, v157, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    v49 = *(v155 + 20);
    v50 = *(v149 + 48);
    v51 = v143;
    sub_1B4974FBC(&v46[v49], v143, &qword_1EB8A6DB0, &unk_1B4D462F0);
    sub_1B4974FBC(v48 + v49, v51 + v50, &qword_1EB8A6DB0, &unk_1B4D462F0);
    v52 = *v124;
    v53 = v154;
    if ((*v124)(v51, 1, v154) == 1)
    {
      if (v52(v51 + v50, 1, v53) != 1)
      {
        goto LABEL_44;
      }

      sub_1B4975024(v51, &qword_1EB8A6DB0, &unk_1B4D462F0);
    }

    else
    {
      sub_1B4974FBC(v51, v44, &qword_1EB8A6DB0, &unk_1B4D462F0);
      v54 = v52(v51 + v50, 1, v53);
      v55 = v121;
      if (v54 == 1)
      {
        sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
LABEL_44:
        v110 = &qword_1EB8A7E70;
        v111 = &unk_1B4D20380;
        goto LABEL_55;
      }

      v56 = v148;
      sub_1B4A1F750(v51 + v50, v148, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      v57 = *(v141 + 48);
      sub_1B4974FBC(v44, v55, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
      sub_1B4974FBC(v56, v55 + v57, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
      v58 = *v120;
      v59 = v142;
      if ((*v120)(v55, 1, v142) == 1)
      {
        if (v58(v55 + v57, 1, v59) != 1)
        {
          goto LABEL_48;
        }

        sub_1B4975024(v55, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
        v44 = v151;
      }

      else
      {
        v60 = v140;
        sub_1B4974FBC(v55, v140, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
        if (v58(v55 + v57, 1, v59) == 1)
        {
          sub_1B4A1F650(v60, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
LABEL_48:
          sub_1B4975024(v55, &qword_1EB8A7E68, &unk_1B4D20370);
          v44 = v151;
          goto LABEL_49;
        }

        v61 = v137;
        sub_1B4A1F750(v55 + v57, v137, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        v62 = *(v118 + 48);
        v63 = v134;
        sub_1B4A1F5E8(v60, v134, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        sub_1B4A1F5E8(v61, v63 + v62, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        v64 = v138;
        sub_1B4A1F750(v63, v138, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        v65 = v63 + v62;
        v66 = v139;
        sub_1B4A1F750(v65, v139, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        v67 = *v64;
        v68 = *v66;
        v69 = *(*v64 + 16);
        v44 = v151;
        if (v69 != *(*v66 + 16))
        {
          goto LABEL_42;
        }

        if (v69 && v67 != v68)
        {
          v70 = (v67 + 40);
          v71 = (v68 + 40);
          while (1)
          {
            v72 = *(v70 - 1) == *(v71 - 1) && *v70 == *v71;
            if (!v72 && (sub_1B4D18DCC() & 1) == 0)
            {
              break;
            }

            v70 += 2;
            v71 += 2;
            if (!--v69)
            {
              goto LABEL_25;
            }
          }

LABEL_42:
          sub_1B4A1F650(v139, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
          sub_1B4A1F650(v138, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
          sub_1B4A1F650(v137, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
          sub_1B4A1F650(v140, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
          sub_1B4975024(v121, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
LABEL_49:
          sub_1B4A1F650(v148, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
          sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
          v110 = &qword_1EB8A6DB0;
          v111 = &unk_1B4D462F0;
          v112 = v143;
LABEL_56:
          sub_1B4975024(v112, v110, v111);
LABEL_57:
          sub_1B4A1F650(v157, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
          sub_1B4A1F650(v156, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
          goto LABEL_58;
        }

LABEL_25:
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v73 = v44;
        v75 = v138;
        v74 = v139;
        v76 = sub_1B4D1816C();
        sub_1B4A1F650(v74, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        v77 = v75;
        v44 = v73;
        sub_1B4A1F650(v77, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        sub_1B4A1F650(v137, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        sub_1B4A1F650(v140, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        sub_1B4975024(v121, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
        if ((v76 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v78 = v148;
      v79 = sub_1B4D1816C();
      sub_1B4A1F650(v78, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4975024(v143, &qword_1EB8A6DB0, &unk_1B4D462F0);
      if ((v79 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v80 = v44;
    v81 = *(v155 + 24);
    v82 = *(v147 + 48);
    v51 = v123;
    sub_1B4974FBC(&v156[v81], v123, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    sub_1B4974FBC(v157 + v81, v51 + v82, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    v83 = *v122;
    v84 = v153;
    if ((*v122)(v51, 1, v153) == 1)
    {
      if (v83(v51 + v82, 1, v84) != 1)
      {
        goto LABEL_46;
      }

      sub_1B4975024(v51, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
      v44 = v80;
      v85 = v144;
    }

    else
    {
      v86 = v146;
      sub_1B4974FBC(v51, v146, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
      if (v83(v51 + v82, 1, v84) == 1)
      {
        sub_1B4A1F650(v86, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
LABEL_46:
        v110 = &qword_1EB8A7E58;
        v111 = &unk_1B4D28FD0;
        goto LABEL_55;
      }

      v87 = v145;
      sub_1B4A1F750(v51 + v82, v145, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
      v88 = *(v135 + 48);
      v89 = v152;
      sub_1B4974FBC(v86, v152, &qword_1EB8A6DC8, &unk_1B4D20350);
      sub_1B4974FBC(v87, v89 + v88, &qword_1EB8A6DC8, &unk_1B4D20350);
      v90 = *v119;
      v91 = v136;
      if ((*v119)(v89, 1, v136) == 1)
      {
        v92 = v90(v152 + v88, 1, v91);
        v85 = v144;
        if (v92 != 1)
        {
          goto LABEL_51;
        }

        sub_1B4975024(v152, &qword_1EB8A6DC8, &unk_1B4D20350);
      }

      else
      {
        v93 = v152;
        v94 = v133;
        sub_1B4974FBC(v152, v133, &qword_1EB8A6DC8, &unk_1B4D20350);
        v95 = v90(v93 + v88, 1, v91);
        v85 = v144;
        if (v95 == 1)
        {
          sub_1B4A1F650(v94, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
LABEL_51:
          v113 = &qword_1EB8A7E50;
          v114 = &unk_1B4D28FE0;
          v115 = v152;
          goto LABEL_53;
        }

        v96 = v152;
        v97 = v117;
        sub_1B4A1F750(v152 + v88, v117, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        v98 = *(v130 + 48);
        v99 = v129;
        sub_1B4A1F5E8(v94, v129, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4A1F5E8(v97, v99 + v98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        v100 = v131;
        sub_1B4A1F750(v99, v131, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v101 = v99 + v98;
        v102 = v132;
        sub_1B4A1F750(v101, v132, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (*v100 != *v102)
        {
          sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
          sub_1B4A1F650(v100, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
          sub_1B4A1F650(v97, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
          sub_1B4A1F650(v94, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
          v113 = &qword_1EB8A6DC8;
          v114 = &unk_1B4D20350;
          v115 = v96;
LABEL_53:
          sub_1B4975024(v115, v113, v114);
LABEL_54:
          sub_1B4A1F650(v145, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
          sub_1B4A1F650(v146, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
          v110 = &qword_1EB8A6DC0;
          v111 = &unk_1B4D1BDD0;
LABEL_55:
          v112 = v51;
          goto LABEL_56;
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v103 = sub_1B4D1816C();
        sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        sub_1B4A1F650(v100, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        sub_1B4A1F650(v97, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4A1F650(v94, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4975024(v96, &qword_1EB8A6DC8, &unk_1B4D20350);
        if ((v103 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v104 = v145;
      v105 = v146;
      v106 = sub_1B4D1816C();
      sub_1B4A1F650(v104, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
      sub_1B4A1F650(v105, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
      sub_1B4975024(v51, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
      v44 = v151;
      if ((v106 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v107 = v156;
    v108 = v157;
    v109 = sub_1B4D1816C();
    sub_1B4A1F650(v108, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    sub_1B4A1F650(v107, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    if (v109)
    {
      v42 = v85 + 1;
      v40 = v156;
      if (v42 != v150)
      {
        continue;
      }
    }

    return v109 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A10A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v87 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = (&v81 - v8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v81 - v9;
  v94 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v94);
  v102 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB0, &qword_1B4D27AF0);
  MEMORY[0x1EEE9AC00](v96);
  v106 = &v81 - v13;
  v101 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v14 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v81 - v22;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB8, &qword_1B4D203C8);
  MEMORY[0x1EEE9AC00](v100);
  v25 = &v81 - v24;
  v98 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  MEMORY[0x1EEE9AC00](v98);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v81 - v30;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_56:
    v77 = 0;
    return v77 & 1;
  }

  if (!v31 || a1 == a2)
  {
    v77 = 1;
    return v77 & 1;
  }

  v97 = v23;
  v84 = v4;
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = a1 + v32;
  v34 = a2 + v32;
  v35 = v5;
  v36 = (v14 + 48);
  v82 = (v35 + 48);
  v93 = *(v29 + 72);
  v95 = v16;
  v86 = v27;
  v83 = (v14 + 48);
  v85 = v25;
  while (1)
  {
    v103 = v33;
    v37 = v107;
    result = sub_1B4A1F5E8(v33, v107, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    if (!v31)
    {
      break;
    }

    v104 = v31;
    v105 = v34;
    sub_1B4A1F5E8(v34, v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v39 = *(v100 + 48);
    v40 = v27;
    sub_1B4974FBC(v37, v25, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4974FBC(v27, &v25[v39], &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v41 = *v36;
    v42 = v101;
    if ((*v36)(v25, 1, v101) == 1)
    {
      v43 = v41(&v25[v39], 1, v42);
      v44 = v104;
      v45 = v105;
      if (v43 != 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v46 = v97;
      sub_1B4974FBC(v25, v97, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      if (v41(&v25[v39], 1, v42) == 1)
      {
        sub_1B4A1F650(v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v27 = v40;
LABEL_47:
        v78 = &qword_1EB8A7EB8;
        v79 = &qword_1B4D203C8;
        goto LABEL_55;
      }

      v47 = v99;
      sub_1B4A1F750(&v25[v39], v99, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v48 = *(v96 + 48);
      v49 = v46;
      v50 = v106;
      sub_1B4A1F5E8(v49, v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      sub_1B4A1F5E8(v47, v50 + v48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4A1F5E8(v106, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v45 = v105;
        if (EnumCaseMultiPayload != 1)
        {
          v80 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
          goto LABEL_50;
        }

        v52 = v102;
        sub_1B4A1F750(v106 + v48, v102, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        v53 = v97;
        v25 = v85;
        v44 = v104;
        if ((*v16 != *v52 || *(v16 + 1) != v52[1]) && (sub_1B4D18DCC() & 1) == 0)
        {
          goto LABEL_53;
        }

        v54 = *(v94 + 28);
        v55 = *(v89 + 48);
        v56 = v92;
        sub_1B4974FBC(&v16[v54], v92, &qword_1EB8A7158, &unk_1B4D20310);
        sub_1B4974FBC(v102 + v54, v56 + v55, &qword_1EB8A7158, &unk_1B4D20310);
        v57 = *v82;
        v58 = v84;
        if ((*v82)(v56, 1, v84) == 1)
        {
          v59 = v57(v56 + v55, 1, v58) == 1;
          v60 = v56;
          v53 = v97;
          if (!v59)
          {
            goto LABEL_52;
          }

          sub_1B4975024(v60, &qword_1EB8A7158, &unk_1B4D20310);
        }

        else
        {
          v65 = v88;
          sub_1B4974FBC(v56, v88, &qword_1EB8A7158, &unk_1B4D20310);
          if (v57(v56 + v55, 1, v58) == 1)
          {
            sub_1B4A1F650(v65, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v60 = v56;
            v53 = v97;
            v16 = v95;
LABEL_52:
            sub_1B4975024(v60, &qword_1EB8A7E20, &unk_1B4D2B450);
LABEL_53:
            sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
            sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
            sub_1B4A1F650(v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
            v27 = v86;
LABEL_54:
            sub_1B4A1F650(v99, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
            sub_1B4A1F650(v53, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
            v78 = &qword_1EB8A7BC8;
            v79 = &unk_1B4D1FD60;
LABEL_55:
            sub_1B4975024(v25, v78, v79);
            sub_1B4A1F650(v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
            sub_1B4A1F650(v107, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
            goto LABEL_56;
          }

          v66 = v87;
          sub_1B4A1F750(v56 + v55, v87, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v67 = *v65;
          v68 = v65;
          v69 = v97;
          if (v67 != *v66 || v68[1] != v66[1] || v68[2] != v66[2] || v68[3] != v66[3] || v68[4] != v66[4])
          {
            goto LABEL_45;
          }

          v70 = *(v84 + 40);
          v71 = (v68 + v70);
          v72 = *(v68 + v70 + 8);
          v73 = (v66 + v70);
          v74 = v73[1];
          if (v72)
          {
            if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_1B4D18DCC() & 1) == 0)
            {
LABEL_45:
              sub_1B4A1F650(v66, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              sub_1B4975024(v92, &qword_1EB8A7158, &unk_1B4D20310);
              v16 = v95;
              v53 = v69;
              goto LABEL_53;
            }
          }

          else if (v74)
          {
            goto LABEL_45;
          }

          sub_1B4D17BCC();
          sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v75 = sub_1B4D1816C();
          sub_1B4A1F650(v66, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4975024(v92, &qword_1EB8A7158, &unk_1B4D20310);
          v16 = v95;
          v53 = v69;
          if ((v75 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        if (*(v16 + 2) != *(v102 + 16))
        {
          goto LABEL_53;
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if ((sub_1B4D1816C() & 1) == 0)
        {
          goto LABEL_53;
        }

        sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        sub_1B4A1F650(v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v27 = v86;
      }

      else
      {
        v16 = v91;
        sub_1B4A1F5E8(v106, v91, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v61 = swift_getEnumCaseMultiPayload();
        v45 = v105;
        if (v61 == 1)
        {
          v80 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
LABEL_50:
          sub_1B4A1F650(v16, v80);
          v53 = v97;
          v27 = v86;
          v25 = v85;
          sub_1B4975024(v106, &qword_1EB8A7EB0, &qword_1B4D27AF0);
          goto LABEL_54;
        }

        v62 = v106;
        v63 = v90;
        sub_1B4A1F750(v106 + v48, v90, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        v64 = static Apple_Fitness_Intelligence_BestWorkoutRecordEntry.== infix(_:_:)(v16, v63);
        sub_1B4A1F650(v63, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v53 = v97;
        v27 = v86;
        v25 = v85;
        v44 = v104;
        if ((v64 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      sub_1B4A1F650(v99, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      sub_1B4A1F650(v53, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v36 = v83;
    }

    sub_1B4975024(v25, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v76 = v107;
    v77 = sub_1B4D1816C();
    sub_1B4A1F650(v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    sub_1B4A1F650(v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    if (v77)
    {
      v34 = v45 + v93;
      v33 = v103 + v93;
      v59 = v44 == 1;
      v31 = v44 - 1;
      v16 = v95;
      if (!v59)
      {
        continue;
      }
    }

    return v77 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A118C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v43 - v9);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - v11;
  v52 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  MEMORY[0x1EEE9AC00](v52);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v43 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_38:
    v39 = 0;
    return v39 & 1;
  }

  if (v18 && a1 != a2)
  {
    v49 = v4;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v45 = v13;
    v46 = (v5 + 48);
    v22 = *(v15 + 72);
    v43 = v7;
    v44 = v22;
    while (1)
    {
      sub_1B4A1F5E8(v20, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      v47 = v20;
      sub_1B4A1F5E8(v21, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      if (*v17 != *v13)
      {
        break;
      }

      v23 = v17[1] == v13[1] && v17[2] == v13[2];
      if (!v23 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v48 = v21;
      v24 = *(v52 + 28);
      v25 = *(v51 + 48);
      v26 = v50;
      sub_1B4974FBC(v17 + v24, v50, &qword_1EB8A7158, &unk_1B4D20310);
      sub_1B4974FBC(v13 + v24, v26 + v25, &qword_1EB8A7158, &unk_1B4D20310);
      v27 = *v46;
      v28 = v49;
      if ((*v46)(v26, 1, v49) == 1)
      {
        v23 = v27(v26 + v25, 1, v28) == 1;
        v29 = v26;
        if (!v23)
        {
          goto LABEL_35;
        }

        sub_1B4975024(v26, &qword_1EB8A7158, &unk_1B4D20310);
        v30 = v48;
        v13 = v45;
      }

      else
      {
        sub_1B4974FBC(v26, v10, &qword_1EB8A7158, &unk_1B4D20310);
        if (v27(v26 + v25, 1, v28) == 1)
        {
          sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v29 = v26;
LABEL_35:
          v40 = &qword_1EB8A7E20;
          v41 = &unk_1B4D2B450;
LABEL_36:
          sub_1B4975024(v29, v40, v41);
          v13 = v45;
          break;
        }

        v31 = v43;
        sub_1B4A1F750(v26 + v25, v43, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v30 = v48;
        if (*v10 != *v31 || v10[1] != v31[1] || v10[2] != v31[2] || v10[3] != v31[3] || v10[4] != v31[4])
        {
          goto LABEL_33;
        }

        v32 = *(v49 + 40);
        v33 = (v10 + v32);
        v34 = *(v10 + v32 + 8);
        v35 = (v31 + v32);
        v36 = v35[1];
        if (v34)
        {
          if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1B4D18DCC() & 1) == 0)
          {
LABEL_33:
            sub_1B4A1F650(v31, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v40 = &qword_1EB8A7158;
            v41 = &unk_1B4D20310;
            v29 = v26;
            goto LABEL_36;
          }
        }

        else if (v36)
        {
          goto LABEL_33;
        }

        sub_1B4D17BCC();
        v37 = v26;
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v38 = sub_1B4D1816C();
        sub_1B4A1F650(v31, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4975024(v37, &qword_1EB8A7158, &unk_1B4D20310);
        v13 = v45;
        if ((v38 & 1) == 0)
        {
          break;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v39 = sub_1B4D1816C();
      sub_1B4A1F650(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      if (v39)
      {
        v21 = v30 + v44;
        v20 = v47 + v44;
        if (--v18)
        {
          continue;
        }
      }

      return v39 & 1;
    }

    sub_1B4A1F650(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    goto LABEL_38;
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_1B4A11F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v63 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v63 - v10;
  v80 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v11 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = (&v63 - v15);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E78, &unk_1B4D20390);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v63 - v16;
  v81 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v81);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v63 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_47:
    v58 = 0;
    return v58 & 1;
  }

  if (v23 && a1 != a2)
  {
    v66 = v18;
    v67 = v4;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = a2 + v24;
    v63 = v7;
    v64 = (v5 + 48);
    v68 = *(v20 + 72);
    v69 = (v11 + 48);
    v65 = v13;
    v70 = &v63 - v21;
    while (1)
    {
      v76 = v25;
      sub_1B4A1F5E8(v25, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      sub_1B4A1F5E8(v26, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      if (*v22 != *v18)
      {
        break;
      }

      v74 = v23;
      v75 = v26;
      v27 = v13;
      v28 = v22;
      v29 = v7;
      v30 = *(v81 + 24);
      v31 = *(v77 + 48);
      v32 = v79;
      sub_1B4974FBC(v28 + v30, v79, &qword_1EB8A7148, &unk_1B4D25C40);
      sub_1B4974FBC(v18 + v30, v32 + v31, &qword_1EB8A7148, &unk_1B4D25C40);
      v33 = *v69;
      v34 = v80;
      if ((*v69)(v32, 1, v80) == 1)
      {
        v35 = v33(v32 + v31, 1, v34) == 1;
        v36 = v32;
        if (!v35)
        {
          goto LABEL_40;
        }

        sub_1B4975024(v32, &qword_1EB8A7148, &unk_1B4D25C40);
        v7 = v29;
        v22 = v70;
        v37 = v74;
        v38 = v75;
      }

      else
      {
        v39 = v78;
        sub_1B4974FBC(v32, v78, &qword_1EB8A7148, &unk_1B4D25C40);
        if (v33(v32 + v31, 1, v34) == 1)
        {
          sub_1B4A1F650(v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
          v18 = v66;
          v36 = v32;
LABEL_40:
          sub_1B4975024(v36, &qword_1EB8A7E78, &unk_1B4D20390);
          goto LABEL_45;
        }

        sub_1B4A1F750(v32 + v31, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        v40 = v39;
        if (*v39 != *v13)
        {
          goto LABEL_44;
        }

        if (v39[1] != v13[1] || v39[2] != v13[2])
        {
          v41 = sub_1B4D18DCC();
          v40 = v78;
          if ((v41 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v42 = *(v80 + 28);
        v43 = v71;
        v44 = *(v72 + 48);
        v45 = v73;
        sub_1B4974FBC(v40 + v42, v73, &qword_1EB8A7158, &unk_1B4D20310);
        sub_1B4974FBC(v27 + v42, v45 + v44, &qword_1EB8A7158, &unk_1B4D20310);
        v46 = *v64;
        v47 = v67;
        if ((*v64)(v45, 1, v67) == 1)
        {
          v35 = v46(v45 + v44, 1, v47) == 1;
          v48 = v45;
          v13 = v65;
          if (!v35)
          {
            goto LABEL_42;
          }

          sub_1B4975024(v45, &qword_1EB8A7158, &unk_1B4D20310);
          v7 = v63;
          v40 = v78;
        }

        else
        {
          sub_1B4974FBC(v45, v43, &qword_1EB8A7158, &unk_1B4D20310);
          if (v46(v45 + v44, 1, v47) == 1)
          {
            sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v48 = v45;
            v13 = v65;
LABEL_42:
            v59 = &qword_1EB8A7E20;
            v60 = &unk_1B4D2B450;
            goto LABEL_43;
          }

          v7 = v63;
          sub_1B4A1F750(v45 + v44, v63, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v13 = v65;
          if (*v43 != *v7 || v43[1] != v7[1] || v43[2] != v7[2] || v43[3] != v7[3] || v43[4] != v7[4])
          {
            goto LABEL_38;
          }

          v49 = *(v67 + 40);
          v50 = (v43 + v49);
          v51 = *(v43 + v49 + 8);
          v52 = (v7 + v49);
          v53 = v52[1];
          if (v51)
          {
            if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1B4D18DCC() & 1) == 0)
            {
LABEL_38:
              sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              v59 = &qword_1EB8A7158;
              v60 = &unk_1B4D20310;
              v48 = v45;
LABEL_43:
              sub_1B4975024(v48, v59, v60);
              v40 = v78;
LABEL_44:
              v61 = v40;
              sub_1B4A1F650(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
              sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
              sub_1B4975024(v79, &qword_1EB8A7148, &unk_1B4D25C40);
              v18 = v66;
LABEL_45:
              v22 = v70;
              break;
            }
          }

          else if (v53)
          {
            goto LABEL_38;
          }

          sub_1B4D17BCC();
          v54 = v45;
          sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v55 = sub_1B4D1816C();
          sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4975024(v54, &qword_1EB8A7158, &unk_1B4D20310);
          v40 = v78;
          if ((v55 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v56 = v40;
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v57 = sub_1B4D1816C();
        sub_1B4A1F650(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        sub_1B4A1F650(v56, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        sub_1B4975024(v79, &qword_1EB8A7148, &unk_1B4D25C40);
        v18 = v66;
        v22 = v70;
        v37 = v74;
        v38 = v75;
        if ((v57 & 1) == 0)
        {
          break;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v58 = sub_1B4D1816C();
      sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      if (v58)
      {
        v26 = v38 + v68;
        v25 = v76 + v68;
        v23 = v37 - 1;
        if (v23)
        {
          continue;
        }
      }

      return v58 & 1;
    }

    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
    sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
    goto LABEL_47;
  }

  v58 = 1;
  return v58 & 1;
}

uint64_t sub_1B4A129A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      if (*v10 != *v6 || v10[1] != v6[1])
      {
        break;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v16 = sub_1B4D1816C();
      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1B4A12C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = (&v69 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v69 - v10;
  v85 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v85);
  v89 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v69 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v69 - v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E38, &unk_1B4D20330);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v86 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v69 - v26;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_43:
    v62 = 0;
    return v62 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v62 = 1;
    return v62 & 1;
  }

  v71 = v9;
  v74 = v4;
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v79 = (v16 + 48);
  v70 = (v5 + 48);
  v75 = *(v25 + 72);
  v76 = v20;
  v31 = v82;
  v72 = v22;
  v69 = v15;
  while (1)
  {
    v32 = v91;
    result = sub_1B4A1F5E8(v29, v91, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    if (!v27)
    {
      break;
    }

    v88 = v27;
    v34 = v90;
    sub_1B4A1F5E8(v30, v90, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    v35 = *(v20 + 48);
    sub_1B4974FBC(v32, v22, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4974FBC(v34, &v22[v35], &qword_1EB8A7E30, &unk_1B4D29F60);
    v36 = *v79;
    if ((*v79)(v22, 1, v15) == 1)
    {
      if (v36(&v22[v35], 1, v15) != 1)
      {
        goto LABEL_36;
      }

      sub_1B4975024(v22, &qword_1EB8A7E30, &unk_1B4D29F60);
    }

    else
    {
      sub_1B4974FBC(v22, v31, &qword_1EB8A7E30, &unk_1B4D29F60);
      if (v36(&v22[v35], 1, v15) == 1)
      {
        sub_1B4A1F650(v31, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
LABEL_36:
        v66 = &qword_1EB8A7E38;
        v67 = &unk_1B4D20330;
        v68 = v22;
        goto LABEL_41;
      }

      v37 = v31;
      v38 = v87;
      sub_1B4A1F750(&v22[v35], v87, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v39 = v80;
      v40 = *(v81 + 48);
      sub_1B4A1F5E8(v37, v80, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      sub_1B4A1F5E8(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v41 = v84;
      sub_1B4A1F750(v39, v84, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v42 = v39 + v40;
      v43 = v89;
      sub_1B4A1F750(v42, v89, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v44 = v83;
      if (*v41 != *v43)
      {
        goto LABEL_40;
      }

      v73 = v29;
      v45 = *(v85 + 28);
      v46 = *(v71 + 48);
      sub_1B4974FBC(v41 + v45, v83, &qword_1EB8A7158, &unk_1B4D20310);
      sub_1B4974FBC(v89 + v45, v44 + v46, &qword_1EB8A7158, &unk_1B4D20310);
      v47 = *v70;
      v48 = v74;
      if ((*v70)(v44, 1, v74) == 1)
      {
        if (v47(v44 + v46, 1, v48) != 1)
        {
          goto LABEL_38;
        }

        sub_1B4975024(v44, &qword_1EB8A7158, &unk_1B4D20310);
        v29 = v73;
      }

      else
      {
        v49 = v78;
        sub_1B4974FBC(v44, v78, &qword_1EB8A7158, &unk_1B4D20310);
        if (v47(v44 + v46, 1, v48) == 1)
        {
          sub_1B4A1F650(v49, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v41 = v84;
LABEL_38:
          v63 = &qword_1EB8A7E20;
          v64 = &unk_1B4D2B450;
          v65 = v44;
          goto LABEL_39;
        }

        v50 = v77;
        sub_1B4A1F750(v44 + v46, v77, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v41 = v84;
        v29 = v73;
        if (*v49 != *v50 || v49[1] != v50[1] || v49[2] != v50[2] || v49[3] != v50[3] || v49[4] != v50[4])
        {
          goto LABEL_34;
        }

        v51 = *(v74 + 40);
        v52 = (v49 + v51);
        v53 = *(v49 + v51 + 8);
        v54 = (v50 + v51);
        v55 = v54[1];
        if (v53)
        {
          if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_1B4D18DCC() & 1) == 0)
          {
LABEL_34:
            sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            sub_1B4A1F650(v49, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v63 = &qword_1EB8A7158;
            v64 = &unk_1B4D20310;
            v65 = v83;
LABEL_39:
            sub_1B4975024(v65, v63, v64);
LABEL_40:
            sub_1B4A1F650(v89, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
            sub_1B4A1F650(v41, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
            sub_1B4A1F650(v87, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
            sub_1B4A1F650(v82, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
            v66 = &qword_1EB8A7E30;
            v67 = &unk_1B4D29F60;
            v68 = v72;
LABEL_41:
            sub_1B4975024(v68, v66, v67);
LABEL_42:
            sub_1B4A1F650(v90, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
            sub_1B4A1F650(v91, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
            goto LABEL_43;
          }
        }

        else if (v55)
        {
          goto LABEL_34;
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v56 = sub_1B4D1816C();
        sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4A1F650(v49, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4975024(v83, &qword_1EB8A7158, &unk_1B4D20310);
        if ((v56 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (*(v41 + 8) != *(v89 + 8))
      {
        goto LABEL_40;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v57 = v41;
      v58 = v89;
      v59 = sub_1B4D1816C();
      sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4A1F650(v57, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4A1F650(v87, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v31 = v82;
      sub_1B4A1F650(v82, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v22 = v72;
      sub_1B4975024(v72, &qword_1EB8A7E30, &unk_1B4D29F60);
      v15 = v69;
      if ((v59 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v61 = v90;
    v60 = v91;
    v62 = sub_1B4D1816C();
    sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    sub_1B4A1F650(v60, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    if (v62)
    {
      v27 = v88 - 1;
      v20 = v76;
      v30 += v75;
      v29 += v75;
      if (v88 != 1)
      {
        continue;
      }
    }

    return v62 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A137D8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      if (*v11 != *v7)
      {
        break;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1B4A13A2C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E40, &qword_1B4D20340);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v37 - v12;
  v46 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v46);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v37 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_20:
    v35 = 0;
    return v35 & 1;
  }

  if (v20 && a1 != a2)
  {
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = v6;
    v23 = a1 + v21;
    v24 = a2 + v21;
    v42 = (v22 + 48);
    v43 = v5;
    v25 = *(v17 + 72);
    v39 = v11;
    v40 = v25;
    v37 = v8;
    v38 = v15;
    v41 = &v37 - v18;
    while (1)
    {
      sub_1B4A1F5E8(v23, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      sub_1B4A1F5E8(v24, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      if (*v19 != *v15)
      {
        break;
      }

      v45 = v23;
      v26 = *(v46 + 24);
      v27 = *(v44 + 48);
      sub_1B4974FBC(v19 + v26, v13, &qword_1EB8A7818, &unk_1B4D29F40);
      sub_1B4974FBC(v15 + v26, &v13[v27], &qword_1EB8A7818, &unk_1B4D29F40);
      v28 = v43;
      v29 = *v42;
      if ((*v42)(v13, 1, v43) == 1)
      {
        v30 = v29(&v13[v27], 1, v28);
        v19 = v41;
        if (v30 != 1)
        {
          goto LABEL_17;
        }

        sub_1B4975024(v13, &qword_1EB8A7818, &unk_1B4D29F40);
        v31 = v45;
      }

      else
      {
        v32 = v39;
        sub_1B4974FBC(v13, v39, &qword_1EB8A7818, &unk_1B4D29F40);
        if (v29(&v13[v27], 1, v28) == 1)
        {
          sub_1B4A1F650(v32, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
          v15 = v38;
          v19 = v41;
LABEL_17:
          sub_1B4975024(v13, &qword_1EB8A7E40, &qword_1B4D20340);
          break;
        }

        v33 = v37;
        sub_1B4A1F750(&v13[v27], v37, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        v19 = v41;
        if (*v32 != *v33)
        {
          sub_1B4A1F650(v33, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
          sub_1B4A1F650(v32, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
          sub_1B4975024(v13, &qword_1EB8A7818, &unk_1B4D29F40);
          v15 = v38;
          break;
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v34 = sub_1B4D1816C();
        sub_1B4A1F650(v33, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4A1F650(v32, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4975024(v13, &qword_1EB8A7818, &unk_1B4D29F40);
        v15 = v38;
        v31 = v45;
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = sub_1B4D1816C();
      sub_1B4A1F650(v15, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      sub_1B4A1F650(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      if (v35)
      {
        v24 += v40;
        v23 = v31 + v40;
        if (--v20)
        {
          continue;
        }
      }

      return v35 & 1;
    }

    sub_1B4A1F650(v15, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
    sub_1B4A1F650(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
    goto LABEL_20;
  }

  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1B4A14030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      v16 = *v10 == *v6 && v10[1] == v6[1];
      if (!v16 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v6[2] && v10[3] == v6[3];
      if (!v17 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1B4D1816C();
      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B4A14308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC0, &qword_1B4D3F930);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v34 - v11;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  MEMORY[0x1EEE9AC00](v43);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v34 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v19 || a1 == a2)
  {
    v30 = 1;
    return v30 & 1;
  }

  v39 = v4;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v37 = (&v34 - v17);
  v38 = (v5 + 48);
  v35 = *(v16 + 72);
  v36 = v12;
  v34 = v7;
  while (1)
  {
    sub_1B4A1F5E8(v21, v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    v40 = v22;
    v41 = v21;
    sub_1B4A1F5E8(v22, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    v23 = *(v43 + 28);
    v24 = *(v42 + 48);
    v25 = v36;
    sub_1B4974FBC(v18 + v23, v36, &qword_1EB8A7CB8, &unk_1B4D20170);
    sub_1B4974FBC(v14 + v23, v25 + v24, &qword_1EB8A7CB8, &unk_1B4D20170);
    v26 = v39;
    v27 = *v38;
    if ((*v38)(v25, 1, v39) != 1)
    {
      break;
    }

    if (v27(v25 + v24, 1, v26) != 1)
    {
      goto LABEL_21;
    }

    sub_1B4975024(v25, &qword_1EB8A7CB8, &unk_1B4D20170);
    v18 = v37;
LABEL_13:
    if (*v18 != *v14 || v18[1] != v14[1])
    {
      goto LABEL_23;
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = sub_1B4D1816C();
    sub_1B4A1F650(v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    if (v30)
    {
      v22 = v40 + v35;
      v21 = v41 + v35;
      if (--v19)
      {
        continue;
      }
    }

    return v30 & 1;
  }

  sub_1B4974FBC(v25, v10, &qword_1EB8A7CB8, &unk_1B4D20170);
  if (v27(v25 + v24, 1, v26) != 1)
  {
    v28 = v34;
    sub_1B4A1F750(v25 + v24, v34, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
    if (*v10 != *v28 || v10[4] != *(v28 + 4) || *(v10 + 2) != *(v28 + 8))
    {
      sub_1B4A1F650(v28, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      v31 = &qword_1EB8A7CB8;
      v32 = &unk_1B4D20170;
      goto LABEL_22;
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v29 = sub_1B4D1816C();
    sub_1B4A1F650(v28, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
    sub_1B4975024(v25, &qword_1EB8A7CB8, &unk_1B4D20170);
    v18 = v37;
    if ((v29 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
LABEL_21:
  v31 = &qword_1EB8A7CC0;
  v32 = &qword_1B4D3F930;
LABEL_22:
  sub_1B4975024(v25, v31, v32);
  v18 = v37;
LABEL_23:
  sub_1B4A1F650(v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
LABEL_24:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1B4A14918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v6[v16];
      if (v17 != v18)
      {

        v19 = sub_1B4C30F48(v17, v18);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if ((sub_1B4D1816C() & 1) == 0)
      {
        break;
      }

      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  return 0;
}

uint64_t sub_1B4A14B88(uint64_t a1, uint64_t a2)
{
  v84[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v70 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA0, &unk_1B4D20280);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v70 - v10;
  v82 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  MEMORY[0x1EEE9AC00](v82);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v70 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_79;
  }

  if (!v17 || a1 == a2)
  {
    v68 = 1;
    return v68 & 1;
  }

  v71 = v7;
  v72 = 0;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v74 = (v5 + 48);
  v75 = v4;
  v73 = *(v14 + 72);
  v21 = &qword_1EB8A7D98;
  while (1)
  {
    sub_1B4A1F5E8(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    if (!v17)
    {
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
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    sub_1B4A1F5E8(v20, v12, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    if (*v16 != *v12 || v16[1] != v12[1] || (v16[2] != v12[2] || v16[3] != v12[3]) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_78;
    }

    v22 = v16[4];
    v23 = v16[5];
    v24 = v12[4];
    v25 = v12[5];
    v26 = v23 >> 62;
    v27 = v25 >> 62;
    if (v23 >> 62 == 3)
    {
      v28 = 0;
      if (!v22 && v23 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v28 = 0;
        if (!v24 && v25 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }

LABEL_27:
      if (v27 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        v31 = __OFSUB__(v33, v34);
        v28 = v33 - v34;
        if (v31)
        {
          goto LABEL_85;
        }

        goto LABEL_27;
      }

      v28 = 0;
      if (v27 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v26)
    {
      LODWORD(v28) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_84;
      }

      v28 = v28;
      if (v27 <= 1)
      {
LABEL_28:
        if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_82;
          }

          v32 = v32;
        }

        else
        {
          v32 = BYTE6(v25);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v28 = BYTE6(v23);
      if (v27 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v27 != 2)
    {
      if (v28)
      {
        goto LABEL_78;
      }

      goto LABEL_61;
    }

    v30 = *(v24 + 16);
    v29 = *(v24 + 24);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (v31)
    {
      goto LABEL_83;
    }

LABEL_34:
    if (v28 != v32)
    {
      goto LABEL_78;
    }

    if (v28 < 1)
    {
      goto LABEL_61;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        memset(v84, 0, 14);
LABEL_53:
        v47 = v72;
        sub_1B4A1CB14(v84, v24, v25, &v83);
        v72 = v47;
        if (!v83)
        {
          goto LABEL_78;
        }

        goto LABEL_61;
      }

      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      v78 = v36;
      v79 = v24;
      v77 = v35;
      v37 = sub_1B4D1750C();
      if (v37)
      {
        v38 = v37;
        v39 = sub_1B4D1752C();
        v40 = v78;
        if (__OFSUB__(v78, v39))
        {
          goto LABEL_88;
        }

        v70 = v78 - v39 + v38;
      }

      else
      {
        v70 = 0;
        v40 = v78;
      }

      if (__OFSUB__(v77, v40))
      {
        goto LABEL_87;
      }

      sub_1B4D1751C();
      v48 = v72;
      sub_1B4A1CB14(v70, v79, v25, v84);
      v72 = v48;
      if ((v84[0] & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (!v26)
      {
        v84[0] = v16[4];
        LOWORD(v84[1]) = v23;
        BYTE2(v84[1]) = BYTE2(v23);
        BYTE3(v84[1]) = BYTE3(v23);
        BYTE4(v84[1]) = BYTE4(v23);
        BYTE5(v84[1]) = BYTE5(v23);
        goto LABEL_53;
      }

      v41 = v22;
      v42 = v22 >> 32;
      v78 = v42 - v41;
      v79 = v24;
      if (v42 < v41)
      {
        goto LABEL_86;
      }

      v43 = sub_1B4D1750C();
      if (v43)
      {
        v44 = v43;
        v45 = sub_1B4D1752C();
        if (__OFSUB__(v41, v45))
        {
          goto LABEL_89;
        }

        v46 = v41 - v45 + v44;
      }

      else
      {
        v46 = 0;
      }

      sub_1B4D1751C();
      v49 = v72;
      sub_1B4A1CB14(v46, v79, v25, v84);
      v72 = v49;
      v21 = &qword_1EB8A7D98;
      if ((v84[0] & 1) == 0)
      {
        goto LABEL_78;
      }
    }

LABEL_61:
    v78 = v20;
    v79 = v17;
    v77 = v19;
    v50 = *(v82 + 32);
    v51 = *(v81 + 48);
    v52 = v21;
    v53 = v80;
    sub_1B4974FBC(v16 + v50, v80, v52, &qword_1B4D20278);
    sub_1B4974FBC(v12 + v50, v53 + v51, v52, &qword_1B4D20278);
    v54 = v75;
    v55 = *v74;
    if ((*v74)(v53, 1, v75) == 1)
    {
      if (v55(v53 + v51, 1, v54) != 1)
      {
        goto LABEL_77;
      }

      v56 = v53;
      v21 = v52;
      sub_1B4975024(v56, v52, &qword_1B4D20278);
      v58 = v77;
      v57 = v78;
      v59 = v79;
      goto LABEL_66;
    }

    v60 = v76;
    sub_1B4974FBC(v53, v76, v52, &qword_1B4D20278);
    if (v55(v53 + v51, 1, v54) == 1)
    {
      break;
    }

    v61 = v71;
    sub_1B4A1F750(v53 + v51, v71, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    v62 = _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV19OneOf_DimensionTypeO2eeoiySbAE_AEtFZ_0(v60, v61);
    sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4A1F650(v60, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4975024(v53, v52, &qword_1B4D20278);
    v58 = v77;
    v57 = v78;
    v59 = v79;
    v21 = v52;
    if ((v62 & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_66:
    v63 = *(v82 + 40);
    v64 = (v16 + v63);
    v65 = *(v16 + v63 + 8);
    v66 = (v12 + v63);
    v67 = *(v12 + v63 + 8);
    if (v65)
    {
      if (!v67)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (*v64 != *v66)
      {
        LOBYTE(v67) = 1;
      }

      if (v67)
      {
        goto LABEL_78;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v68 = sub_1B4D1816C();
    sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    if (v68)
    {
      v17 = v59 - 1;
      v20 = v57 + v73;
      v19 = v58 + v73;
      if (v59 != 1)
      {
        continue;
      }
    }

    return v68 & 1;
  }

  sub_1B4A1F650(v60, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
LABEL_77:
  sub_1B4975024(v53, &qword_1EB8A7DA0, &unk_1B4D20280);
LABEL_78:
  sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
  sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
LABEL_79:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_1B4A15444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA8, &unk_1B4D20290);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v13;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_1EB8A6688;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_1B4A1F5E8(v20, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_1B4A1F5E8(v21, v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v25 = *(v42 + 48);
    sub_1B4974FBC(v17, v11, v23, &qword_1B4D1A660);
    sub_1B4974FBC(v13, &v11[v25], v23, &qword_1B4D1A660);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_1B4975024(v11, v27, &qword_1B4D1A660);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_1B4974FBC(v11, v37, v27, &qword_1B4D1A660);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_1B4A1F650(v30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
        v17 = v35;
        v13 = v36;
LABEL_16:
        sub_1B4975024(v11, &qword_1EB8A7DA8, &unk_1B4D20290);
LABEL_17:
        sub_1B4A1F650(v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        goto LABEL_18;
      }

      v31 = v38;
      sub_1B4A1F750(&v11[v25], v38, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      v32 = static Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult.== infix(_:_:)(v30, v31);
      sub_1B4A1F650(v31, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      sub_1B4A1F650(v30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      sub_1B4975024(v11, v27, &qword_1B4D1A660);
      v22 = v29;
      v17 = v35;
      v13 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v33 = sub_1B4D1816C();
    sub_1B4A1F650(v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A15970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        v16 = *(v4 + 20);
        v17 = v10[v16];
        v18 = v6[v16];
        if (v17 == 2)
        {
          if (v18 != 2)
          {
            goto LABEL_14;
          }
        }

        else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
        {
LABEL_14:
          sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
          sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
          goto LABEL_15;
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v19 = sub_1B4D1816C();
        sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        if (v19)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v19 = 1;
  }

  else
  {
LABEL_15:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1B4A15BE0(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB0, &qword_1B4D20168);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v61 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  MEMORY[0x1EEE9AC00](v61);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_55:
    v46 = 0;
    return v46 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v46 = 1;
    return v46 & 1;
  }

  v51 = v6;
  v52 = v9;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v55 = v10;
  v56 = a2 + v20;
  v53 = &v50 - v17;
  v54 = (v4 + 48);
  v57 = *(v16 + 72);
  v58 = a1 + v20;
  v21 = v12;
  v22 = 0;
  v59 = v19;
  while (1)
  {
    v23 = v57 * v22;
    result = sub_1B4A1F5E8(v58 + v57 * v22, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    if (v22 == v59)
    {
      break;
    }

    sub_1B4A1F5E8(v56 + v23, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    v25 = *v18 == *v14 && *(v18 + 1) == *(v14 + 1);
    if (!v25 && (sub_1B4D18DCC() & 1) == 0 || *(v18 + 2) != *(v14 + 2) || *(v18 + 3) != *(v14 + 3) || *(v18 + 4) != *(v14 + 4) || (*(v18 + 5) != *(v14 + 5) || *(v18 + 6) != *(v14 + 6)) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_54;
    }

    v26 = *(v61 + 40);
    v27 = &v18[v26];
    v28 = *&v18[v26 + 8];
    v29 = &v14[v26];
    v30 = *(v29 + 1);
    if (v28)
    {
      if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v30)
    {
      goto LABEL_54;
    }

    v31 = *(v61 + 44);
    v32 = *(v55 + 48);
    sub_1B4974FBC(&v18[v31], v21, &qword_1EB8A6A28, &qword_1B4D20160);
    sub_1B4974FBC(&v14[v31], v21 + v32, &qword_1EB8A6A28, &qword_1B4D20160);
    v33 = *v54;
    v34 = v60;
    if ((*v54)(v21, 1, v60) == 1)
    {
      if (v33(v21 + v32, 1, v34) != 1)
      {
        goto LABEL_52;
      }

      sub_1B4975024(v21, &qword_1EB8A6A28, &qword_1B4D20160);
    }

    else
    {
      v35 = v14;
      v36 = v34;
      v37 = v52;
      sub_1B4974FBC(v21, v52, &qword_1EB8A6A28, &qword_1B4D20160);
      if (v33(v21 + v32, 1, v36) == 1)
      {
        sub_1B4A1F650(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        v14 = v35;
        v18 = v53;
LABEL_52:
        v47 = &qword_1EB8A7CB0;
        v48 = &qword_1B4D20168;
        v49 = v21;
        goto LABEL_53;
      }

      v38 = v51;
      sub_1B4A1F750(v21 + v32, v51, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      v14 = v35;
      v18 = v53;
      if ((*v37 != *v38 || v37[1] != v38[1]) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_50;
      }

      v39 = v37[2];
      v40 = v38[2];
      v41 = *(v39 + 16);
      if (v41 != *(v40 + 16))
      {
        goto LABEL_50;
      }

      if (v41 && v39 != v40)
      {
        v42 = (v39 + 40);
        v43 = (v40 + 40);
        while (1)
        {
          v44 = *(v42 - 1) == *(v43 - 1) && *v42 == *v43;
          if (!v44 && (sub_1B4D18DCC() & 1) == 0)
          {
            break;
          }

          v42 += 2;
          v43 += 2;
          if (!--v41)
          {
            goto LABEL_42;
          }
        }

LABEL_50:
        sub_1B4A1F650(v38, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        sub_1B4A1F650(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        v47 = &qword_1EB8A6A28;
        v48 = &qword_1B4D20160;
        v49 = v21;
LABEL_53:
        sub_1B4975024(v49, v47, v48);
LABEL_54:
        sub_1B4A1F650(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
        sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
        goto LABEL_55;
      }

LABEL_42:
      if ((v37[3] != v38[3] || v37[4] != v38[4]) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_50;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v45 = sub_1B4D1816C();
      sub_1B4A1F650(v38, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      sub_1B4A1F650(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      sub_1B4975024(v21, &qword_1EB8A6A28, &qword_1B4D20160);
      if ((v45 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v46 = sub_1B4D1816C();
    sub_1B4A1F650(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    if ((v46 & 1) != 0 && ++v22 != v59)
    {
      continue;
    }

    return v46 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A1633C(uint64_t a1, uint64_t a2)
{
  v65[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v60 = *(v8 + 72);
      v61 = 0;
      v59 = v4;
      while (1)
      {
        sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        v62 = v14;
        v63 = v13;
        sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        v15 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
        if (!v15 && (sub_1B4D18DCC() & 1) == 0 || *(v10 + 4) != *(v6 + 4))
        {
LABEL_110:
          sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
          sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
          goto LABEL_111;
        }

        v16 = *(v10 + 3);
        v17 = *(v10 + 4);
        v19 = *(v6 + 3);
        v18 = *(v6 + 4);
        v20 = v17 >> 62;
        v21 = v18 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v28 = *(v16 + 16);
            v27 = *(v16 + 24);
            v25 = __OFSUB__(v27, v28);
            v22 = v27 - v28;
            if (v25)
            {
              goto LABEL_117;
            }

            goto LABEL_27;
          }

          v22 = 0;
          if (v21 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_118;
          }

          v22 = v22;
          if (v21 <= 1)
          {
LABEL_28:
            if (v21)
            {
              LODWORD(v26) = HIDWORD(v19) - v19;
              if (__OFSUB__(HIDWORD(v19), v19))
              {
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
LABEL_120:
                __break(1u);
LABEL_121:
                __break(1u);
LABEL_122:
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
LABEL_128:
                __break(1u);
              }

              v26 = v26;
            }

            else
            {
              v26 = BYTE6(v18);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v21 != 2)
        {
          if (v22)
          {
            goto LABEL_110;
          }

          goto LABEL_58;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          goto LABEL_114;
        }

LABEL_34:
        if (v22 != v26)
        {
          goto LABEL_110;
        }

        if (v22 < 1)
        {
          goto LABEL_58;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v30 = *(v16 + 16);
            v29 = *(v16 + 24);
            v31 = sub_1B4D1750C();
            if (v31)
            {
              v32 = sub_1B4D1752C();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_125;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_122;
            }

            goto LABEL_54;
          }

          memset(v65, 0, 14);
        }

        else
        {
          if (v20)
          {
            v33 = v16;
            if (v16 >> 32 < v16)
            {
              goto LABEL_121;
            }

            v31 = sub_1B4D1750C();
            if (v31)
            {
              v34 = sub_1B4D1752C();
              if (__OFSUB__(v33, v34))
              {
                goto LABEL_126;
              }

              v31 += v33 - v34;
            }

LABEL_54:
            sub_1B4D1751C();
            v35 = v61;
            sub_1B4A1CB14(v31, v19, v18, v65);
            v61 = v35;
            if ((v65[0] & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_58;
          }

          v65[0] = *(v10 + 3);
          LOWORD(v65[1]) = v17;
          BYTE2(v65[1]) = BYTE2(v17);
          BYTE3(v65[1]) = BYTE3(v17);
          BYTE4(v65[1]) = BYTE4(v17);
          BYTE5(v65[1]) = BYTE5(v17);
        }

        v36 = v61;
        sub_1B4A1CB14(v65, v19, v18, &v64);
        v61 = v36;
        if (!v64)
        {
          goto LABEL_110;
        }

LABEL_58:
        if (*(v10 + 10) != *(v6 + 10))
        {
          goto LABEL_110;
        }

        v37 = *(v10 + 6);
        v38 = *(v10 + 7);
        v40 = *(v6 + 6);
        v39 = *(v6 + 7);
        v41 = v38 >> 62;
        v42 = v39 >> 62;
        if (v38 >> 62 == 3)
        {
          v43 = 0;
          if (!v37 && v38 == 0xC000000000000000 && v39 >> 62 == 3)
          {
            v43 = 0;
            if (!v40 && v39 == 0xC000000000000000)
            {
              goto LABEL_106;
            }
          }

LABEL_75:
          if (v42 > 1)
          {
            goto LABEL_69;
          }

          goto LABEL_76;
        }

        if (v41 > 1)
        {
          if (v41 == 2)
          {
            v48 = *(v37 + 16);
            v47 = *(v37 + 24);
            v25 = __OFSUB__(v47, v48);
            v43 = v47 - v48;
            if (v25)
            {
              goto LABEL_119;
            }

            goto LABEL_75;
          }

          v43 = 0;
          if (v42 > 1)
          {
            goto LABEL_69;
          }
        }

        else if (v41)
        {
          LODWORD(v43) = HIDWORD(v37) - v37;
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_120;
          }

          v43 = v43;
          if (v42 > 1)
          {
LABEL_69:
            if (v42 != 2)
            {
              if (v43)
              {
                goto LABEL_110;
              }

              goto LABEL_106;
            }

            v45 = *(v40 + 16);
            v44 = *(v40 + 24);
            v25 = __OFSUB__(v44, v45);
            v46 = v44 - v45;
            if (v25)
            {
              goto LABEL_115;
            }

            goto LABEL_82;
          }
        }

        else
        {
          v43 = BYTE6(v38);
          if (v42 > 1)
          {
            goto LABEL_69;
          }
        }

LABEL_76:
        if (v42)
        {
          LODWORD(v46) = HIDWORD(v40) - v40;
          if (__OFSUB__(HIDWORD(v40), v40))
          {
            goto LABEL_116;
          }

          v46 = v46;
        }

        else
        {
          v46 = BYTE6(v39);
        }

LABEL_82:
        if (v43 != v46)
        {
          goto LABEL_110;
        }

        if (v43 >= 1)
        {
          if (v41 > 1)
          {
            if (v41 != 2)
            {
              memset(v65, 0, 14);
LABEL_105:
              v56 = v61;
              sub_1B4A1CB14(v65, v40, v39, &v64);
              v61 = v56;
              if (!v64)
              {
                goto LABEL_110;
              }

              goto LABEL_106;
            }

            v50 = *(v37 + 16);
            v49 = *(v37 + 24);
            v51 = sub_1B4D1750C();
            if (v51)
            {
              v52 = sub_1B4D1752C();
              if (__OFSUB__(v50, v52))
              {
                goto LABEL_127;
              }

              v51 += v50 - v52;
            }

            if (__OFSUB__(v49, v50))
            {
              goto LABEL_124;
            }
          }

          else
          {
            if (!v41)
            {
              v65[0] = *(v10 + 6);
              LOWORD(v65[1]) = v38;
              BYTE2(v65[1]) = BYTE2(v38);
              BYTE3(v65[1]) = BYTE3(v38);
              BYTE4(v65[1]) = BYTE4(v38);
              BYTE5(v65[1]) = BYTE5(v38);
              goto LABEL_105;
            }

            v53 = v37;
            if (v37 >> 32 < v37)
            {
              goto LABEL_123;
            }

            v51 = sub_1B4D1750C();
            if (v51)
            {
              v54 = sub_1B4D1752C();
              if (__OFSUB__(v53, v54))
              {
                goto LABEL_128;
              }

              v51 += v53 - v54;
            }
          }

          sub_1B4D1751C();
          v55 = v61;
          sub_1B4A1CB14(v51, v40, v39, v65);
          v61 = v55;
          if ((v65[0] & 1) == 0)
          {
            goto LABEL_110;
          }
        }

LABEL_106:
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v57 = sub_1B4D1816C();
        sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        if (v57)
        {
          v14 = v62 + v60;
          v13 = v63 + v60;
          if (--v11)
          {
            continue;
          }
        }

        return v57 & 1;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v22 = 0;
        if (!v19 && v18 == 0xC000000000000000)
        {
          goto LABEL_58;
        }
      }

LABEL_27:
      if (v21 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    v57 = 1;
  }

  else
  {
LABEL_111:
    v57 = 0;
  }

  return v57 & 1;
}

uint64_t sub_1B4A16B30(uint64_t a1, uint64_t a2)
{
  v121 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v4 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v122 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = (&v105 - v7);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE0, &qword_1B4D202D0);
  MEMORY[0x1EEE9AC00](v118);
  v9 = &v105 - v8;
  v120 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v10 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v115 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = &v105 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  MEMORY[0x1EEE9AC00](v119);
  v15 = &v105 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v105 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_99:
    v92 = 0;
    return v92 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v92 = 1;
    return v92 & 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v112 = v15;
  v113 = a2 + v24;
  v26 = (v10 + 48);
  v109 = (v4 + 48);
  v27 = 0;
  v28 = *(v20 + 72);
  v107 = v25;
  v114 = v18;
  v117 = &v105 - v21;
  v106 = v28;
  v110 = v9;
  v111 = v23;
  while (1)
  {
    v29 = v28 * v27;
    result = sub_1B4A1F5E8(v25 + v28 * v27, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    if (v27 == v23)
    {
      goto LABEL_112;
    }

    sub_1B4A1F5E8(v113 + v29, v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    v31 = *(v16 + 28);
    v32 = *(v119 + 48);
    v33 = v112;
    v34 = v18;
    v35 = v16;
    sub_1B4974FBC(&v22[v31], v112, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    sub_1B4974FBC(v34 + v31, v33 + v32, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    v36 = *v26;
    v37 = v120;
    v38 = (*v26)(v33, 1, v120);
    v108 = v27;
    if (v38 == 1)
    {
      if (v36(v33 + v32, 1, v37) != 1)
      {
        goto LABEL_104;
      }

      sub_1B4975024(v33, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      v39 = v110;
      v40 = v111;
      v41 = v35;
      v18 = v34;
    }

    else
    {
      v42 = v26;
      v43 = v116;
      sub_1B4974FBC(v33, v116, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      if (v36(v33 + v32, 1, v37) == 1)
      {
        sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
        v34 = v114;
LABEL_104:
        sub_1B4975024(v33, &qword_1EB8A7DE8, &qword_1B4D202D8);
        v18 = v34;
        goto LABEL_98;
      }

      v44 = v115;
      sub_1B4A1F750(v33 + v32, v115, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      v45 = *v43;
      v46 = *(v43 + 8);
      v47 = *v44;
      v48 = *(v44 + 8);
      v126 = *v43;
      v127 = v46;
      v128 = v47;
      v129 = v48;
      if (v46 == 255)
      {
        if (v48 != 255)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v124 = v45;
        v125 = v46;
        if (v48 == 255 || (_s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(&v124, &v128) & 1) == 0)
        {
LABEL_102:
          sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          v102 = &qword_1EB8A7BE8;
          v103 = &qword_1B4D1FE98;
          v104 = v33;
          goto LABEL_107;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v49 = sub_1B4D1816C();
      sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4975024(v33, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      v26 = v42;
      v41 = v35;
      v39 = v110;
      v40 = v111;
      v18 = v114;
      if ((v49 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    v50 = v18;
    v51 = v41;
    v52 = *(v41 + 32);
    v53 = *(v118 + 48);
    sub_1B4974FBC(&v117[v52], v39, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    sub_1B4974FBC(v50 + v52, v39 + v53, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    v54 = *v109;
    v55 = v121;
    if ((*v109)(v39, 1, v121) == 1)
    {
      if (v54(v39 + v53, 1, v55) != 1)
      {
        goto LABEL_106;
      }

      result = sub_1B4975024(v39, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      v16 = v51;
      v18 = v114;
      v23 = v40;
      goto LABEL_54;
    }

    v105 = v26;
    v56 = v123;
    sub_1B4974FBC(v39, v123, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    if (v54(v39 + v53, 1, v55) == 1)
    {
      sub_1B4A1F650(v56, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
LABEL_106:
      v102 = &qword_1EB8A7DE0;
      v103 = &qword_1B4D202D0;
      v104 = v39;
LABEL_107:
      sub_1B4975024(v104, v102, v103);
      v18 = v114;
LABEL_98:
      sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      sub_1B4A1F650(v117, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      goto LABEL_99;
    }

    v57 = v39 + v53;
    v58 = v122;
    result = sub_1B4A1F750(v57, v122, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    v59 = *v56;
    v60 = *v58;
    v61 = *(*v56 + 16);
    v16 = v51;
    v18 = v114;
    if (v61 != *(v60 + 16))
    {
      goto LABEL_97;
    }

    v23 = v40;
    if (v61 && v59 != v60)
    {
      v62 = (v59 + 40);
      v63 = (v60 + 40);
      while (1)
      {
        result = *(v62 - 1);
        if (result != *(v63 - 1) || *v62 != *v63)
        {
          result = sub_1B4D18DCC();
          v56 = v123;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v62 += 2;
        v63 += 2;
        if (!--v61)
        {
          goto LABEL_31;
        }
      }

LABEL_97:
      sub_1B4A1F650(v122, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4A1F650(v56, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4975024(v39, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      goto LABEL_98;
    }

LABEL_31:
    v65 = v56[1];
    v66 = v122[1];
    v67 = *(v65 + 16);
    if (v67 != *(v66 + 16))
    {
      goto LABEL_97;
    }

    if (v67 && v65 != v66)
    {
      break;
    }

LABEL_37:
    v69 = v56[2];
    v70 = v122[2];
    v71 = *(v69 + 16);
    if (v71 != *(v70 + 16))
    {
      goto LABEL_97;
    }

    if (v71)
    {
      v72 = v69 == v70;
    }

    else
    {
      v72 = 1;
    }

    if (!v72)
    {
      v73 = (v69 + 32);
      v74 = (v70 + 32);
      while (v71)
      {
        if (*v73 != *v74)
        {
          goto LABEL_97;
        }

        ++v73;
        ++v74;
        if (!--v71)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_111;
    }

LABEL_46:
    v75 = v56[3];
    v76 = v122[3];
    v77 = *(v75 + 16);
    if (v77 != *(v76 + 16))
    {
      goto LABEL_97;
    }

    if (v77)
    {
      v78 = v75 == v76;
    }

    else
    {
      v78 = 1;
    }

    if (!v78)
    {
      v99 = (v75 + 40);
      v100 = (v76 + 40);
      while (v77)
      {
        result = *(v99 - 1);
        if (result != *(v100 - 1) || *v99 != *v100)
        {
          result = sub_1B4D18DCC();
          v56 = v123;
          if ((result & 1) == 0)
          {
            goto LABEL_97;
          }
        }

        v99 += 2;
        v100 += 2;
        if (!--v77)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_110;
    }

LABEL_52:
    v79 = sub_1B4A0E6CC(v56[4], v122[4]);
    v56 = v123;
    if ((v79 & 1) == 0)
    {
      goto LABEL_97;
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v80 = v122;
    v81 = sub_1B4D1816C();
    sub_1B4A1F650(v80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    sub_1B4A1F650(v56, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    result = sub_1B4975024(v39, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    v26 = v105;
    if ((v81 & 1) == 0)
    {
      goto LABEL_98;
    }

LABEL_54:
    v82 = *v117;
    v83 = *v18;
    v84 = *(*v117 + 16);
    if (v84 != *(*v18 + 16))
    {
      goto LABEL_98;
    }

    if (v84 && v82 != v83)
    {
      v85 = (v82 + 40);
      v86 = (v83 + 40);
      do
      {
        result = *(v85 - 1);
        if (result != *(v86 - 1) || *v85 != *v86)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_98;
          }
        }

        v85 += 2;
        v86 += 2;
      }

      while (--v84);
    }

    v88 = *(v117 + 1);
    v89 = v18[1];
    v90 = *(v88 + 16);
    if (v90 != *(v89 + 16))
    {
      goto LABEL_98;
    }

    if (v90)
    {
      v91 = v88 == v89;
    }

    else
    {
      v91 = 1;
    }

    if (!v91)
    {
      v93 = (v88 + 40);
      v94 = (v89 + 40);
      while (v90)
      {
        result = *(v93 - 1);
        if (result != *(v94 - 1) || *v93 != *v94)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_98;
          }
        }

        v93 += 2;
        v94 += 2;
        if (!--v90)
        {
          goto LABEL_71;
        }
      }

      __break(1u);
      __break(1u);
      goto LABEL_109;
    }

LABEL_71:
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v22 = v117;
    v92 = sub_1B4D1816C();
    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    if (v92)
    {
      v27 = v108 + 1;
      v25 = v107;
      v28 = v106;
      if (v108 + 1 != v23)
      {
        continue;
      }
    }

    return v92 & 1;
  }

  v96 = (v65 + 40);
  v97 = (v66 + 40);
  while (v67)
  {
    result = *(v96 - 1);
    if (result != *(v97 - 1) || *v96 != *v97)
    {
      result = sub_1B4D18DCC();
      v56 = v123;
      if ((result & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    v96 += 2;
    v97 += 2;
    if (!--v67)
    {
      goto LABEL_37;
    }
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_1B4A177EC(uint64_t a1, uint64_t a2)
{
  v130 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v4 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v132 = (&v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v133 = (&v115 - v7);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF8, &qword_1B4D202E8);
  MEMORY[0x1EEE9AC00](v127);
  v131 = &v115 - v8;
  v129 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v125 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v126 = &v115 - v12;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  MEMORY[0x1EEE9AC00](v128);
  v14 = &v115 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v115 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_122:
    v99 = 0;
    return v99 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v99 = 1;
    return v99 & 1;
  }

  v124 = v19;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v122 = a2 + v24;
  v26 = (v9 + 48);
  v121 = (v4 + 48);
  v27 = 0;
  v28 = *(v20 + 72);
  v118 = v25;
  v123 = &v115 - v21;
  v117 = v28;
  v119 = v23;
  while (1)
  {
    v29 = v28 * v27;
    result = sub_1B4A1F5E8(v25 + v28 * v27, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    if (v27 == v23)
    {
      goto LABEL_136;
    }

    sub_1B4A1F5E8(v122 + v29, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v31 = *(v124 + 28);
    v32 = *(v128 + 48);
    sub_1B4974FBC(v22 + v31, v14, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    sub_1B4974FBC(v17 + v31, &v14[v32], &qword_1EB8A7BE8, &qword_1B4D1FE98);
    v33 = *v26;
    v34 = v14;
    v35 = v14;
    v36 = v129;
    v37 = (*v26)(v34, 1, v129);
    v120 = v27;
    if (v37 == 1)
    {
      if (v33((v35 + v32), 1, v36) != 1)
      {
        goto LABEL_127;
      }

      sub_1B4975024(v35, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }

    else
    {
      v116 = v17;
      v38 = v26;
      v39 = v126;
      sub_1B4974FBC(v35, v126, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      if (v33((v35 + v32), 1, v36) == 1)
      {
        sub_1B4A1F650(v39, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
        v17 = v116;
        v22 = v123;
LABEL_127:
        v112 = &qword_1EB8A7DE8;
        v113 = &qword_1B4D202D8;
        v114 = v35;
LABEL_120:
        sub_1B4975024(v114, v112, v113);
        goto LABEL_121;
      }

      v40 = v125;
      sub_1B4A1F750(v35 + v32, v125, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      v41 = *v39;
      v42 = *(v39 + 8);
      v43 = *v40;
      v44 = *(v40 + 8);
      v136 = *v39;
      v137 = v42;
      v138 = v43;
      v139 = v44;
      if (v42 == 255)
      {
        if (v44 != 255)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v134 = v41;
        v135 = v42;
        if (v44 == 255 || (_s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(&v134, &v138) & 1) == 0)
        {
LABEL_125:
          sub_1B4A1F650(v40, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          sub_1B4A1F650(v39, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          sub_1B4975024(v35, &qword_1EB8A7BE8, &qword_1B4D1FE98);
          v17 = v116;
          v22 = v123;
          goto LABEL_121;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v45 = sub_1B4D1816C();
      sub_1B4A1F650(v40, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4A1F650(v39, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4975024(v35, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      v26 = v38;
      v17 = v116;
      v22 = v123;
      if ((v45 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    v46 = *(v124 + 32);
    v47 = *(v127 + 48);
    v48 = v22 + v46;
    v49 = v131;
    sub_1B4974FBC(v48, v131, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v50 = v17;
    sub_1B4974FBC(v17 + v46, v49 + v47, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v51 = *v121;
    v52 = v130;
    if ((*v121)(v49, 1, v130) == 1)
    {
      v53 = v51(v49 + v47, 1, v52);
      v17 = v50;
      if (v53 != 1)
      {
        goto LABEL_129;
      }

      result = sub_1B4975024(v49, &qword_1EB8A7DF0, &qword_1B4D202E0);
      v14 = v35;
      v22 = v123;
      goto LABEL_68;
    }

    v116 = v26;
    v54 = v133;
    sub_1B4974FBC(v49, v133, &qword_1EB8A7DF0, &qword_1B4D202E0);
    if (v51(v49 + v47, 1, v52) == 1)
    {
      sub_1B4A1F650(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      v17 = v50;
LABEL_129:
      sub_1B4975024(v49, &qword_1EB8A7DF8, &qword_1B4D202E8);
      v22 = v123;
LABEL_121:
      sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      goto LABEL_122;
    }

    v55 = v49 + v47;
    v56 = v132;
    result = sub_1B4A1F750(v55, v132, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    v57 = *v54;
    v58 = *v56;
    v59 = *(*v54 + 16);
    v14 = v35;
    v17 = v50;
    v22 = v123;
    if (v59 != *(v58 + 16))
    {
      goto LABEL_119;
    }

    if (v59 && v57 != v58)
    {
      v60 = (v57 + 40);
      v61 = (v58 + 40);
      while (1)
      {
        result = *(v60 - 1);
        if (result != *(v61 - 1) || *v60 != *v61)
        {
          result = sub_1B4D18DCC();
          v54 = v133;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v60 += 2;
        v61 += 2;
        if (!--v59)
        {
          goto LABEL_31;
        }
      }

LABEL_119:
      sub_1B4A1F650(v132, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      sub_1B4A1F650(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      v112 = &qword_1EB8A7DF0;
      v113 = &qword_1B4D202E0;
      v114 = v131;
      goto LABEL_120;
    }

LABEL_31:
    v63 = v54[1];
    v64 = v132[1];
    v65 = *(v63 + 16);
    if (v65 != *(v64 + 16))
    {
      goto LABEL_119;
    }

    if (v65)
    {
      v66 = v63 == v64;
    }

    else
    {
      v66 = 1;
    }

    if (!v66)
    {
      v103 = (v63 + 40);
      v104 = (v64 + 40);
      while (v65)
      {
        result = *(v103 - 1);
        if (result != *(v104 - 1) || *v103 != *v104)
        {
          result = sub_1B4D18DCC();
          v54 = v133;
          if ((result & 1) == 0)
          {
            goto LABEL_119;
          }
        }

        v103 += 2;
        v104 += 2;
        if (!--v65)
        {
          goto LABEL_37;
        }
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

LABEL_37:
    v67 = v54[2];
    v68 = v132[2];
    v69 = *(v67 + 16);
    if (v69 != *(v68 + 16))
    {
      goto LABEL_119;
    }

    if (v69)
    {
      v70 = v67 == v68;
    }

    else
    {
      v70 = 1;
    }

    if (!v70)
    {
      v71 = (v67 + 32);
      v72 = (v68 + 32);
      while (v69)
      {
        if (*v71 != *v72)
        {
          goto LABEL_119;
        }

        ++v71;
        ++v72;
        if (!--v69)
        {
          goto LABEL_46;
        }
      }

LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_46:
    v73 = v54[3];
    v74 = v132[3];
    v75 = *(v73 + 16);
    if (v75 != *(v74 + 16))
    {
      goto LABEL_119;
    }

    if (v75)
    {
      v76 = v73 == v74;
    }

    else
    {
      v76 = 1;
    }

    if (!v76)
    {
      v77 = (v73 + 32);
      v78 = (v74 + 32);
      while (v75)
      {
        if (*v77 != *v78)
        {
          goto LABEL_119;
        }

        ++v77;
        ++v78;
        if (!--v75)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_134;
    }

LABEL_55:
    v79 = v54[4];
    v80 = v132[4];
    v81 = *(v79 + 16);
    if (v81 != *(v80 + 16))
    {
      goto LABEL_119;
    }

    if (v81 && v79 != v80)
    {
      break;
    }

LABEL_61:
    v83 = v54[5];
    v84 = v132[5];
    v85 = *(v83 + 16);
    if (v85 != *(v84 + 16))
    {
      goto LABEL_119;
    }

    if (v85)
    {
      v86 = v83 == v84;
    }

    else
    {
      v86 = 1;
    }

    if (!v86)
    {
      v109 = (v83 + 40);
      v110 = (v84 + 40);
      while (v85)
      {
        result = *(v109 - 1);
        if (result != *(v110 - 1) || *v109 != *v110)
        {
          result = sub_1B4D18DCC();
          v54 = v133;
          if ((result & 1) == 0)
          {
            goto LABEL_119;
          }
        }

        v109 += 2;
        v110 += 2;
        if (!--v85)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_135;
    }

LABEL_67:
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v87 = v132;
    v88 = sub_1B4D1816C();
    sub_1B4A1F650(v87, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    sub_1B4A1F650(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    result = sub_1B4975024(v131, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v26 = v116;
    if ((v88 & 1) == 0)
    {
      goto LABEL_121;
    }

LABEL_68:
    v89 = *v22;
    v90 = *v17;
    v91 = *(*v22 + 16);
    if (v91 != *(*v17 + 2))
    {
      goto LABEL_121;
    }

    if (v91 && v89 != v90)
    {
      v92 = (v89 + 40);
      v93 = (v90 + 40);
      do
      {
        result = *(v92 - 1);
        if (result != *(v93 - 1) || *v92 != *v93)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        v92 += 2;
        v93 += 2;
      }

      while (--v91);
    }

    v95 = v22[1];
    v96 = v17[1];
    v97 = *(v95 + 2);
    if (v97 != *(v96 + 2))
    {
      goto LABEL_121;
    }

    if (v97)
    {
      v98 = v95 == v96;
    }

    else
    {
      v98 = 1;
    }

    if (!v98)
    {
      v100 = (v95 + 40);
      v101 = (v96 + 40);
      while (v97)
      {
        result = *(v100 - 1);
        if (result != *(v101 - 1) || *v100 != *v101)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        v100 += 2;
        v101 += 2;
        if (!--v97)
        {
          goto LABEL_85;
        }
      }

      __break(1u);
      __break(1u);
      goto LABEL_131;
    }

LABEL_85:
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v99 = sub_1B4D1816C();
    sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v23 = v119;
    if (v99)
    {
      v27 = v120 + 1;
      v25 = v118;
      v28 = v117;
      if (v120 + 1 != v119)
      {
        continue;
      }
    }

    return v99 & 1;
  }

  v106 = (v79 + 40);
  v107 = (v80 + 40);
  while (v81)
  {
    result = *(v106 - 1);
    if (result != *(v107 - 1) || *v106 != *v107)
    {
      result = sub_1B4D18DCC();
      v54 = v133;
      if ((result & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    v106 += 2;
    v107 += 2;
    if (!--v81)
    {
      goto LABEL_61;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1B4A185B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v68 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD0, &qword_1B4D20188);
  MEMORY[0x1EEE9AC00](v78);
  v87 = &v68 - v9;
  v89 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v10 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v68 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE0, &unk_1B4D27AD0);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v68 - v14;
  v86 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v16 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v91 = &v68 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CF0, &qword_1B4D201A8);
  MEMORY[0x1EEE9AC00](v85);
  v21 = &v68 - v20;
  v92 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v68 - v25);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_36:
    v65 = 0;
    return v65 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v65 = 1;
    return v65 & 1;
  }

  v73 = v21;
  v69 = v4;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v74 = (v16 + 48);
  v68 = (v5 + 48);
  v70 = *(v24 + 72);
  v31 = v77;
  v32 = v91;
  v33 = v88;
  v80 = v15;
  v72 = (v10 + 48);
  v71 = &v68 - v25;
  while (1)
  {
    v90 = v27;
    v83 = v29;
    result = sub_1B4A1F5E8(v29, v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    if (!v90)
    {
      break;
    }

    v82 = v30;
    sub_1B4A1F5E8(v30, v33, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    if (*v26 != *v33 || v26[1] != v33[1])
    {
      goto LABEL_35;
    }

    v35 = v32;
    v36 = *(v92 + 28);
    v37 = *(v85 + 48);
    v38 = v33;
    v39 = v73;
    sub_1B4974FBC(v26 + v36, v73, &qword_1EB8A7CE8, &qword_1B4D201A0);
    sub_1B4974FBC(v38 + v36, v39 + v37, &qword_1EB8A7CE8, &qword_1B4D201A0);
    v40 = *v74;
    v41 = v86;
    if ((*v74)(v39, 1, v86) == 1)
    {
      if (v40(v39 + v37, 1, v41) != 1)
      {
        goto LABEL_28;
      }

      sub_1B4975024(v39, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v42 = v72;
      v33 = v88;
      v43 = v80;
    }

    else
    {
      sub_1B4974FBC(v39, v35, &qword_1EB8A7CE8, &qword_1B4D201A0);
      if (v40(v39 + v37, 1, v41) == 1)
      {
        sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
LABEL_28:
        sub_1B4975024(v39, &qword_1EB8A7CF0, &qword_1B4D201A8);
        v33 = v88;
        goto LABEL_35;
      }

      v44 = v79;
      sub_1B4A1F750(v39 + v37, v79, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v45 = _s19FitnessIntelligence06Apple_a1_B26_WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v91, v44);
      sub_1B4A1F650(v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4A1F650(v91, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4975024(v39, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v42 = v72;
      v33 = v88;
      v43 = v80;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v46 = *(v92 + 32);
    v47 = *(v84 + 48);
    sub_1B4974FBC(v26 + v46, v43, &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4974FBC(v33 + v46, v43 + v47, &qword_1EB8A7CD8, &unk_1B4D20190);
    v48 = *v42;
    v49 = v89;
    if ((*v42)(v43, 1, v89) == 1)
    {
      v50 = v48(v43 + v47, 1, v49);
      v26 = v71;
      if (v50 != 1)
      {
        goto LABEL_30;
      }

      sub_1B4975024(v43, &qword_1EB8A7CD8, &unk_1B4D20190);
      v32 = v91;
    }

    else
    {
      v51 = v81;
      sub_1B4974FBC(v43, v81, &qword_1EB8A7CD8, &unk_1B4D20190);
      if (v48(v43 + v47, 1, v49) == 1)
      {
        sub_1B4A1F650(v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
        v26 = v71;
LABEL_30:
        v66 = &qword_1EB8A7CE0;
        v67 = &unk_1B4D27AD0;
        goto LABEL_34;
      }

      sub_1B4A1F750(v43 + v47, v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      v52 = *(v78 + 48);
      v53 = v87;
      sub_1B4974FBC(v51, v87, &qword_1EB8A7CC8, &qword_1B4D20180);
      sub_1B4974FBC(v31, v53 + v52, &qword_1EB8A7CC8, &qword_1B4D20180);
      v54 = *v68;
      v55 = v53;
      v56 = v69;
      v57 = (*v68)(v55, 1, v69);
      v26 = v71;
      if (v57 == 1)
      {
        v58 = v51;
        v59 = v31;
        if (v54(v87 + v52, 1, v56) != 1)
        {
          goto LABEL_32;
        }

        sub_1B4975024(v87, &qword_1EB8A7CC8, &qword_1B4D20180);
        v43 = v80;
      }

      else
      {
        v60 = v87;
        v61 = v76;
        sub_1B4974FBC(v87, v76, &qword_1EB8A7CC8, &qword_1B4D20180);
        if (v54(v60 + v52, 1, v56) == 1)
        {
          sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
          v59 = v77;
          v58 = v81;
LABEL_32:
          sub_1B4975024(v87, &qword_1EB8A7CD0, &qword_1B4D20188);
          v43 = v80;
LABEL_33:
          sub_1B4A1F650(v59, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
          sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
          v66 = &qword_1EB8A7CD8;
          v67 = &unk_1B4D20190;
LABEL_34:
          sub_1B4975024(v43, v66, v67);
LABEL_35:
          sub_1B4A1F650(v33, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
          sub_1B4A1F650(v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
          goto LABEL_36;
        }

        v62 = v75;
        sub_1B4A1F750(v60 + v52, v75, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        v63 = static Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType.== infix(_:_:)(v61, v62);
        sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        sub_1B4975024(v60, &qword_1EB8A7CC8, &qword_1B4D20180);
        v59 = v77;
        v43 = v80;
        v58 = v81;
        if ((v63 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v64 = sub_1B4D1816C();
      v31 = v59;
      sub_1B4A1F650(v59, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      sub_1B4975024(v43, &qword_1EB8A7CD8, &unk_1B4D20190);
      v32 = v91;
      if ((v64 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v65 = sub_1B4D1816C();
    sub_1B4A1F650(v33, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    sub_1B4A1F650(v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    if (v65)
    {
      v27 = v90 - 1;
      v30 = v82 + v70;
      v29 = v83 + v70;
      if (v90 != 1)
      {
        continue;
      }
    }

    return v65 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A191CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v108 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E88, &unk_1B4D203A0);
  MEMORY[0x1EEE9AC00](v119);
  v131 = &v108 - v10;
  v130 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v11 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v121 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v123 = &v108 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E98, &unk_1B4D203B0);
  MEMORY[0x1EEE9AC00](v124);
  v132 = &v108 - v15;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v126 = &v108 - v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA8, &qword_1B4D203C0);
  MEMORY[0x1EEE9AC00](v129);
  v22 = &v108 - v21;
  v134 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v108 - v26;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    goto LABEL_65;
  }

  if (!v27 || a1 == a2)
  {
    v87 = 1;
    return v87 & 1;
  }

  v122 = v22;
  v111 = v7;
  v114 = v4;
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v118 = (v17 + 48);
  v113 = (v5 + 48);
  v115 = *(v25 + 72);
  v31 = v130;
  v120 = v16;
  v117 = (v11 + 48);
  while (1)
  {
    sub_1B4A1F5E8(v29, v136, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v133 = v27;
    v127 = v30;
    v128 = v29;
    v32 = v30;
    v33 = v135;
    sub_1B4A1F5E8(v32, v135, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v34 = *(v134 + 20);
    v35 = *(v129 + 48);
    v36 = v122;
    sub_1B4974FBC(v136 + v34, v122, &qword_1EB8A7EA0, &unk_1B4D42260);
    v37 = v33 + v34;
    v38 = v36;
    sub_1B4974FBC(v37, v36 + v35, &qword_1EB8A7EA0, &unk_1B4D42260);
    v39 = *v118;
    if ((*v118)(v36, 1, v16) != 1)
    {
      break;
    }

    if (v39(v36 + v35, 1, v16) != 1)
    {
      goto LABEL_51;
    }

    sub_1B4975024(v36, &qword_1EB8A7EA0, &unk_1B4D42260);
    v40 = v117;
    v41 = v133;
LABEL_34:
    v69 = *(v134 + 24);
    v70 = *(v124 + 48);
    v71 = v132;
    sub_1B4974FBC(v136 + v69, v132, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4974FBC(v135 + v69, v71 + v70, &qword_1EB8A7E90, &unk_1B4D25C60);
    v72 = *v40;
    if ((*v40)(v71, 1, v31) == 1)
    {
      if (v72(v71 + v70, 1, v31) != 1)
      {
        goto LABEL_53;
      }

      sub_1B4975024(v71, &qword_1EB8A7E90, &unk_1B4D25C60);
      v16 = v120;
    }

    else
    {
      v73 = v123;
      sub_1B4974FBC(v71, v123, &qword_1EB8A7E90, &unk_1B4D25C60);
      if (v72(v71 + v70, 1, v31) == 1)
      {
        sub_1B4A1F650(v73, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
LABEL_53:
        v91 = &qword_1EB8A7E98;
        v92 = &unk_1B4D203B0;
        v93 = v71;
        goto LABEL_63;
      }

      v74 = v121;
      sub_1B4A1F750(v71 + v70, v121, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      v75 = *(v119 + 48);
      v76 = v131;
      sub_1B4974FBC(v73, v131, &qword_1EB8A7E80, &unk_1B4D25C50);
      sub_1B4974FBC(v74, v76 + v75, &qword_1EB8A7E80, &unk_1B4D25C50);
      v77 = *v113;
      v78 = v114;
      if ((*v113)(v76, 1, v114) == 1)
      {
        if (v77(v131 + v75, 1, v78) != 1)
        {
          goto LABEL_57;
        }

        sub_1B4975024(v131, &qword_1EB8A7E80, &unk_1B4D25C50);
      }

      else
      {
        v79 = v131;
        v80 = v116;
        sub_1B4974FBC(v131, v116, &qword_1EB8A7E80, &unk_1B4D25C50);
        if (v77(v79 + v75, 1, v78) == 1)
        {
          sub_1B4A1F650(v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
          v74 = v121;
LABEL_57:
          sub_1B4975024(v131, &qword_1EB8A7E88, &unk_1B4D203A0);
LABEL_58:
          sub_1B4A1F650(v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
          sub_1B4A1F650(v123, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
          v91 = &qword_1EB8A7E90;
          v92 = &unk_1B4D25C60;
          v93 = v132;
          goto LABEL_63;
        }

        v81 = v111;
        sub_1B4A1F750(v79 + v75, v111, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
        v82 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(v80, v81);
        sub_1B4A1F650(v81, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4A1F650(v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4975024(v79, &qword_1EB8A7E80, &unk_1B4D25C50);
        v74 = v121;
        if ((v82 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      v31 = v130;
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v83 = v123;
      v84 = sub_1B4D1816C();
      sub_1B4A1F650(v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      sub_1B4A1F650(v83, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      sub_1B4975024(v132, &qword_1EB8A7E90, &unk_1B4D25C60);
      v16 = v120;
      v41 = v133;
      if ((v84 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v85 = v135;
    v86 = v136;
    v87 = sub_1B4D1816C();
    sub_1B4A1F650(v85, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    sub_1B4A1F650(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    if (v87)
    {
      v30 = v127 + v115;
      v29 = v128 + v115;
      v27 = v41 - 1;
      if (v27)
      {
        continue;
      }
    }

    return v87 & 1;
  }

  v42 = v126;
  sub_1B4974FBC(v36, v126, &qword_1EB8A7EA0, &unk_1B4D42260);
  if (v39(v36 + v35, 1, v16) == 1)
  {
    sub_1B4A1F650(v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v38 = v36;
LABEL_51:
    v91 = &qword_1EB8A7EA8;
    v92 = &qword_1B4D203C0;
    v93 = v38;
    goto LABEL_63;
  }

  v43 = v125;
  sub_1B4A1F750(v36 + v35, v125, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v44 = *v42;
  v45 = *(v42 + 8);
  v46 = *(v42 + 16);
  v47 = *v43;
  v48 = *(v43 + 8);
  v49 = *(v43 + 16);
  if (v46 == 255)
  {
    v59 = v48;
    v40 = v117;
    if (v49 != 255)
    {
      goto LABEL_55;
    }

    v55 = v44;
    v54 = v45;
    sub_1B4A1F598(v44, v45, 255);
    sub_1B4A1F598(v47, v59, 255);
    v60 = -1;
    v41 = v133;
    goto LABEL_33;
  }

  v40 = v117;
  if (v49 != 255)
  {
    v112 = *(v42 + 16);
    if (v46 <= 1)
    {
      v50 = v45;
      if (!v46)
      {
        v41 = v133;
        if (v49)
        {
          v99 = v44;
          v100 = v45;
          v101 = v45;
          v102 = v46;
          sub_1B4A1F598(v44, v101, 0);

          v50 = v100;
          v44 = v99;
          LOBYTE(v46) = v102;
LABEL_60:
          v103 = v44;
          v104 = v50;
          v105 = v47;
          v106 = v46;
          sub_1B4A1F598(v44, v50, v46);
          sub_1B4A1F598(v105, v48, v49);
          sub_1B4A1F5D4(v103, v104, v106);
          sub_1B4A1F5D4(v105, v48, v49);
          v55 = v103;
          v54 = v104;
          sub_1B4A1F5C0(v103, v104, v106);
LABEL_61:
          v96 = v55;
          v97 = v54;
          v98 = v112;
          goto LABEL_62;
        }

        if (v44 == v47 && v45 == v48)
        {
          v55 = v44;
          v54 = v45;
          sub_1B4A1F598(v44, v45, 0);
          sub_1B4A1F598(v55, v45, 0);
          sub_1B4A1F598(v55, v45, 0);
          sub_1B4A1F5D4(v55, v45, 0);
          sub_1B4A1F5D4(v55, v45, 0);
        }

        else
        {
          v88 = v44;
          v89 = v47;
          v109 = v47;
          v90 = v48;
          v110 = sub_1B4D18DCC();
          sub_1B4A1F598(v88, v45, 0);
          sub_1B4A1F598(v88, v45, 0);
          sub_1B4A1F598(v89, v48, 0);
          v55 = v88;
          v54 = v45;
          sub_1B4A1F5D4(v88, v45, 0);
          sub_1B4A1F5D4(v109, v90, 0);
          if ((v110 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_32;
      }

      v41 = v133;
      if (v49 != 1)
      {
        goto LABEL_60;
      }

      v61 = v44;
      v54 = v45;
      sub_1B4A1F598(v44, v45, 1);
      sub_1B4A1F598(v47, v48, 1);
      sub_1B4A1F5D4(v61, v45, 1);
      sub_1B4A1F5D4(v47, v48, 1);
      v62 = v61;
      v63 = v45;
      v64 = 1;
    }

    else
    {
      v50 = v45;
      if (v46 != 2)
      {
        v41 = v133;
        if (v46 == 3)
        {
          if (v49 != 3)
          {
            goto LABEL_60;
          }

          v51 = *&v44;
          v52 = *&v47;
          v53 = v44;
          v54 = v45;
          sub_1B4A1F598(v44, v45, 3);
          sub_1B4A1F598(v47, v48, 3);
          sub_1B4A1F5D4(v53, v45, 3);
          sub_1B4A1F5D4(v47, v48, 3);
          v55 = v53;
          v56 = v53;
          v57 = v45;
          v58 = 3;
        }

        else
        {
          if (v49 != 4)
          {
            goto LABEL_60;
          }

          v51 = *&v44;
          v52 = *&v47;
          v65 = v44;
          v54 = v45;
          sub_1B4A1F598(v44, v45, 4);
          sub_1B4A1F598(v47, v48, 4);
          sub_1B4A1F5D4(v65, v45, 4);
          sub_1B4A1F5D4(v47, v48, 4);
          v55 = v65;
          v56 = v65;
          v57 = v45;
          v58 = 4;
        }

        sub_1B4A1F5C0(v56, v57, v58);
        if (v51 != v52)
        {
          goto LABEL_61;
        }

        goto LABEL_32;
      }

      v41 = v133;
      if (v49 != 2)
      {
        goto LABEL_60;
      }

      v61 = v44;
      v54 = v45;
      sub_1B4A1F598(v44, v45, 2);
      sub_1B4A1F598(v47, v48, 2);
      sub_1B4A1F5D4(v61, v45, 2);
      sub_1B4A1F5D4(v47, v48, 2);
      v62 = v61;
      v63 = v45;
      v64 = 2;
    }

    sub_1B4A1F5C0(v62, v63, v64);
    v55 = v61;
    if (v61 != v47)
    {
      goto LABEL_61;
    }

LABEL_32:
    v60 = v112;
LABEL_33:
    sub_1B4A1F5C0(v55, v54, v60);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v67 = v125;
    v66 = v126;
    v68 = sub_1B4D1816C();
    sub_1B4A1F650(v67, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    sub_1B4A1F650(v66, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    sub_1B4975024(v122, &qword_1EB8A7EA0, &unk_1B4D42260);
    v31 = v130;
    if ((v68 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v59 = v48;
LABEL_55:
  v94 = v44;
  v95 = v46;
  sub_1B4A1F598(v44, v45, v46);
  sub_1B4A1F598(v47, v59, v49);
  sub_1B4A1F5C0(v94, v45, v95);
  v96 = v47;
  v97 = v59;
  v98 = v49;
LABEL_62:
  sub_1B4A1F5C0(v96, v97, v98);
  sub_1B4A1F650(v125, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  sub_1B4A1F650(v126, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v91 = &qword_1EB8A7EA0;
  v92 = &unk_1B4D42260;
  v93 = v122;
LABEL_63:
  sub_1B4975024(v93, v91, v92);
LABEL_64:
  sub_1B4A1F650(v135, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
  sub_1B4A1F650(v136, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
LABEL_65:
  v87 = 0;
  return v87 & 1;
}

uint64_t sub_1B4A1A2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        v16 = *(v4 + 20);
        v17 = *&v10[v16];
        v18 = *&v6[v16];
        if (v17 != v18)
        {

          v19 = sub_1B4AC9E88(v17, v18);

          if (!v19)
          {
            break;
          }
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v20 = sub_1B4D1816C();
        sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        if (v20)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v20 & 1;
      }

      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1B4A1A554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      if (*v10 != *v6 || v10[1] != v6[1])
      {
        break;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v16 = sub_1B4D1816C();
      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1B4A1A80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_15:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A1F5E8(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      if (*v10 != *v6 || v10[1] != v6[1])
      {
        break;
      }

      if ((v10[2] != v6[2] || v10[3] != v6[3]) && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v16 = sub_1B4D1816C();
      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    sub_1B4A1F650(v10, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    goto LABEL_15;
  }

  v16 = 1;
  return v16 & 1;
}

int *RingsPropertiesQuery.init(range:filters:groupBy:propertyKinds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  sub_1B4A1F5E8(a1, a5, type metadata accessor for DateRangeDescriptor);
  sub_1B4A1F650(a1, type metadata accessor for DateRangeDescriptor);
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (!v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E7CC0];
  }

  result = type metadata accessor for RingsPropertiesQuery(0);
  v14 = (a5 + result[5]);
  *v14 = v9;
  v14[1] = v10;
  v14[2] = v12;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

void static RingsPropertyDimensionsFilters.empty()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

FitnessIntelligence::RingsPropertyDimensionsFilters __swiftcall RingsPropertyDimensionsFilters.init(monthOfYear:dayOfWeek:paused:)(Swift::OpaquePointer monthOfYear, Swift::OpaquePointer dayOfWeek, Swift::OpaquePointer paused)
{
  v3->_rawValue = monthOfYear._rawValue;
  v3[1]._rawValue = dayOfWeek._rawValue;
  v3[2]._rawValue = paused._rawValue;
  result.paused = paused;
  result.dayOfWeek = dayOfWeek;
  result.monthOfYear = monthOfYear;
  return result;
}

uint64_t static RingsPropertyDimensionsFilters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0A7D0(v3, v5);
}

uint64_t RingsPropertyDimensionsFilters.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B49C28E8(a1, v3);
  sub_1B49C27B8(a1, v4);

  return sub_1B49C2A9C(a1, v5);
}

uint64_t RingsPropertyDimensionsFilters.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  sub_1B49C28E8(v5, v1);
  sub_1B49C27B8(v5, v2);
  sub_1B49C2A9C(v5, v3);
  return sub_1B4D18EDC();
}

void sub_1B4A1ACD4(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

uint64_t sub_1B4A1ACE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  sub_1B49C28E8(v5, v1);
  sub_1B49C27B8(v5, v2);
  sub_1B49C2A9C(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1AD54(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B49C28E8(a1, v3);
  sub_1B49C27B8(a1, v4);

  return sub_1B49C2A9C(a1, v5);
}

uint64_t sub_1B4A1ADAC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B4D18E8C();
  sub_1B49C28E8(v6, v2);
  sub_1B49C27B8(v6, v3);
  sub_1B49C2A9C(v6, v4);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1AE14(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0A7D0(v3, v5);
}

void RingsPropertyDimensionsFilters.init(_:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v40 = a1;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = (*a1 + 40);
  v41 = v9;
  v42 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = &v9[16 * v6];
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    ++v6;
    v11 = v10 + 16;

    v12 = sub_1B4D18B1C();

    v10 = v11;
    if (v12 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1B4A1EDC0(0, *(v42 + 2) + 1, 1, v42, &qword_1EB8A7ED0, &qword_1B4D203D8);
      }

      v14 = *(v42 + 2);
      v13 = *(v42 + 3);
      if (v14 >= v13 >> 1)
      {
        v42 = sub_1B4A1EDC0((v13 > 1), v14 + 1, 1, v42, &qword_1EB8A7ED0, &qword_1B4D203D8);
      }

      v9 = v41;
      v15 = v42;
      *(v42 + 2) = v14 + 1;
      v15[v14 + 32] = v12;
      goto LABEL_2;
    }
  }

  v16 = 0;
  v17 = v40[1];
  v18 = *(v17 + 16);
  v19 = v17 + 40;
  v41 = MEMORY[0x1E69E7CC0];
  v38 = v17 + 40;
LABEL_12:
  v20 = v19 + 16 * v16;
  while (v18 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      goto LABEL_28;
    }

    ++v16;
    v21 = v20 + 16;

    v22 = sub_1B4D18B1C();

    v20 = v21;
    if (v22 < 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1B4A1EDC0(0, *(v41 + 2) + 1, 1, v41, &qword_1EB8A7EC8, &qword_1B4D203D0);
      }

      v24 = *(v41 + 2);
      v23 = *(v41 + 3);
      if (v24 >= v23 >> 1)
      {
        v41 = sub_1B4A1EDC0((v23 > 1), v24 + 1, 1, v41, &qword_1EB8A7EC8, &qword_1B4D203D0);
      }

      v25 = v41;
      *(v41 + 2) = v24 + 1;
      v25[v24 + 32] = v22;
      v19 = v38;
      goto LABEL_12;
    }
  }

  v26 = v40[2];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEB68(0, v27, 0);
    v28 = v43;
    v29 = v26 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v30 = *(v37 + 72);
    do
    {
      sub_1B4A1F5E8(v29, v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
      v31 = v5[*(v3 + 20)];
      sub_1B4A1F650(v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
      v43 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B4BCEB68((v32 > 1), v33 + 1, 1);
        v28 = v43;
      }

      *(v28 + 16) = v33 + 1;
      *(v28 + v33 + 32) = v31;
      v29 += v30;
      --v27;
    }

    while (v27);
  }

  sub_1B4A1F650(v40, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v34 = v39;
  v35 = v41;
  *v39 = v42;
  v34[1] = v35;
  v34[2] = v28;
}

uint64_t RingsPropertyDimensionsFilters.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  sub_1B4A1F7D4(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A1B350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v54 = v4;
  v55 = a1;
  v58 = v10;
  if (v11)
  {
    v52 = a3;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v11, 0);
    v13 = (a2 + 32);
    v12 = v59;
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v15 > 5)
      {
        if (v14 == 10)
        {
          v16 = 0x7265626D65766F6ELL;
        }

        else
        {
          v16 = 0x7265626D65636564;
        }

        v17 = 0xE800000000000000;
        if (v14 == 9)
        {
          v16 = 0x7265626F74636FLL;
          v17 = 0xE700000000000000;
        }

        v18 = 0x747375677561;
        if (v14 == 7)
        {
          v19 = 0xE600000000000000;
        }

        else
        {
          v18 = 0x65626D6574706573;
          v19 = 0xE900000000000072;
        }

        if (v14 == 6)
        {
          v18 = 2037151082;
          v19 = 0xE400000000000000;
        }

        v20 = v14 <= 8;
      }

      else
      {
        if (v14 == 4)
        {
          v16 = 7954797;
        }

        else
        {
          v16 = 1701737834;
        }

        if (v14 == 4)
        {
          v17 = 0xE300000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }

        if (v14 == 3)
        {
          v16 = 0x6C69727061;
          v17 = 0xE500000000000000;
        }

        if (v14 == 1)
        {
          v18 = 0x7972617572626566;
        }

        else
        {
          v18 = 0x686372616DLL;
        }

        if (v14 == 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xE500000000000000;
        }

        if (!v14)
        {
          v18 = 0x797261756E616ALL;
          v19 = 0xE700000000000000;
        }

        v20 = v14 <= 2;
      }

      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v16;
      }

      if (v20)
      {
        v22 = v19;
      }

      else
      {
        v22 = v17;
      }

      v59 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B4BCF43C((v23 > 1), v24 + 1, 1);
        v12 = v59;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      --v11;
      v10 = v58;
    }

    while (v11);
    a1 = v55;
    a3 = v52;
  }

  *a1 = v12;
  v26 = *(a3 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v26, 0);
    v28 = (a3 + 32);
    v27 = v59;
    do
    {
      v30 = *v28++;
      v29 = v30;
      v31 = 0x7961646E7573;
      if (v30 == 5)
      {
        v31 = 0x7961647275746173;
        v32 = 0xE800000000000000;
      }

      else
      {
        v32 = 0xE600000000000000;
      }

      if (v29 == 3)
      {
        v33 = 0x7961647372756874;
      }

      else
      {
        v33 = 0x796164697266;
      }

      if (v29 == 3)
      {
        v34 = 0xE800000000000000;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      if (v29 <= 4)
      {
        v31 = v33;
        v32 = v34;
      }

      v35 = 0xE900000000000079;
      if (v29 == 1)
      {
        v36 = 0x79616473657574;
      }

      else
      {
        v36 = 0x616473656E646577;
      }

      if (v29 == 1)
      {
        v35 = 0xE700000000000000;
      }

      if (!v29)
      {
        v36 = 0x7961646E6F6DLL;
        v35 = 0xE600000000000000;
      }

      if (v29 <= 2)
      {
        v37 = v36;
      }

      else
      {
        v37 = v31;
      }

      if (v29 <= 2)
      {
        v38 = v35;
      }

      else
      {
        v38 = v32;
      }

      v59 = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B4BCF43C((v39 > 1), v40 + 1, 1);
        v27 = v59;
      }

      *(v27 + 16) = v40 + 1;
      v41 = v27 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      --v26;
    }

    while (v26);
    a1 = v55;
    v10 = v58;
  }

  a1[1] = v27;
  v42 = v53;
  v43 = *(v53 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  if (v43)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF49C(0, v43, 0);
    v44 = v59;
    v45 = v42 + 32;
    v46 = sub_1B4A1F7D4(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
    do
    {
      ++v45;
      MEMORY[0x1EEE9AC00](v46);
      *(&v51 - 16) = v47;
      sub_1B4D17DAC();
      v59 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1B4BCF49C((v48 > 1), v49 + 1, 1);
        v44 = v59;
      }

      *(v44 + 16) = v49 + 1;
      v46 = sub_1B4A1F750(v10, v44 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v49, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
      --v43;
    }

    while (v43);
    a1 = v55;
  }

  a1[2] = v44;
  return result;
}