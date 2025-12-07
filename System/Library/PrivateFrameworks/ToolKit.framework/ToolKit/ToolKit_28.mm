uint64_t sub_1C8EF2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t ComparisonPredicateType.ComparisonType.description.getter()
{
  v1 = *v0;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112801;
      goto LABEL_13;
    case 2uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 8254;
      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112830;
      goto LABEL_13;
    case 4uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 8252;
LABEL_8:
      v4 = 0xE200000000000000;
      goto LABEL_24;
    case 5uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112828;
      goto LABEL_13;
    case 6uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x534E4941544E4F43;
      v4 = 0xE900000000000020;
      goto LABEL_24;
    case 7uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x544E4F4320544F4ELL;
      v4 = 0xED000020534E4941;
      goto LABEL_24;
    case 8uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x5720534E49474542;
      v3 = 541611081;
      goto LABEL_23;
    case 9uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x5449572053444E45;
      v4 = 0xEA00000000002048;
      goto LABEL_24;
    case 0xAuLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x4E20454854204E49;
      v4 = 0xEC00000020545845;
      goto LABEL_24;
    case 0xBuLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 0x4C20454854204E49;
      v3 = 542397249;
LABEL_23:
      v4 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_24;
    case 0xCuLL:
      OUTLINED_FUNCTION_5_1();
      sub_1C906478C();
      MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CCAF0);
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](29536, 0xE200000000000000);
      return v7;
    case 0xDuLL:
      v5 = 0x56204F4E20534148;
      if (v1 != 0x100000000000000DLL)
      {
        v5 = 0x5941444F54205349;
      }

      if (v1 == 0x1000000000000005)
      {
        return 0x554C415620534148;
      }

      else
      {
        return v5;
      }

    default:
      v7 = 0;
      v2 = 2112829;
LABEL_13:
      v4 = 0xE300000000000000;
LABEL_24:
      MEMORY[0x1CCA81A90](v2, v4);
      sub_1C90648BC();
      return v7;
  }
}

uint64_t static ComparisonPredicateType.ComparisonType.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch((*a1 >> 57) & 8 | *a1 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_14_1();
      if (v12 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    case 2uLL:
      OUTLINED_FUNCTION_14_1();
      if (v9 != 2)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 3uLL:
      OUTLINED_FUNCTION_14_1();
      if (v10 != 3)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 4uLL:
      OUTLINED_FUNCTION_14_1();
      if (v6 != 4)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 5uLL:
      OUTLINED_FUNCTION_14_1();
      if (v13 != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 6uLL:
      OUTLINED_FUNCTION_14_1();
      if (v17 != 6)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 7uLL:
      OUTLINED_FUNCTION_14_1();
      if (v11 != 7)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 8uLL:
      OUTLINED_FUNCTION_14_1();
      if (v19 == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    case 9uLL:
      OUTLINED_FUNCTION_14_1();
      if (v8 != 9)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xAuLL:
      OUTLINED_FUNCTION_14_1();
      if (v18 != 10)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xBuLL:
      OUTLINED_FUNCTION_14_1();
      if (v5 != 11)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xCuLL:
      OUTLINED_FUNCTION_14_1();
      if (v7 != 12)
      {
        goto LABEL_47;
      }

LABEL_35:
      v35 = v3 & 0xEFFFFFFFFFFFFFF8;
      v36 = v2 & 0xF8;
      goto LABEL_36;
    case 0xDuLL:
      if (v2 == 0x1000000000000005)
      {
        if (((v3 >> 57) & 8 | v3 & 7) != 0xD || v3 != 0x1000000000000005)
        {
          goto LABEL_47;
        }

        sub_1C8D07700(0x1000000000000005uLL);
        v16 = 0x1000000000000005;
      }

      else if (v2 == 0x100000000000000DLL)
      {
        OUTLINED_FUNCTION_14_1();
        if (v14 != 13 || v3 != 0x100000000000000DLL)
        {
LABEL_47:
          sub_1C8D076FC(v2);
          sub_1C8D076FC(v3);
          sub_1C8D07700(v2);
          sub_1C8D07700(v3);
          v30 = 0;
          return v30 & 1;
        }

        sub_1C8D07700(0x100000000000000DuLL);
        v16 = 0x100000000000000DLL;
      }

      else
      {
        OUTLINED_FUNCTION_14_1();
        if (v32 != 13 || v3 != 0x1000000000000015)
        {
          goto LABEL_47;
        }

        sub_1C8D07700(0x1000000000000015uLL);
        v16 = 0x1000000000000015;
      }

      sub_1C8D07700(v16);
      v30 = 1;
      return v30 & 1;
    default:
      OUTLINED_FUNCTION_14_1();
      if (v4)
      {
        goto LABEL_47;
      }

      v35 = v3;
      v36 = v2;
LABEL_36:
      sub_1C8D076FC(v3);
      sub_1C8D076FC(v2);
      sub_1C8D076FC(v2);
      v20 = sub_1C8D076FC(v3);
      v28 = OUTLINED_FUNCTION_106(v20, v21, v22, v23, v24, v25, v26, v27, v35, v36);
      v30 = static TypeIdentifier.== infix(_:_:)(v28, v29);
      sub_1C8D07700(v2);
      sub_1C8D07700(v3);
      sub_1C8D07700(v3);
      sub_1C8D07700(v2);
      return v30 & 1;
  }
}

uint64_t sub_1C8EF2F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F546C61757165 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61757145746F6ELL && a2 == 0xEA00000000006F54;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C6156736168 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61566F4E736168 && a2 == 0xEA00000000006575;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C90CCB50 == a2;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C90CCB70 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x61746E6F43746F6ELL && a2 == 0xEB00000000736E69;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6957736E69676562 && a2 == 0xEA00000000006874;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6874695773646E65 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x78654E6568546E69 && a2 == 0xE900000000000074;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73614C6568546E69 && a2 == 0xE900000000000074;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7961646F547369 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6565777465427369 && a2 == 0xE90000000000006ELL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C9064C2C();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
          }
        }
      }
    }
  }
}

unint64_t sub_1C8EF33E4(char a1)
{
  result = 0x6F546C61757165;
  switch(a1)
  {
    case 1:
      result = 0x6C61757145746F6ELL;
      break;
    case 2:
      result = 0x65756C6156736168;
      break;
    case 3:
      result = 0x6C61566F4E736168;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6E6168547373656CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x736E6961746E6F63;
      break;
    case 9:
      result = 0x61746E6F43746F6ELL;
      break;
    case 10:
      result = 0x6957736E69676562;
      break;
    case 11:
      result = 0x6874695773646E65;
      break;
    case 12:
      result = 0x78654E6568546E69;
      break;
    case 13:
      result = 0x73614C6568546E69;
      break;
    case 14:
      result = 0x7961646F547369;
      break;
    case 15:
      result = 0x6565777465427369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EF35BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF96AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF35F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF96AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF363C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF2F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF3664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8EF33DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C8EF368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF94B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF36C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF94B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9754(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9754(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9658(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF37B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9658(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF37F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF99F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF99F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF98A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF38A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF98A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9850(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9850(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF98F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF98F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF39D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF994C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF994C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF95B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF95B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9604(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9604(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9508(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9508(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF955C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF955C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF97FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF97FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF97A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF97A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9700(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9700(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8EF3D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF99A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF3DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF99A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ComparisonPredicateType.ComparisonType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v210 = v21;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319540, &qword_1C909F448);
  OUTLINED_FUNCTION_11();
  v205[2] = v28;
  v206 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v205[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319548, &qword_1C909F450);
  OUTLINED_FUNCTION_4_22(v31, v205);
  v183 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319550, &qword_1C909F458);
  OUTLINED_FUNCTION_11();
  v204[2] = v36;
  v205[0] = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v204[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319558, &qword_1C909F460);
  OUTLINED_FUNCTION_11();
  v203[2] = v40;
  v204[0] = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v203[1] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319560, &qword_1C909F468);
  OUTLINED_FUNCTION_11();
  v202 = v44;
  v203[0] = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v201 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319568, &qword_1C909F470);
  OUTLINED_FUNCTION_11();
  v199 = v48;
  v200 = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v198 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319570, &qword_1C909F478);
  OUTLINED_FUNCTION_11();
  v196 = v52;
  v197 = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319578, &qword_1C909F480);
  OUTLINED_FUNCTION_4_22(v55, &a17);
  v194 = v56;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319580, &qword_1C909F488);
  OUTLINED_FUNCTION_4_22(v59, &a14);
  v192 = v60;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319588, &qword_1C909F490);
  OUTLINED_FUNCTION_4_22(v63, &a11);
  v190 = v64;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319590, &qword_1C909F498);
  OUTLINED_FUNCTION_4_22(v67, &v211);
  v188 = v68;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319598, &qword_1C909F4A0);
  OUTLINED_FUNCTION_4_22(v71, &v208);
  v186 = v72;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195A0, &qword_1C909F4A8);
  OUTLINED_FUNCTION_4_22(v75, v204);
  v182 = v76;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195A8, &qword_1C909F4B0);
  OUTLINED_FUNCTION_4_22(v79, v203);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195B0, &qword_1C909F4B8);
  OUTLINED_FUNCTION_11();
  v185 = v82;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195B8, &qword_1C909F4C0);
  OUTLINED_FUNCTION_11();
  v184 = v85;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3195C0, &qword_1C909F4C8);
  OUTLINED_FUNCTION_11();
  v208 = v87;
  v209 = v88;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_38();
  v90 = *v20;
  v91 = v26;
  v92 = v26[3];
  v93 = OUTLINED_FUNCTION_217(v91, v92);
  sub_1C8EF94B4(v93, v94, v95);
  v207 = v22;
  v96 = sub_1C9064E1C();
  switch((v90 >> 57) & 8 | v90 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_277_0();
      sub_1C8EF99A0(v146, v147, v148);
      v149 = OUTLINED_FUNCTION_75_3(&type metadata for ComparisonPredicateType.ComparisonType.NotEqualToCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v149, v150, v151);
      sub_1C9064B8C();
      v102 = OUTLINED_FUNCTION_37_18();
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 4;
      sub_1C8EF98A4(v128, v129, v130);
      v131 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.GreaterThanCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v131, v132, v133);
      v84 = v187;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 3uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 5;
      sub_1C8EF9850(v134, v135, v136);
      v137 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.GreaterThanOrEqualToCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v137, v138, v139);
      v84 = v189;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 4uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 6;
      sub_1C8EF97FC(v110, v111, v112);
      v113 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.LessThanCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v113, v114, v115);
      v84 = v191;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 5uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 7;
      sub_1C8EF97A8(v153, v154, v155);
      v156 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.LessThanOrEqualToCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v156, v157, v158);
      v84 = v193;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 6uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 8;
      sub_1C8EF9754(v162, v163, v164);
      v165 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.ContainsCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v165, v166, v167);
      v84 = v195;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 7uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 9;
      sub_1C8EF9700(v140, v141, v142);
      v143 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.NotContainsCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v143, v144, v145);
      v84 = v197;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 8uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 10;
      sub_1C8EF96AC(v176, v177, v178);
      v179 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.BeginsWithCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v179, v180, v181);
      v84 = v200;
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 9uLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 11;
      sub_1C8EF9658(v122, v123, v124);
      v125 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.EndsWithCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v125, v126, v127);
      v84 = v203[0];
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 0xAuLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 12;
      sub_1C8EF9604(v170, v171, v172);
      v173 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.InTheNextCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v173, v174, v175);
      v84 = v204[0];
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 0xBuLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 13;
      sub_1C8EF95B0(v104, v105, v106);
      v107 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.InTheLastCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v107, v108, v109);
      v84 = v205[0];
      OUTLINED_FUNCTION_67(&a10);
      goto LABEL_16;
    case 0xCuLL:
      OUTLINED_FUNCTION_80_0();
      LOBYTE(a10) = 15;
      sub_1C8EF9508(v116, v117, v118);
      v119 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicateType.ComparisonType.IsBetweenCodingKeys);
      a10 = v84;
      sub_1C8C9FB9C(v119, v120, v121);
      v84 = v206;
      OUTLINED_FUNCTION_67(&a10);
LABEL_16:
      v102 = OUTLINED_FUNCTION_241();
      goto LABEL_17;
    case 0xDuLL:
      if (v90 == 0x1000000000000005)
      {
        LOBYTE(a10) = 2;
        sub_1C8EF994C(v96, v97, v98);
        OUTLINED_FUNCTION_99(&type metadata for ComparisonPredicateType.ComparisonType.HasValueCodingKeys);
        OUTLINED_FUNCTION_296();
        v160 = v92;
        v161 = v203;
      }

      else if (v90 == 0x100000000000000DLL)
      {
        LOBYTE(a10) = 3;
        sub_1C8EF98F8(v96, v97, v98);
        OUTLINED_FUNCTION_99(&type metadata for ComparisonPredicateType.ComparisonType.HasNoValueCodingKeys);
        OUTLINED_FUNCTION_296();
        v160 = v92;
        v161 = v204;
      }

      else
      {
        LOBYTE(a10) = 14;
        sub_1C8EF955C(v96, v97, v98);
        OUTLINED_FUNCTION_99(&type metadata for ComparisonPredicateType.ComparisonType.IsTodayCodingKeys);
        OUTLINED_FUNCTION_296();
        v160 = v92;
        v161 = v205;
      }

      v159(v160, *(v161 - 32));
      (*(v209 + 8))(v20, v84);
      goto LABEL_19;
    default:
      LOBYTE(a10) = 0;
      sub_1C8EF99F4(v96, v97, v98);
      v99 = OUTLINED_FUNCTION_75_3(&type metadata for ComparisonPredicateType.ComparisonType.EqualToCodingKeys);
      a10 = v90;
      sub_1C8C9FB9C(v99, v100, v101);
      sub_1C9064B8C();
      v102 = OUTLINED_FUNCTION_45();
LABEL_17:
      v152 = v84;
LABEL_18:
      v103(v102, v152);
      v168 = OUTLINED_FUNCTION_47_3();
      v169(v168, v92);
LABEL_19:
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t ComparisonPredicateType.ComparisonType.hash(into:)()
{
  v1 = *v0;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_79();
      v2 = 1;
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_79();
      v2 = 4;
      goto LABEL_18;
    case 3uLL:
      OUTLINED_FUNCTION_79();
      v2 = 5;
      goto LABEL_18;
    case 4uLL:
      OUTLINED_FUNCTION_79();
      v2 = 6;
      goto LABEL_18;
    case 5uLL:
      OUTLINED_FUNCTION_79();
      v2 = 7;
      goto LABEL_18;
    case 6uLL:
      OUTLINED_FUNCTION_79();
      v2 = 8;
      goto LABEL_18;
    case 7uLL:
      OUTLINED_FUNCTION_79();
      v2 = 9;
      goto LABEL_18;
    case 8uLL:
      OUTLINED_FUNCTION_79();
      v2 = 10;
      goto LABEL_18;
    case 9uLL:
      OUTLINED_FUNCTION_79();
      v2 = 11;
      goto LABEL_18;
    case 0xAuLL:
      OUTLINED_FUNCTION_79();
      v2 = 12;
      goto LABEL_18;
    case 0xBuLL:
      OUTLINED_FUNCTION_79();
      v2 = 13;
      goto LABEL_18;
    case 0xCuLL:
      OUTLINED_FUNCTION_79();
      v2 = 15;
      goto LABEL_18;
    case 0xDuLL:
      if (v1 == 0x1000000000000005)
      {
        v3 = 2;
      }

      else if (v1 == 0x100000000000000DLL)
      {
        v3 = 3;
      }

      else
      {
        v3 = 14;
      }

      return MEMORY[0x1CCA82810](v3);
    default:
      v2 = 0;
LABEL_18:
      MEMORY[0x1CCA82810](v2);
      v4 = OUTLINED_FUNCTION_297();
      return TypeIdentifier.hash(into:)(v4);
  }
}

uint64_t ComparisonPredicateType.ComparisonType.hashValue.getter()
{
  sub_1C9064D7C();
  ComparisonPredicateType.ComparisonType.hash(into:)();
  return sub_1C9064DBC();
}

void ComparisonPredicateType.ComparisonType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v229 = v20;
  v24 = v23;
  v226[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319650, &qword_1C909F4D0);
  OUTLINED_FUNCTION_11();
  v218 = v26;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_97();
  v225[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319658, &qword_1C909F4D8);
  OUTLINED_FUNCTION_4_22(v29, &a18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v224 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319660, &qword_1C909F4E0);
  OUTLINED_FUNCTION_11();
  v217 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v225[0] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319668, &qword_1C909F4E8);
  OUTLINED_FUNCTION_4_22(v35, &a16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v223 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319670, &qword_1C909F4F0);
  OUTLINED_FUNCTION_4_22(v38, &a14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v222[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319678, &qword_1C909F4F8);
  OUTLINED_FUNCTION_4_22(v41, &a12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v222[0] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319680, &qword_1C909F500);
  OUTLINED_FUNCTION_4_22(v44, &a10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v227[1] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319688, &qword_1C909F508);
  OUTLINED_FUNCTION_4_22(v47, &v229);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v220 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319690, &qword_1C909F510);
  OUTLINED_FUNCTION_4_22(v50, &v228);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v227[0] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319698, &qword_1C909F518);
  OUTLINED_FUNCTION_4_22(v53, v227);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v221[1] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196A0, &qword_1C909F520);
  OUTLINED_FUNCTION_4_22(v56, v226);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  v221[0] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196A8, &qword_1C909F528);
  OUTLINED_FUNCTION_4_22(v59, v225);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196B0, &qword_1C909F530);
  OUTLINED_FUNCTION_4_22(v61, &v223);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_97();
  v226[1] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196B8, &qword_1C909F538);
  OUTLINED_FUNCTION_4_22(v64, v221);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  v219 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196C0, &qword_1C909F540);
  OUTLINED_FUNCTION_4_22(v67, v222);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196C8, &qword_1C909F548);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196D0, &qword_1C909F550);
  OUTLINED_FUNCTION_11();
  v71 = v70;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_73();
  v73 = v24[3];
  v228 = v24;
  v74 = OUTLINED_FUNCTION_217(v24, v73);
  sub_1C8EF94B4(v74, v75, v76);
  v77 = v229;
  sub_1C9064DEC();
  if (!v77)
  {
    v229 = v71;
    v78 = sub_1C9064A9C();
    v79 = sub_1C8CB8914(v78, 0);
    if (v81 != v80 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v86 == v87)
      {
        __break(1u);
        return;
      }

      v216 = *(v85 + v83);
      sub_1C8CB891C(v83 + 1, v82, v79, v85, v83, v84);
      v89 = v88;
      v91 = v90;
      v92 = swift_unknownObjectRelease();
      if (v89 == v91 >> 1)
      {
        switch(v216)
        {
          case 1:
            OUTLINED_FUNCTION_277_0();
            sub_1C8EF99A0(v136, v137, v138);
            v139 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.NotEqualToCodingKeys, &a10);
            sub_1C8CB892C(v139, v140, v141);
            OUTLINED_FUNCTION_98_4();
            sub_1C9064A6C();
            swift_unknownObjectRelease();
            v191 = OUTLINED_FUNCTION_45();
            v192(v191);
            v193 = OUTLINED_FUNCTION_30_21();
            v194(v193);
            v190 = a10 | 1;
            break;
          case 2:
            LOBYTE(a10) = 2;
            sub_1C8EF994C(v92, v93, v94);
            OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicateType.ComparisonType.HasValueCodingKeys, &a10);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v122(v219);
            v123 = OUTLINED_FUNCTION_30_21();
            v124(v123);
            v125 = 0x1000000000000001;
            goto LABEL_28;
          case 3:
            LOBYTE(a10) = 3;
            sub_1C8EF98F8(v92, v93, v94);
            OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.HasNoValueCodingKeys, &a10);
            swift_unknownObjectRelease();
            v129 = OUTLINED_FUNCTION_45();
            v130(v129);
            v131 = OUTLINED_FUNCTION_30_21();
            v132(v131);
            v190 = 0x100000000000000DLL;
            break;
          case 4:
            LOBYTE(a10) = 4;
            sub_1C8EF98A4(v92, v93, v94);
            v113 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.GreaterThanCodingKeys, &a10);
            sub_1C8CB892C(v113, v114, v115);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v163 = OUTLINED_FUNCTION_10_34();
            v164(v163);
            v165 = OUTLINED_FUNCTION_86_4();
            v166(v165);
            v167 = a10;
            goto LABEL_27;
          case 5:
            LOBYTE(a10) = 5;
            sub_1C8EF9850(v92, v93, v94);
            v142 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.GreaterThanOrEqualToCodingKeys, &a10);
            sub_1C8CB892C(v142, v143, v144);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v195 = OUTLINED_FUNCTION_10_34();
            v196(v195);
            v197 = OUTLINED_FUNCTION_86_4();
            v198(v197);
            v190 = a10 | 3;
            break;
          case 6:
            LOBYTE(a10) = 6;
            sub_1C8EF97FC(v92, v93, v94);
            v148 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.LessThanCodingKeys, &a10);
            sub_1C8CB892C(v148, v149, v150);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v205 = OUTLINED_FUNCTION_10_34();
            v206(v205);
            v207 = OUTLINED_FUNCTION_86_4();
            v208(v207);
            v125 = a10;
LABEL_28:
            v190 = v125 | 4;
            break;
          case 7:
            LOBYTE(a10) = 7;
            sub_1C8EF97A8(v92, v93, v94);
            v133 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicateType.ComparisonType.LessThanOrEqualToCodingKeys, &a10);
            sub_1C8CB892C(v133, v134, v135);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v182 = OUTLINED_FUNCTION_10_34();
            v183(v182);
            v184 = OUTLINED_FUNCTION_86_4();
            v185(v184);
            v161 = a10;
            v162 = 5;
            goto LABEL_26;
          case 8:
            LOBYTE(a10) = 8;
            sub_1C8EF9754(v92, v93, v94);
            v154 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicateType.ComparisonType.ContainsCodingKeys, &a10);
            sub_1C8CB892C(v154, v155, v156);
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v213(v220);
            v214 = OUTLINED_FUNCTION_86_4();
            v215(v214);
            v190 = a10 | 6;
            break;
          case 9:
            LOBYTE(a10) = 9;
            sub_1C8EF9700(v92, v93, v94);
            v119 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicateType.ComparisonType.NotContainsCodingKeys, &a10);
            sub_1C8CB892C(v119, v120, v121);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v173 = OUTLINED_FUNCTION_10_34();
            v174(v173);
            v175 = OUTLINED_FUNCTION_86_4();
            v176(v175);
            v190 = a10 | 7;
            break;
          case 10:
            LOBYTE(a10) = 10;
            sub_1C8EF96AC(v92, v93, v94);
            v151 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.BeginsWithCodingKeys, &a10);
            sub_1C8CB892C(v151, v152, v153);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v209 = OUTLINED_FUNCTION_10_34();
            v210(v209);
            v211 = OUTLINED_FUNCTION_86_4();
            v212(v211);
            v190 = a10 | 0x1000000000000000;
            break;
          case 11:
            LOBYTE(a10) = 11;
            sub_1C8EF9658(v92, v93, v94);
            v110 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.EndsWithCodingKeys, &a10);
            sub_1C8CB892C(v110, v111, v112);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v157 = OUTLINED_FUNCTION_10_34();
            v158(v157);
            v159 = OUTLINED_FUNCTION_86_4();
            v160(v159);
            OUTLINED_FUNCTION_103();
            goto LABEL_26;
          case 12:
            LOBYTE(a10) = 12;
            sub_1C8EF9604(v92, v93, v94);
            v116 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.InTheNextCodingKeys, &a10);
            sub_1C8CB892C(v116, v117, v118);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v168 = OUTLINED_FUNCTION_10_34();
            v169(v168);
            v170 = OUTLINED_FUNCTION_86_4();
            v171(v170);
            OUTLINED_FUNCTION_103();
            v162 = v172 + 1;
            goto LABEL_26;
          case 13:
            LOBYTE(a10) = 13;
            sub_1C8EF95B0(v92, v93, v94);
            v145 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.InTheLastCodingKeys, &a10);
            sub_1C8CB892C(v145, v146, v147);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v199 = OUTLINED_FUNCTION_54_10();
            v200(v199, v217);
            v201 = OUTLINED_FUNCTION_86_4();
            v202(v201);
            OUTLINED_FUNCTION_103();
            v167 = v203 | v204;
LABEL_27:
            v190 = v167 | 2;
            break;
          case 14:
            LOBYTE(a10) = 14;
            sub_1C8EF955C(v92, v93, v94);
            v106 = v224;
            OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicateType.ComparisonType.IsTodayCodingKeys, &a10);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v107(v106);
            v108 = OUTLINED_FUNCTION_30_21();
            v109(v108);
            v190 = 0x1000000000000015;
            break;
          case 15:
            LOBYTE(a10) = 15;
            sub_1C8EF9508(v92, v93, v94);
            v126 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.IsBetweenCodingKeys, &a10);
            sub_1C8CB892C(v126, v127, v128);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v177 = OUTLINED_FUNCTION_54_10();
            v178(v177, v218);
            v179 = OUTLINED_FUNCTION_86_4();
            v180(v179);
            OUTLINED_FUNCTION_103();
            v162 = v181 + 3;
LABEL_26:
            v190 = v161 | v162;
            break;
          default:
            LOBYTE(a10) = 0;
            sub_1C8EF99F4(v92, v93, v94);
            v95 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicateType.ComparisonType.EqualToCodingKeys, &a10);
            sub_1C8CB892C(v95, v96, v97);
            OUTLINED_FUNCTION_23_23();
            sub_1C9064A6C();
            OUTLINED_FUNCTION_25_1();
            swift_unknownObjectRelease();
            v186 = OUTLINED_FUNCTION_10_34();
            v187(v186);
            v188 = OUTLINED_FUNCTION_86_4();
            v189(v188);
            v190 = a10;
            break;
        }

        v105 = v228;
        *v226[0] = v190;
        goto LABEL_10;
      }
    }

    v98 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v98, MEMORY[0x1E69E6B28]);
    v100 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v100 = &type metadata for ComparisonPredicateType.ComparisonType;
    v101 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v101);
    OUTLINED_FUNCTION_10_0();
    (*(v102 + 104))(v100);
    swift_willThrow();
    swift_unknownObjectRelease();
    v103 = OUTLINED_FUNCTION_30_21();
    v104(v103);
  }

  v105 = v228;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v105);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF6104(uint64_t a1)
{
  sub_1C9064D7C();
  ComparisonPredicateType.ComparisonType.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ComparisonPredicateType.property.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

unint64_t ComparisonPredicateType.comparisonType.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1C8D076FC(v2);
}

__n128 ComparisonPredicateType.init(contentItemClass:property:comparisonType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = result;
  *(a5 + 32) = v6;
  *(a5 + 48) = v7;
  *(a5 + 56) = v8;
  return result;
}

void ComparisonPredicateType.instantiate(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v17 = v16;
  v18 = v10[2];
  v19 = v10[3];
  v21 = v10[4];
  v20 = v10[5];
  v23 = v10[6];
  v22 = v10[7];
  switch((v22 >> 57) & 8 | v22 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      a10 = v27;
      v26 = 0;
      v11 = v13[4];
      goto LABEL_44;
    case 2uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5();
      v26 = 1;
      goto LABEL_44;
    case 3uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6();
      v26 = 1;
      goto LABEL_45;
    case 4uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5();
      v26 = 2;
      goto LABEL_44;
    case 5uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6();
      v26 = 2;
      goto LABEL_45;
    case 6uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5();
      v26 = 3;
      goto LABEL_44;
    case 7uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6();
      v26 = 3;
      goto LABEL_45;
    case 8uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5();
      v26 = 4;
      goto LABEL_44;
    case 9uLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6();
      v26 = 4;
      goto LABEL_45;
    case 0xAuLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_93_5();
      v26 = 5;
      goto LABEL_44;
    case 0xBuLL:
      OUTLINED_FUNCTION_77_6();
      if (!v25)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_72_6();
      v26 = 5;
      goto LABEL_45;
    case 0xCuLL:
      v10 = v13[2];
      if (v10 != 2)
      {
        v30 = 2;
        goto LABEL_48;
      }

      a10 = v18;
      v11 = v13[4];
      v26 = v13[5] | 6;

LABEL_44:
      v12 = v11;
      goto LABEL_45;
    case 0xDuLL:
      if (v22 == 0x1000000000000005 || v22 == 0x100000000000000DLL)
      {
        v10 = v13[2];
        if (!v10)
        {
          a10 = v18;
          v26 = 6;
          v12 = 4;
          goto LABEL_46;
        }

        goto LABEL_52;
      }

      v10 = v13[2];
      if (v10)
      {
LABEL_52:
        v30 = 0;
        goto LABEL_48;
      }

      a10 = v18;
      v26 = 6;
      v12 = 20;
LABEL_46:
      v28 = type metadata accessor for ComparisonPredicate(0);

      _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
      v29 = v17 + *(v28 + 28);
      *v29 = xmmword_1C909F260;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      v29[32] = 0;
      *v17 = a10;
      v17[1] = v19;
      v17[2] = v21;
      v17[3] = v20;
      v17[4] = v23;
      v17[5] = v12;
      v17[6] = v26;
LABEL_49:
      OUTLINED_FUNCTION_198();
      return;
    default:
      OUTLINED_FUNCTION_77_6();
      if (v25)
      {
        a10 = v24;
        v26 = 0;
        v12 = v13[4] | 4;
LABEL_45:

        goto LABEL_46;
      }

LABEL_47:
      v30 = 1;
LABEL_48:
      v31 = sub_1C8EF9A48(v13, v14, v15);
      OUTLINED_FUNCTION_6_3(&type metadata for ComparisonPredicateType.PredicateTypeInstantiationError, v31);
      *v32 = v30;
      v32[1] = v10;
      swift_willThrow();
      goto LABEL_49;
  }
}

uint64_t ComparisonPredicateType.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 32);

  MEMORY[0x1CCA81A90](32, 0xE100000000000000);
  v6 = ComparisonPredicateType.ComparisonType.description.getter();
  MEMORY[0x1CCA81A90](v6);

  return v8;
}

uint64_t sub_1C8EF651C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C40 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73697261706D6F63 && a2 == 0xEE00657079546E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8EF663C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x79747265706F7270;
  }

  return 0x73697261706D6F63;
}

uint64_t sub_1C8EF66AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF651C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF66D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9A9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF6710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9A9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ComparisonPredicateType.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196E0, &qword_1C909F558);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_202_4();
  v18 = *(v0 + 56);
  v5 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8EF9A9C(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_146_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_275();
    v11 = sub_1C8E2F434(v8, v9, v10);

    OUTLINED_FUNCTION_168_5();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();

    if (!v11)
    {
      OUTLINED_FUNCTION_119_1();
      v13 = sub_1C8D076FC(v12);
      sub_1C8EF9AF0(v13, v14, v15);
      OUTLINED_FUNCTION_168_5();
      OUTLINED_FUNCTION_205();
      sub_1C9064B8C();
      sub_1C8D07700(v18);
    }
  }

  v16 = OUTLINED_FUNCTION_93();
  v17(v16);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ComparisonPredicateType.hash(into:)()
{
  OUTLINED_FUNCTION_161_5();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_117();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_297();
  TypeInstance.hash(into:)();
  OUTLINED_FUNCTION_297();
  return ComparisonPredicateType.ComparisonType.hash(into:)();
}

uint64_t ComparisonPredicateType.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v3, v4, v5, v6, v7, v8, v9, v10, v28, v29);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_104_2();
  sub_1C9063FBC();
  v11 = sub_1C9063FBC();
  OUTLINED_FUNCTION_252_1(v11, v12, v13, v14, v15, v16, v17, v18, v1, v30);
  TypeInstance.hash(into:)();
  OUTLINED_FUNCTION_252_1(v19, v20, v21, v22, v23, v24, v25, v26, v2, v31);
  ComparisonPredicateType.ComparisonType.hash(into:)();
  return sub_1C9064DBC();
}

void ComparisonPredicateType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196F0, &qword_1C909F560);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_233();
  v14 = OUTLINED_FUNCTION_118();
  v16 = OUTLINED_FUNCTION_217(v14, v15);
  sub_1C8EF9A9C(v16, v17, v18);
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    LOBYTE(v36) = 0;
    v19 = sub_1C9064A0C();
    v32 = v20;
    sub_1C8E2FB30(v19, v20, v21);
    OUTLINED_FUNCTION_21_21();
    v22 = sub_1C9064A6C();
    v23 = v36;
    v24 = v37;
    v31 = v38;
    v41 = 2;
    sub_1C8EF9B44(v22, v25, v26);
    OUTLINED_FUNCTION_21_21();
    sub_1C9064A6C();
    v27 = OUTLINED_FUNCTION_5_9();
    v28(v27);
    *&v33[0] = v19;
    *(&v33[0] + 1) = v32;
    v33[1] = v36;
    v34 = v37;
    *&v35 = v38;
    *(&v35 + 1) = a10;
    v29 = v36;
    *v12 = v33[0];
    v12[1] = v29;
    v30 = v35;
    v12[2] = v34;
    v12[3] = v30;
    sub_1C8EF9B98(v33, &v36);
    __swift_destroy_boxed_opaque_existential_1(v10);
    *&v36 = v19;
    *(&v36 + 1) = v32;
    v37 = v23;
    v38 = v24;
    v39 = v31;
    v40 = a10;
    sub_1C8D07050(&v36);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF6CE4(uint64_t a1)
{
  sub_1C9064D7C();
  ComparisonPredicateType.hash(into:)();
  return sub_1C9064DBC();
}

void QueryDefinition.PredicateTemplates.debugDescription.getter()
{
  OUTLINED_FUNCTION_301_0();
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 11);
  v4 = *(v0 + 13);
  v5 = *(v0 + 48);
  v6 = *(*v0 + 16);
  if (!v6)
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 8))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1C906478C();
  v7 = sub_1C9064BDC();
  v9 = v8;

  v37 = v9;
  MEMORY[0x1CCA81A90](0xD000000000000015, 0x80000001C90CCB10);
  v6 = v7;
  sub_1C8D00CA4();
  v11 = v10;
  v12 = *(v10 + 16);
  v0 = v12 + 1;
  if (v12 >= *(v10 + 24) >> 1)
  {
    OUTLINED_FUNCTION_90();
    v11 = v28;
  }

  *(v11 + 16) = v0;
  v13 = v11 + 16 * v12;
  *(v13 + 32) = v6;
  *(v13 + 40) = v37;
  if ((v1 & 1) == 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v11 = v29;
    }

    OUTLINED_FUNCTION_162_6();
    if (v14)
    {
      OUTLINED_FUNCTION_90();
      v11 = v30;
    }

    *(v11 + 16) = v0;
    v15 = v11 + 16 * v6;
    strcpy((v15 + 32), "string search");
    *(v15 + 46) = -4864;
  }

LABEL_12:
  if ((v2 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v11 = v31;
    }

    v16 = *(v11 + 16);
    if (v16 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v32;
    }

    *(v11 + 16) = v16 + 1;
    v17 = v11 + 16 * v16;
    *(v17 + 32) = 0x7962207972657571;
    *(v17 + 40) = 0xEB00000000646920;
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v11 = v33;
    }

    v18 = *(v11 + 16);
    if (v18 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v34;
    }

    *(v11 + 16) = v18 + 1;
    v19 = v11 + 16 * v18;
    strcpy((v19 + 32), "query by value");
    *(v19 + 47) = -18;
    if (v3)
    {
LABEL_20:
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_2();
      }

      OUTLINED_FUNCTION_162_6();
      if (v14)
      {
        OUTLINED_FUNCTION_90();
      }

      OUTLINED_FUNCTION_173_6();
      *(v23 + 32) = v22 & 0xFFFFFFFFFFFFLL | 0x7573000000000000;
      *(v23 + 40) = 0xEF64657473656767;
      goto LABEL_38;
    }
  }

  else if (v3)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v11 = v35;
  }

  OUTLINED_FUNCTION_162_6();
  if (v14)
  {
    OUTLINED_FUNCTION_90();
    v11 = v36;
  }

  OUTLINED_FUNCTION_173_6();
  *(v21 + 32) = v20 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
  *(v21 + 40) = 0xE90000000000006CLL;
  if ((v4 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  if (*(v11 + 16))
  {
LABEL_38:
    v24 = OUTLINED_FUNCTION_209();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_0_0();
    sub_1C8D28184(v26, &qword_1EC312558, &qword_1C9066990, v27);
    sub_1C9063E9C();

    goto LABEL_39;
  }

LABEL_39:
  OUTLINED_FUNCTION_183_0();
}

void QueryDefinition.PredicateTemplates.map<A>(_:)()
{
  OUTLINED_FUNCTION_196();
  v40 = v3;
  v41 = v4;
  v39 = v5;
  v43 = type metadata accessor for ComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_109_3();
  v9 = type metadata accessor for AnyPredicateTemplate(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v38 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v35[-v16];
  v18 = *v1;
  v19 = v1[8];
  v20 = *(*v1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v36 = v1[8];
    v37 = v2;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C8D09FAC(0, v20, 0);
    v21 = v47;
    v22 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v42 = *(v7 + 72);
    do
    {
      sub_1C8EF92B4(v22, v0, type metadata accessor for ComparisonPredicate.Template);
      v45 = v43;
      v46 = sub_1C8EF8BD0(&qword_1EC314FE8, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
      v23 = __swift_allocate_boxed_opaque_existential_1(&v44);
      sub_1C8EF92B4(v0, v23, type metadata accessor for ComparisonPredicate.Template);
      AnyPredicateTemplate.init(predicateTemplate:)(&v44, v17);
      sub_1C8EF8C9C(v0, type metadata accessor for ComparisonPredicate.Template);
      v25 = *(v47 + 16);
      v24 = *(v47 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C8D09FAC(v24 > 1, v25 + 1, 1);
      }

      *(v47 + 16) = v25 + 1;
      OUTLINED_FUNCTION_182_5();
      OUTLINED_FUNCTION_90_2();
      v13 = sub_1C8CCEBBC(v17, v26, v27);
      v22 += v42;
      --v20;
    }

    while (v20);
    v19 = v36;
  }

  if ((v19 & 1) == 0)
  {
    v45 = &type metadata for StringSearchPredicate.Template;
    v46 = sub_1C8DCE088(v13, v14, v15);
    AnyPredicateTemplate.init(predicateTemplate:)(&v44, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C8D0193C();
      v21 = v33;
    }

    v28 = *(v21 + 16);
    if (v28 >= *(v21 + 24) >> 1)
    {
      sub_1C8D0193C();
      v21 = v34;
    }

    *(v21 + 16) = v28 + 1;
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_90_2();
    v13 = sub_1C8CCEBBC(v38, v29, v30);
  }

  v44 = v21;
  MEMORY[0x1EEE9AC00](v13);
  *&v35[-32] = v41;
  *&v35[-24] = v31;
  *&v35[-16] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3196F8, &unk_1C909F568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  sub_1C8D28184(&qword_1EC319700, &qword_1EC3196F8, &unk_1C909F568, MEMORY[0x1E69E6340]);
  sub_1C8EE564C();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF7504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x46636972656D756ELL && a2 == 0xED000074616D726FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8EF761C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x46636972656D756ELL;
  }

  return 0x736D796E6F6E7973;
}

uint64_t sub_1C8EF7680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EF7504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EF76A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9C08(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EF76E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EF9C08(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypeDisplayRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319708, &qword_1C909F578);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_171_5();
  v3 = OUTLINED_FUNCTION_219();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8EF9C08(v5, v6, v7);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  v8 = OUTLINED_FUNCTION_102_6();
  OUTLINED_FUNCTION_187_7(v8, v9, v10);
  if (!v0)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_177_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&qword_1EDA6B530, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v11 = OUTLINED_FUNCTION_174_4();
  v12(v11, v1);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t TypeDisplayRepresentation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v3)
  {
    OUTLINED_FUNCTION_172_2(a1);
  }

  OUTLINED_FUNCTION_148();

  return sub_1C8CC1590();
}

uint64_t TypeDisplayRepresentation.hashValue.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  if (v1)
  {
    sub_1C9064D9C();
    v2 = OUTLINED_FUNCTION_172_2(v12);
  }

  else
  {
    v2 = sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_18_20(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  sub_1C8CC1590();
  return sub_1C9064DBC();
}

void TypeDisplayRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_196();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319710, &qword_1C909F580);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_0();
  v23 = OUTLINED_FUNCTION_210();
  v25 = OUTLINED_FUNCTION_217(v23, v24);
  sub_1C8EF9C08(v25, v26, v27);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    OUTLINED_FUNCTION_203_4();
    OUTLINED_FUNCTION_108();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_108();
    sub_1C90649AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_177_4();
    sub_1C8CA669C(&unk_1EDA6B520, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C9064A6C();
    v28 = OUTLINED_FUNCTION_3_21();
    v29(v28);
    OUTLINED_FUNCTION_183_5();

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8EF7C2C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_1C9064D7C();
  TypeDisplayRepresentation.hash(into:)(v5);
  return sub_1C9064DBC();
}

unint64_t sub_1C8EF7D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F68;
  if (!qword_1EDA69F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F68);
  }

  return result;
}

unint64_t sub_1C8EF7D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63838;
  if (!qword_1EDA63838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63838);
  }

  return result;
}

unint64_t sub_1C8EF7DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60738;
  if (!qword_1EDA60738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60738);
  }

  return result;
}

unint64_t sub_1C8EF7E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3193B0;
  if (!qword_1EC3193B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3193B0);
  }

  return result;
}

unint64_t sub_1C8EF7E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3193B8;
  if (!qword_1EC3193B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3193B8);
  }

  return result;
}

unint64_t sub_1C8EF7ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F50;
  if (!qword_1EDA69F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F50);
  }

  return result;
}

unint64_t sub_1C8EF7F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63720;
  if (!qword_1EDA63720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63720);
  }

  return result;
}

unint64_t sub_1C8EF7F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F08;
  if (!qword_1EDA69F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F08);
  }

  return result;
}

unint64_t sub_1C8EF7FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63268;
  if (!qword_1EDA63268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63268);
  }

  return result;
}

unint64_t sub_1C8EF8020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F38;
  if (!qword_1EDA69F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F38);
  }

  return result;
}

unint64_t sub_1C8EF8074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636F8;
  if (!qword_1EDA636F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636F8);
  }

  return result;
}

unint64_t sub_1C8EF80C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F20;
  if (!qword_1EDA69F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F20);
  }

  return result;
}

unint64_t sub_1C8EF811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60730;
  if (!qword_1EDA60730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60730);
  }

  return result;
}

unint64_t sub_1C8EF8170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3193F8;
  if (!qword_1EC3193F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3193F8);
  }

  return result;
}

unint64_t sub_1C8EF81C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63718;
  if (!qword_1EDA63718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63718);
  }

  return result;
}

unint64_t sub_1C8EF8218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63260;
  if (!qword_1EDA63260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63260);
  }

  return result;
}

unint64_t sub_1C8EF826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636F0;
  if (!qword_1EDA636F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636F0);
  }

  return result;
}

unint64_t sub_1C8EF82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63698;
  if (!qword_1EDA63698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63698);
  }

  return result;
}

unint64_t sub_1C8EF8314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63680;
  if (!qword_1EDA63680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63680);
  }

  return result;
}

unint64_t sub_1C8EF8368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63668;
  if (!qword_1EDA63668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63668);
  }

  return result;
}

unint64_t sub_1C8EF83BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636B0;
  if (!qword_1EDA636B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636B0);
  }

  return result;
}

unint64_t sub_1C8EF8410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AB0;
  if (!qword_1EDA60AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AB0);
  }

  return result;
}

unint64_t sub_1C8EF8464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AA8;
  if (!qword_1EDA60AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AA8);
  }

  return result;
}

unint64_t sub_1C8EF84B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319448;
  if (!qword_1EC319448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319448);
  }

  return result;
}

uint64_t sub_1C8EF850C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 2 && a8 != 1)
  {
    if (a8)
    {
      return v8;
    }
  }
}

unint64_t sub_1C8EF857C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BB8;
  if (!qword_1EDA69BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BB8);
  }

  return result;
}

unint64_t sub_1C8EF85D0()
{
  result = qword_1EDA62DA8;
  if (!qword_1EDA62DA8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8E2F434(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DA8);
  }

  return result;
}

unint64_t sub_1C8EF8654()
{
  result = qword_1EDA604F8;
  if (!qword_1EDA604F8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319460, &qword_1C909F360);
    sub_1C8E2D21C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA604F8);
  }

  return result;
}

unint64_t sub_1C8EF86D8()
{
  result = qword_1EDA60508;
  if (!qword_1EDA60508)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319468, &unk_1C909F368);
    sub_1C8E7710C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60508);
  }

  return result;
}

unint64_t sub_1C8EF875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AE0[0];
  if (!qword_1EDA60AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA60AE0);
  }

  return result;
}

unint64_t sub_1C8EF87B0()
{
  result = qword_1EDA62DA0;
  if (!qword_1EDA62DA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8E2FB30(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DA0);
  }

  return result;
}

unint64_t sub_1C8EF8834()
{
  result = qword_1EDA604F0;
  if (!qword_1EDA604F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319460, &qword_1C909F360);
    sub_1C8E2D1C8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA604F0);
  }

  return result;
}

unint64_t sub_1C8EF88B8()
{
  result = qword_1EDA60500;
  if (!qword_1EDA60500)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319468, &unk_1C909F368);
    sub_1C8E770B8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60500);
  }

  return result;
}

unint64_t sub_1C8EF893C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AD0;
  if (!qword_1EDA60AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AD0);
  }

  return result;
}

unint64_t sub_1C8EF89C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B600;
  if (!qword_1EDA6B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B600);
  }

  return result;
}

unint64_t sub_1C8EF8A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA696D0;
  if (!qword_1EDA696D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696D0);
  }

  return result;
}

unint64_t sub_1C8EF8A68()
{
  result = qword_1EDA62D98;
  if (!qword_1EDA62D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8EF8BD0(&qword_1EDA63050, type metadata accessor for EnumerationCaseDefinition, &protocol conformance descriptor for EnumerationCaseDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62D98);
  }

  return result;
}

unint64_t sub_1C8EF8B1C()
{
  result = qword_1EDA62D90;
  if (!qword_1EDA62D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8EF8BD0(&qword_1EDA63048, type metadata accessor for EnumerationCaseDefinition, &protocol conformance descriptor for EnumerationCaseDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62D90);
  }

  return result;
}

uint64_t sub_1C8EF8BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8EF8C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695C8;
  if (!qword_1EDA695C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695C8);
  }

  return result;
}

uint64_t sub_1C8EF8C9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8EF8CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63748;
  if (!qword_1EDA63748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63748);
  }

  return result;
}

unint64_t sub_1C8EF8D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C78;
  if (!qword_1EDA69C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C78);
  }

  return result;
}

unint64_t sub_1C8EF8D9C()
{
  result = qword_1EDA62DD8;
  if (!qword_1EDA62DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194C0, &qword_1C909F3D0);
    sub_1C8EF8BD0(&qword_1EDA633C0, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DD8);
  }

  return result;
}

unint64_t sub_1C8EF8E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63088;
  if (!qword_1EDA63088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63088);
  }

  return result;
}

unint64_t sub_1C8EF8EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BB8;
  if (!qword_1EDA60BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BB8);
  }

  return result;
}

unint64_t sub_1C8EF8EF8()
{
  result = qword_1EDA62DD0;
  if (!qword_1EDA62DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194C0, &qword_1C909F3D0);
    sub_1C8EF8BD0(&qword_1EDA633B8, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DD0);
  }

  return result;
}

unint64_t sub_1C8EF8FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63080;
  if (!qword_1EDA63080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63080);
  }

  return result;
}

unint64_t sub_1C8EF9000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BB0;
  if (!qword_1EDA60BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BB0);
  }

  return result;
}

unint64_t sub_1C8EF9054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C90;
  if (!qword_1EDA69C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C90);
  }

  return result;
}

unint64_t sub_1C8EF90A8()
{
  result = qword_1EDA62E68;
  if (!qword_1EDA62E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194D8, &qword_1C909F3E8);
    sub_1C8EF8BD0(&unk_1EDA66660, type metadata accessor for ComparisonPredicateTypeOrPredicate, &protocol conformance descriptor for ComparisonPredicateTypeOrPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E68);
  }

  return result;
}

unint64_t sub_1C8EF917C()
{
  result = qword_1EDA62E60;
  if (!qword_1EDA62E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3194D8, &qword_1C909F3E8);
    sub_1C8EF8BD0(&qword_1EDA66658, type metadata accessor for ComparisonPredicateTypeOrPredicate, &protocol conformance descriptor for ComparisonPredicateTypeOrPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E60);
  }

  return result;
}

unint64_t sub_1C8EF9260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F28;
  if (!qword_1EDA62F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F28);
  }

  return result;
}

uint64_t sub_1C8EF92B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

unint64_t sub_1C8EF9310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319510;
  if (!qword_1EC319510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319510);
  }

  return result;
}

unint64_t sub_1C8EF9364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319518;
  if (!qword_1EC319518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319518);
  }

  return result;
}

unint64_t sub_1C8EF93B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319520;
  if (!qword_1EC319520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319520);
  }

  return result;
}

unint64_t sub_1C8EF940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60840;
  if (!qword_1EDA60840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60840);
  }

  return result;
}

unint64_t sub_1C8EF9460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60838;
  if (!qword_1EDA60838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60838);
  }

  return result;
}

unint64_t sub_1C8EF94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195C8;
  if (!qword_1EC3195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195C8);
  }

  return result;
}

unint64_t sub_1C8EF9508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195D0;
  if (!qword_1EC3195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195D0);
  }

  return result;
}

unint64_t sub_1C8EF955C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195D8;
  if (!qword_1EC3195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195D8);
  }

  return result;
}

unint64_t sub_1C8EF95B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195E0;
  if (!qword_1EC3195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195E0);
  }

  return result;
}

unint64_t sub_1C8EF9604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195E8;
  if (!qword_1EC3195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195E8);
  }

  return result;
}

unint64_t sub_1C8EF9658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195F0;
  if (!qword_1EC3195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195F0);
  }

  return result;
}

unint64_t sub_1C8EF96AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3195F8;
  if (!qword_1EC3195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3195F8);
  }

  return result;
}

unint64_t sub_1C8EF9700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319600;
  if (!qword_1EC319600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319600);
  }

  return result;
}

unint64_t sub_1C8EF9754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319608;
  if (!qword_1EC319608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319608);
  }

  return result;
}

unint64_t sub_1C8EF97A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319610;
  if (!qword_1EC319610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319610);
  }

  return result;
}

unint64_t sub_1C8EF97FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319618;
  if (!qword_1EC319618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319618);
  }

  return result;
}

unint64_t sub_1C8EF9850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319620;
  if (!qword_1EC319620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319620);
  }

  return result;
}

unint64_t sub_1C8EF98A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319628;
  if (!qword_1EC319628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319628);
  }

  return result;
}

unint64_t sub_1C8EF98F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319630;
  if (!qword_1EC319630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319630);
  }

  return result;
}

unint64_t sub_1C8EF994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319638;
  if (!qword_1EC319638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319638);
  }

  return result;
}

unint64_t sub_1C8EF99A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319640;
  if (!qword_1EC319640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319640);
  }

  return result;
}

unint64_t sub_1C8EF99F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319648;
  if (!qword_1EC319648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319648);
  }

  return result;
}

unint64_t sub_1C8EF9A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3196D8;
  if (!qword_1EC3196D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3196D8);
  }

  return result;
}

unint64_t sub_1C8EF9A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3196E8;
  if (!qword_1EC3196E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3196E8);
  }

  return result;
}

unint64_t sub_1C8EF9AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60850;
  if (!qword_1EDA60850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60850);
  }

  return result;
}

unint64_t sub_1C8EF9B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60848;
  if (!qword_1EDA60848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60848);
  }

  return result;
}

uint64_t sub_1C8EF9BD0(uint64_t a1, void *a2)
{
  result = (*(v2 + 24))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_1C8EF9C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FE8;
  if (!qword_1EDA62FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FE8);
  }

  return result;
}

unint64_t sub_1C8EF9C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63830;
  if (!qword_1EDA63830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63830);
  }

  return result;
}

unint64_t sub_1C8EF9CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319718;
  if (!qword_1EC319718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319718);
  }

  return result;
}

unint64_t sub_1C8EF9D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319720;
  if (!qword_1EC319720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319720);
  }

  return result;
}

unint64_t sub_1C8EF9D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319728;
  if (!qword_1EC319728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319728);
  }

  return result;
}

unint64_t sub_1C8EF9DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63700;
  if (!qword_1EDA63700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63700);
  }

  return result;
}

unint64_t sub_1C8EF9E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319730;
  if (!qword_1EC319730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319730);
  }

  return result;
}

unint64_t sub_1C8EF9E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AD8;
  if (!qword_1EDA60AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AD8);
  }

  return result;
}

unint64_t sub_1C8EF9EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AC8;
  if (!qword_1EDA60AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AC8);
  }

  return result;
}

unint64_t sub_1C8EF9F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319738;
  if (!qword_1EC319738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319738);
  }

  return result;
}

unint64_t sub_1C8EF9F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319740;
  if (!qword_1EC319740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319740);
  }

  return result;
}

unint64_t sub_1C8EF9FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319748;
  if (!qword_1EC319748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319748);
  }

  return result;
}

unint64_t sub_1C8EFA024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319750;
  if (!qword_1EC319750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319750);
  }

  return result;
}

unint64_t sub_1C8EFA0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319760;
  if (!qword_1EC319760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319760);
  }

  return result;
}

unint64_t sub_1C8EFA11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319768;
  if (!qword_1EC319768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319768);
  }

  return result;
}

unint64_t sub_1C8EFA174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319770;
  if (!qword_1EC319770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319770);
  }

  return result;
}

unint64_t sub_1C8EFA1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319778;
  if (!qword_1EC319778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319778);
  }

  return result;
}

unint64_t sub_1C8EFA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319788;
  if (!qword_1EC319788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319788);
  }

  return result;
}

unint64_t sub_1C8EFA2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319790;
  if (!qword_1EC319790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319790);
  }

  return result;
}

unint64_t sub_1C8EFA31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319798;
  if (!qword_1EC319798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319798);
  }

  return result;
}

uint64_t sub_1C8EFA37C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 97))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 96);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EFA3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8EFA434(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EFA470(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C8EFA4EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EFA52C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8EFA5B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EFA5F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C8EFA690(uint64_t a1)
{
  sub_1C8CD2534(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C8EFA71C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8EFA75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8EFA7D8(uint64_t a1)
{
  result = type metadata accessor for ComparisonPredicate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit23ComparisonPredicateTypeV0cE0O(void *a1)
{
  v1 = (*a1 >> 57) & 8 | *a1 & 7;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 13;
  }
}

uint64_t sub_1C8EFA888(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 8))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((*a1 >> 57) & 8 | *a1 & 7) ^ 0xF;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8EFA8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = -a2 & 7 | 0x1000000000000000;
    }
  }

  return result;
}

unint64_t *sub_1C8EFA930(unint64_t *result, unsigned int a2)
{
  if (a2 < 0xD)
  {
    v2 = a2 & 7 | (a2 << 57) & 0x1000000000000007 | *result & 0xEFFFFFFFFFFFFFF8;
  }

  else
  {
    v2 = (8 * (a2 - 13)) | 0x1000000000000005;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ComparisonPredicateType.ComparisonType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComparisonPredicateType.ComparisonType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFAC44(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_349(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDefinition.PredicateTemplates.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFAE2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFAFF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_349(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8EFB0E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_80(v8);
}

_BYTE *sub_1C8EFB164(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_349(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8EFB280(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C8EFB330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197A0;
  if (!qword_1EC3197A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197A0);
  }

  return result;
}

unint64_t sub_1C8EFB388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197A8;
  if (!qword_1EC3197A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197A8);
  }

  return result;
}

unint64_t sub_1C8EFB3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197B0;
  if (!qword_1EC3197B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197B0);
  }

  return result;
}

unint64_t sub_1C8EFB438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197B8;
  if (!qword_1EC3197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197B8);
  }

  return result;
}

unint64_t sub_1C8EFB490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197C0;
  if (!qword_1EC3197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197C0);
  }

  return result;
}

unint64_t sub_1C8EFB4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197C8;
  if (!qword_1EC3197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197C8);
  }

  return result;
}

unint64_t sub_1C8EFB540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197D0;
  if (!qword_1EC3197D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197D0);
  }

  return result;
}

unint64_t sub_1C8EFB598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197D8;
  if (!qword_1EC3197D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197D8);
  }

  return result;
}

unint64_t sub_1C8EFB5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197E0;
  if (!qword_1EC3197E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197E0);
  }

  return result;
}

unint64_t sub_1C8EFB648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197E8;
  if (!qword_1EC3197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197E8);
  }

  return result;
}

unint64_t sub_1C8EFB6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197F0;
  if (!qword_1EC3197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197F0);
  }

  return result;
}

unint64_t sub_1C8EFB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3197F8;
  if (!qword_1EC3197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3197F8);
  }

  return result;
}

unint64_t sub_1C8EFB750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319800;
  if (!qword_1EC319800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319800);
  }

  return result;
}

unint64_t sub_1C8EFB7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319808;
  if (!qword_1EC319808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319808);
  }

  return result;
}

unint64_t sub_1C8EFB800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319810;
  if (!qword_1EC319810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319810);
  }

  return result;
}

unint64_t sub_1C8EFB858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319818;
  if (!qword_1EC319818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319818);
  }

  return result;
}

unint64_t sub_1C8EFB8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319820;
  if (!qword_1EC319820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319820);
  }

  return result;
}

unint64_t sub_1C8EFB908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319828;
  if (!qword_1EC319828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319828);
  }

  return result;
}

unint64_t sub_1C8EFB960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319830;
  if (!qword_1EC319830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319830);
  }

  return result;
}

unint64_t sub_1C8EFB9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319838;
  if (!qword_1EC319838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319838);
  }

  return result;
}

unint64_t sub_1C8EFBA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319840;
  if (!qword_1EC319840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319840);
  }

  return result;
}

unint64_t sub_1C8EFBA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319848;
  if (!qword_1EC319848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319848);
  }

  return result;
}

unint64_t sub_1C8EFBAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319850;
  if (!qword_1EC319850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319850);
  }

  return result;
}

unint64_t sub_1C8EFBB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319858;
  if (!qword_1EC319858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319858);
  }

  return result;
}

unint64_t sub_1C8EFBB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319860;
  if (!qword_1EC319860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319860);
  }

  return result;
}

unint64_t sub_1C8EFBBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319868;
  if (!qword_1EC319868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319868);
  }

  return result;
}

unint64_t sub_1C8EFBC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319870;
  if (!qword_1EC319870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319870);
  }

  return result;
}

unint64_t sub_1C8EFBC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319878;
  if (!qword_1EC319878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319878);
  }

  return result;
}

unint64_t sub_1C8EFBCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319880;
  if (!qword_1EC319880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319880);
  }

  return result;
}

unint64_t sub_1C8EFBD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319888;
  if (!qword_1EC319888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319888);
  }

  return result;
}

unint64_t sub_1C8EFBD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319890;
  if (!qword_1EC319890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319890);
  }

  return result;
}

unint64_t sub_1C8EFBDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319898;
  if (!qword_1EC319898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319898);
  }

  return result;
}

unint64_t sub_1C8EFBE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198A0;
  if (!qword_1EC3198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198A0);
  }

  return result;
}

unint64_t sub_1C8EFBE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198A8;
  if (!qword_1EC3198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198A8);
  }

  return result;
}

unint64_t sub_1C8EFBEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198B0;
  if (!qword_1EC3198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198B0);
  }

  return result;
}

unint64_t sub_1C8EFBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198B8;
  if (!qword_1EC3198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198B8);
  }

  return result;
}

unint64_t sub_1C8EFBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198C0;
  if (!qword_1EC3198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198C0);
  }

  return result;
}

unint64_t sub_1C8EFBFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FD8;
  if (!qword_1EDA62FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FD8);
  }

  return result;
}

unint64_t sub_1C8EFC040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FE0;
  if (!qword_1EDA62FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FE0);
  }

  return result;
}

unint64_t sub_1C8EFC098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198C8;
  if (!qword_1EC3198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198C8);
  }

  return result;
}

unint64_t sub_1C8EFC0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198D0;
  if (!qword_1EC3198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198D0);
  }

  return result;
}

unint64_t sub_1C8EFC148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198D8;
  if (!qword_1EC3198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198D8);
  }

  return result;
}

unint64_t sub_1C8EFC1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198E0;
  if (!qword_1EC3198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198E0);
  }

  return result;
}

unint64_t sub_1C8EFC1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198E8;
  if (!qword_1EC3198E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198E8);
  }

  return result;
}

unint64_t sub_1C8EFC250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198F0;
  if (!qword_1EC3198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198F0);
  }

  return result;
}

unint64_t sub_1C8EFC2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3198F8;
  if (!qword_1EC3198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3198F8);
  }

  return result;
}

unint64_t sub_1C8EFC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319900;
  if (!qword_1EC319900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319900);
  }

  return result;
}

unint64_t sub_1C8EFC358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319908;
  if (!qword_1EC319908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319908);
  }

  return result;
}

unint64_t sub_1C8EFC3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319910;
  if (!qword_1EC319910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319910);
  }

  return result;
}

unint64_t sub_1C8EFC408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319918;
  if (!qword_1EC319918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319918);
  }

  return result;
}

unint64_t sub_1C8EFC460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319920;
  if (!qword_1EC319920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319920);
  }

  return result;
}

unint64_t sub_1C8EFC4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319928;
  if (!qword_1EC319928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319928);
  }

  return result;
}

unint64_t sub_1C8EFC510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319930;
  if (!qword_1EC319930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319930);
  }

  return result;
}

unint64_t sub_1C8EFC568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319938;
  if (!qword_1EC319938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319938);
  }

  return result;
}

unint64_t sub_1C8EFC5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319940;
  if (!qword_1EC319940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319940);
  }

  return result;
}

unint64_t sub_1C8EFC618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319948;
  if (!qword_1EC319948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319948);
  }

  return result;
}

unint64_t sub_1C8EFC670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319950;
  if (!qword_1EC319950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319950);
  }

  return result;
}

unint64_t sub_1C8EFC6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319958;
  if (!qword_1EC319958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319958);
  }

  return result;
}

unint64_t sub_1C8EFC720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319960;
  if (!qword_1EC319960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319960);
  }

  return result;
}

unint64_t sub_1C8EFC778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319968;
  if (!qword_1EC319968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319968);
  }

  return result;
}

unint64_t sub_1C8EFC7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319970;
  if (!qword_1EC319970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319970);
  }

  return result;
}

unint64_t sub_1C8EFC828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319978;
  if (!qword_1EC319978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319978);
  }

  return result;
}

unint64_t sub_1C8EFC880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319980;
  if (!qword_1EC319980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319980);
  }

  return result;
}

unint64_t sub_1C8EFC8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319988;
  if (!qword_1EC319988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319988);
  }

  return result;
}

unint64_t sub_1C8EFC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319990;
  if (!qword_1EC319990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319990);
  }

  return result;
}

unint64_t sub_1C8EFC988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319998;
  if (!qword_1EC319998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319998);
  }

  return result;
}

unint64_t sub_1C8EFC9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199A0;
  if (!qword_1EC3199A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199A0);
  }

  return result;
}

unint64_t sub_1C8EFCA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199A8;
  if (!qword_1EC3199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199A8);
  }

  return result;
}

unint64_t sub_1C8EFCA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199B0;
  if (!qword_1EC3199B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199B0);
  }

  return result;
}

unint64_t sub_1C8EFCAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199B8;
  if (!qword_1EC3199B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199B8);
  }

  return result;
}

unint64_t sub_1C8EFCB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199C0;
  if (!qword_1EC3199C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199C0);
  }

  return result;
}

unint64_t sub_1C8EFCB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199C8;
  if (!qword_1EC3199C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199C8);
  }

  return result;
}

unint64_t sub_1C8EFCBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199D0;
  if (!qword_1EC3199D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199D0);
  }

  return result;
}

unint64_t sub_1C8EFCC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199D8;
  if (!qword_1EC3199D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199D8);
  }

  return result;
}

unint64_t sub_1C8EFCCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199E0;
  if (!qword_1EC3199E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199E0);
  }

  return result;
}

unint64_t sub_1C8EFCCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199E8;
  if (!qword_1EC3199E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199E8);
  }

  return result;
}

unint64_t sub_1C8EFCD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199F0;
  if (!qword_1EC3199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199F0);
  }

  return result;
}

unint64_t sub_1C8EFCDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3199F8;
  if (!qword_1EC3199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3199F8);
  }

  return result;
}

unint64_t sub_1C8EFCE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A00;
  if (!qword_1EC319A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A00);
  }

  return result;
}

unint64_t sub_1C8EFCE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A08;
  if (!qword_1EC319A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A08);
  }

  return result;
}

unint64_t sub_1C8EFCEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A10;
  if (!qword_1EC319A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A10);
  }

  return result;
}

unint64_t sub_1C8EFCF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F18;
  if (!qword_1EDA62F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F18);
  }

  return result;
}

unint64_t sub_1C8EFCF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F20;
  if (!qword_1EDA62F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F20);
  }

  return result;
}

unint64_t sub_1C8EFCFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C80;
  if (!qword_1EDA69C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C80);
  }

  return result;
}

unint64_t sub_1C8EFD010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C88;
  if (!qword_1EDA69C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C88);
  }

  return result;
}

unint64_t sub_1C8EFD068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C68;
  if (!qword_1EDA69C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C68);
  }

  return result;
}

unint64_t sub_1C8EFD0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C70;
  if (!qword_1EDA69C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C70);
  }

  return result;
}

unint64_t sub_1C8EFD118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63738;
  if (!qword_1EDA63738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63738);
  }

  return result;
}

unint64_t sub_1C8EFD170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63740;
  if (!qword_1EDA63740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63740);
  }

  return result;
}

unint64_t sub_1C8EFD1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695B8;
  if (!qword_1EDA695B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695B8);
  }

  return result;
}

unint64_t sub_1C8EFD220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695C0;
  if (!qword_1EDA695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695C0);
  }

  return result;
}

unint64_t sub_1C8EFD278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA696C0;
  if (!qword_1EDA696C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696C0);
  }

  return result;
}

unint64_t sub_1C8EFD2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA696C8;
  if (!qword_1EDA696C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696C8);
  }

  return result;
}

unint64_t sub_1C8EFD328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B5F0;
  if (!qword_1EDA6B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5F0);
  }

  return result;
}

unint64_t sub_1C8EFD380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B5F8;
  if (!qword_1EDA6B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5F8);
  }

  return result;
}

unint64_t sub_1C8EFD3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BA8;
  if (!qword_1EDA69BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BA8);
  }

  return result;
}

unint64_t sub_1C8EFD430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69BB0;
  if (!qword_1EDA69BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BB0);
  }

  return result;
}

unint64_t sub_1C8EFD488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A18;
  if (!qword_1EC319A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A18);
  }

  return result;
}

unint64_t sub_1C8EFD4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A20;
  if (!qword_1EC319A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A20);
  }

  return result;
}

unint64_t sub_1C8EFD538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636A0;
  if (!qword_1EDA636A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636A0);
  }

  return result;
}

unint64_t sub_1C8EFD590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636A8;
  if (!qword_1EDA636A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636A8);
  }

  return result;
}

unint64_t sub_1C8EFD5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63658;
  if (!qword_1EDA63658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63658);
  }

  return result;
}

unint64_t sub_1C8EFD640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63660;
  if (!qword_1EDA63660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63660);
  }

  return result;
}

unint64_t sub_1C8EFD698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63670;
  if (!qword_1EDA63670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63670);
  }

  return result;
}

unint64_t sub_1C8EFD6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63678;
  if (!qword_1EDA63678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63678);
  }

  return result;
}

unint64_t sub_1C8EFD748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63688;
  if (!qword_1EDA63688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63688);
  }

  return result;
}

unint64_t sub_1C8EFD7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63690;
  if (!qword_1EDA63690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63690);
  }

  return result;
}

unint64_t sub_1C8EFD7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F10;
  if (!qword_1EDA69F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F10);
  }

  return result;
}

unint64_t sub_1C8EFD850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F18;
  if (!qword_1EDA69F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F18);
  }

  return result;
}

unint64_t sub_1C8EFD8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F28;
  if (!qword_1EDA69F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F28);
  }

  return result;
}

unint64_t sub_1C8EFD900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F30;
  if (!qword_1EDA69F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F30);
  }

  return result;
}

unint64_t sub_1C8EFD958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EF8;
  if (!qword_1EDA69EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EF8);
  }

  return result;
}

unint64_t sub_1C8EFD9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F00;
  if (!qword_1EDA69F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F00);
  }

  return result;
}

unint64_t sub_1C8EFDA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F40;
  if (!qword_1EDA69F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F40);
  }

  return result;
}

unint64_t sub_1C8EFDA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F48;
  if (!qword_1EDA69F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F48);
  }

  return result;
}

unint64_t sub_1C8EFDAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A28;
  if (!qword_1EC319A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A28);
  }

  return result;
}

unint64_t sub_1C8EFDB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A30;
  if (!qword_1EC319A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A30);
  }

  return result;
}

unint64_t sub_1C8EFDB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EE8;
  if (!qword_1EDA69EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EE8);
  }

  return result;
}

unint64_t sub_1C8EFDBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EF0;
  if (!qword_1EDA69EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EF0);
  }

  return result;
}

unint64_t sub_1C8EFDC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F58;
  if (!qword_1EDA69F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F58);
  }

  return result;
}

unint64_t sub_1C8EFDC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69F60;
  if (!qword_1EDA69F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F60);
  }

  return result;
}

unint64_t sub_1C8EFDCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63270;
  if (!qword_1EDA63270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_5(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

void OUTLINED_FUNCTION_140_4(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v2[2] = v1;
  v2[3] = 0;
  v2[4] = 0xE000000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[10] = 0;
  v2[11] = 0;
}

uint64_t OUTLINED_FUNCTION_146_5()
{
  *(v0 - 120) = 0;

  return sub_1C9064B2C();
}

uint64_t OUTLINED_FUNCTION_157_3()
{
}

uint64_t OUTLINED_FUNCTION_159_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);

  return sub_1C8D90D54(va, &a28);
}

void OUTLINED_FUNCTION_171_5()
{
  v2 = *(v0 + 16);
  *(v1 - 112) = *(v0 + 24);
  *(v1 - 104) = v2;
}

void OUTLINED_FUNCTION_183_5()
{
  v4 = *(v2 - 96);
  v3 = *(v2 - 88);
  *v0 = v1;
  v0[1] = v4;
  v5 = *(v2 - 104);
  v0[2] = *(v2 - 112);
  v0[3] = v5;
  v0[4] = v3;
}

uint64_t OUTLINED_FUNCTION_187_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064B2C();
}

void *OUTLINED_FUNCTION_194_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  return memcpy(va, v27, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_223_3()
{

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_224_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_229_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_230_2()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t sub_1C8EFE138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D796E6F6E7973 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C8EFE28C(char a1)
{
  result = 0x656E6961746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0x6D796E6F6E7973;
      break;
    case 3:
      result = 0x726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EFE310(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319A78, &qword_1C90A58F8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EFEF10(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  OUTLINED_FUNCTION_12_0();
  sub_1C9064B9C();
  if (!v1)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v13[13] = 2;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v13[12] = 3;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B6C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8EFE4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319A70, &qword_1C90A58F0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EFEF10(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_7();
  v9 = sub_1C9064A7C();
  OUTLINED_FUNCTION_1_7();
  v10 = sub_1C9064A0C();
  v12 = v11;
  v21 = v10;
  v22 = v9;
  OUTLINED_FUNCTION_1_7();
  v13 = sub_1C9064A0C();
  v15 = v14;
  v20 = v13;
  OUTLINED_FUNCTION_1_7();
  v16 = sub_1C9064A4C();
  v17 = OUTLINED_FUNCTION_0();
  v18(v17);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v21;
  a2[2] = v12;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v16;
  return result;
}

uint64_t sub_1C8EFE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EFE138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EFE708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EFEF10(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EFE744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EFEF10(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C8EFE780@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C8EFE4A8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_1C8EFE7DC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C8EFE81C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C8EFE81C@<X0>(void *a2@<X8>)
{
  if (qword_1EC3115A0 != -1)
  {
    OUTLINED_FUNCTION_5_42(&qword_1EC3115A0);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390D70);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EDA69518 != -1)
  {
    OUTLINED_FUNCTION_3_46(&qword_1EDA69518);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6EAC8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v16 = v6;
  v8 = v7;

  if (qword_1EC3115B0 != -1)
  {
    OUTLINED_FUNCTION_2_57(&qword_1EC3115B0);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390D88);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  if (qword_1EC3115B8 != -1)
  {
    OUTLINED_FUNCTION_1_60(&qword_1EC3115B8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390DA0);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v14 = v13;

  *a2 = v5;
  a2[1] = v8;
  a2[2] = v16;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v14;
  return result;
}

uint64_t sub_1C8EFE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8EFEDBC(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8EFEAF0()
{
  if (qword_1EC3115A0 != -1)
  {
    OUTLINED_FUNCTION_5_42(&qword_1EC3115A0);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390D70);
  v2 = sub_1C9062E5C();
  OUTLINED_FUNCTION_6(v2, v3, v2, v3, v4, v5, v6, v7, v19, v21, v23, v25, v27, v28);
  if (qword_1EDA69518 != -1)
  {
    OUTLINED_FUNCTION_3_46(&qword_1EDA69518);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EAC8);
  sub_1C9062E5C();
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E69A0138];

  OUTLINED_FUNCTION_13_0(v10);
  if (qword_1EC3115B0 != -1)
  {
    OUTLINED_FUNCTION_2_57(&qword_1EC3115B0);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390D88);
  sub_1C9062E5C();
  v22 = *(v0 + 24);
  v24 = *(v0 + 32);

  OUTLINED_FUNCTION_13_0(v11);
  if (qword_1EC3115B8 != -1)
  {
    OUTLINED_FUNCTION_1_60(&qword_1EC3115B8);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390DA0);
  v12 = sub_1C9062E5C();
  return OUTLINED_FUNCTION_6(v12, v13, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v8, v9);
}

uint64_t sub_1C8EFEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC319A38;

  return v5;
}

unint64_t sub_1C8EFECD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A48;
  if (!qword_1EC319A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A48);
  }

  return result;
}

unint64_t sub_1C8EFED28(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EFED68(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8EFEDBC(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8EFEE10(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8EFEE64(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8EFED68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A50;
  if (!qword_1EC319A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A50);
  }

  return result;
}

unint64_t sub_1C8EFEDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A58;
  if (!qword_1EC319A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A58);
  }

  return result;
}

unint64_t sub_1C8EFEE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69500;
  if (!qword_1EDA69500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69500);
  }

  return result;
}

unint64_t sub_1C8EFEE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A60;
  if (!qword_1EC319A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A60);
  }

  return result;
}

unint64_t sub_1C8EFEEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A68;
  if (!qword_1EC319A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A68);
  }

  return result;
}

unint64_t sub_1C8EFEF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69530;
  if (!qword_1EDA69530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69530);
  }

  return result;
}

uint64_t sub_1C8EFEFA4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8EFEF10(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for ContainerMetadataSynonymRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8EFF0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A80;
  if (!qword_1EC319A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A80);
  }

  return result;
}

unint64_t sub_1C8EFF154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69520;
  if (!qword_1EDA69520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69520);
  }

  return result;
}

unint64_t sub_1C8EFF1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69528;
  if (!qword_1EDA69528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69528);
  }

  return result;
}

uint64_t sub_1C8EFF210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C8EFF63C(a1, a2, a3);
  sub_1C9062E0C();

  return v4;
}

uint64_t sub_1C8EFF278(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C90CCBB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1C8EFF314(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319A88, &qword_1C90A5AD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EFF594(v7, v8, v9);
  v10 = sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1C8EFF5E8(v10, v11, v12);
    sub_1C9064A6C();
    (*(v4 + 8))(v6, v3);
    v7 = v14[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1C8EFF494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EFF278(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8EFF4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EFF594(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8EFF4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8EFF594(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C8EFF538@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8EFF314(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C8EFF568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1C8EFF210(a1, a3, a4);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

unint64_t sub_1C8EFF594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F58;
  if (!qword_1EDA62F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F58);
  }

  return result;
}

unint64_t sub_1C8EFF5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F78;
  if (!qword_1EDA62F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F78);
  }

  return result;
}

unint64_t sub_1C8EFF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A90;
  if (!qword_1EC319A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedLinkActionIdentifier.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C8EFF740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319A98;
  if (!qword_1EC319A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A98);
  }

  return result;
}

unint64_t sub_1C8EFF798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F48;
  if (!qword_1EDA62F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F48);
  }

  return result;
}

unint64_t sub_1C8EFF7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F50;
  if (!qword_1EDA62F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F50);
  }

  return result;
}

void AnyPredicate.protobuf(useCase:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = a1;
  v59[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v56 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v55 - v21);
  v23 = OUTLINED_FUNCTION_152();
  sub_1C8F00AB4(v23, v9, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v45 = *v9;
      OUTLINED_FUNCTION_8_38();
      sub_1C8F00BB0(v46, v47, &protocol conformance descriptor for ComparisonPredicate);
      v48 = v58;
      v49 = sub_1C90641FC();
      if (!v48)
      {
        v53 = v49;
        if (v45)
        {
          v54 = 2;
        }

        else
        {
          v54 = 1;
        }

        type metadata accessor for ToolKitProtoCompoundPredicate(0);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

        *v16 = v54;
        *(v16 + 1) = v53;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_3_47();
        v30 = v16;
        goto LABEL_23;
      }

      return;
    case 2:
      v41 = *v9;
      v40 = v9[1];
      type metadata accessor for ToolKitProtoStringSearchPredicate(0);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v22 = v41;
      v22[1] = v40;
      OUTLINED_FUNCTION_13_24();
      goto LABEL_13;
    case 3:
      v42 = v9[2];
      if (v42[2])
      {
        v44 = v42[4];
        v43 = v42[5];
      }

      else
      {
        v44 = 0;
        v43 = 0xE000000000000000;
      }

      type metadata accessor for ToolKitProtoIdSearchPredicate(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

      *v22 = v44;
      v22[1] = v43;
      v22[2] = v42;
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    case 4:
      v31 = *v9;
      v32 = MEMORY[0x1CCA82A80](EnumCaseMultiPayload, v26, v27);
      v33 = objc_opt_self();
      v59[0] = 0;
      v34 = [v33 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:{v59, v55, v56, v57}];
      v35 = v59[0];
      if (v34)
      {
        v36 = sub_1C9061F3C();
        v38 = v37;

        objc_autoreleasePoolPop(v32);
        type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

        *v13 = v36;
        v13[1] = v38;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_3_47();
        sub_1C8F00A58(v13, v22, v39);
LABEL_14:
        v50 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
        MEMORY[0x1EEE9AC00](v50);
        *(&v55 - 2) = v22;
        sub_1C8F00BB0(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
        sub_1C9063ACC();
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v22, v51);
      }

      else
      {
        v52 = v35;
        sub_1C9061D7C();

        swift_willThrow();
        objc_autoreleasePoolPop(v32);
      }

      return;
    case 5:
    case 6:
    case 7:
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_13_24();
      goto LABEL_13;
    case 8:
      v59[0] = *v9;
      ValueSearchPredicate.protobuf(useCase:)(v22);

      OUTLINED_FUNCTION_13_24();
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    default:
      sub_1C8F00A58(v9, v5, type metadata accessor for ComparisonPredicate);
      v28 = v58;
      ComparisonPredicate.protobuf(useCase:)();
      sub_1C8F00B10(v5, type metadata accessor for ComparisonPredicate);
      if (v28)
      {
        return;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_47();
      v30 = v19;
LABEL_23:
      sub_1C8F00A58(v30, v22, v29);
      goto LABEL_14;
  }
}

uint64_t AnyPredicate.init(protobuf:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v168 = a2;
  v3 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v159 = (v5 - v6);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_147();
  v161 = v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoStringSearchPredicate(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v158 = (v13 - v12);
  v14 = OUTLINED_FUNCTION_111();
  v15 = type metadata accessor for ToolKitProtoSearchableItemPredicate(v14);
  v16 = OUTLINED_FUNCTION_9(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v162 = (v17 - v18);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_147();
  v160 = v20;
  v21 = OUTLINED_FUNCTION_111();
  v22 = type metadata accessor for ToolKitProtoIdSearchPredicate(v21);
  v23 = OUTLINED_FUNCTION_9(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v166 = v24 - v25;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_147();
  v165 = v27;
  v28 = OUTLINED_FUNCTION_111();
  v29 = type metadata accessor for ToolKitProtoCompoundPredicate(v28);
  v30 = OUTLINED_FUNCTION_9(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  v163 = (v31 - v32);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_147();
  v164 = v34;
  v35 = OUTLINED_FUNCTION_111();
  v167 = type metadata accessor for AnyPredicate(v35);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  v156 = (v37 - v38);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v39);
  v157 = (&v153 - v40);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v153 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v155 = &v153 - v45;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v153 - v47;
  v49 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v50 = OUTLINED_FUNCTION_9(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25();
  v53 = (v51 - v52);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v153 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v58 = OUTLINED_FUNCTION_9(v57);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v153 - v59;
  v61 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_25();
  v65 = v63 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v153 - v67;
  sub_1C8F00980(a1, v60);
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
  {
    v154 = a1;
    OUTLINED_FUNCTION_3_47();
    sub_1C8F00A58(v60, v68, v77);
    sub_1C8F00AB4(v68, v65, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v101 = OUTLINED_FUNCTION_152();
        v102 = v164;
        sub_1C8F00A58(v101, v164, v103);
        v104 = v163;
        sub_1C8F00AB4(v102, v163, type metadata accessor for ToolKitProtoCompoundPredicate);
        if (*v104)
        {
          v145 = v169;
          v170 = *v104 != 1;
          type metadata accessor for ComparisonPredicate(0);
          OUTLINED_FUNCTION_8_38();
          sub_1C8F00BB0(v146, v147, &protocol conformance descriptor for ComparisonPredicate);

          v148 = sub_1C90641EC();
          if (!v145)
          {
            v150 = v148;
            OUTLINED_FUNCTION_0_66();
            sub_1C8F00B10(v154, v151);
            sub_1C8F00B10(v104, type metadata accessor for ToolKitProtoCompoundPredicate);
            sub_1C8F00B10(v102, type metadata accessor for ToolKitProtoCompoundPredicate);
            OUTLINED_FUNCTION_1_61();
            sub_1C8F00B10(v68, v152);
            v134 = v155;
            *v155 = v170;
            *(v134 + 1) = v150;
LABEL_27:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_2_58();
            v84 = v134;
            return sub_1C8F00A58(v84, v168, v83);
          }
        }

        else
        {
          v140 = OUTLINED_FUNCTION_94();
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(v140, v141);
          v143 = sub_1C8D4F674(&qword_1EC314518, &dword_1EC314510, &qword_1C9074268);
          OUTLINED_FUNCTION_89(v143);
          *v144 = &type metadata for CompoundPredicate.Operator;
          (*(*(v142 - 8) + 104))(v144, *MEMORY[0x1E69E08A8], v142);
          swift_willThrow();
        }

        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v154, v149);
        sub_1C8F00B10(v104, type metadata accessor for ToolKitProtoCompoundPredicate);
        v125 = v102;
        v126 = type metadata accessor for ToolKitProtoCompoundPredicate;
        goto LABEL_25;
      case 2u:
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v154, v85);
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v68, v86);
        v87 = OUTLINED_FUNCTION_152();
        v88 = v158;
        sub_1C8F00A58(v87, v158, v89);
        v91 = *v88;
        v90 = v88[1];

        sub_1C8F00B10(v88, type metadata accessor for ToolKitProtoStringSearchPredicate);
        v92 = v168;
        *v168 = v91;
        v92[1] = v90;
        return swift_storeEnumTagMultiPayload();
      case 3u:
        v93 = OUTLINED_FUNCTION_152();
        v94 = v165;
        sub_1C8F00A58(v93, v165, v95);
        v96 = v94;
        v97 = v166;
        sub_1C8F00AB4(v96, v166, type metadata accessor for ToolKitProtoIdSearchPredicate);
        v98 = *(v97 + 16);
        if (v98[2])
        {
          v100 = v98[4];
          v99 = v98[5];
        }

        else
        {
          v100 = 0;
          v99 = 0xE000000000000000;
        }

        v127 = v154;

        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v127, v128);
        sub_1C8F00B10(v165, type metadata accessor for ToolKitProtoIdSearchPredicate);
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v68, v129);
        sub_1C8F00B10(v166, type metadata accessor for ToolKitProtoIdSearchPredicate);
        *v43 = v100;
        v43[1] = v99;
        v43[2] = v98;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_58();
        return sub_1C8F00A58(v43, v168, v130);
      case 4u:
      case 5u:
      case 7u:
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v154, v105);
        OUTLINED_FUNCTION_4_41();
        sub_1C8F00B10(v68, v106);
        sub_1C8F00B10(v65, v53);
        return swift_storeEnumTagMultiPayload();
      case 6u:
        v107 = OUTLINED_FUNCTION_152();
        v108 = v160;
        sub_1C8F00A58(v107, v160, v109);
        v110 = v162;
        v111 = sub_1C8F00AB4(v108, v162, type metadata accessor for ToolKitProtoSearchableItemPredicate);
        v112 = *v110;
        v113 = v110[1];
        v114 = MEMORY[0x1CCA82A80](v111);
        v115 = v169;
        v116 = sub_1C8D00800(v112, v113);
        if (v115)
        {
          objc_autoreleasePoolPop(v114);
          OUTLINED_FUNCTION_0_66();
          sub_1C8F00B10(v154, v117);
          sub_1C8F00B10(v108, type metadata accessor for ToolKitProtoSearchableItemPredicate);
          OUTLINED_FUNCTION_1_61();
          sub_1C8F00B10(v68, v118);
          v75 = v110;
          v74 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
          return sub_1C8F00B10(v75, v74);
        }

        v131 = v116;
        objc_autoreleasePoolPop(v114);
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v154, v132);
        sub_1C8F00B10(v108, type metadata accessor for ToolKitProtoSearchableItemPredicate);
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v68, v133);
        sub_1C8F00B10(v110, type metadata accessor for ToolKitProtoSearchableItemPredicate);
        v134 = v157;
        *v157 = v131;
        goto LABEL_27;
      case 8u:
        v119 = OUTLINED_FUNCTION_152();
        v120 = v161;
        sub_1C8F00A58(v119, v161, v121);
        v122 = v159;
        sub_1C8F00AB4(v120, v159, type metadata accessor for ToolKitProtoValueSearchPredicate);
        v123 = v169;
        ValueSearchPredicate.init(protobuf:)(v122, &v171);
        if (!v123)
        {
          OUTLINED_FUNCTION_0_66();
          sub_1C8F00B10(v154, v135);
          v136 = OUTLINED_FUNCTION_7_39();
          sub_1C8F00B10(v136, v137);
          OUTLINED_FUNCTION_1_61();
          sub_1C8F00B10(v68, v138);
          v139 = v156;
          *v156 = v171;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_58();
          v84 = v139;
          return sub_1C8F00A58(v84, v168, v83);
        }

        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v154, v124);
        v125 = OUTLINED_FUNCTION_7_39();
LABEL_25:
        sub_1C8F00B10(v125, v126);
        OUTLINED_FUNCTION_1_61();
        v75 = v68;
        return sub_1C8F00B10(v75, v74);
      default:
        v78 = OUTLINED_FUNCTION_152();
        sub_1C8F00A58(v78, v56, v79);
        sub_1C8F00AB4(v56, v53, type metadata accessor for ToolKitProtoComparisonPredicate);
        v80 = v169;
        ComparisonPredicate.init(protobuf:)();
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v154, v81);
        sub_1C8F00B10(v56, type metadata accessor for ToolKitProtoComparisonPredicate);
        OUTLINED_FUNCTION_1_61();
        result = sub_1C8F00B10(v68, v82);
        if (v80)
        {
          return result;
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_58();
        v84 = v48;
        return sub_1C8F00A58(v84, v168, v83);
    }
  }

  sub_1C8F009F0(v60);
  v69 = OUTLINED_FUNCTION_94();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
  v72 = sub_1C8D4F674(&qword_1EC319AB0, &qword_1EC319AA8, &qword_1C90A5BF0);
  OUTLINED_FUNCTION_89(v72);
  *v73 = v61;
  (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E08B0], v71);
  swift_willThrow();
  OUTLINED_FUNCTION_0_66();
  v75 = a1;
  return sub_1C8F00B10(v75, v74);
}

uint64_t sub_1C8F008F0(uint64_t a1, uint64_t a2)
{
  sub_1C8F009F0(a1);
  sub_1C8F00AB4(a2, a1, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v4 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_1C8F00980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8F009F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8F00A58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t sub_1C8F00AB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t sub_1C8F00B10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8F00BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ContainerDefinition.Device.protobuf(useCase:)()
{
  v0 = OUTLINED_FUNCTION_49_14();
  type metadata accessor for ToolKitProtoContainerDefinition.Device(v0);
  OUTLINED_FUNCTION_20_24();
  sub_1C8F073B0(v1, v2, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();
}

void ParameterDefinition.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v11 = v10;
  v45 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_50_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_290();
  v19 = v11[1];
  v44 = *v11;
  v21 = v11[2];
  v20 = v11[3];
  v23 = v11[7];
  v22 = v11[8];
  v24._rawValue = v11[6];

  ParameterDefinition.ParameterFlags.init(protobuf:)(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_6_37();
  }

  else
  {
    v43 = v21;
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
    v26 = sub_1C8D63FCC();
    sub_1C8D1FD40(v26, v27, v28);
    OUTLINED_FUNCTION_43_17();
    v29 = sub_1C906351C();
    sub_1C8F069D0(v29, v30, v31);

    v32 = sub_1C90641EC();
    v33 = sub_1C8D63FCC();
    sub_1C8F06A24(v33, v34, v35);
    OUTLINED_FUNCTION_43_17();
    v36 = sub_1C906350C();
    sub_1C8F06A78(v36, v37, v38);

    v42 = sub_1C90641EC();
    v39 = sub_1C8D63FCC();
    sub_1C8F06ACC(v39, v40, v41);
    OUTLINED_FUNCTION_43_17();
    sub_1C906350C();
    OUTLINED_FUNCTION_6_37();
    *(v45 + 72) = v46;
    *v45 = v44;
    *(v45 + 8) = v19;
    *(v45 + 16) = v43;
    *(v45 + 24) = v20;
    *(v45 + 32) = v23;
    *(v45 + 40) = v22;
    *(v45 + 48) = a10;
    *(v45 + 56) = v51;
    *(v45 + 64) = v32;
    *(v45 + 88) = v47;
    *(v45 + 104) = v48;
    *(v45 + 112) = v49;
    *(v45 + 120) = v50;
    *(v45 + 128) = v42;
  }

  OUTLINED_FUNCTION_198();
}

void ParameterDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v97 = v1;
  v82 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  v81 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v95 = v8;
  OUTLINED_FUNCTION_111();
  v87 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v86 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v18 = v0[1];
  v94 = *v0;
  v19 = v0[3];
  v93 = v0[2];
  v20 = v0[5];
  v92 = v0[4];
  v21 = v0[7];
  v88 = v0[6];
  v22 = v0[9];
  v96 = v0[8];
  v85 = v22;
  v23 = v0[11];
  v91 = v0[10];
  v84 = v23;
  v24 = v0[13];
  v83 = v0[12];
  v90 = v24;
  v25 = v0[15];
  v89 = v0[14];
  v26 = v0[16];
  v98 = v21;

  v27 = v97;
  TypeInstance.protobuf(useCase:)();
  if (v27)
  {
  }

  else
  {
    v76 = v21;
    v77 = v26;
    v78 = v25;
    v97 = v20;
    v80 = v19;
    v79 = v18;

    v28 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
    sub_1C8F06B20(v32, v33, v34);
    v35 = v96;
    v74 = sub_1C90641FC();
    v75 = 0;
    v36 = v86;
    v37 = v87;
    (*(v86 + 104))(v13, *MEMORY[0x1E69E0750], v87);
    v38 = sub_1C906347C();
    (*(v36 + 8))(v13, v37);
    if (v38)
    {
      v96 = v28;
      v115 = MEMORY[0x1E69E7CC0];
      v39 = v82;
      v40 = v95;
      v41 = v88;
    }

    else
    {
      v87 = v17;
      v98 = v94;
      v99 = v79;
      v100 = v93;
      v101 = v80;
      v102 = v92;
      v103 = v97;
      v41 = v88;
      v104 = v88;
      v105 = v76;
      v106 = v35;
      v107 = v85;
      v108 = v91;
      v109 = v84;
      v110 = v83;
      v111 = v90;
      v112 = v89;
      v113 = v78;
      v114 = v77;
      v51 = v75;
      ParameterDefinition.fetchSampleInvocations(cacheResults:)();
      if (v51)
      {
        sub_1C8D16D78(v87, &qword_1EC312A58, &unk_1C9074CC0);

        goto LABEL_14;
      }

      v96 = v28;
      sub_1C8D72F00(v52, v53, v54);
      v73 = sub_1C90641FC();
      v39 = v82;
      v40 = v95;
      v75 = 0;
      v115 = v73;
    }

    v98 = v41;
    v88 = ParameterDefinition.ParameterFlags.protobuf(useCase:)();
    v42 = v81;
    v43 = v90;
    v44 = v89;
    if (v89)
    {
      v45 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);

      v46 = v78;

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v40 = v43;
      v40[1] = v44;
      v40[2] = v46;
      OUTLINED_FUNCTION_150();
      v50 = v45;
    }

    else
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
      OUTLINED_FUNCTION_115();
    }

    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    v55 = v80;
    v56 = v91;
    if (v91)
    {
      v57 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);

      v58 = v83;

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v42 = v85;
      v42[1] = v56;
      v42[2] = v84;
      v42[3] = v58;
      v59 = v42;
      v60 = 0;
    }

    else
    {
      v57 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
      v59 = v42;
      v60 = 1;
    }

    __swift_storeEnumTagSinglePayload(v59, v60, 1, v57);
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v96);
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v57);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    v71 = v79;
    *v39 = v94;
    v39[1] = v71;
    v39[2] = v93;
    v39[3] = v55;
    v72 = v97;
    v39[7] = v92;
    v39[8] = v72;
    sub_1C8D7300C();
    v39[4] = v74;
    v39[5] = v115;
    v39[6] = v88;
    sub_1C8D7300C();
    sub_1C8D7300C();
  }

LABEL_14:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

ToolKit::ToolFlag __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolFlag.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_29_20();
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v3 = OUTLINED_FUNCTION_44_20();
    sub_1C8D0973C(v3, v4, v5);
    v6 = v14;
    do
    {
      OUTLINED_FUNCTION_41_17();
      if (v8)
      {
        v10 = OUTLINED_FUNCTION_46_13(v7);
        sub_1C8D0973C(v10, v11, v12);
        v6 = v14;
      }

      OUTLINED_FUNCTION_47_15();
    }

    while (!v9);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  if (*(v6 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_18_26();
    }

    while (!v9);
  }

  *v1 = 0;
  return result;
}

uint64_t ToolFlag.protobuf(useCase:)()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(&unk_1F489B778 + v1 + 32);
    if ((v4 & ~v2) == 0)
    {
      v5 = 0;
      switch(v4)
      {
        case 0:
          goto LABEL_16;
        case 1:
          v5 = 1;
          goto LABEL_16;
        case 2:
          v5 = 2;
          goto LABEL_16;
        case 3:
        case 5:
        case 6:
        case 7:
          break;
        case 4:
          v5 = 3;
          goto LABEL_16;
        case 8:
          v5 = 4;
          goto LABEL_16;
        default:
          switch(v4)
          {
            case 16:
              v5 = 5;
              break;
            case 32:
              v5 = 6;
              break;
            case 64:
              v5 = 7;
              break;
            case 128:
              v5 = 8;
              break;
            default:
              goto LABEL_21;
          }

LABEL_16:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = OUTLINED_FUNCTION_16_26();
            sub_1C8D01A04(v7, v8, v9, v10);
            v3 = v11;
          }

          v6 = *(v3 + 16);
          if (v6 >= *(v3 + 24) >> 1)
          {
            OUTLINED_FUNCTION_27_17();
            sub_1C8D01A04(v12, v13, v14, v15);
            v3 = v16;
          }

          *(v3 + 16) = v6 + 1;
          *(v3 + v6 + 32) = v5;
          break;
      }
    }

LABEL_21:
    v1 += 8;
  }

  while (v1 != 64);
  return v3;
}

uint64_t sub_1C8F01B44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolFlag.protobuf(useCase:)();
  *a1 = result;
  return result;
}

ToolKit::ToolVisibilityFlag __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolVisibilityFlag.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_29_20();
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v3 = OUTLINED_FUNCTION_44_20();
    sub_1C8D0976C(v3, v4, v5);
    v6 = v14;
    do
    {
      OUTLINED_FUNCTION_41_17();
      if (v8)
      {
        v10 = OUTLINED_FUNCTION_46_13(v7);
        sub_1C8D0976C(v10, v11, v12);
        v6 = v14;
      }

      OUTLINED_FUNCTION_47_15();
    }

    while (!v9);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  if (*(v6 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_18_26();
    }

    while (!v9);
  }

  *v1 = 0;
  return result;
}

uint64_t ToolVisibilityFlag.protobuf(useCase:)()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1C8D01A2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_27_17();
    sub_1C8D01A2C(v8, v9, v10, v11);
    v2 = v12;
  }

  *(v2 + 16) = v4 + 1;
  *(v2 + v4 + 32) = 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_16_26();
      sub_1C8D01A2C(v13, v14, v15, v16);
      v2 = v17;
    }

    v5 = *(v2 + 16);
    if (v5 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27_17();
      sub_1C8D01A2C(v18, v19, v20, v21);
      v2 = v22;
    }

    *(v2 + 16) = v5 + 1;
    *(v2 + v5 + 32) = 2;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_16_26();
      sub_1C8D01A2C(v23, v24, v25, v26);
      v2 = v27;
    }

    v6 = *(v2 + 16);
    if (v6 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27_17();
      sub_1C8D01A2C(v28, v29, v30, v31);
      v2 = v32;
    }

    *(v2 + 16) = v6 + 1;
    *(v2 + v6 + 32) = 3;
  }

  return v2;
}

uint64_t sub_1C8F01DC8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolVisibilityFlag.protobuf(useCase:)();
  *a1 = result;
  return result;
}

void ToolDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v115 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v117 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v118 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v116 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v24);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  v26 = *v2;
  v27 = v2[1];
  v28 = v2[3];
  v113 = v2[2];
  v114 = v26;
  v112 = *(v2 + 32);
  v134 = v2;
  sub_1C8F06C40(v29, v30, v31);

  v32 = sub_1C90641EC();
  if (v0)
  {
    OUTLINED_FUNCTION_1_62();
    sub_1C8F07110();
  }

  else
  {
    v33 = v32;
    v108 = v20;
    v109 = v23;
    v110 = v28;
    v111 = v27;

    v34 = sub_1C90641EC();
    v107 = v33;
    v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
    v36 = sub_1C8D63FCC();
    sub_1C8D1FD40(v36, v37, v38);
    sub_1C906351C();
    v106 = v133;
    v39 = (v2 + v35[20]);
    v41 = *v39;
    v40 = v39[1];
    v42 = sub_1C8D63FCC();
    sub_1C8F06C94(v42, v43, v44);

    OUTLINED_FUNCTION_55_11();
    sub_1C906351C();
    v105 = v41;
    v109 = v40;
    memcpy(v131, v132, 0x61uLL);
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_55_11();
    sub_1C906350C();
    memcpy(v129, v130, 0x61uLL);

    v45 = sub_1C90641EC();
    v103 = v34;
    v104 = v45;
    v46 = *(v134 + v35[22]);
    v47 = *(v134 + v35[27]);
    v99 = *(v134 + v35[28]);
    v100 = v46;
    v48 = v35[30];
    v101 = *(v134 + v35[29]);
    v102 = v47;
    v49 = v134 + v48;
    v50 = *(v134 + v48);
    v51 = *(v49 + 8);
    v128[0] = v46;
    v128[1] = v47;
    v128[2] = v99;
    v128[3] = v101;
    *&v128[4] = v50;
    *(&v128[4] + 1) = v51;
    type metadata accessor for ToolIcon(0);
    v108 = 0;
    sub_1C8D63FCC();
    *&v102 = *(&v101 + 1);
    sub_1C8F073B0(&qword_1EC319AF0, type metadata accessor for ToolIcon, &protocol conformance descriptor for ToolIcon);

    v52 = v108;
    v53 = sub_1C906350C();
    if (v52)
    {
      OUTLINED_FUNCTION_1_62();
      sub_1C8F07110();
      sub_1C8E87298(v128);
      sub_1C8D16D78(v129, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8CC15FC(v131);

      OUTLINED_FUNCTION_35_19();
    }

    else
    {
      sub_1C8F06CE8(v53, v54, v55);

      v118 = sub_1C90641EC();
      v56 = v134[7];
      v57 = sub_1C8D63FCC();
      sub_1C8F06D3C(v57, v58, v59);

      v60 = sub_1C906350C();
      v62 = v124;
      v61 = v125;
      v64 = v126;
      v63 = v127;
      sub_1C8D1FC54(v60, v65, v66);

      v117 = sub_1C90641EC();
      v67 = v61;
      *&v101 = v64;
      *&v102 = v63;

      v69.rawValue = ToolFlag.init(protobuf:)(v68).rawValue;
      *&v100 = v123;
      sub_1C8F06D90(v69.rawValue, v70, v71);

      v72 = sub_1C90641EC();
      if (v73)
      {

        OUTLINED_FUNCTION_35_19();

        sub_1C8CC15FC(v131);
        sub_1C8D16D78(v129, &qword_1EC312EF8, &unk_1C90839D0);
        sub_1C8E87298(v128);

        OUTLINED_FUNCTION_63_13();

        OUTLINED_FUNCTION_1_62();
        sub_1C8F07110();
        sub_1C8D16D78(v119, &qword_1EC3144B8, &qword_1C90839E0);
      }

      else
      {
        v74 = v72;
        v98 = *(v134 + 80);

        v76.rawValue = ToolVisibilityFlag.init(protobuf:)(v75).rawValue;
        v97 = v122;
        v77 = v134[15];
        sub_1C8F06A78(v76.rawValue, v78, v79);
        *&v99 = v77;

        v80 = sub_1C90641EC();
        v108 = v81;
        if (v81)
        {

          OUTLINED_FUNCTION_35_19();

          sub_1C8CC15FC(v131);
          sub_1C8D16D78(v129, &qword_1EC312EF8, &unk_1C90839D0);
          sub_1C8E87298(v128);

          OUTLINED_FUNCTION_63_13();

          OUTLINED_FUNCTION_1_62();
          sub_1C8F07110();
          sub_1C8D16D78(v119, &qword_1EC3144B8, &qword_1C90839E0);
        }

        else
        {
          v82 = v80;
          v83 = 0x402010003uLL >> (8 * v112);
          sub_1C8D63FCC();
          v84 = v115;
          v85 = v111;
          *v115 = v114;
          v84[1] = v85;
          v86 = v110;
          v84[2] = v113;
          v84[3] = v86;
          *(v84 + 32) = v83;
          v87 = v103;
          v84[5] = v107;
          v84[6] = v87;
          v88 = v105;
          v84[7] = v106;
          v84[8] = v88;
          v84[9] = v109;
          memcpy(v84 + 24, v131, 0x61uLL);
          memcpy(v84 + 37, v129, 0x61uLL);
          v84[50] = v104;
          memcpy(v84 + 51, v128, 0x50uLL);
          v89 = type metadata accessor for ToolDefinition(0);
          v90 = v116;
          sub_1C8D63FCC();
          *(v84 + v89[17]) = v118;
          *(v84 + v89[18]) = v56;
          v91 = (v84 + v89[19]);
          *v91 = v62;
          v91[1] = v67;
          v92 = v102;
          v91[2] = v101;
          v91[3] = v92;
          *(v84 + v89[20]) = v117;
          *(v84 + v89[21]) = v100;
          *(v84 + v89[23]) = v74;
          *(v84 + v89[22]) = v98;
          v93 = (v84 + v89[24]);
          *v93 = 0;
          v93[1] = 0;
          *(v84 + v89[25]) = v97;
          *(v84 + v89[26]) = v99;
          *(v84 + v89[27]) = v82;
          memcpy(v120, v131, sizeof(v120));
          sub_1C8CC1340(v131, v121);
          sub_1C8CC139C();
          OUTLINED_FUNCTION_1_62();
          sub_1C8F07110();
          sub_1C8D16D78(v90, &qword_1EC3144B8, &qword_1C90839E0);
          OUTLINED_FUNCTION_56_10();
          sub_1C8D16D78(v94, v95, v96);
          memcpy(v84 + 10, v121, 0x70uLL);
        }
      }
    }
  }

  OUTLINED_FUNCTION_198();
}

void ToolDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v205 = v1;
  v206 = v2;
  v196 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v198 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v197 = v165 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  v199 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v203 = v15;
  OUTLINED_FUNCTION_111();
  sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v201 = v17;
  v202 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v200 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v204 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
  OUTLINED_FUNCTION_9(v23);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v165 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v27);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v165 - v29;
  v31 = *v0;
  v32 = v0[1];
  v33 = v0[3];
  v194 = v0[2];
  v195 = v31;
  v34 = *(v0 + 32);
  v38 = sub_1C8F06DE4(v35, v36, v37);

  v39 = v205;
  v40 = sub_1C90641FC();
  if (v39)
  {
  }

  else
  {
    v189 = v34;
    v190 = v38;
    v192 = v40;
    v193 = v32;
    v205 = v33;
    v191 = v26;

    TypeInstance.protobuf(useCase:)();

    type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    v186 = v41;
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
    v187 = v0[8];
    memcpy(v213, v0 + 10, sizeof(v213));
    v188 = MEMORY[0x48];
    if (v213[1])
    {
      v207[0] = v213[0];
      v207[1] = v213[1];
      memcpy(&v207[2], v0 + 12, 0x60uLL);

      sub_1C8D63FCC();
      v45 = v191;
      AppDefinition.protobuf(useCase:)(v191);
      memcpy(v208, v207, sizeof(v208));
      sub_1C8E8732C(v208);
      type metadata accessor for ToolKitProtoAppDefinition(0);
      v46 = v45;
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    }

    else
    {
      type metadata accessor for ToolKitProtoAppDefinition(0);
      v46 = v191;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    }

    v55 = v0[51];
    v56 = v0[52];
    v57 = type metadata accessor for ToolDefinition(0);
    sub_1C8F06E38(v57, v58, v59);

    v60 = sub_1C90641FC();
    v179 = v55;
    v61 = v30;
    v184 = v56;
    v185 = 0;
    v62 = *(v0 + *(v57 + 72));
    v63 = (v0 + *(v57 + 76));
    v64 = v63[1];
    v65 = v57;
    v182 = v60;
    v183 = v62;
    if (v64)
    {
      v66 = v63[2];
      v67 = v63[3];
      v180 = *v63;
      v181 = v66;
      v68 = v57;
      v69 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);

      v70 = v204;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v71 = v181;
      *v70 = v180;
      v70[1] = v64;
      v70[2] = v71;
      v70[3] = v67;
      v72 = v61;
      v46 = v191;
      OUTLINED_FUNCTION_150();
      v73 = v69;
      v65 = v68;
      v77 = __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
    }

    else
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);

      v72 = v61;
    }

    sub_1C8D531CC(v77, v78, v79);
    v84 = v185;
    v85 = sub_1C90641FC();
    if (v84)
    {

      sub_1C8D16D78(v46, &qword_1EC3147C0, &qword_1C9074E98);
      sub_1C8D16D78(v72, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C8D16D78(v204, &qword_1EC3147C8, &qword_1C9074EA0);
    }

    else
    {
      v180 = v72;
      v181 = v85;
      v208[0] = **(v65 + 84);
      v86 = ToolFlag.protobuf(useCase:)();
      v178 = v65;
      v177 = **(v65 + 88);
      v88 = v200;
      v87 = v201;
      v89 = v202;
      (*(v201 + 104))(v200, *MEMORY[0x1E69E0750], v202);
      v90 = sub_1C906347C();
      v91 = (*(v87 + 8))(v88, v89);
      if (v90)
      {
        v202 = MEMORY[0x1E69E7CC0];
        v94 = v203;
      }

      else
      {
        v94 = v203;
        if (qword_1EDA631E8 != -1)
        {
          swift_once();
        }

        ToolDefinition.fetchSampleInvocations(assistantSchemaProvider:cacheResults:)();
        sub_1C8D72F00(v98, v99, v100);
        v202 = sub_1C90641FC();
      }

      sub_1C8F06E8C(v91, v92, v93);
      v201 = sub_1C90641FC();
      v95 = v199;
      sub_1C8D63FCC();
      v96 = type metadata accessor for ToolIcon(0);
      if (__swift_getEnumTagSinglePayload(v95, 1, v96) == 1)
      {
        sub_1C8D16D78(v95, &qword_1EC3144B8, &qword_1C90839E0);
        v97 = 1;
      }

      else
      {
        ToolIcon.protobuf(useCase:)(v94);
        sub_1C8F07110();
        v97 = 0;
      }

      v101 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
      __swift_storeEnumTagSinglePayload(v94, v97, 1, v101);
      v102 = sub_1C90641FC();
      v175 = v101;
      v190 = v102;
      v199 = v86;
      v185 = 0;
      memcpy(v207, 0xC0, 0x61uLL);
      memcpy(v212, 0xC0, 0x61uLL);
      sub_1C8CC1340(v207, v210);
      ContainerDefinition.protobuf(useCase:)(v197);
      memcpy(v208, v212, 0x61uLL);
      sub_1C8CC15FC(v208);
      v103 = type metadata accessor for ToolKitProtoContainerDefinition(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
      if (MEMORY[0x130])
      {
        v209[0] = MEMORY[0x128];
        v209[1] = MEMORY[0x130];
        memcpy(&v209[2], 0x138, 0x51uLL);
        v210[0] = MEMORY[0x128];
        v210[1] = MEMORY[0x130];
        memcpy(v211, 0x138, sizeof(v211));
        sub_1C8CC1340(v210, v212);
        v107 = v198;
        ContainerDefinition.protobuf(useCase:)(v198);
        memcpy(v212, v209, 0x61uLL);
        sub_1C8CC15FC(v212);
        v108 = v107;
        v109 = 0;
      }

      else
      {
        v108 = v198;
        v109 = 1;
      }

      __swift_storeEnumTagSinglePayload(v108, v109, 1, v103);
      v110 = v178;
      v212[0] = **(v178 + 100);
      v176 = ToolVisibilityFlag.protobuf(useCase:)();
      v111 = MEMORY[0x1B0];
      v112 = MEMORY[0x1C0];
      v173 = MEMORY[0x1B8];
      v174 = MEMORY[0x1A8];
      v113 = MEMORY[0x1D0];
      v114 = MEMORY[0x1E0];
      v171 = MEMORY[0x1D8];
      v172 = MEMORY[0x1C8];
      v115 = **(v110 + 104);
      sub_1C8F06EE0(v176, v116, v117);
      v200 = v111;

      v118 = v185;
      v119 = sub_1C90641FC();
      v185 = v118;
      if (v118)
      {

        sub_1C8D16D78(v198, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C8D16D78(v197, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C8D16D78(v203, &qword_1EC3147D0, &qword_1C9074EA8);
        sub_1C8D16D78(v191, &qword_1EC3147C0, &qword_1C9074E98);
        sub_1C8D16D78(v180, &qword_1EC312A58, &unk_1C9074CC0);
        sub_1C8D16D78(v204, &qword_1EC3147C8, &qword_1C9074EA0);
      }

      else
      {
        v178 = 0x400030201uLL >> (8 * v189);
        v206 = v119;
        v120 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
        v189 = v112;
        v121 = v120;
        v165[1] = *(v120 + 76);
        v122 = v196;
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v186);
        v126 = v121[20];
        v165[0] = v121[21];
        v127 = (v122 + v126);
        type metadata accessor for ToolKitProtoAppDefinition(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
        v132 = v121[22];
        v186 = v113;
        v133 = (v122 + v132);
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v134, v135, v136, v137);
        v165[2] = v121[24];
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v138, v139, v140, v175);
        v175 = v121[25];
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v141, v142, v143, v103);
        v170 = v121[26];
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v144, v145, v146, v103);
        v147 = v121[28];
        v168 = (v122 + v121[27]);
        v169 = (v122 + v147);
        v148 = v121[30];
        v166 = (v122 + v121[29]);
        v167 = (v122 + v148);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        v149 = v193;
        v150 = v194;
        *v122 = v195;
        *(v122 + 8) = v149;
        v151 = v205;
        *(v122 + 16) = v150;
        *(v122 + 24) = v151;
        *(v122 + 32) = v178;
        *(v122 + 40) = v192;
        sub_1C8D7300C();
        v152 = v188;
        *v127 = v187;
        v127[1] = v152;
        sub_1C8D7300C();
        v153 = v184;
        *v133 = v179;
        v133[1] = v153;
        v154 = v183;
        *(v122 + 48) = v182;
        *(v122 + 56) = v154;
        sub_1C8D7300C();
        v155 = v199;
        *(v122 + 64) = v181;
        *(v122 + 72) = v155;
        *(v122 + 80) = v177;
        v156 = v201;
        *(v122 + 88) = v202;
        *(v122 + 96) = v156;
        sub_1C8D7300C();
        *(v122 + 104) = v190;
        sub_1C8D7300C();
        sub_1C8D7300C();
        *(v122 + 112) = v176;
        v158 = v168;
        v157 = v169;
        v159 = v200;
        *v168 = v174;
        v158[1] = v159;
        v160 = v189;
        *v157 = v173;
        v157[1] = v160;
        v162 = v166;
        v161 = v167;
        v163 = v186;
        *v166 = v172;
        v162[1] = v163;
        *v161 = v171;
        v161[1] = v114;
        v164 = v206;
        *(v122 + 120) = v115;
        *(v122 + 128) = v164;
      }
    }
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314800, &unk_1C9074EE8);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[3];
  v36 = v1[2];
  v37 = v5;
  v31 = v7;
  v32 = v6;
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[7];
  v34 = v1[6];
  v35 = v8;
  v11 = v1[9];
  v33 = v1[8];
  v30[0] = v11;
  v12 = v1[10];
  v13 = v1[11];
  v38 = *(v1 + 96);
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v1[13];
  v16 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v30[1] = v30;
  v39 = v14;
  v40 = v13;
  OUTLINED_FUNCTION_19_24();
  sub_1C8F073B0(v17, v18, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  v19 = v30[0];

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();

  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v16);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v26 = v32;
  *a1 = v37;
  *(a1 + 8) = v26;
  v27 = v31;
  *(a1 + 16) = v36;
  *(a1 + 24) = v27;
  v28 = v34;
  *(a1 + 32) = v35;
  *(a1 + 40) = v9;
  *(a1 + 48) = v28;
  *(a1 + 56) = v10;
  *(a1 + 64) = v33;
  *(a1 + 72) = v19;
  result = sub_1C8D7300C();
  *(a1 + 80) = v38;
  *(a1 + 88) = v15;
  return result;
}

uint64_t ToolDeprecationDefinition.protobuf(useCase:)()
{
  v5 = OUTLINED_FUNCTION_61_13();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(v5);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  v0[3] = v1;
  return result;
}

uint64_t ToolIcon.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v3 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  sub_1C8F06FB8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v10;
  v14 = v10[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(v10 + 8);
      if (v15 < 0)
      {
        v32 = *(v10 + 8);
        v16 = ToolSymbolIconColor.rawValue.getter();
        v18 = v26;
        v19 = 0;
        v21 = 0;
      }

      else
      {
        v31 = *(v10 + 8);
        v16 = ToolSymbolIconColor.rawValue.getter();
        v18 = v17;
        v30 = BYTE1(v15);
        v19 = ToolSymbolIconColor.rawValue.getter();
        v21 = v20;
      }

      type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v2 = v13;
      *(v2 + 8) = v14;
      *(v2 + 16) = (v15 & 0x8000) != 0;
      *(v2 + 24) = v16;
      *(v2 + 32) = v18;
      *(v2 + 40) = v19;
      *(v2 + 48) = v21;
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
      (*(v5 + 32))(v1, v10 + *(v22 + 48), v3);
      v23 = sub_1C9061E5C();
      v25 = v24;
      type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(0);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      (*(v5 + 8))(v1, v3);
      *v2 = v13;
      *(v2 + 8) = v14;
      *(v2 + 16) = v23;
      *(v2 + 24) = v25;
    }
  }

  else
  {
    *v2 = v13;
    *(v2 + 8) = v14;
  }

  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  MEMORY[0x1EEE9AC00](v27);
  v29[-2] = v2;
  sub_1C8F073B0(&qword_1EDA61010, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_1C9063ACC();
  OUTLINED_FUNCTION_5_43();
  return sub_1C8F07110();
}

uint64_t ContainerDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  v9 = MEMORY[0x1EEE9AC00](v4);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v32 = v1[3];
  v33 = v5;
  v8 = v1[4];
  v9.n128_u64[0] = v1[5];
  v34 = v9;
  v10 = v1[6];
  v11 = *(v1 + 56);
  v13 = v1[9];
  v12 = v1[10];
  v14 = v1[11];
  v35 = *(v1 + 96);
  v30 = 0x302010004uLL >> (8 * v11);
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v9.n128_u64[0] = v1[8];
  v31 = v9;
  v16 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v29 = &v29;
  v36 = v15;
  v37 = v14;
  OUTLINED_FUNCTION_20_24();
  sub_1C8F073B0(v17, v18, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();

  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v16);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v25 = v32;
  *a1 = v33;
  *(a1 + 8) = v6;
  *(a1 + 16) = v25;
  *(a1 + 24) = v8;
  *(a1 + 32) = v30;
  *&v26 = v34.n128_u64[0];
  *(&v26 + 1) = v10;
  *&v27 = v31.n128_u64[0];
  *(&v27 + 1) = v13;
  *(a1 + 48) = v26;
  *(a1 + 64) = v27;
  result = sub_1C8D7300C();
  *(a1 + 33) = v35;
  *(a1 + 40) = v7;
  return result;
}

uint64_t ToolDefinition.protobuf.getter()
{
  v1 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  (*(v3 + 104))(v0, *MEMORY[0x1E69E0760], v1);
  ToolDefinition.protobuf(useCase:)();
  return (*(v3 + 8))(v0, v1);
}

uint64_t ToolCategory.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v3 = *v1;
  v2 = v1[1];

  result = OUTLINED_FUNCTION_64_9();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

uint64_t ToolCategory.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t ToolDeprecationDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v2 = v1[1];
  *v0 = *v1;
  v0[1] = v2;
  v4 = v1[2];
  v3 = v1[3];

  result = OUTLINED_FUNCTION_64_9();
  v0[2] = v4;
  v0[3] = v3;
  return result;
}

void ToolIcon.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int16 a12)
{
  OUTLINED_FUNCTION_196();
  v100 = v14;
  v101 = v12;
  v16 = v15;
  v98 = sub_1C9061D9C();
  OUTLINED_FUNCTION_11();
  v96 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v97 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v21);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  v23 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(0);
  v24 = OUTLINED_FUNCTION_9(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v27 = (v26 - v25);
  v28 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v29 = OUTLINED_FUNCTION_9(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v99 = (v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F0, &qword_1C9074ED8);
  OUTLINED_FUNCTION_9(v32);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_35();
  v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(v34);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  v39 = (v37 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v95 - v41;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v35) != 1)
  {
    v95[1] = v16;
    sub_1C8F07010();
    sub_1C8F06FB8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v52 = v99;
        sub_1C8F07010();
        v54 = *(v52 + 3);
        v53 = *(v52 + 4);

        v55._countAndFlagsBits = v54;
        v55._object = v53;
        ToolSymbolIconColor.init(rawValue:)(v55);
        if (HIBYTE(a12) == 18)
        {
          v56 = OUTLINED_FUNCTION_288();
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
          v59 = sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
          v60 = OUTLINED_FUNCTION_6_3(v58, v59);
          OUTLINED_FUNCTION_54_11(v60, v61);
          *v62 = v54;
          v62[1] = v53;
          OUTLINED_FUNCTION_10_0();
          (*(v63 + 104))();
          swift_willThrow();

          OUTLINED_FUNCTION_3_48();
LABEL_8:
          sub_1C8F07110();
          OUTLINED_FUNCTION_9_31();
          OUTLINED_FUNCTION_5_43();
          goto LABEL_3;
        }

        if (v52[16])
        {
          OUTLINED_FUNCTION_3_48();
          sub_1C8F07110();
          OUTLINED_FUNCTION_5_43();
          sub_1C8F07110();
          v72 = HIBYTE(a12) | 0x8000;
        }

        else
        {
          v73 = *(v52 + 6);
          if (!v73)
          {
            v84 = OUTLINED_FUNCTION_94();
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(v84, v85);
            v87 = sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
            v88 = OUTLINED_FUNCTION_6_3(v86, v87);
            OUTLINED_FUNCTION_54_11(v88, v89);
            *v90 = MEMORY[0x1E69E6158];
            OUTLINED_FUNCTION_10_0();
            (*(v91 + 104))();
            swift_willThrow();
            OUTLINED_FUNCTION_3_48();
            sub_1C8F07110();
            OUTLINED_FUNCTION_9_31();
            OUTLINED_FUNCTION_5_43();
            goto LABEL_3;
          }

          v74 = *(v52 + 5);
          swift_bridgeObjectRetain_n();
          v75._countAndFlagsBits = v74;
          v75._object = v73;
          ToolSymbolIconColor.init(rawValue:)(v75);
          if (a12 == 18)
          {
            v76 = OUTLINED_FUNCTION_288();
            v78 = __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
            v79 = sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
            v80 = OUTLINED_FUNCTION_6_3(v78, v79);
            OUTLINED_FUNCTION_54_11(v80, v81);
            *v82 = v74;
            v82[1] = v73;
            OUTLINED_FUNCTION_10_0();
            (*(v83 + 104))();
            swift_willThrow();
            OUTLINED_FUNCTION_3_48();
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_3_48();
          sub_1C8F07110();
          OUTLINED_FUNCTION_5_43();
          sub_1C8F07110();
          v72 = _byteswap_ushort(a12);
        }

        v93 = *v52;
        v92 = *(v52 + 1);

        OUTLINED_FUNCTION_9_31();
        v94 = v100;
        *v100 = v93;
        v94[1] = v92;
        *(v94 + 8) = v72;
      }

      else
      {
        sub_1C8F07010();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
        v99 = v42;
        v66 = v27[1];
        v67 = v100;
        *v100 = *v27;
        v67[1] = v66;
        sub_1C9061EBC();
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
        (*(v96 + 104))(v97, *MEMORY[0x1E6968F70], v98);

        OUTLINED_FUNCTION_288();
        sub_1C9061E8C();
        OUTLINED_FUNCTION_3_48();
        sub_1C8F07110();
        sub_1C8F07110();
        OUTLINED_FUNCTION_5_43();
        sub_1C8F07110();
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_48();
      sub_1C8F07110();
      OUTLINED_FUNCTION_5_43();
      sub_1C8F07110();
      v64 = v39[1];
      v65 = v100;
      *v100 = *v39;
      v65[1] = v64;
    }

    type metadata accessor for ToolIcon(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_12;
  }

  sub_1C8D16D78(v13, &qword_1EC3147F0, &qword_1C9074ED8);
  v43 = OUTLINED_FUNCTION_94();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  v46 = sub_1C8D4F674(&qword_1EC319B18, &qword_1EC319B10, &qword_1C90A5C58);
  v47 = OUTLINED_FUNCTION_6_3(v45, v46);
  OUTLINED_FUNCTION_54_11(v47, v48);
  *v49 = v35;
  OUTLINED_FUNCTION_10_0();
  (*(v50 + 104))();
  swift_willThrow();
  OUTLINED_FUNCTION_3_48();
LABEL_3:
  sub_1C8F07110();
LABEL_12:
  OUTLINED_FUNCTION_198();
}

ToolKit::ParameterDefinition::ParameterFlags __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParameterDefinition.ParameterFlags.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_29_20();
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_44_20();
    sub_1C8D09854(v4, v5, v6);
    v7 = v14;
    v8 = *(v14 + 16);
    v9 = 32;
    do
    {
      v10 = *(v2 + v9);
      v11 = *(v14 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_1C8D09854(v11 > 1, v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      *(v14 + 8 * v8 + 32) = v10;
      ++v9;
      ++v8;
      --v3;
    }

    while (v3);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  if (*(v7 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_18_26();
    }

    while (!v12);
  }

  *v1 = 0;
  OUTLINED_FUNCTION_198();
  return result;
}

uint64_t ParameterDefinition.ParameterFlags.protobuf(useCase:)()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = off_1EDA60998;
  v3 = *(off_1EDA60998 + 2);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = 32;
  do
  {
    v6 = *&v2[v5];
    if ((v6 & ~v1) == 0 && v6 <= 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D015B0(0, *(v4 + 16) + 1, 1, v4);
        v4 = v10;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C8D015B0(v8 > 1, v9 + 1, 1, v4);
        v4 = v11;
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v6;
    }

    v5 += 8;
    --v3;
  }

  while (v3);

  return v4;
}

uint64_t ParameterDefinition.ToolMetadata.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  return result;
}

uint64_t ParameterDefinition.BooleanMetadata.protobuf(useCase:)()
{
  v5 = OUTLINED_FUNCTION_61_13();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(v5);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  v0[3] = v1;
  return result;
}

uint64_t ParameterDefinition.ToolMetadata.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];

  result = OUTLINED_FUNCTION_64_9();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  return result;
}

uint64_t ParameterDefinition.BooleanMetadata.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];

  result = OUTLINED_FUNCTION_64_9();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v5;
  v0[3] = v4;
  return result;
}

uint64_t sub_1C8F05158@<X0>(uint64_t *a1@<X8>)
{
  result = ParameterDefinition.ParameterFlags.protobuf(useCase:)();
  *a1 = result;
  return result;
}

void ParameterRelationshipDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v24 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[1];
  v21 = *v2;
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_1C8D16D78(v7, &qword_1EC312938, &unk_1C9074EC0);
    v12 = OUTLINED_FUNCTION_288();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v15 = sub_1C8D4F674(&qword_1EC319B28, &qword_1EC319B20, &qword_1C90A5C60);
    OUTLINED_FUNCTION_6_3(v14, v15);
    *v16 = v8;
    OUTLINED_FUNCTION_10_0();
    (*(v17 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_25_20();
  }

  else
  {
    sub_1C8F07010();
    sub_1C8F06FB8();

    ParameterRelationshipDefinition.Relation.init(protobuf:)();
    OUTLINED_FUNCTION_25_20();
    OUTLINED_FUNCTION_0_67();
    sub_1C8F07110();
    if (!v0)
    {
      v18 = v22;
      v19 = v23;
      *v24 = v21;
      *(v24 + 8) = v11;
      *(v24 + 16) = v18;
      *(v24 + 24) = v19;
      goto LABEL_5;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_198();
}

void ParameterRelationshipDefinition.Relation.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v110 = v2;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v4 = OUTLINED_FUNCTION_9(DoesNotContain);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_111();
  v6 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(v5);
  v7 = OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v109 = v12 - v11;
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(v13);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v108 = v17 - v16;
  v18 = OUTLINED_FUNCTION_111();
  v19 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(v18);
  v20 = OUTLINED_FUNCTION_9(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v21 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v22 = OUTLINED_FUNCTION_9(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  OUTLINED_FUNCTION_9(v23);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_35();
  v26 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v25);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v26) == 1)
  {
    sub_1C8D16D78(v1, &qword_1EC312928, &qword_1C9068D08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319B30, &qword_1C90A5C68);
    OUTLINED_FUNCTION_56_10();
    v32 = sub_1C8D4F674(v29, v30, v31);
    OUTLINED_FUNCTION_213(v32);
    *v33 = v26;
    OUTLINED_FUNCTION_10_0();
    (*(v34 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_67();
LABEL_18:
    sub_1C8F07110();
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
    sub_1C8F07010();
    sub_1C8F06FB8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_45_0();
        v83 = sub_1C8F07010();
        v86 = sub_1C8DDC4F8(v83, v84, v85);
        v89 = sub_1C8D4F068(v86, v87, v88);
        OUTLINED_FUNCTION_204_0(v89, v90, v91, v92, v93);
        v46 = sub_1C906436C();
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        if (!v0)
        {
          v47 = 32;
          goto LABEL_20;
        }

        break;
      case 2u:
        OUTLINED_FUNCTION_45_0();
        v60 = sub_1C8F07010();
        v63 = sub_1C8DDC4F8(v60, v61, v62);
        v66 = sub_1C8D4F068(v63, v64, v65);
        OUTLINED_FUNCTION_204_0(v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_30_22();
        v46 = sub_1C906436C();
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        if (v0)
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v106 = *(v108 + 8);
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        v47 = v106 | 0x40;
        goto LABEL_20;
      case 3u:
        OUTLINED_FUNCTION_45_0();
        v71 = sub_1C8F07010();
        v74 = sub_1C8DDC4F8(v71, v72, v73);
        v77 = sub_1C8D4F068(v74, v75, v76);
        OUTLINED_FUNCTION_204_0(v77, v78, v79, v80, v81);
        OUTLINED_FUNCTION_30_22();
        v82 = sub_1C906436C();
        if (v0)
        {
          goto LABEL_16;
        }

        v46 = v82;
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v107 = *(v109 + 8);
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        v47 = v107 | 0x60;
        goto LABEL_20;
      case 4u:
        OUTLINED_FUNCTION_45_0();
        v48 = sub_1C8F07010();
        v51 = sub_1C8DDC4F8(v48, v49, v50);
        v54 = sub_1C8D4F068(v51, v52, v53);
        OUTLINED_FUNCTION_204_0(v54, v55, v56, v57, v58);
        OUTLINED_FUNCTION_30_22();
        v59 = sub_1C906436C();
        if (v0)
        {
          goto LABEL_16;
        }

        v46 = v59;
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v47 = 0x80;
        goto LABEL_20;
      case 5u:
        OUTLINED_FUNCTION_45_0();
        v94 = sub_1C8F07010();
        v97 = sub_1C8DDC4F8(v94, v95, v96);
        v100 = sub_1C8D4F068(v97, v98, v99);
        OUTLINED_FUNCTION_204_0(v100, v101, v102, v103, v104);
        OUTLINED_FUNCTION_30_22();
        v105 = sub_1C906436C();
        if (v0)
        {
LABEL_16:
          OUTLINED_FUNCTION_0_67();
          sub_1C8F07110();
LABEL_17:
          sub_1C8F07110();
          OUTLINED_FUNCTION_2_59();
          goto LABEL_18;
        }

        v46 = v105;
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v47 = -96;
LABEL_20:
        *v110 = v46;
        *(v110 + 8) = v47;
        break;
      case 6u:
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v46 = 0;
        v47 = -64;
        goto LABEL_20;
      case 7u:
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v47 = -64;
        v46 = 1;
        goto LABEL_20;
      default:
        OUTLINED_FUNCTION_45_0();
        v35 = sub_1C8F07010();
        v38 = sub_1C8DDC4F8(v35, v36, v37);
        v41 = sub_1C8D4F068(v38, v39, v40);
        OUTLINED_FUNCTION_204_0(v41, v42, v43, v44, v45);
        OUTLINED_FUNCTION_30_22();
        v46 = sub_1C906436C();
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        if (v0)
        {
          break;
        }

        v47 = 0;
        goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_198();
}