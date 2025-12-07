unint64_t sub_266C64E64()
{
  result = qword_2800CA6E0;
  if (!qword_2800CA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6E0);
  }

  return result;
}

unint64_t sub_266C64EBC()
{
  result = qword_2800CA6E8;
  if (!qword_2800CA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6E8);
  }

  return result;
}

unint64_t sub_266C64F14()
{
  result = qword_2800CA6F0;
  if (!qword_2800CA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{
  *(v2 - 104) = v1;

  return sub_266DAB0DC();
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{

  return sub_266DAB0DC();
}

uint64_t OUTLINED_FUNCTION_8_3@<X0>(char a2@<W8>)
{
  *(v2 - 104) = a2;

  return sub_266DAB0FC();
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2)
{

  return sub_266DAB17C();
}

void *OUTLINED_FUNCTION_10_6()
{

  return sub_266DAB00C();
}

uint64_t *OUTLINED_FUNCTION_21_3()
{
  v3 = *(v1 - 112);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_1(v3);
}

uint64_t OUTLINED_FUNCTION_25_1@<X0>(uint64_t a1@<X8>)
{

  return sub_266C64D14(v2 + v3, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_36_1@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_266DAB02C();
}

uint64_t OUTLINED_FUNCTION_37_0@<X0>(uint64_t a1@<X8>)
{

  return sub_266C64D14(v2 + v3, v1 + a1);
}

uint64_t sub_266C652B0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA6F8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA6F8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Friend.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Friend.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Friend.contactUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Friend.contactHandles.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t type metadata accessor for Friend(uint64_t a1)
{
  result = qword_2800CA760;
  if (!qword_2800CA760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Friend.friendLocation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Friend(0) + 40);

  return sub_266C65690(a1, v3);
}

uint64_t sub_266C65690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Friend.init(identifier:displayName:contactUUID:contactHandles:sharesLocation:followsMyLocation:friendLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v18 = *(type metadata accessor for Friend(0) + 40);
  type metadata accessor for FriendLocation(0);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;

  return sub_266C65690(a11, a9 + v18);
}

void static Friend.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FriendLocation(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA718, &qword_266DB1968);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v16 || (sub_266DAB17C() & 1) != 0)
  {
    v17 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v17 || (sub_266DAB17C() & 1) != 0)
    {
      v18 = *(a1 + 40);
      v19 = *(a2 + 40);
      if (v18)
      {
        if (!v19)
        {
          goto LABEL_32;
        }

        v20 = *(a1 + 32) == *(a2 + 32) && v18 == v19;
        if (!v20 && (sub_266DAB17C() & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v19)
      {
        goto LABEL_32;
      }

      if ((sub_266C65B10(*(a1 + 48), *(a2 + 48)) & 1) != 0 && *(a1 + 56) == *(a2 + 56) && *(a1 + 57) == *(a2 + 57))
      {
        v21 = *(type metadata accessor for Friend(0) + 40);
        v22 = *(v12 + 48);
        sub_266C67BE8(a1 + v21, v15, &qword_2800CA710, &qword_266DB6040);
        sub_266C67BE8(a2 + v21, &v15[v22], &qword_2800CA710, &qword_266DB6040);
        OUTLINED_FUNCTION_17_8(v15);
        if (v16)
        {
          OUTLINED_FUNCTION_17_8(&v15[v22]);
          if (v16)
          {
            sub_266C1825C(v15, &qword_2800CA710, &qword_266DB6040);
            goto LABEL_32;
          }
        }

        else
        {
          sub_266C67BE8(v15, v11, &qword_2800CA710, &qword_266DB6040);
          OUTLINED_FUNCTION_17_8(&v15[v22]);
          if (!v23)
          {
            sub_266C67C44(&v15[v22], v7, type metadata accessor for FriendLocation);
            static FriendLocation.== infix(_:_:)(v11, v7);
            sub_266C67CA0(v7, type metadata accessor for FriendLocation);
            sub_266C67CA0(v11, type metadata accessor for FriendLocation);
            sub_266C1825C(v15, &qword_2800CA710, &qword_266DB6040);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_3_12();
          sub_266C67CA0(v11, v24);
        }

        sub_266C1825C(v15, &qword_2800CA718, &qword_266DB1968);
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C65B10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_266DAB2AC();

      sub_266DAA7BC();
      v15 = sub_266DAB2DC();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        v19 = v18[1];
        if (*v18 == v14 && v19 == v13)
        {
          break;
        }

        v21 = OUTLINED_FUNCTION_13_6(*v18, v19);
        v15 = v17 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266C65CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x55746361746E6F63 && a2 == 0xEB00000000444955;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x48746361746E6F63 && a2 == 0xEE0073656C646E61;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F4C736572616873 && a2 == 0xEE006E6F69746163;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000266DC1E20 == a2;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F4C646E65697266 && a2 == 0xEE006E6F69746163)
            {

              return 6;
            }

            else
            {
              v12 = sub_266DAB17C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266C65F14(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0x55746361746E6F63;
      break;
    case 3:
      result = 0x48746361746E6F63;
      break;
    case 4:
      v3 = 0x736572616873;
      goto LABEL_8;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      v3 = 0x646E65697266;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C66010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C65CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C66038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C65F0C();
  *a1 = result;
  return result;
}

uint64_t sub_266C66060(uint64_t a1)
{
  v2 = sub_266C675D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C6609C(uint64_t a1)
{
  v2 = sub_266C675D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Friend.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA720, &qword_266DB1970);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C675D0();
  sub_266DAB36C();
  v16 = 0;
  OUTLINED_FUNCTION_5_4();
  sub_266DAB0EC();
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
    v14 = 2;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
    v13 = *(v3 + 48);
    v12[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    sub_266C67624(&qword_2800CA730, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB11C();
    v12[14] = 4;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0FC();
    v12[13] = 5;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0FC();
    type metadata accessor for Friend(0);
    v12[12] = 6;
    type metadata accessor for FriendLocation(0);
    sub_266C67690(&qword_2800CA738, &protocol conformance descriptor for FriendLocation);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0DC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Friend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA740, &qword_266DB1978);
  OUTLINED_FUNCTION_0_2();
  v36 = v9;
  v37 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Friend(0);
  v14 = OUTLINED_FUNCTION_4_3(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_6();
  v17 = v16 - v15;
  v19 = *(v18 + 48);
  v20 = type metadata accessor for FriendLocation(0);
  v40 = v19;
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_266C675D0();
  v38 = v12;
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);

    return sub_266C1825C(v17 + v40, &qword_2800CA710, &qword_266DB6040);
  }

  else
  {
    v34 = v7;
    v25 = v36;
    v48 = 0;
    *v17 = sub_266DAB01C();
    *(v17 + 8) = v26;
    v47 = 1;
    v27 = v25;
    *(v17 + 16) = sub_266DAB01C();
    *(v17 + 24) = v28;
    v46 = 2;
    *(v17 + 32) = sub_266DAAFCC();
    *(v17 + 40) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    v45 = 3;
    sub_266C67624(&qword_2800CA748, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_266DAB05C();
    *(v17 + 48) = v41;
    v44 = 4;
    *(v17 + 56) = sub_266DAB02C() & 1;
    v43 = 5;
    *(v17 + 57) = sub_266DAB02C() & 1;
    v42 = 6;
    sub_266C67690(&qword_2800CA750, &protocol conformance descriptor for FriendLocation);
    v30 = v34;
    v32 = v37;
    v31 = v38;
    sub_266DAB00C();
    (*(v27 + 8))(v31, v32);
    sub_266C65690(v30, v17 + v40);
    sub_266C676D4(v17, v35);
    __swift_destroy_boxed_opaque_existential_0(v39);
    return sub_266C67CA0(v17, type metadata accessor for Friend);
  }
}

void Friend.init(from:friendLocation:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - v8;
  v10 = [a1 person];
  if (v10)
  {
    v11 = v10;
    v12 = sub_266C67B18(v10);
    if (v13)
    {
      v14 = v13;
      v75 = v12;
      v15 = [v11 displayName];
      v16 = sub_266DAA70C();
      v73 = v17;
      v74 = v16;

      v18 = sub_266C39CB4(v11);
      v71 = v19;
      v72 = v18;
      v20 = [v11 personHandle];
      if (v20 && (v21 = sub_266C67B78(v20), v22))
      {
        v23 = v21;
        v24 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_266DAE4A0;
        *(inited + 32) = v23;
        *(inited + 40) = v24;
        v70 = sub_266C67738(inited);
      }

      else
      {
        v70 = MEMORY[0x277D84FA0];
      }

      v26 = [a1 sharesLocation];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 BOOLValue];
      }

      else
      {
        v28 = 0;
      }

      v46 = [a1 followsMyLocation];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 BOOLValue];

        if (a2)
        {
LABEL_21:
          v49 = a2;
          sub_266C25268(v49, v50, v51, v52, v53, v54, v55, v56, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v76[2], v76[3], v76[4]);

          v57 = 0;
          a1 = v49;
LABEL_24:

          v58 = type metadata accessor for FriendLocation(0);
          __swift_storeEnumTagSinglePayload(v9, v57, 1, v58);
          v59 = type metadata accessor for Friend(0);
          v60 = *(v59 + 40);
          OUTLINED_FUNCTION_43();
          __swift_storeEnumTagSinglePayload(v61, v62, v63, v58);
          v64 = v74;
          *a3 = v75;
          *(a3 + 8) = v14;
          v66 = v72;
          v65 = v73;
          *(a3 + 16) = v64;
          *(a3 + 24) = v65;
          v67 = v70;
          v68 = v71;
          *(a3 + 32) = v66;
          *(a3 + 40) = v68;
          *(a3 + 48) = v67;
          *(a3 + 56) = v28;
          *(a3 + 57) = v48;
          sub_266C65690(v9, a3 + v60);
          __swift_storeEnumTagSinglePayload(a3, 0, 1, v59);
          OUTLINED_FUNCTION_5();
          return;
        }
      }

      else
      {
        v48 = 0;
        if (a2)
        {
          goto LABEL_21;
        }
      }

      v57 = 1;
      goto LABEL_24;
    }
  }

  if (qword_2800C91E8 != -1)
  {
    swift_once();
  }

  v29 = sub_266DA94AC();
  __swift_project_value_buffer(v29, qword_2800CA6F8);
  v30 = a1;
  v31 = sub_266DA948C();
  v32 = sub_266DAAAEC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v77 = v34;
    *v33 = 136315138;
    v35 = v30;
    v36 = [v35 description];
    v37 = sub_266DAA70C();
    v39 = v38;

    v40 = sub_266C22A3C(v37, v39, &v77);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_266C08000, v31, v32, "Cannot initialize Friend from INFriend missing customIdentifier: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D5F2480](v34, -1, -1);
    MEMORY[0x26D5F2480](v33, -1, -1);
  }

  else
  {
  }

  type metadata accessor for Friend(0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
}

void sub_266C66C84()
{
  OUTLINED_FUNCTION_2_14();
  v3 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = v3;
    if (!v2)
    {
      break;
    }

LABEL_6:
    OUTLINED_FUNCTION_1_16();

    if (OUTLINED_FUNCTION_12_8(v5))
    {
      v6 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_8();
        v6 = v9;
      }

      v7 = *(v6 + 16);
      v8 = v7 + 1;
      if (v7 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_6(v8);
        v8 = v9;
      }

      OUTLINED_FUNCTION_15_9(v8);
    }

    else
    {
    }
  }

  while (1)
  {
    v3 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v3 >= v1)
    {

      return;
    }

    v2 = *(v0 + 8 * v3);
    ++v4;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_266C66D88()
{
  OUTLINED_FUNCTION_2_14();
  v3 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = v3;
    if (!v2)
    {
      break;
    }

LABEL_6:
    OUTLINED_FUNCTION_1_16();

    if (OUTLINED_FUNCTION_12_8(v5))
    {
    }

    else
    {
      v6 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_8();
        v6 = v9;
      }

      v7 = *(v6 + 16);
      v8 = v7 + 1;
      if (v7 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_6(v8);
        v8 = v9;
      }

      OUTLINED_FUNCTION_15_9(v8);
    }
  }

  while (1)
  {
    v3 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v3 >= v1)
    {

      return;
    }

    v2 = *(v0 + 8 * v3);
    ++v4;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void Friend.navigationURL.getter()
{
  v1 = sub_266DA716C();
  OUTLINED_FUNCTION_0_2();
  v35 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  OUTLINED_FUNCTION_4_3(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v11);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  v15 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v19 = v18 - v17;
  v20 = type metadata accessor for Friend(0);
  sub_266C67BE8(v0 + *(v20 + 40), v10, &qword_2800CA710, &qword_266DB6040);
  v21 = type metadata accessor for FriendLocation(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v21) == 1)
  {
    sub_266C1825C(v10, &qword_2800CA710, &qword_266DB6040);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
  }

  else
  {
    sub_266C67BE8(&v10[*(v21 + 32)], v14, &qword_2800C9B20, &unk_266DB1EC0);
    OUTLINED_FUNCTION_3_12();
    sub_266C67CA0(v10, v25);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      sub_266C67C44(v14, v19, type metadata accessor for Location);
      v31 = *(v0 + 16);
      v30 = *(v0 + 24);

      v32 = sub_266C672D4(v31, v30);
      v34[0] = v33;
      v34[1] = v32;
      sub_266DA715C();
      sub_266DA714C();
      MEMORY[0x26D5EDA90](0x7070612E7370616DLL, 0xEE006D6F632E656CLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA758, &qword_266DB1980);
      sub_266DA70FC();
      *(swift_allocObject() + 16) = xmmword_266DB05C0;
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_266DAAA1C();
      MEMORY[0x26D5F1170](44, 0xE100000000000000);
      sub_266DAAA1C();
      sub_266DA70EC();

      sub_266DA70EC();

      sub_266DA710C();
      sub_266DA711C();
      (*(v35 + 8))(v6, v1);
      sub_266C67CA0(v19, type metadata accessor for Location);
      goto LABEL_6;
    }
  }

  sub_266C1825C(v14, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266DA737C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
LABEL_6:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C672D4(uint64_t a1, unint64_t a2)
{
  v5 = sub_266DA70DC();
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  v28 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v9;
  if (v9)
  {
    v21 = v2;
    v10 = 0;
    v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = sub_266DAADEC();
        v16 = v15;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v25[0] = v28;
          v25[1] = v23;
          v13 = v25 + v10;
          v14 = *(v25 + v10);
          if (*(v25 + v10) < 0)
          {
            switch(__clz(v14 ^ 0xFF))
            {
              case 0x1Au:
LABEL_21:
                v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
                v16 = 2;
                break;
              case 0x1Bu:
LABEL_22:
                v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
                v16 = 3;
                break;
              case 0x1Cu:
LABEL_23:
                v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
                v16 = 4;
                break;
              default:
                goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else
        {
          v12 = v22;
          if ((v28 & 0x1000000000000000) == 0)
          {
            v12 = sub_266DAAE5C();
          }

          v13 = (v12 + v10);
          v14 = *(v12 + v10);
          if (*(v12 + v10) < 0)
          {
            switch(__clz(v14 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_21;
              case 0x1Bu:
                goto LABEL_22;
              case 0x1Cu:
                goto LABEL_23;
              default:
                break;
            }
          }
        }

LABEL_13:
        v16 = 1;
      }

LABEL_14:
      sub_266DA709C();
      v17 = sub_266DA70CC();
      v18 = *v11;
      (*v11)(v8, v5);
      if (v17 & 1) != 0 || (sub_266DA70AC(), v19 = sub_266DA70CC(), v18(v8, v5), (v19) || v14 == 32)
      {
        sub_266DAA78C();
      }

      v10 += v16;
      if (v10 >= v24)
      {

        return v26;
      }
    }
  }

  return 0;
}

unint64_t sub_266C675D0()
{
  result = qword_2800CA728;
  if (!qword_2800CA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA728);
  }

  return result;
}

uint64_t sub_266C67624(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA210, &qword_266DB02A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266C67690(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FriendLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266C676D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C67738(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  result = sub_266DAADCC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_266DAB2AC();

    sub_266DAA7BC();
    result = sub_266DAB2DC();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_266DAB17C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_266C678C8(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  result = sub_266DAADCC();
  v3 = result;
  v34 = *(v1 + 16);
  if (!v34)
  {
    goto LABEL_45;
  }

  v4 = 0;
  v5 = result + 56;
  v32 = v1;
  v33 = v1 + 32;
  v35 = result;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v6 = v33 + 24 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v6 + 16);
    sub_266DAB2AC();
    if (!v9)
    {
      v10 = 1;
      goto LABEL_9;
    }

    if (v9 == 1)
    {
      v10 = 2;
LABEL_9:
      MEMORY[0x26D5F1C20](v10);

      sub_266DAA7BC();
      goto LABEL_11;
    }

    MEMORY[0x26D5F1C20](0);
LABEL_11:
    result = sub_266DAB2DC();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v5 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    v16 = *(v3 + 48);
    if (((1 << v12) & v14) == 0)
    {
      break;
    }

    v17 = ~v11;
    v19 = v9 == 2 && (v7 | v8) == 0;
    while (1)
    {
      v20 = v16 + 24 * v12;
      result = *v20;
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      if (!v22)
      {
        break;
      }

      if (v22 == 1)
      {
        if (v9 == 1)
        {
          v23 = result == v8 && v21 == v7;
          if (v23 || (result = OUTLINED_FUNCTION_13_6(result, v21), (result & 1) != 0))
          {
            v29 = v8;
            v30 = v7;
            v31 = 1;
            goto LABEL_41;
          }
        }
      }

      else if (v19)
      {
        goto LABEL_42;
      }

LABEL_35:
      v12 = (v12 + 1) & v17;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if ((v14 & (1 << v12)) == 0)
      {
        v3 = v35;
        v16 = *(v35 + 48);
        goto LABEL_37;
      }
    }

    if (v9)
    {
      goto LABEL_35;
    }

    if (result != v8 || v21 != v7)
    {
      result = OUTLINED_FUNCTION_13_6(result, v21);
      if ((result & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v29 = v8;
    v30 = v7;
    v31 = 0;
LABEL_41:
    result = sub_266C6814C(v29, v30, v31);
LABEL_42:
    ++v4;
    v3 = v35;
    v1 = v32;
    if (v4 == v34)
    {
LABEL_45:

      return v3;
    }
  }

LABEL_37:
  *(v5 + 8 * v13) = v14 | v15;
  v25 = v16 + 24 * v12;
  *v25 = v8;
  *(v25 + 8) = v7;
  *(v25 + 16) = v9;
  v26 = *(v3 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v3 + 16) = v28;
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_266C67B18(void *a1)
{
  v1 = [a1 customIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_266DAA70C();
  }

  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_266C67B78(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266C67BE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return a2;
}

uint64_t sub_266C67C44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

uint64_t sub_266C67CA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_266C67D20(uint64_t a1)
{
  sub_266C2AA28();
  if (v1 <= 0x3F)
  {
    sub_266C67DDC();
    if (v2 <= 0x3F)
    {
      sub_266C67E34(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266C67DDC()
{
  if (!qword_2800CA770)
  {
    v0 = sub_266DAAA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CA770);
    }
  }
}

void sub_266C67E34(uint64_t a1)
{
  if (!qword_2800CA778)
  {
    type metadata accessor for FriendLocation(255);
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CA778);
    }
  }
}

uint64_t getEnumTagSinglePayload for Friend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Friend.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C67FF4()
{
  result = qword_2800CA780;
  if (!qword_2800CA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA780);
  }

  return result;
}

unint64_t sub_266C6804C()
{
  result = qword_2800CA788;
  if (!qword_2800CA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA788);
  }

  return result;
}

unint64_t sub_266C680A4()
{
  result = qword_2800CA790;
  if (!qword_2800CA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA790);
  }

  return result;
}

unint64_t sub_266C680F8()
{
  result = qword_2800CA7F0;
  if (!qword_2800CA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA7F0);
  }

  return result;
}

uint64_t sub_266C6814C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_1_16()
{

  return sub_266C680F8();
}

uint64_t OUTLINED_FUNCTION_2_14()
{
}

void *OUTLINED_FUNCTION_11_6@<X0>(uint64_t a1@<X8>)
{

  return sub_266C387DC((v1 > 1), a1, 1);
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1, ...)
{

  return sub_266DAACBC();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2)
{

  return sub_266DAB17C();
}

void *OUTLINED_FUNCTION_14_8()
{
  v2 = *(v0 + 16) + 1;

  return sub_266C387DC(0, v2, 1);
}

void OUTLINED_FUNCTION_15_9(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_266C682D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266C68310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C68360()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA7A8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA7A8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C68428(uint64_t a1, uint64_t a2, unint64_t a3, id a4)
{
  v7 = [a4 aa_primaryAppleAccount];
  if (v7)
  {
    v26 = v7;
    v8 = v7;
    swift_getAtKeyPath();

    if (v25)
    {
      v9 = [a4 credentialForAccount_];
      if (v9)
      {
        v10 = v9;

        return 1;
      }

      if (qword_2800C91F0 != -1)
      {
        OUTLINED_FUNCTION_0_23(&qword_2800C91F0);
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800CA7A8);

      v21 = sub_266DA948C();
      v22 = sub_266DAAAEC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_266C22A3C(a2, a3, &v26);
        _os_log_impl(&dword_266C08000, v21, v22, "Unable to retrieve %s credential, not signed in.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }
    }

    else
    {
      if (qword_2800C91F0 != -1)
      {
        OUTLINED_FUNCTION_0_23(&qword_2800C91F0);
      }

      v15 = sub_266DA94AC();
      __swift_project_value_buffer(v15, qword_2800CA7A8);

      v16 = sub_266DA948C();
      v17 = sub_266DAAAEC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_266C22A3C(a2, a3, &v26);
        _os_log_impl(&dword_266C08000, v16, v17, "Got nil for account '%{public}s' -- assuming not logged in", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }
    }
  }

  else
  {
    if (qword_2800C91F0 != -1)
    {
      OUTLINED_FUNCTION_0_23(&qword_2800C91F0);
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CA7A8);
    v8 = sub_266DA948C();
    v13 = sub_266DAAAEC();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266C08000, v8, v13, "Unable to retrieve primary apple account", v14, 2u);
      OUTLINED_FUNCTION_6_1();
    }
  }

  return 0;
}

id sub_266C68774()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D25EA0];
    v3 = [v1 effectiveBoolValueForSetting_];

    return (v3 == 2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{

  return swift_once();
}

id sub_266C68820()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_266C68D2C(0xD000000000000015, 0x8000000266DC14B0);
  if (result)
  {
    qword_28156FCC0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SFMUserDefaultsSettingProvider.isVerboseLoggingEnabled.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_28156F8C8);
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  return v3;
}

uint64_t SFMUserDefaultsSettingProvider.isSpokenLocationsForItemsEnabled.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_28156F8C8);
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  if (v3)
  {
    sub_266DAACDC();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (OUTLINED_FUNCTION_2_15(v4, v5, v6, MEMORY[0x277D839B0], v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13), v15, *(&v15 + 1), v16, *(&v16 + 1), v17[0]))
    {
      return v14;
    }
  }

  else
  {
    sub_266C689EC(v17);
  }

  return 1;
}

uint64_t sub_266C689EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C0, &qword_266DB1BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFMUserDefaultsSettingProvider.isSpokenLocationsForFriendsEnabled.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_28156F8C8);
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  if (v3)
  {
    sub_266DAACDC();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (OUTLINED_FUNCTION_2_15(v4, v5, v6, MEMORY[0x277D839B0], v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13), v15, *(&v15 + 1), v16, *(&v16 + 1), v17[0]))
    {
      return v14;
    }
  }

  else
  {
    sub_266C689EC(v17);
  }

  return 1;
}

id SFMUserDefaultsSettingProvider.forceFindDeviceOnAce.getter()
{
  if (qword_28156F8C8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_28156F8C8);
  }

  v0 = sub_266DAA6FC();
  v1 = OUTLINED_FUNCTION_1_17();
  v3 = [v1 v2];

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SFMUserDefaultsSettingProvider(_BYTE *result, int a2, int a3)
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

id sub_266C68D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_15(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

uint64_t SFMContactDataProvider.ownerContact(of:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if ((*(v7 + 88))(v6, v7))
  {
    v8 = *(a3 + 8);

    return v8(a2, a3);
  }

  else
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = (*(v11 + 80))(v10, v11);
    (*(a3 + 16))(v12);
  }
}

uint64_t sub_266C68F90()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F250);
  v1 = __swift_project_value_buffer(v0, qword_28156F250);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266C69058()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_266C690C4()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_266C69058();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C8, &unk_266DB1DB8);
  v1 = sub_266DAA91C();
  v6[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_266DA72FC();

    swift_willThrow();
  }

  return v2;
}

id sub_266C691B8(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = sub_266C69058();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C8, &unk_266DB1DB8);
  v3 = sub_266DAA91C();
  v9[0] = 0;
  v4 = [v2 unifiedContactsMatchingPredicate:a1 keysToFetch:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    sub_266C29814(0, &unk_2800CA7D0, 0x277CBDA58);
    v2 = sub_266DAA93C();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_266DA72FC();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_266C69310()
{
  sub_266C692E8();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266C69368()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_266DB1D00;
  v2 = *MEMORY[0x277CBD000];
  v3 = *MEMORY[0x277CBCFF8];
  v4 = MEMORY[0x277CBD070];
  *(v1 + 32) = *MEMORY[0x277CBD000];
  *(v1 + 40) = v3;
  v5 = *v4;
  v6 = *MEMORY[0x277CBD078];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v6;
  v7 = *MEMORY[0x277CBD0B0];
  v8 = *MEMORY[0x277CBD0A8];
  *(v1 + 64) = *MEMORY[0x277CBD0B0];
  *(v1 + 72) = v8;
  v9 = *MEMORY[0x277CBCFC0];
  v10 = *MEMORY[0x277CBD098];
  *(v1 + 80) = *MEMORY[0x277CBCFC0];
  *(v1 + 88) = v10;
  *(v0 + 24) = v1;
  v11 = v2;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  return v0;
}

uint64_t sub_266C694B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266C694F4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_266C69558(Swift::String_optional *a1@<X8>)
{
  v3 = sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_2800C9128);
  }

  sub_266DA946C();
  OUTLINED_FUNCTION_3_13();
  sub_266DA945C();
  v9 = *(v5 + 8);
  v9(v8, v3);
  v10 = v1[8];
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v10);
  v12 = (*(v11 + 8))(v10, v11);
  SFMPerson.init(from:)(&v16, v12);
  nickName = v16.nickName;
  *a1 = v16.givenName;
  a1[1] = nickName;
  identifier = v16.identifier;
  a1[2] = v16.familyName;
  a1[3].value = identifier;
  sub_266DAABCC();
  sub_266DA946C();
  OUTLINED_FUNCTION_3_13();
  sub_266DA944C();
  v9(v8, v3);
}

double sub_266C6997C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::String_optional *a3@<X8>)
{
  v58 = a3;
  v6 = sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_2800C9128);
  }

  v12 = qword_28156EF98;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA7E0, &unk_266DB1E20);
  v13 = OUTLINED_FUNCTION_7_10(v55);
  v56 = xmmword_266DAE4A0;
  *(v13 + 16) = xmmword_266DAE4A0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  v14 = sub_266C33C74();
  *(v13 + 64) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  sub_266DA946C();
  OUTLINED_FUNCTION_0_25();
  v49.value._countAndFlagsBits = 10;
  identifier._countAndFlagsBits = v12;
  OUTLINED_FUNCTION_6_11();
  sub_266DA944C();

  v15 = *(v8 + 8);
  v59 = v8 + 8;
  v15(v11, v6);
  v16 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v17 = OUTLINED_FUNCTION_5_12();
  v18(v17);
  givenName = v62.givenName;
  nickName = v62.nickName;
  familyName = v62.familyName;
  object = v62.identifier._object;
  countAndFlagsBits = v62.identifier._countAndFlagsBits;
  if (v62.identifier._object)
  {
    sub_266DAABCC();
    sub_266DA946C();
    v50.value._countAndFlagsBits = MEMORY[0x277D84F90];
    LOBYTE(v49.value._object) = 2;
    v49.value._countAndFlagsBits = 16;
    OUTLINED_FUNCTION_6_11();
    sub_266DA944C();
    v15(v11, v6);
    v20 = nickName;
    v21 = v58;
    *v58 = givenName;
    v21[1] = v20;
    result = *&familyName.value._countAndFlagsBits;
    v21[2] = familyName;
    v21[3].value._countAndFlagsBits = countAndFlagsBits;
    v21[3].value._object = object;
  }

  else
  {
    v53 = v11;
    v54 = v15;
    v52 = v6;
    v62.givenName.value._countAndFlagsBits = a1;
    v62.givenName.value._object = a2;
    v60 = 64;
    v61 = 0xE100000000000000;
    sub_266C680F8();
    v23 = sub_266DAACBC();
    v24 = objc_opt_self();
    if (v23)
    {
      OUTLINED_FUNCTION_5_12();
      v25 = sub_266DAA6FC();
      v26 = &selRef_predicateForContactsMatchingEmailAddress_;
    }

    else
    {
      sub_266C29814(0, &qword_2800CA7F8, 0x277CBDB70);

      v27 = OUTLINED_FUNCTION_5_12();
      v25 = sub_266C6A190(v27);
      v26 = &selRef_predicateForContactsMatchingPhoneNumber_;
    }

    v28 = v14;
    v29 = [v24 *v26];

    v30 = v16[8];
    v31 = v16[9];
    __swift_project_boxed_opaque_existential_1(v16 + 5, v30);
    v32 = (*(v31 + 16))(v29, v30, v31);
    v33 = sub_266C3A14C();
    v34 = v52;
    v35 = v54;
    v36 = v55;
    if (v33)
    {
      sub_266CB9F54();
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D5F1780](0, v32);
      }

      else
      {
        v37 = *(v32 + 32);
      }

      v38 = v37;

      v39 = v38;
      SFMPerson.init(from:)(&v62, v39);
      v50 = v62.nickName;
      v51 = v62.givenName;
      identifier = v62.identifier;
      v49 = v62.familyName;
    }

    else
    {

      v39 = 0;
      v51 = 0;
      v50 = 0;
      v49 = 0;
      identifier = 0;
    }

    sub_266DAABCC();
    v40 = OUTLINED_FUNCTION_7_10(v36);
    v41 = identifier._object;
    *(v40 + 16) = v56;
    v42 = v41 == 0;
    v43 = 0x73736563637573;
    if (v42)
    {
      v43 = 0x64656C696166;
    }

    v44 = 0xE700000000000000;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = v28;
    if (v42)
    {
      v44 = 0xE600000000000000;
    }

    *(v40 + 32) = v43;
    *(v40 + 40) = v44;
    v45 = v53;
    sub_266DA946C();
    OUTLINED_FUNCTION_0_25();
    v51.value._countAndFlagsBits = 18;
    OUTLINED_FUNCTION_6_11();
    sub_266DA944C();

    v35(v45, v34);
    v46 = v58;
    v47 = v50;
    *v58 = v51;
    v46[1] = v47;
    v48 = identifier;
    result = *&v49.value._countAndFlagsBits;
    v46[2] = v49;
    v46[3].value = v48;
  }

  return result;
}

id sub_266C6A190(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_266DAA6FC();

  v3 = [v1 initWithStringValue_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_266C6A2A0(uint64_t a1, uint64_t a2)
{
  if (sub_266DA7B6C() & 1) != 0 || (sub_266DA7B4C() & 1) != 0 || (sub_266DA7B5C())
  {
    v2 = sub_266DA7BAC() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_266C6A330(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_6_12();
    sub_266C387FC(v4, v5, v6);
    v2 = v26;
    v7 = (a1 + 32);
    do
    {
      v8 = v7[1];
      v21[0] = *v7;
      v21[1] = v8;
      v9 = v7[3];
      v11 = *v7;
      v10 = v7[1];
      v21[2] = v7[2];
      v21[3] = v9;
      v22 = v11;
      v23 = v10;
      v12 = v7[3];
      v24 = v7[2];
      v25 = v12;
      sub_266C24964(v21, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
      swift_dynamicCast();
      v24 = v20[2];
      v25 = v20[3];
      v22 = v20[0];
      v23 = v20[1];
      v26 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_266C387FC((v13 > 1), v14 + 1, 1);
        v2 = v26;
      }

      *(v2 + 16) = v14 + 1;
      v15 = (v2 + (v14 << 6));
      v16 = v22;
      v17 = v23;
      v18 = v25;
      v15[4] = v24;
      v15[5] = v18;
      v15[2] = v16;
      v15[3] = v17;
      v7 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266C6A478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_6_12();
    sub_266C38A48(v4, v5, v6);
    v2 = v17;
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;

      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA860, &qword_266DB1EA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F58, &unk_266DB1EB0);
      swift_dynamicCast();
      v10 = v16;
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_266C38A48((v11 > 1), v12 + 1, 1);
        v10 = v16;
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 24 * v12;
      *(v13 + 32) = v15;
      *(v13 + 40) = v10;
      v7 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266C6A5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_6_12();
    sub_266C387BC(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      swift_dynamicCast();
      v8 = v12;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_266C387BC((v9 > 1), v10 + 1, 1);
        v8 = v12;
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 16 * v10 + 32) = v8;
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266C6A70C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v21 = a3;
  v4 = a2(0);
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25 = MEMORY[0x277D84F90];
    sub_266C38B20(0, v10, 0);
    v11 = v25;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    do
    {
      v13(v9, v15, v4);
      v25 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_266C38B20((v16 > 1), v17 + 1, 1);
      }

      v23 = v4;
      v24 = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      v13(boxed_opaque_existential_1, v9, v4);
      v11 = v25;
      *(v25 + 16) = v17 + 1;
      sub_266C0B0D8(&v22, v11 + 40 * v17 + 32);
      (*(v12 - 8))(v9, v4);
      v15 += v20;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_266C6A8E0(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_266DAAD5C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_266C3879C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D5F1780](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      a2(0);
      swift_dynamicCast();
      v12 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_266C3879C((v9 > 1), v10 + 1, 1);
        v5 = v12;
      }

      ++v7;
      *(v5 + 16) = v10 + 1;
      sub_266C6DF38(&v11, (v5 + 32 * v10 + 32));
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_266C6AA38(uint64_t a1, uint64_t a2)
{
  v3 = sub_266DAA91C();

  v4 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason:a1 alternativeItems:v3];

  return v4;
}

uint64_t sub_266C6AAB4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA810);
  v1 = __swift_project_value_buffer(v0, qword_2800CA810);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_266C6AB7C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_266C233D0(a1, &v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState]);
  sub_266C36270(a2, &v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_sessionManager], type metadata accessor for FindFriendSessionManager);
  *&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_siriEnvironment] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FindFriendIntentHandler(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_266C6E034(a2, type metadata accessor for FindFriendSessionManager);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void sub_266C6AC3C(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = [a1 friend];
  if (!v7)
  {
    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v11 = sub_266DA94AC();
    __swift_project_value_buffer(v11, qword_2800CA810);
    v12 = sub_266DA948C();
    v13 = sub_266DAAB0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266C08000, v12, v13, "friend parameter on intent is nil, punch out to main friends list.", v14, 2u);
      MEMORY[0x26D5F2480](v14, -1, -1);
    }

    type metadata accessor for FindFriendFriendResolutionResult();
    v15 = sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
    v16 = sub_266C6AA38(4, v15);
    (a3)[2](a3, v16);

    goto LABEL_16;
  }

  v8 = v7;
  if (sub_266C6D740(a1))
  {
    type metadata accessor for FindFriendFriendResolutionResult();
    v9 = sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
    v10 = sub_266C6AA38(4, v9);
LABEL_15:
    v16 = v10;
    (a3)[2](a3, v10);

LABEL_16:
    goto LABEL_17;
  }

  v8 = v8;
  sub_266C22F3C(v8);
  if (v17)
  {

    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v18 = sub_266DA94AC();
    __swift_project_value_buffer(v18, qword_2800CA810);
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266C08000, v19, v20, "Friend parameter is fully resolved to a friend.", v21, 2u);
      MEMORY[0x26D5F2480](v21, -1, -1);
    }

    v10 = sub_266C6DA84(v8);
    goto LABEL_15;
  }

  v22 = swift_allocObject();
  v22[2] = sub_266C23638;
  v22[3] = v6;
  v22[4] = a2;

  v23 = a2;
  sub_266C34174();

LABEL_17:

  _Block_release(a3);
}

void sub_266C6AFA0(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = [a1 friend];
  if (!v7)
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2800C9208);
    }

    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800CA810);
    v14 = sub_266DA948C();
    v15 = sub_266DAAB0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_11();
      *v16 = 0;
      _os_log_impl(&dword_266C08000, v14, v15, "friend parameter on intent is nil, punch out to main friends list.", v16, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    type metadata accessor for FindFriendFriendResolutionResult();
    OUTLINED_FUNCTION_1_19();
    v19 = sub_266C6A8E0(v17, v18);
    v27 = sub_266C6AA38(4, v19);
    a2();
    goto LABEL_16;
  }

  v8 = v7;
  if (sub_266C6D740(a1))
  {
    type metadata accessor for FindFriendFriendResolutionResult();
    OUTLINED_FUNCTION_1_19();
    v11 = sub_266C6A8E0(v9, v10);
    v12 = sub_266C6AA38(4, v11);
LABEL_15:
    v27 = v12;
    a2();

LABEL_16:

    return;
  }

  v8 = v8;
  sub_266C22F3C(v8);
  if (v20)
  {

    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2800C9208);
    }

    v21 = sub_266DA94AC();
    __swift_project_value_buffer(v21, qword_2800CA810);
    v22 = sub_266DA948C();
    v23 = sub_266DAAB0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_11();
      *v24 = 0;
      _os_log_impl(&dword_266C08000, v22, v23, "Friend parameter is fully resolved to a friend.", v24, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v12 = sub_266C6DA84(v8);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_18_1();
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v3;

  v26 = v3;
  sub_266C34174();
}

void sub_266C6B264(void *a1, char a2, void (*a3)(id))
{
  switch(a2)
  {
    case 1:
      type metadata accessor for FindFriendFriendResolutionResult();
      v6 = sub_266DA5B8C(a1);
      goto LABEL_11;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE3B0;
      *(inited + 32) = a1;
      type metadata accessor for FindFriendFriendResolutionResult();
      v8 = a1;
      v9 = sub_266C6A8E0(inited, type metadata accessor for INFriend);
      swift_setDeallocating();
      sub_266C6F074();
      v10 = sub_266C6AA38(2, v9);
      (a3)();

      return;
    case 4:
      type metadata accessor for FindFriendFriendResolutionResult();
      v11 = sub_266C6A8E0(a1, type metadata accessor for INFriend);
      v12 = 2;
      goto LABEL_10;
    case 5:
      if (!a1)
      {
        type metadata accessor for FindFriendFriendResolutionResult();
        v11 = sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
        v12 = 1;
        goto LABEL_10;
      }

      if (a1 == 1)
      {
        type metadata accessor for FindFriendFriendResolutionResult();
        v11 = sub_266C6A8E0(MEMORY[0x277D84F90], type metadata accessor for INFriend);
        v12 = 3;
LABEL_10:
        v6 = sub_266C6AA38(v12, v11);
        goto LABEL_11;
      }

      if (qword_2800C9208 != -1)
      {
        swift_once();
      }

      v13 = sub_266DA94AC();
      __swift_project_value_buffer(v13, qword_2800CA810);
      v14 = sub_266DA948C();
      v15 = sub_266DAAAFC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266C08000, v14, v15, "Friend resolver returned an unexpected error", v16, 2u);
        MEMORY[0x26D5F2480](v16, -1, -1);
      }

      type metadata accessor for FindFriendFriendResolutionResult();
      v6 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_11:
      v17 = v6;
LABEL_12:
      a3(v6);

      return;
    default:
      sub_266C235B0(a1, a2);
      v17 = sub_266C6DA84(a1);
      sub_266C235EC(a1, a2);
      v6 = v17;
      goto LABEL_12;
  }
}

void sub_266C6B588(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
  v5 = FindFriendIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_266C6B5F4(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
  v4 = FindFriendIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_266C6B680(void *a1, uint64_t a2, void (**a3)(void, id))
{
  v86 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v74 - v6;
  v81 = sub_266DA8E6C();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v76 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA830, &qword_266DB1E38);
  v8 = MEMORY[0x28223BE20](v83);
  v78 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA838, &unk_266DB1E40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v75 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v77 = v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v74 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = v74 - v21;
  v22 = sub_266DA7F0C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = swift_allocObject();
  *(v87 + 16) = a3;
  v26 = a2;
  v27 = (a2 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState + 24));
  v88 = a3;
  _Block_copy(a3);
  sub_266DA7EFC();
  LOBYTE(a2) = sub_266DA7B1C();
  (*(v23 + 8))(v25, v22);
  if ((a2 & 1) == 0)
  {
    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v35 = sub_266DA94AC();
    __swift_project_value_buffer(v35, qword_2800CA810);
    v36 = sub_266DA948C();
    v37 = sub_266DAAB0C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266C08000, v36, v37, "Device is not authenticated, attempting to unlock before handling the request.", v38, 2u);
      MEMORY[0x26D5F2480](v38, -1, -1);
    }

    v39 = [objc_allocWithZone(type metadata accessor for FindFriendIntentResponse()) init];
    [v39 _setRequiresAuthentication_];
    goto LABEL_17;
  }

  v28 = [v86 friend];
  if (!v28 || (v29 = sub_266C22F3C(v28), !v30))
  {
    if (qword_2800C9208 != -1)
    {
      swift_once();
    }

    v40 = sub_266DA94AC();
    __swift_project_value_buffer(v40, qword_2800CA810);
    v41 = sub_266DA948C();
    v42 = sub_266DAAAFC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_266C08000, v41, v42, "Friend identifier from FMFCore is nil.", v43, 2u);
      MEMORY[0x26D5F2480](v43, -1, -1);
    }

    v44 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v34 = 5;
    goto LABEL_16;
  }

  v31 = v29;
  v32 = v30;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  if ((sub_266DA7B7C() & 1) == 0)
  {
    v74[0] = v26;
    v74[1] = v31;
    v86 = v32;
    if (*(v26 + OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_siriEnvironment))
    {
      sub_266DA8DAC();
      v46 = v85;
      sub_266DA93FC();

      v47 = 0;
    }

    else
    {
      v47 = 1;
      v46 = v85;
    }

    v48 = v81;
    v50 = v83;
    v49 = v84;
    __swift_storeEnumTagSinglePayload(v46, v47, 1, v81);
    sub_266DA8E3C();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v48);
    v51 = *(v50 + 48);
    v52 = v80;
    sub_266C6DFE8(v46, v80, &qword_2800CA838, &unk_266DB1E40);
    sub_266C6DFE8(v20, v52 + v51, &qword_2800CA838, &unk_266DB1E40);
    if (__swift_getEnumTagSinglePayload(v52, 1, v48) == 1)
    {
      sub_266C1825C(v20, &qword_2800CA838, &unk_266DB1E40);
      if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v48) == 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v53 = v77;
      sub_266C6DFE8(v52, v77, &qword_2800CA838, &unk_266DB1E40);
      if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v48) != 1)
      {
        v60 = v79;
        v61 = v52 + v51;
        v62 = v76;
        (*(v79 + 32))(v76, v61, v48);
        sub_266C6DD34();
        v63 = v52;
        v64 = sub_266DAA6EC();
        v65 = *(v60 + 8);
        v65(v62, v48);
        sub_266C1825C(v20, &qword_2800CA838, &unk_266DB1E40);
        v46 = v85;
        v65(v53, v48);
        v50 = v83;
        v49 = v84;
        sub_266C1825C(v63, &qword_2800CA838, &unk_266DB1E40);
        if (v64)
        {
          goto LABEL_40;
        }

LABEL_28:
        sub_266DA8E5C();
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
        v54 = *(v50 + 48);
        v55 = v78;
        sub_266C6DFE8(v46, v78, &qword_2800CA838, &unk_266DB1E40);
        sub_266C6DFE8(v49, v55 + v54, &qword_2800CA838, &unk_266DB1E40);
        if (__swift_getEnumTagSinglePayload(v55, 1, v48) == 1)
        {
          sub_266C1825C(v49, &qword_2800CA838, &unk_266DB1E40);
          if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v48) == 1)
          {
            v52 = v55;
LABEL_31:
            sub_266C1825C(v52, &qword_2800CA838, &unk_266DB1E40);
            goto LABEL_40;
          }
        }

        else
        {
          v56 = v75;
          sub_266C6DFE8(v55, v75, &qword_2800CA838, &unk_266DB1E40);
          if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v48) != 1)
          {
            v66 = v79;
            v67 = v55 + v54;
            v68 = v76;
            (*(v79 + 32))(v76, v67, v48);
            sub_266C6DD34();
            v69 = sub_266DAA6EC();
            v70 = *(v66 + 8);
            v70(v68, v48);
            sub_266C1825C(v49, &qword_2800CA838, &unk_266DB1E40);
            v70(v56, v48);
            sub_266C1825C(v55, &qword_2800CA838, &unk_266DB1E40);
            if (v69)
            {
              goto LABEL_40;
            }

            goto LABEL_35;
          }

          sub_266C1825C(v49, &qword_2800CA838, &unk_266DB1E40);
          (*(v79 + 8))(v56, v48);
        }

        sub_266C1825C(v55, &qword_2800CA830, &qword_266DB1E38);
LABEL_35:
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        if ((sub_266DA7BBC() & 1) == 0)
        {
          v57 = 0;
          v58 = 1;
          v59 = v82;
LABEL_41:
          v71 = sub_266DAAB4C();
          __swift_storeEnumTagSinglePayload(v59, v58, 1, v71);
          v72 = swift_allocObject();
          *(v72 + 16) = v57;
          v73 = v87;
          *(v72 + 24) = sub_266C23320;
          *(v72 + 32) = v73;

          sub_266C34AA8();

          sub_266C1825C(v59, &qword_2800CA828, &qword_266DB1E30);
          sub_266C1825C(v46, &qword_2800CA838, &unk_266DB1E40);

          v45 = v88;
          goto LABEL_18;
        }

LABEL_40:
        v59 = v82;
        sub_266DAAB3C();
        v58 = 0;
        v57 = 1;
        goto LABEL_41;
      }

      sub_266C1825C(v20, &qword_2800CA838, &unk_266DB1E40);
      (*(v79 + 8))(v53, v48);
    }

    sub_266C1825C(v52, &qword_2800CA830, &qword_266DB1E38);
    goto LABEL_28;
  }

  v33 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
  v34 = 4;
LABEL_16:
  v39 = FindFriendIntentResponse.init(code:userActivity:)(v34, 0);
LABEL_17:
  v45 = v88;
  v88[2](v88, v39);

LABEL_18:
  _Block_release(v45);
}

void sub_266C6C1B4(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v96 = a2;
  v97 = a3;
  v95 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = v83 - v5;
  v94 = sub_266DA8E6C();
  OUTLINED_FUNCTION_0_2();
  v90 = v6;
  MEMORY[0x28223BE20](v7);
  v85 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA830, &qword_266DB1E38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v88 = v10 - v11;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v12);
  v91 = v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA838, &unk_266DB1E40);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_0_5();
  v86 = (v15 - v16);
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v17);
  v89 = v83 - v18;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v19);
  v87 = v83 - v20;
  OUTLINED_FUNCTION_15_8();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v83 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v83 - v25;
  v27 = sub_266DA7F0C();
  OUTLINED_FUNCTION_0_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3;
  v34 = &v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState];
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState], *&v3[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_deviceState + 24]);
  sub_266DA7EFC();
  v35 = sub_266DA7B1C();
  (*(v29 + 8))(v32, v27);
  if ((v35 & 1) == 0)
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2800C9208);
    }

    v44 = sub_266DA94AC();
    __swift_project_value_buffer(v44, qword_2800CA810);
    v45 = sub_266DA948C();
    v46 = sub_266DAAB0C();
    if (os_log_type_enabled(v45, v46))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v47, v48, "Device is not authenticated, attempting to unlock before handling the request.");
      OUTLINED_FUNCTION_6_1();
    }

    v49 = [objc_allocWithZone(type metadata accessor for FindFriendIntentResponse()) init];
    [v49 _setRequiresAuthentication_];
    v50 = v49;
    goto LABEL_17;
  }

  v36 = [v95 friend];
  if (!v36 || (v37 = sub_266C22F3C(v36), !v38))
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2800C9208);
    }

    v51 = sub_266DA94AC();
    __swift_project_value_buffer(v51, qword_2800CA810);
    v52 = sub_266DA948C();
    v53 = sub_266DAAAFC();
    if (os_log_type_enabled(v52, v53))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v54, v55, "Friend identifier from FMFCore is nil.");
      OUTLINED_FUNCTION_6_1();
    }

    v56 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v43 = 5;
    goto LABEL_16;
  }

  v39 = v37;
  v40 = v38;
  v41 = *(v34 + 4);
  __swift_project_boxed_opaque_existential_1(v34, *(v34 + 3));
  if (sub_266DA7B7C())
  {

    v42 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v43 = 4;
LABEL_16:
    v50 = FindFriendIntentResponse.init(code:userActivity:)(v43, 0);
    v49 = v50;
LABEL_17:
    v96(v50);

    return;
  }

  v95 = v33;
  if (*&v33[OBJC_IVAR____TtC10SiriFindMy23FindFriendIntentHandler_siriEnvironment])
  {
    sub_266DA8DAC();
    sub_266DA93FC();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = v94;
  __swift_storeEnumTagSinglePayload(v26, v57, 1, v94);
  sub_266DA8E3C();
  OUTLINED_FUNCTION_14_9();
  v59 = v91;
  sub_266C6DFE8(v26, v91, &qword_2800CA838, &unk_266DB1E40);
  sub_266C6DFE8(v24, &v41[v59], &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(v59);
  if (v62)
  {
    sub_266C1825C(v24, &qword_2800CA838, &unk_266DB1E40);
    OUTLINED_FUNCTION_3_14(&v41[v59]);
    v60 = v92;
    if (v62)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v61 = v87;
  sub_266C6DFE8(v59, v87, &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(&v41[v59]);
  if (v62)
  {
    sub_266C1825C(v24, &qword_2800CA838, &unk_266DB1E40);
    (*(v90 + 8))(v61, v58);
    v60 = v92;
LABEL_29:
    sub_266C1825C(v59, &qword_2800CA830, &qword_266DB1E38);
    goto LABEL_30;
  }

  v83[1] = v40;
  v84 = v39;
  v69 = v90;
  v70 = &v41[v59];
  v71 = v85;
  (*(v90 + 32))(v85, v70, v58);
  sub_266C6DD34();
  v72 = v59;
  v73 = sub_266DAA6EC();
  v74 = *(v69 + 8);
  v74(v71, v94);
  v41 = &unk_266DB1E40;
  sub_266C1825C(v24, &qword_2800CA838, &unk_266DB1E40);
  v74(v61, v94);
  v39 = v84;
  v58 = v94;
  sub_266C1825C(v72, &qword_2800CA838, &unk_266DB1E40);
  v60 = v92;
  if (v73)
  {
    goto LABEL_45;
  }

LABEL_30:
  v84 = v39;
  v63 = v89;
  sub_266DA8E5C();
  OUTLINED_FUNCTION_14_9();
  v64 = v88;
  sub_266C6DFE8(v26, v88, &qword_2800CA838, &unk_266DB1E40);
  sub_266C6DFE8(v63, &v41[v64], &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(v64);
  if (v62)
  {
    sub_266C1825C(v63, &qword_2800CA838, &unk_266DB1E40);
    OUTLINED_FUNCTION_3_14(&v41[v64]);
    if (!v62)
    {
      goto LABEL_39;
    }

    v59 = v64;
LABEL_35:
    sub_266C1825C(v59, &qword_2800CA838, &unk_266DB1E40);
LABEL_45:
    sub_266DAAB3C();
    v68 = 0;
    v67 = 1;
    goto LABEL_46;
  }

  v65 = v86;
  sub_266C6DFE8(v64, v86, &qword_2800CA838, &unk_266DB1E40);
  OUTLINED_FUNCTION_3_14(&v41[v64]);
  if (v66)
  {
    sub_266C1825C(v63, &qword_2800CA838, &unk_266DB1E40);
    (*(v90 + 8))(v65, v58);
LABEL_39:
    sub_266C1825C(v64, &qword_2800CA830, &qword_266DB1E38);
    goto LABEL_40;
  }

  v75 = v90;
  v76 = &v41[v64];
  v77 = v85;
  (*(v90 + 32))(v85, v76, v58);
  sub_266C6DD34();
  LODWORD(v94) = sub_266DAA6EC();
  v78 = *(v75 + 8);
  v78(v77, v58);
  sub_266C1825C(v89, &qword_2800CA838, &unk_266DB1E40);
  v78(v86, v58);
  v79 = OUTLINED_FUNCTION_4_4();
  sub_266C1825C(v79, v80, &unk_266DB1E40);
  if (v94)
  {
    goto LABEL_45;
  }

LABEL_40:
  __swift_project_boxed_opaque_existential_1(v34, *(v34 + 3));
  OUTLINED_FUNCTION_4_4();
  if (sub_266DA7BBC())
  {
    goto LABEL_45;
  }

  v67 = 0;
  v68 = 1;
LABEL_46:
  v81 = sub_266DAAB4C();
  __swift_storeEnumTagSinglePayload(v60, v68, 1, v81);
  OUTLINED_FUNCTION_18_1();
  v82 = swift_allocObject();
  *(v82 + 16) = v67;
  *(v82 + 24) = v96;
  *(v82 + 32) = v97;

  sub_266C34AA8();

  sub_266C1825C(v60, &qword_2800CA828, &qword_266DB1E30);
  sub_266C1825C(v26, &qword_2800CA838, &unk_266DB1E40);
}

void sub_266C6CB90(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v105 = a3;
  v104 = a2;
  v101 = type metadata accessor for Location(0);
  MEMORY[0x28223BE20](v101);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v7 = MEMORY[0x28223BE20](v97);
  v102 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v92 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v96 = &v92 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v92 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v92 - v16;
  v100 = type metadata accessor for FriendLocation(0);
  v18 = MEMORY[0x28223BE20](v100);
  v103 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF8, &qword_266DAE460);
  MEMORY[0x28223BE20](v25);
  v27 = &v92 - v26;
  sub_266C6DFE8(a1, &v92 - v26, &qword_2800C9AF8, &qword_266DAE460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (*v27)
    {
      if (qword_2800C9208 != -1)
      {
        swift_once();
      }

      v29 = sub_266DA94AC();
      __swift_project_value_buffer(v29, qword_2800CA810);
      v30 = sub_266DA948C();
      v31 = sub_266DAAAFC();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_28;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v107 = v33;
      *v32 = 136315138;
      v106 = v28;
      v34 = sub_266DAA72C();
      v36 = sub_266C22A3C(v34, v35, &v107);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_266C08000, v30, v31, "Unexpected error of %s when attempting to resolve location.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D5F2480](v33, -1, -1);
    }

    else
    {
      if ((v104 & 1) == 0)
      {
        if (qword_2800C9208 != -1)
        {
          swift_once();
        }

        v87 = sub_266DA94AC();
        __swift_project_value_buffer(v87, qword_2800CA810);
        v88 = sub_266DA948C();
        v89 = sub_266DAAB0C();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_266C08000, v88, v89, "Fetching location for friend timed out before coming back with a response.", v90, 2u);
          MEMORY[0x26D5F2480](v90, -1, -1);
        }

        v91 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
        v84 = 4;
        goto LABEL_29;
      }

      if (qword_2800C9208 != -1)
      {
        swift_once();
      }

      v81 = sub_266DA94AC();
      __swift_project_value_buffer(v81, qword_2800CA810);
      v30 = sub_266DA948C();
      v82 = sub_266DAAAEC();
      if (!os_log_type_enabled(v30, v82))
      {
LABEL_28:

        v83 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
        v84 = 5;
LABEL_29:
        v85 = FindFriendIntentResponse.init(code:userActivity:)(v84, 0);
        v105();

        return;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_266C08000, v30, v82, "Fetching location for friend timed out before coming back with a response. Completing with .failure", v32, 2u);
    }

    MEMORY[0x26D5F2480](v32, -1, -1);
    goto LABEL_28;
  }

  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF0, &unk_266DAF8E0) + 48);
  sub_266C6DF84(v27, v24);
  sub_266C6E08C(&v27[v37], v17, &qword_2800C9B20, &unk_266DB1EC0);
  if (qword_2800C9208 != -1)
  {
    swift_once();
  }

  v38 = sub_266DA94AC();
  v39 = __swift_project_value_buffer(v38, qword_2800CA810);
  v92 = v24;
  sub_266C36270(v24, v22, type metadata accessor for FriendLocation);
  v94 = v39;
  v40 = sub_266DA948C();
  v41 = sub_266DAAB0C();
  v42 = os_log_type_enabled(v40, v41);
  v93 = a4;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v107 = v44;
    *v43 = 136315138;
    v45 = v17;
    sub_266C36270(v22, v103, type metadata accessor for FriendLocation);
    v46 = sub_266DAA72C();
    v48 = v47;
    sub_266C6E034(v22, type metadata accessor for FriendLocation);
    v49 = sub_266C22A3C(v46, v48, &v107);

    *(v43 + 4) = v49;
    v17 = v45;
    _os_log_impl(&dword_266C08000, v40, v41, "Resolved location: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x26D5F2480](v44, -1, -1);
    MEMORY[0x26D5F2480](v43, -1, -1);
  }

  else
  {

    sub_266C6E034(v22, type metadata accessor for FriendLocation);
  }

  v99 = v17;
  sub_266C6DFE8(v17, v15, &qword_2800C9B20, &unk_266DB1EC0);
  v50 = sub_266DA948C();
  v51 = sub_266DAAB0C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v107 = v53;
    *v52 = 136315138;
    sub_266C6DFE8(v15, v96, &qword_2800C9B20, &unk_266DB1EC0);
    v54 = sub_266DAA72C();
    v56 = v55;
    sub_266C1825C(v15, &qword_2800C9B20, &unk_266DB1EC0);
    v57 = sub_266C22A3C(v54, v56, &v107);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_266C08000, v50, v51, "Resolved user location: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x26D5F2480](v53, -1, -1);
    MEMORY[0x26D5F2480](v52, -1, -1);
  }

  else
  {

    sub_266C1825C(v15, &qword_2800C9B20, &unk_266DB1EC0);
  }

  v58 = v105;
  v59 = v92;
  v61 = v101;
  v60 = v102;
  if ((v104 & 1) != 0 && (v62 = v98, sub_266C6DFE8(&v92[*(v100 + 32)], v98, &qword_2800C9B20, &unk_266DB1EC0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v61), sub_266C1825C(v62, &qword_2800C9B20, &unk_266DB1EC0), EnumTagSinglePayload == 1))
  {
    v64 = sub_266DA948C();
    v65 = sub_266DAAAEC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_266C08000, v64, v65, "Nil location in VOX. Completing with .failure", v66, 2u);
      MEMORY[0x26D5F2480](v66, -1, -1);
    }

    v67 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v68 = FindFriendIntentResponse.init(code:userActivity:)(5, 0);
  }

  else
  {
    v69 = objc_allocWithZone(type metadata accessor for FindFriendIntentResponse());
    v68 = FindFriendIntentResponse.init(code:userActivity:)(4, 0);
    type metadata accessor for INFriendLocation();
    v70 = v103;
    sub_266C36270(v59, v103, type metadata accessor for FriendLocation);
    sub_266C24CC8(v70, v71, v72, v73, v74, v75, v76, v77, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    v79 = v78;
    [v68 setFriendLocation_];

    sub_266C6DFE8(v99, v60, &qword_2800C9B20, &unk_266DB1EC0);
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
    {
      sub_266C1825C(v60, &qword_2800C9B20, &unk_266DB1EC0);
      v80 = 0;
    }

    else
    {
      type metadata accessor for SpeakableLocation();
      v86 = v95;
      sub_266C36270(v60, v95, type metadata accessor for Location);
      v80 = sub_266D6CE4C(v86);
      sub_266C6E034(v60, type metadata accessor for Location);
    }

    [v68 setUserLocation_];
  }

  (v58)(v68);

  sub_266C1825C(v99, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266C6E034(v59, type metadata accessor for FriendLocation);
}

void sub_266C6D6B4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_266C6D740(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_0_5();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v9 = [a1 friend];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 person];

    if (v11)
    {
      v12 = [v11 displayName];

      v13 = sub_266DAA70C();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v17 = [a1 friend];
        if (v17 && (v18 = v17, v19 = [v17 person], v18, v19))
        {
          v20 = [v19 nameComponents];

          if (v20)
          {
            sub_266DA729C();

            v21 = sub_266DA72DC();
            v22 = 0;
          }

          else
          {
            v21 = sub_266DA72DC();
            v22 = 1;
          }

          __swift_storeEnumTagSinglePayload(v5, v22, 1, v21);
          sub_266C6E08C(v5, v8, &qword_2800C9F80, &unk_266DB1ED0);
          sub_266DA72DC();
          if (__swift_getEnumTagSinglePayload(v8, 1, v21) != 1)
          {
            sub_266C1825C(v8, &qword_2800C9F80, &unk_266DB1ED0);
            goto LABEL_19;
          }
        }

        else
        {
          v23 = sub_266DA72DC();
          __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
        }

        sub_266C1825C(v8, &qword_2800C9F80, &unk_266DB1ED0);
      }
    }
  }

  v24 = [a1 friend];
  if (!v24)
  {
LABEL_19:
    LOBYTE(v26) = 0;
    return v26 & 1;
  }

  v25 = v24;
  v26 = [v24 person];

  if (v26)
  {
    v27 = [v26 relationship];

    if (v27)
    {
      sub_266DAA70C();

      v26 = sub_266DAA73C();
      v29 = v28;

      v31[2] = v26;
      v31[3] = v29;
      v31[0] = 0x646E65697266;
      v31[1] = 0xE600000000000000;
      sub_266C680F8();
      LOBYTE(v26) = sub_266DAACBC();

      return v26 & 1;
    }

    goto LABEL_19;
  }

  return v26 & 1;
}

id sub_266C6DA84(void *a1)
{
  v2 = [a1 sharesLocation];
  if (v2 && (v3 = v2, v4 = [v2 BOOLValue], v3, v4))
  {
    type metadata accessor for FindFriendFriendResolutionResult();
    return sub_266DA5B28(a1);
  }

  else
  {
    if (qword_2800C9208 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_2800C9208);
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CA810);
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_11();
      *v9 = 0;
      _os_log_impl(&dword_266C08000, v7, v8, "Resolved friend does not share their location.", v9, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE3B0;
    *(inited + 32) = a1;
    type metadata accessor for FindFriendFriendResolutionResult();
    v11 = a1;
    OUTLINED_FUNCTION_1_19();
    v13 = sub_266C6A8E0(inited, v12);
    swift_setDeallocating();
    sub_266C6F074();
    return sub_266C6AA38(5, v13);
  }
}

id FindFriendIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindFriendIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindFriendIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266C6DD34()
{
  result = qword_2800CA848;
  if (!qword_2800CA848)
  {
    sub_266DA8E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA848);
  }

  return result;
}

uint64_t type metadata accessor for FindFriendIntentHandler(uint64_t a1)
{
  result = qword_2800CA850;
  if (!qword_2800CA850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C6DDE0(uint64_t a1)
{
  result = type metadata accessor for FindFriendSessionManager(319);
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

_OWORD *sub_266C6DF38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm_2()
{

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266C6DF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C6DFE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v4;
}

uint64_t sub_266C6E034(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266C6E08C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_266C6E194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = sub_266DA999C();
  if (!v11)
  {
    v10 = sub_266DA99BC();
  }

  v12 = v10;
  v13 = v11;
  sub_266DA99FC();
  if (v14)
  {
    goto LABEL_6;
  }

  if (v13)
  {

LABEL_6:
    sub_266DAA77C();

    v15 = sub_266DA919C();
    v16 = 0;
    goto LABEL_7;
  }

  v15 = sub_266DA919C();
  v16 = 1;
LABEL_7:
  v17 = 1;
  v57 = v9;
  __swift_storeEnumTagSinglePayload(v9, v16, 1, v15);
  v18 = sub_266DA997C();
  v53 = v19;
  v54 = v18;
  sub_266DA9A0C();
  v55 = v13;
  v56 = v12;
  if (v20)
  {
    sub_266DAA77C();

    v17 = 0;
  }

  v21 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v7, v17, 1, v21);
  v22 = sub_266DA99CC();
  v51 = v23;
  v52 = v22;
  v24 = sub_266DA99EC();
  v49 = v25;
  v50 = v24;
  v26 = sub_266DA998C();
  v47 = v27;
  v48 = v26;
  v46 = sub_266DA99AC();
  v28 = sub_266DA9A1C();
  (*(*(v28 - 8) + 8))(a1, v28);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
  v29 = type metadata accessor for Address(0);
  v30 = (a2 + v29[5]);
  v31 = (a2 + v29[6]);
  v32 = v29[8];
  v33 = v7;
  v34 = (a2 + v29[7]);
  __swift_storeEnumTagSinglePayload(a2 + v32, 1, 1, v21);
  v35 = (a2 + v29[9]);
  v36 = (a2 + v29[10]);
  v37 = v29[11];
  v38 = v29[12];
  v39 = (a2 + v37);
  sub_266C64CA4(v57, a2);
  v40 = v53;
  *v30 = v54;
  v30[1] = v40;
  *v31 = 0;
  v31[1] = 0;
  v41 = v55;
  *v34 = v56;
  v34[1] = v41;
  result = sub_266C64CA4(v33, a2 + v32);
  v43 = v51;
  *v35 = v52;
  v35[1] = v43;
  v44 = v49;
  *v36 = v50;
  v36[1] = v44;
  v45 = v47;
  *v39 = v48;
  v39[1] = v45;
  *(a2 + v38) = v46;
  return result;
}

uint64_t sub_266C6E424()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F238);
  v1 = __swift_project_value_buffer(v0, qword_28156F238);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FindMyFriendFlowProvider.init()@<X0>(uint64_t a2@<X8>)
{
  sub_266DA81BC();
  v21[3] = &type metadata for AccountStateProvider;
  v21[4] = &off_28785FB48;
  v21[0] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v21[1] = 0xD000000000000015;
  v21[2] = 0x8000000266DC2130;
  v3 = type metadata accessor for AppInstalledStateProvider();
  swift_allocObject();
  v21[8] = v3;
  v21[5] = sub_266D1E26C();
  v21[9] = &off_287864960;
  v21[13] = &type metadata for SFMUserDefaultsSettingProvider;
  v21[14] = &protocol witness table for SFMUserDefaultsSettingProvider;
  sub_266C233D0(v23, &v22);
  v4 = sub_266DA7E7C();
  OUTLINED_FUNCTION_3_15(v4);
  v20 = sub_266DA7E6C();
  *(a2 + 224) = &unk_287867FA0;
  *(a2 + 232) = &off_287867FB0;
  v5 = sub_266DA942C();
  v6 = sub_266DA941C();
  v7 = MEMORY[0x277D5FDD8];
  *(a2 + 264) = v5;
  *(a2 + 272) = v7;
  *(a2 + 240) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287867F78;
  v9 = sub_266C6F020();
  *(inited + 64) = v9;
  v10 = swift_allocObject();
  *(inited + 32) = v10;
  *(v10 + 16) = "SiriFindMy";
  *(v10 + 24) = 10;
  *(v10 + 32) = 2;
  *(v10 + 40) = "FindMyFriendsNLX";
  *(v10 + 48) = 16;
  *(v10 + 56) = 2;
  v19 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F5BC(&qword_2800CA8A0, &qword_266DB1F90);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_266DAE4A0;
  *(v11 + 56) = &unk_287867F78;
  *(v11 + 64) = v9;
  v12 = swift_allocObject();
  *(v11 + 32) = v12;
  *(v12 + 16) = "SiriFindMy";
  *(v12 + 24) = 10;
  *(v12 + 32) = 2;
  *(v12 + 40) = "FindMyFriendsNLX";
  *(v12 + 48) = 16;
  *(v12 + 56) = 2;
  v13 = sub_266D7E674(v11);
  swift_setDeallocating();
  sub_266C6F5BC(&qword_2800CA8A0, &qword_266DB1F90);
  v14 = sub_266DA941C();
  *(a2 + 320) = v5;
  *(a2 + 328) = MEMORY[0x277D5FDD8];
  *(a2 + 296) = v14;
  *(a2 + 288) = v13 & 1;
  *(a2 + 24) = &type metadata for FindMyFriendFlowFactoryImpl;
  *(a2 + 32) = &off_2878616E8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D5BD58];
  *a2 = v15;
  *(v15 + 40) = v3;
  *(v15 + 48) = v16;
  *(v15 + 16) = v20;
  *(v15 + 80) = &unk_287867FA0;
  *(v15 + 88) = &off_287867FB0;
  sub_266C6F0C8(a2 + 200, v15 + 96);
  sub_266C6F124(a2 + 288, v15 + 184);
  *(v15 + 176) = v19 & 1;
  *(a2 + 64) = &type metadata for FMFStateValidator;
  *(a2 + 72) = &off_2878669B8;
  v17 = swift_allocObject();
  *(a2 + 40) = v17;
  sub_266C6F180(v21, v17 + 16);
  sub_266C233D0(v23, a2 + 80);
  *(a2 + 144) = v3;
  *(a2 + 152) = v16;
  *(a2 + 120) = v20;
  *(a2 + 184) = &unk_287867FA0;
  *(a2 + 192) = &off_287867FB0;

  sub_266C6F1DC(v21);
  result = __swift_destroy_boxed_opaque_existential_0(v23);
  *(a2 + 280) = v19 & 1;
  return result;
}

uint64_t FindMyFriendFlowProvider.makeFlow(parse:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedLocationVisibilityInvocationFlow(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = (v6 - v5);
  sub_266CD6764(a1, v42);
  if (v43 != 255)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v8 = sub_266D52FB4();
    if (v8 != 5)
    {
      v11 = v8;
      if (qword_28156F230 != -1)
      {
        swift_once();
      }

      v12 = sub_266DA94AC();
      __swift_project_value_buffer(v12, qword_28156F238);
      v13 = sub_266DA948C();
      v14 = sub_266DAAAEC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v40[0] = v16;
        *v15 = 136315138;
        LOBYTE(v35) = v11;
        v17 = sub_266DAA72C();
        v19 = sub_266C22A3C(v17, v18, v40);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_266C08000, v13, v14, "Find My Friends has an invalid state of: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x26D5F2480](v16, -1, -1);
        MEMORY[0x26D5F2480](v15, -1, -1);
      }

      OUTLINED_FUNCTION_1_20();
      v20 = sub_266CBC0E0(v11);
      sub_266C6ED38(v20, 2);
      OUTLINED_FUNCTION_6_13();
      v21 = v42;
      goto LABEL_26;
    }
  }

  sub_266C6F230(v42, v40);
  if (v41 != 255)
  {
    sub_266C6F230(v40, &v35);
    v9 = v35;
    switch(v39)
    {
      case 1:
        OUTLINED_FUNCTION_1_20();
        v10 = sub_266CBB330();
        goto LABEL_22;
      case 2:
        sub_266C0B0D8(&v35, v32);
        OUTLINED_FUNCTION_1_20();
        v23 = sub_266CBB89C();
        v24 = v33;
        v25 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v26 = sub_266C16430(v24, v25);
        sub_266C6ED38(v23, v26);
        OUTLINED_FUNCTION_6_13();
        sub_266C6F2A0(v42);
        __swift_destroy_boxed_opaque_existential_0(v32);
        goto LABEL_25;
      case 3:
        if (qword_2800C9178 != -1)
        {
          swift_once();
        }

        FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
        v28 = __swift_project_value_buffer(FriendSessionManager, qword_2800E61C0);
        sub_266C6F3B0(v28, v7 + *(v4 + 20));
        *v7 = v9;
        sub_266C6F414();
        v2 = sub_266DA798C();
        sub_266C6F46C(v7);
        goto LABEL_24;
      case 4:
        if (v37 | v38 | v35 | v36 | *(&v35 + 1) && ((v22 = v37 | v38 | v36 | *(&v35 + 1), v35 != 1) || v22))
        {
          if (v35 == 2 && !v22)
          {
            sub_266C6F2A0(v42);
            sub_266C6F308(&v35);
            goto LABEL_12;
          }

          sub_266C6F35C();
          v2 = sub_266DA798C();
        }

        else
        {
          sub_266DA7FEC();
          v29 = sub_266DA75FC();
          OUTLINED_FUNCTION_3_15(v29);
          v32[0] = sub_266DA75EC();
          v30 = sub_266DA798C();

          sub_266C6ED38(v30, 2);
          OUTLINED_FUNCTION_6_13();
        }

LABEL_24:
        sub_266C6F2A0(v42);
LABEL_25:
        v21 = v40;
        break;
      default:
        OUTLINED_FUNCTION_1_20();
        v10 = sub_266CBA6C4();
LABEL_22:
        sub_266C6ED38(v10, 2);
        OUTLINED_FUNCTION_6_13();
        sub_266C6F2A0(v42);
        sub_266C6F308(&v35);
        goto LABEL_25;
    }

LABEL_26:
    sub_266C6F2A0(v21);
    return v2;
  }

  sub_266C6F2A0(v42);
LABEL_12:
  sub_266C6F2A0(v40);
  return 0;
}

uint64_t sub_266C6ED38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_266DA788C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v9 = v8 - v7;
  v10 = sub_266DA926C();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266DB1EE0;
  type metadata accessor for SiriFindMyCommonCATsSimple(0);

  sub_266DA925C();
  v12 = sub_266DA91CC();
  sub_266C233D0((v2 + 15), &__src[1]);
  sub_266C233D0((v2 + 20), &__src[6]);
  sub_266DA7E7C();
  swift_allocObject();
  __src[0] = v12;
  __src[11] = sub_266DA7E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA888, &qword_266DB5D70);
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  memcpy((v13 + 24), __src, 0x60uLL);
  __src[0] = v13;
  sub_266C6F6F4();
  v14 = sub_266DA799C();

  *(v11 + 32) = v14;
  sub_266D2AF8C(a2);
  v15 = sub_266DA785C();
  (*(v6 + 8))(v9, v5);
  *(v11 + 40) = v15;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *(v11 + 48) = sub_266CBC7A8();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_266DAE3B0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *(v16 + 32) = sub_266CBC614();
  __src[0] = sub_266CC5B9C(a1, v11, v16);
  __src[1] = v17;
  __src[2] = v18;
  sub_266C6F758();
  v19 = sub_266DA798C();

  return v19;
}

unint64_t sub_266C6F020()
{
  result = qword_2800CA868;
  if (!qword_2800CA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA868);
  }

  return result;
}

uint64_t sub_266C6F074()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266C6F230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C6F2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266C6F35C()
{
  result = qword_2800CA878;
  if (!qword_2800CA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA878);
  }

  return result;
}

uint64_t sub_266C6F3B0(uint64_t a1, uint64_t a2)
{
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  (*(*(FriendSessionManager - 8) + 16))(a2, a1, FriendSessionManager);
  return a2;
}

unint64_t sub_266C6F414()
{
  result = qword_2800CA880;
  if (!qword_2800CA880)
  {
    type metadata accessor for SharedLocationVisibilityInvocationFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA880);
  }

  return result;
}

uint64_t sub_266C6F46C(uint64_t a1)
{
  v2 = type metadata accessor for SharedLocationVisibilityInvocationFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C6F4C8()
{
  sub_266DA7C9C();
  OUTLINED_FUNCTION_5_13();
  v0 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266C6F53C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_5_13();
  v0 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266C6F5BC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_27();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_266C6F60C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266C6F64C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266C6F6F4()
{
  result = qword_2800CA890;
  if (!qword_2800CA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA888, &qword_266DB5D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA890);
  }

  return result;
}

unint64_t sub_266C6F758()
{
  result = qword_2800CA898;
  if (!qword_2800CA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA898);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_14()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 17);
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_6_13()
{
}

uint64_t sub_266C6F86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C0, &qword_266DB1FB0);
  swift_allocObject();
  result = sub_266DA96FC();
  a3[5] = result;
  return result;
}

uint64_t sub_266C6F900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266C6F940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C6F9A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = v1[5];
  v6 = *(v4 + 16);
  swift_retain_n();
  v6(sub_266C6FC94, v5, sub_266C6FC98, v5, v3, v4);

  sub_266C6FCA0(v1, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  v7[1] = v12[0];
  v7[2] = v8;
  v7[3] = v12[2];
  v9 = sub_266DA96AC();
  swift_allocObject();
  result = sub_266DA96BC();
  v11 = MEMORY[0x277CBCDA0];
  a1[3] = v9;
  a1[4] = v11;
  *a1 = result;
  return result;
}

uint64_t sub_266C6FB18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_266C6FB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_266DA96EC();
}

unint64_t sub_266C6FC40()
{
  result = qword_28156F398;
  if (!qword_28156F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F398);
  }

  return result;
}

id sub_266C6FCE0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_266C70184(a2, &v30 - v16);
  type metadata accessor for Friend(0);
  if (OUTLINED_FUNCTION_0_28(v17) == 1)
  {
    sub_266C3A088(v17, &qword_2800CA8C8, &unk_266DB2130);
    v18 = 0;
  }

  else
  {

    sub_266C701F4(v17);
    v18 = sub_266DAA6FC();
  }

  v19 = objc_allocWithZone(v3);
  v20 = sub_266DAA6FC();
  v21 = [v19 initWithIdentifier:v18 displayString:v20];

  sub_266C70184(a2, v15);
  if (OUTLINED_FUNCTION_0_28(v15) == 1)
  {
    v22 = v21;
    sub_266C3A088(v15, &qword_2800CA8C8, &unk_266DB2130);
    v23 = 0;
  }

  else
  {
    v24 = v21;

    sub_266C701F4(v15);
    v23 = sub_266DAA6FC();
  }

  [a1 setCustomIdentifier_];

  [v21 setPerson_];
  sub_266C70184(a2, v12);
  if (OUTLINED_FUNCTION_0_28(v12) == 1)
  {
    sub_266C3A088(v12, &qword_2800CA8C8, &unk_266DB2130);
    v25 = 0;
  }

  else
  {
    v26 = v12[56];
    sub_266C701F4(v12);
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v21 setSharesLocation_];

  sub_266C70184(a2, v9);
  if (OUTLINED_FUNCTION_0_28(v9) == 1)
  {
    sub_266C3A088(v9, &qword_2800CA8C8, &unk_266DB2130);
    v27 = 0;
  }

  else
  {
    v28 = v9[57];
    sub_266C701F4(v9);
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v21 setFollowsMyLocation_];

  sub_266C3A088(a2, &qword_2800CA8C8, &unk_266DB2130);
  return v21;
}

uint64_t sub_266C70048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = [v2 person];
  if (v7)
  {
    sub_266D4E120(v7, v6);
    v8 = sub_266DA957C();
    if (!__swift_getEnumTagSinglePayload(v6, 1, v8))
    {
      (*(*(v8 - 8) + 32))(a1, v6, v8);
      v10 = a1;
      v11 = 0;
      v9 = v8;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    sub_266C3A088(v6, &qword_2800CA8B8, &qword_266DB30F0);
  }

  v9 = sub_266DA957C();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t sub_266C70184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C701F4(uint64_t a1)
{
  v2 = type metadata accessor for Friend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_266C70278()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA8D0);
  v1 = __swift_project_value_buffer(v0, qword_2800CA8D0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C70340(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8E8, &qword_266DB20B8);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8F0, &qword_266DB20C0);
  OUTLINED_FUNCTION_0_2();
  v51 = v9;
  v52 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8F8, &qword_266DB20C8);
  OUTLINED_FUNCTION_0_2();
  v55 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA900, &qword_266DB20D0);
  OUTLINED_FUNCTION_0_2();
  v56 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v54 = &v49 - v19;
  v20 = [a1 person];
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = sub_266C72420(v20);
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = v21;
  if (!sub_266C3A14C())
  {

LABEL_15:
    if (qword_2800C9218 != -1)
    {
      swift_once();
    }

    v34 = sub_266DA94AC();
    __swift_project_value_buffer(v34, qword_2800CA8D0);
    v35 = sub_266DA948C();
    v36 = sub_266DAAB0C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266C08000, v35, v36, "FMFCoreFriendProvider: No siri matches found on skeleton person", v37, 2u);
      MEMORY[0x26D5F2480](v37, -1, -1);
    }

    *&v59[0] = 0;
    BYTE8(v59[0]) = 5;
    sub_266DA977C();
    sub_266C230E8(&qword_2800CA908, &qword_2800CA8E8, &qword_266DB20B8, MEMORY[0x277CBCE80]);
    v38 = sub_266DA97EC();
    (*(v4 + 8))(v7, v2);
    return v38;
  }

  sub_266CB9F54();
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x26D5F1780](0, v22);
  }

  else
  {
    v23 = *(v22 + 32);
  }

  v24 = v23;
  v25 = [v23 recommendation];

  v26 = sub_266C3A14C();
  if (!v26)
  {

    v33 = MEMORY[0x277D84F90];
LABEL_21:
    v39 = v53;
    v40 = sub_266C70A70(v33);

    v61 = *(*__swift_project_boxed_opaque_existential_1(v39, v39[3]) + 16);
    sub_266C72488(v39, v59);
    v41 = swift_allocObject();
    v42 = v59[1];
    *(v41 + 16) = v59[0];
    *(v41 + 32) = v42;
    *(v41 + 48) = v60;
    *(v41 + 56) = v40;
    *(v41 + 64) = v25 == 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
    v43 = MEMORY[0x277CBCD90];
    sub_266C230E8(&qword_2800CA918, &qword_2800CA910, &qword_266DB20D8, MEMORY[0x277CBCD90]);
    sub_266DA984C();

    __swift_project_boxed_opaque_existential_1(v39, v39[3]);

    v45 = sub_266C71930(v44, sub_266C71920, 0);

    (*(v51 + 8))(v12, v52);
    v61 = v45;
    *&v59[0] = 2;
    BYTE8(v59[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA920, &qword_266DB20E0);
    sub_266C230E8(&qword_2800CA928, &qword_2800CA920, &qword_266DB20E0, v43);
    sub_266DA980C();

    sub_266C230E8(&qword_2800CA930, &qword_2800CA8F8, &qword_266DB20C8, MEMORY[0x277CBCB78]);
    v46 = v54;
    v47 = v57;
    sub_266DA988C();
    (*(v55 + 8))(v16, v47);
    sub_266C230E8(&qword_2800CA938, &qword_2800CA900, &qword_266DB20D0, MEMORY[0x277CBCC58]);
    v48 = v58;
    v38 = sub_266DA97EC();
    (*(v56 + 8))(v46, v48);
    return v38;
  }

  v27 = v26;
  v50 = v25;
  *&v59[0] = MEMORY[0x277D84F90];
  result = sub_266DAAE8C();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26D5F1780](v29, v22);
      }

      else
      {
        v30 = *(v22 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v32 = [v30 person];

      sub_266DAAE6C();
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
    }

    while (v27 != v29);

    v33 = *&v59[0];
    v25 = v50;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_266C70A70(uint64_t a1)
{
  v2 = sub_266C3A14C();
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v4 = v2;
  v49 = MEMORY[0x277D84F90];
  result = sub_266C387BC(0, v2 & ~(v2 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v49;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D5F1780](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v9 contactIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_266DAA70C();
        v14 = v13;
      }

      else
      {

        v12 = 0;
        v14 = 0;
      }

      v16 = *(v49 + 16);
      v15 = *(v49 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_266C387BC((v15 > 1), v16 + 1, 1);
      }

      ++v6;
      *(v49 + 16) = v16 + 1;
      v17 = v49 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v6);
    v3 = MEMORY[0x277D84F90];
LABEL_15:
    sub_266CB8718(v7);
    v19 = v18;
    if (qword_2800C9218 != -1)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800CA8D0);

      v21 = sub_266DA948C();
      v22 = sub_266DAAB0C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        result = sub_266C3A14C();
        v24 = *(v19 + 16);
        v25 = __OFSUB__(result, v24);
        v26 = result - v24;
        if (v25)
        {
          goto LABEL_60;
        }

        *(v23 + 4) = v26;

        _os_log_impl(&dword_266C08000, v21, v22, "FMFCoreFriendProvider: removed %ld duplicate contacts in siri matches", v23, 0xCu);
        MEMORY[0x26D5F2480](v23, -1, -1);
      }

      else
      {
      }

      v45 = v3;
      v50 = v3;
      v27 = v19 + 56;
      v28 = 1 << *(v19 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v3 = v29 & *(v19 + 56);
      v30 = (v28 + 63) >> 6;

      v31 = 0;
      v46 = v30;
      v47 = v19 + 56;
      v48 = v19;
LABEL_23:
      v32 = v31;
      if (!v3)
      {
        goto LABEL_25;
      }

      while (2)
      {
        v31 = v32;
LABEL_28:
        v33 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v34 = (*(v19 + 48) + ((v31 << 10) | (16 * v33)));
        v36 = *v34;
        v35 = v34[1];
        v37 = sub_266C3A14C();

        v38 = 0;
        v19 = a1 & 0xC000000000000001;
        while (v37 != v38)
        {
          if (v19)
          {
            v39 = MEMORY[0x26D5F1780](v38, a1);
          }

          else
          {
            if (v38 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v39 = *(a1 + 8 * v38 + 32);
          }

          v40 = v39;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v41 = sub_266C39CB4(v39);
          if (v42)
          {
            if (v35)
            {
              if (v41 == v36 && v42 == v35)
              {

LABEL_50:

LABEL_51:
                MEMORY[0x26D5F1270](v41);
                if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_266DAA95C();
                }

                sub_266DAA96C();
                v45 = v50;
                v27 = v47;
                v19 = v48;
                v30 = v46;
                goto LABEL_23;
              }

              v44 = sub_266DAB17C();

              if (v44)
              {
                goto LABEL_50;
              }

              v19 = a1 & 0xC000000000000001;
            }

            else
            {
            }
          }

          else
          {
            if (!v35)
            {
              goto LABEL_51;
            }
          }

          ++v38;
        }

        v32 = v31;
        v27 = v47;
        v19 = v48;
        v30 = v46;
        if (v3)
        {
          continue;
        }

        break;
      }

LABEL_25:
      while (1)
      {
        v31 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v31 >= v30)
        {

          return v45;
        }

        v3 = *(v27 + 8 * v31);
        ++v32;
        if (v3)
        {
          goto LABEL_28;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      swift_once();
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_266C70F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_266C70F48(a2, *a1, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_266C70F48(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v82 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v91 = v79 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v79 - v10;
  v93 = type metadata accessor for Friend(0);
  v90 = *(v93 - 8);
  v12 = MEMORY[0x28223BE20](v93);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = v79 - v15;
  v89 = *(a2 + 16);
  if (v89)
  {
    if (qword_2800C9218 != -1)
    {
LABEL_70:
      swift_once();
    }

    v79[3] = v3;
    v16 = sub_266DA94AC();
    v17 = __swift_project_value_buffer(v16, qword_2800CA8D0);

    v80 = v17;
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = MEMORY[0x277D84F90];
    v87 = a2;
    v81 = MEMORY[0x277D84F90];
    if (v20)
    {
      LODWORD(v88) = v19;
      v92 = v18;
      v22 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v94 = v21;
      v95 = v85;
      v86 = v22;
      *v22 = 136315138;
      v23 = v89;
      sub_266C387BC(0, v89, 0);
      v24 = v94;
      v25 = a2 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v26 = *(v90 + 72);
      do
      {
        v27 = v84;
        sub_266C676D4(v25, v84);
        v29 = *(v27 + 32);
        v28 = *(v27 + 40);

        sub_266C701F4(v27);
        v94 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_266C387BC((v30 > 1), v31 + 1, 1);
          v24 = v94;
        }

        *(v24 + 16) = v31 + 1;
        v32 = v24 + 16 * v31;
        *(v32 + 32) = v29;
        *(v32 + 40) = v28;
        v25 += v26;
        --v23;
      }

      while (v23);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      v39 = MEMORY[0x26D5F12B0](v24, v38);
      v41 = v40;

      v42 = sub_266C22A3C(v39, v41, &v95);

      v43 = v86;
      *(v86 + 4) = v42;
      v44 = v92;
      _os_log_impl(&dword_266C08000, v92, v88, "FMFCoreFriendProvider: Friends contact identifier %s", v43, 0xCu);
      v45 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x26D5F2480](v45, -1, -1);
      MEMORY[0x26D5F2480](v43, -1, -1);

      a2 = v87;
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v95 = v21;
    v3 = v83;
    v88 = sub_266C3A14C();
    v46 = 0;
    v92 = (v3 & 0xC000000000000001);
    v85 = (v3 + 32);
    v86 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    if (v46 != v88)
    {
      if (v92)
      {
        v47 = MEMORY[0x26D5F1780](v46, v83);
      }

      else
      {
        if (v46 >= *(v86 + 16))
        {
          goto LABEL_69;
        }

        v47 = v85[v46];
      }

      v48 = v47;
      if (!__OFADD__(v46++, 1))
      {
        v50 = v89;
        v51 = a2 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
        v52 = *(v90 + 72);
        while (1)
        {
          if (!v50)
          {
            __break(1u);
            goto LABEL_67;
          }

          sub_266C676D4(v51, v14);
          v54 = *(v14 + 4);
          v53 = *(v14 + 5);
          v55 = sub_266C39CB4(v48);
          if (v53)
          {
            if (v56)
            {
              if (v54 == v55 && v53 == v56)
              {

LABEL_36:
                sub_266C72608(v14, v11);
                v59 = 0;
LABEL_37:
                v3 = v93;
                __swift_storeEnumTagSinglePayload(v11, v59, 1, v93);
                v60 = v91;
                sub_266C70184(v11, v91);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v3);
                a2 = v87;
                if (EnumTagSinglePayload == 1)
                {
                  sub_266C725A0(v11);
                }

                else
                {
                  v62 = v84;
                  sub_266C72608(v91, v84);
                  type metadata accessor for INFriend();
                  v63 = v82;
                  sub_266C676D4(v62, v82);
                  __swift_storeEnumTagSinglePayload(v63, 0, 1, v93);
                  LODWORD(v3) = sub_266C6FCE0(v48, v63);
                  sub_266C701F4(v62);
                  v64 = sub_266C725A0(v11);
                  MEMORY[0x26D5F1270](v64);
                  if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_266DAA95C();
                  }

                  sub_266DAA96C();
                  v81 = v95;
                }

                goto LABEL_16;
              }

              v58 = sub_266DAB17C();

              if (v58)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            if (!v56)
            {
              goto LABEL_36;
            }
          }

          sub_266C701F4(v14);
          v51 += v52;
          if (!--v50)
          {
            v59 = 1;
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v65 = v81;
    if (sub_266C3A14C())
    {
      if (sub_266C3A14C() == 1)
      {
        sub_266CB9F54();
        if ((v65 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x26D5F1780](0, v65);
        }

        else
        {
          v66 = *(v65 + 32);
        }

        v37 = v66;

        return v37;
      }

      return v65;
    }

    v67 = sub_266DA948C();
    v68 = sub_266DAAB0C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_266C08000, v67, v68, "FMFCoreFriendProvider: No contact ids in siri matches matched friends in FMF", v69, 2u);
      MEMORY[0x26D5F2480](v69, -1, -1);
    }

    v70 = v83;
    v71 = sub_266C3A14C();
    v37 = MEMORY[0x277D84F90];
    v72 = v82;
    if (v71)
    {
      v73 = v71;
      v95 = MEMORY[0x277D84F90];
      sub_266DAAE8C();
      if (v73 < 0)
      {
        __break(1u);
        goto LABEL_73;
      }

      type metadata accessor for INFriend();
      v74 = 0;
      do
      {
        if (v92)
        {
          v75 = MEMORY[0x26D5F1780](v74, v70);
        }

        else
        {
          v75 = *(v70 + 8 * v74 + 32);
        }

        v76 = v75;
        ++v74;
        __swift_storeEnumTagSinglePayload(v72, 1, 1, v93);
        sub_266C6FCE0(v76, v72);
        sub_266DAAE6C();
        sub_266DAAE9C();
        sub_266DAAEAC();
        sub_266DAAE7C();
      }

      while (v73 != v74);
      v37 = v95;
      if (v73 > 1)
      {
        return v37;
      }
    }

    if (!sub_266C3A14C())
    {
LABEL_67:

      return 0;
    }

    sub_266CB9F54();
    if ((v37 & 0xC000000000000001) == 0)
    {
      v77 = *(v37 + 32);
LABEL_63:
      v65 = v77;

      return v65;
    }

LABEL_73:
    v77 = MEMORY[0x26D5F1780](0, v37);
    goto LABEL_63;
  }

  if (qword_2800C9218 != -1)
  {
    swift_once();
  }

  v33 = sub_266DA94AC();
  __swift_project_value_buffer(v33, qword_2800CA8D0);
  v34 = sub_266DA948C();
  v35 = sub_266DAAB0C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_266C08000, v34, v35, "FMFCoreFriendProvider: manager reported no friends", v36, 2u);
    MEMORY[0x26D5F2480](v36, -1, -1);
  }

  return 1;
}

BOOL sub_266C71834(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 >= 3u)
  {
    if (qword_2800C9218 != -1)
    {
      swift_once();
    }

    v3 = sub_266DA94AC();
    __swift_project_value_buffer(v3, qword_2800CA8D0);
    v4 = sub_266DA948C();
    v5 = sub_266DAAB0C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_266C08000, v4, v5, "FMFCoreFriendProvider: Filtering out undesirable FriendRecommendation", v6, 2u);
      MEMORY[0x26D5F2480](v6, -1, -1);
    }
  }

  return v2 < 3;
}

uint64_t sub_266C71930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA940, &qword_266DB20E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA948, &qword_266DB20F0);
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v27 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA950, &qword_266DB20F8);
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA958, &qword_266DB2100);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v40 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA960, &qword_266DB2108);
  v16 = sub_266C230E8(&qword_2800CA968, &qword_2800CA960, &qword_266DB2108, MEMORY[0x277CBCD90]);
  sub_266C724D0();
  sub_266DA993C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8F0, &qword_266DB20C0);
  v18 = sub_266C230E8(&qword_2800CA978, &qword_2800CA8F0, &qword_266DB20C0, MEMORY[0x277CBCC08]);
  sub_266C230E8(&qword_2800CA980, &qword_2800CA940, &qword_266DB20E8, MEMORY[0x277CBCBA0]);
  sub_266DA981C();
  (*(v5 + 8))(v7, v4);
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_266C72540;
  *(v21 + 24) = v19;
  sub_266C230E8(&qword_2800CA988, &qword_2800CA948, &qword_266DB20F0, MEMORY[0x277CBCAF0]);

  v22 = v28;
  sub_266DA98AC();

  (*(v31 + 8))(v9, v22);
  v36 = v17;
  v37 = v27;
  v38 = v18;
  v39 = v16;
  swift_getKeyPath();
  sub_266C230E8(&qword_2800CA990, &qword_2800CA950, &qword_266DB20F8, MEMORY[0x277CBCC90]);
  v23 = v32;
  sub_266DA983C();

  (*(v35 + 8))(v11, v23);
  sub_266C230E8(&qword_2800CA998, &qword_2800CA958, &qword_266DB2100, MEMORY[0x277CBCB20]);
  v24 = v33;
  v25 = sub_266DA97EC();
  (*(v34 + 8))(v15, v24);
  return v25;
}

uint64_t sub_266C71E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9A8, &qword_266DB2140);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9B0, &qword_266DB2148);
  OUTLINED_FUNCTION_0_2();
  v42 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9B8, &qword_266DB2150);
  OUTLINED_FUNCTION_0_2();
  v46 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C0, &qword_266DB2158);
  OUTLINED_FUNCTION_0_2();
  v44 = v19;
  v45 = v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  v51 = a4;
  v52 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA960, &qword_266DB2108);
  v24 = MEMORY[0x277CBCD90];
  v25 = sub_266C230E8(&qword_2800CA968, &qword_2800CA960, &qword_266DB2108, MEMORY[0x277CBCD90]);
  sub_266DA993C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
  v27 = sub_266C230E8(&qword_2800CA9D0, &qword_2800CA9C8, qword_266DB2160, v24);
  sub_266C230E8(&qword_2800CA9D8, &qword_2800CA9A8, &qword_266DB2140, MEMORY[0x277CBCBA0]);
  v28 = v38;
  sub_266DA981C();
  (*(v7 + 8))(v10, v28);
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 16) = v40;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_266C726B8;
  *(v31 + 24) = v29;
  sub_266C230E8(&qword_2800CA9E0, &qword_2800CA9B0, &qword_266DB2148, MEMORY[0x277CBCAF0]);

  v32 = v39;
  sub_266DA98AC();

  (*(v42 + 8))(v14, v32);
  v47 = v26;
  v48 = v37;
  v49 = v27;
  v50 = v25;
  swift_getKeyPath();
  sub_266C230E8(&qword_2800CA9E8, &qword_2800CA9B8, &qword_266DB2150, MEMORY[0x277CBCC90]);
  v33 = v43;
  sub_266DA983C();

  (*(v46 + 8))(v18, v33);
  sub_266C230E8(&qword_2800CA9F0, &qword_2800CA9C0, &qword_266DB2158, MEMORY[0x277CBCB20]);
  v34 = v44;
  v35 = sub_266DA97EC();
  (*(v45 + 8))(v23, v34);
  return v35;
}

uint64_t sub_266C7238C(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t *))
{
  v6 = a1;
  v7 = a2;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4(&v6);
  }

  return v4 & 1;
}

uint64_t sub_266C723D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v5 = a1;
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3(&v5);
  }

  return v3 & 1;
}

uint64_t sub_266C72420(void *a1)
{
  v2 = [a1 scoredAlternatives];

  if (!v2)
  {
    return 0;
  }

  sub_266C7266C();
  v3 = sub_266DAA93C();

  return v3;
}

unint64_t sub_266C724D0()
{
  result = qword_2800CA970;
  if (!qword_2800CA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA970);
  }

  return result;
}

uint64_t sub_266C72548(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v6 = *a1;
  v7 = v3;
  return a2(&v6, v4) & 1;
}

uint64_t sub_266C725A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C72608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_266C7266C()
{
  result = qword_2800CA9A0;
  if (!qword_2800CA9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CA9A0);
  }

  return result;
}

uint64_t sub_266C726C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  return v2(&v5, v3) & 1;
}

uint64_t sub_266C72740(uint64_t a1)
{
  result = sub_266DAAC1C();
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

uint64_t sub_266C72804()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA9F8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA9F8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266C728CC()
{
  result = *(v0 + *(*v0 + 128));
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

void sub_266C728F8(uint64_t a1)
{
  sub_266C728CC();
  v3 = *(*v1 + 128);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_266C729B8@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v73 = a2;
  v74 = *a1;
  v5 = v74;
  v6 = *(v74 + 80);
  v7 = sub_266DAAC1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - v17;
  v19 = *(v6 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v68 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v24 = *(v5 + 120);
  swift_beginAccess();
  v25 = *(v8 + 16);
  v75 = v24;
  v76 = v25;
  v77 = v8 + 16;
  v25(v18, &a1[v24], v7);
  v78 = v6;
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    v72 = v19;
    (*(v8 + 8))(v18, v7);
LABEL_9:
    v37 = v7;
    v38 = v75;
    v76(v15, &a1[v75], v7);
    if (__swift_getEnumTagSinglePayload(v15, 1, v78))
    {
      v67 = *(v8 + 8);
      v67(v15, v7);
      v39 = 0;
    }

    else
    {
      v40 = v72;
      v41 = v68;
      v42 = v78;
      (*(v72 + 16))(v68, v15, v78);
      v67 = *(v8 + 8);
      v67(v15, v7);
      v43 = (*(*(v74 + 88) + 8))(v42);
      (*(v40 + 8))(v41, v42);
      v39 = (v43 & 1) == 0;
    }

    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v44 = sub_266DA94AC();
    __swift_project_value_buffer(v44, qword_2800CA9F8);

    v45 = sub_266DA948C();
    v46 = sub_266DAAB0C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v7;
      v49 = v48;
      v79[0] = v48;
      *v47 = 136315394;
      v50 = sub_266DAAE0C();
      v52 = v51;

      v53 = sub_266C22A3C(v50, v52, v79);
      v54 = v73;

      *(v47 + 4) = v53;
      *(v47 + 12) = 1024;
      *(v47 + 14) = v39;
      _os_log_impl(&dword_266C08000, v45, v46, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v47, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v55 = v49;
      v37 = v69;
      MEMORY[0x26D5F2480](v55, -1, -1);
      v56 = v47;
      v38 = v75;
      MEMORY[0x26D5F2480](v56, -1, -1);
    }

    else
    {

      v54 = v73;
    }

    v57 = v72;
    (*(a1 + 2))();
    v58 = v70;
    v76(v70, &a1[v38], v37);
    if (__swift_getEnumTagSinglePayload(v58, 1, v78))
    {
      v67(v58, v37);
      v59 = *(v57 + 16);
    }

    else
    {
      v59 = *(v57 + 16);
      v69 = v37;
      v60 = v68;
      v61 = v78;
      v59(v68, v58, v78);
      v67(v58, v69);
      (*(*(v74 + 88) + 16))(v61);
      v62 = v60;
      v37 = v69;
      (*(v57 + 8))(v62, v61);
      v38 = v75;
    }

    v63 = v71;
    v64 = v78;
    v59(v71, v54, v78);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v64);
    swift_beginAccess();
    (*(v8 + 40))(&a1[v38], v63, v37);
    swift_endAccess();
    return sub_266C739C0(a3);
  }

  v26 = *(v19 + 32);
  v27 = v78;
  v72 = v19 + 32;
  v69 = v26;
  v26(v23, v18, v78);
  if (((*(*(v74 + 88) + 8))(v27) & 1) == 0)
  {
    v72 = v19;
    (*(v19 + 8))(v23, v78);
    goto LABEL_9;
  }

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v28 = sub_266DA94AC();
  __swift_project_value_buffer(v28, qword_2800CA9F8);

  v29 = sub_266DA948C();
  v30 = sub_266DAAB0C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v79[0] = v32;
    *v31 = 136315138;
    v33 = sub_266DAAE0C();
    v35 = v34;

    v36 = sub_266C22A3C(v33, v35, v79);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_266C08000, v29, v30, "SessionLifetimeManager<%s>: re-using existing instance", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D5F2480](v32, -1, -1);
    MEMORY[0x26D5F2480](v31, -1, -1);
  }

  else
  {
  }

  v69(v73, v23, v78);
  return sub_266C739C0(a3);
}

uint64_t sub_266C731E8()
{
  v1 = v0;
  v2 = sub_266DA9FAC();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v8 = v7 - v6;
  v9 = sub_266DA9FDC();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v34 = v14 - v13;
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v15 = sub_266DA94AC();
  __swift_project_value_buffer(v15, qword_2800CA9F8);

  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v4;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    v32 = v11;
    v20 = v8;
    v21 = v2;
    v22 = v9;
    v23 = sub_266DAAE0C();
    v25 = v24;

    v26 = sub_266C22A3C(v23, v25, aBlock);

    *(v18 + 4) = v26;
    v9 = v22;
    v2 = v21;
    v8 = v20;
    v11 = v32;
    _os_log_impl(&dword_266C08000, v16, v17, "SessionLifetimeManager<%s>: Session invalidate requested", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v27 = v19;
    v4 = v33;
    MEMORY[0x26D5F2480](v27, -1, -1);
    MEMORY[0x26D5F2480](v18, -1, -1);
  }

  else
  {
  }

  aBlock[4] = sub_266C73F94;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = &block_descriptor_6;
  v28 = _Block_copy(aBlock);

  sub_266DA9FBC();
  v35 = MEMORY[0x277D84F90];
  sub_266C73ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  v29 = sub_266C73F2C();
  OUTLINED_FUNCTION_2_17(&v35, v30, v29);
  MEMORY[0x26D5F1510](0, v34, v8, v28);
  _Block_release(v28);
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v34, v9);
}

void sub_266C7356C(char *a1)
{
  v24 = *a1;
  v2 = *(v24 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v23 - v4;
  v6 = sub_266DAAC1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  sub_266C728F8(0);
  v13 = *(*a1 + 120);
  swift_beginAccess();
  (*(v7 + 16))(v12, &a1[v13], v6);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2))
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    (*(v3 + 16))(v5, v12, v2);
    (*(v7 + 8))(v12, v6);
    (*(*(v24 + 88) + 16))(v2);
    (*(v3 + 8))(v5, v2);
  }

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v2);
  swift_beginAccess();
  (*(v7 + 40))(&a1[v13], v10, v6);
  swift_endAccess();
  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v14 = sub_266DA94AC();
  __swift_project_value_buffer(v14, qword_2800CA9F8);

  v15 = sub_266DA948C();
  v16 = sub_266DAAB0C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25[0] = v18;
    *v17 = 136315138;
    v19 = sub_266DAAE0C();
    v21 = v20;

    v22 = sub_266C22A3C(v19, v21, v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_266C08000, v15, v16, "SessionLifetimeManager<%s>: Session invalidated", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D5F2480](v18, -1, -1);
    MEMORY[0x26D5F2480](v17, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266C7397C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_266C739C0(double a1)
{
  v3 = sub_266DA9FAC();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v9 = v8 - v7;
  v10 = sub_266DA9FDC();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  sub_266C73E6C();
  v17 = sub_266DAAB8C();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = a1;
  aBlock[4] = sub_266C73EB0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266C73FC4;
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  sub_266DA9FBC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_266C73ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
  v20 = sub_266C73F2C();
  OUTLINED_FUNCTION_2_17(aBlock, v21, v20);
  MEMORY[0x26D5F1510](0, v16, v9, v19);
  _Block_release(v19);

  (*(v5 + 8))(v9, v3);
  return (*(v12 + 8))(v16, v10);
}

void sub_266C73C1C(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  v7[4] = sub_266C73F90;
  v7[5] = a1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_266C5D6BC;
  v7[3] = &block_descriptor_3_0;
  v5 = _Block_copy(v7);

  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:a2];
  _Block_release(v5);
  sub_266C728F8(v6);
}

id *sub_266C73D18()
{

  v1 = *(*v0 + 15);
  v2 = sub_266DAAC1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_266C73DD0()
{
  sub_266C73D18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_266C73E6C()
{
  result = qword_28156EFC0;
  if (!qword_28156EFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156EFC0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266C73ED4()
{
  result = qword_28156F010;
  if (!qword_28156F010)
  {
    sub_266DA9FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F010);
  }

  return result;
}

unint64_t sub_266C73F2C()
{
  result = qword_28156EFF0;
  if (!qword_28156EFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CAA90, &qword_266DB2250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156EFF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAAD0C();
}

uint64_t sub_266C74018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_266C744CC(a1, &v14 - v5, &qword_2800CA050, &qword_266DB0080);
  v7 = type metadata accessor for Snippets(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_266C3A088(v6, &qword_2800CA050, &qword_266DB0080);
    return 2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_266C477B4(v6);
  if (EnumCaseMultiPayload != 8 || __swift_getEnumTagSinglePayload(a2, 1, v7) != 1)
  {
    return 2;
  }

  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  __swift_project_value_buffer(v9, &unk_2800E61A8);
  v10 = sub_266DA948C();
  v11 = sub_266DAAB0C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    MEMORY[0x26D5F2480](v12, -1, -1);
  }

  return 1;
}

uint64_t sub_266C741F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v27 = a5;
  v28 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_266DA7C7C();
  v26 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v25 - v21;
  sub_266DA804C();
  if (!a4)
  {
  }

  v27 = a12;

  sub_266DA803C();
  sub_266C744CC(v28, v22, &qword_2800CA048, &unk_266DAFC00);
  sub_266DA805C();
  if (a8 == 2)
  {
    sub_266DA806C();
  }

  v23 = sub_266DA807C();
  if (a9 == 2 && a10(v23) == 2)
  {
    sub_266DA808C();
  }

  sub_266DA809C();
  sub_266C744CC(v27, v16, &qword_2800CA040, &unk_266DB0070);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_266DA801C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_266C3A088(v16, &qword_2800CA040, &unk_266DB0070);
    }
  }

  else
  {
    (*(v26 + 32))(v19, v16, v17);
  }

  return sub_266DA802C();
}

uint64_t sub_266C744CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_266C7453C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_266C7457C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_266C745F0()
{
  v1 = v0;
  v2 = sub_266DA81AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800E6498);
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v8))
  {
    v9 = OUTLINED_FUNCTION_11();
    *v9 = 0;
    _os_log_impl(&dword_266C08000, v7, v8, "FindDevice.FlowStrategy.actionForInput() called", v9, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  sub_266DA816C();
  sub_266D6B944(v5, &v11);
  (*(v3 + 8))(v5, v2);
  if (v12[24] == 255)
  {
    sub_266C47654(&v11, &qword_2800CAAB0, &qword_266DB2440);
    return sub_266DA7CCC();
  }

  else
  {
    v13 = v11;
    v14[0] = *v12;
    *(v14 + 9) = *&v12[9];
    sub_266C788F8(&v13, &v11);
    if (v12[24])
    {
      sub_266DA7CCC();
    }

    else
    {
      sub_266DA7CBC();
    }

    sub_266C78954(&v13);
    return sub_266C78954(&v11);
  }
}

uint64_t sub_266C74800(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266C7482C()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindDevice.FlowStrategy.makeIntentFromParse() called", v4, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  __swift_project_boxed_opaque_existential_1((v5 + 8), *(v5 + 32));
  sub_266D6B944(v6, v0 + 64);
  if (*(v0 + 104) == 255)
  {
    sub_266C47654(v0 + 64, &qword_2800CAAB0, &qword_266DB2440);
    v14 = sub_266DA948C();
    v15 = sub_266DAAADC();
    if (OUTLINED_FUNCTION_16_0(v15))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v16, v17, "FindDevice.FlowStrategy unable to make task from parse");
      OUTLINED_FUNCTION_5_1();
    }

    sub_266C488FC();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_53_1(v18, v19);
    goto LABEL_13;
  }

  v7 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v7;
  *(v0 + 41) = *(v0 + 89);
  sub_266C788F8(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    sub_266C78954(v0 + 64);
    v8 = sub_266DA948C();
    v9 = sub_266DAAADC();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v10, v11, "FindDevice.FlowStrategy unexpected task, not findDeviceOrItem");
      OUTLINED_FUNCTION_5_1();
    }

    sub_266C488FC();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_53_1(v12, v13);
    sub_266C78954(v0 + 16);
LABEL_13:
    OUTLINED_FUNCTION_28();

    return v20();
  }

  v22 = *(v0 + 160);
  sub_266C0B0D8((v0 + 64), v0 + 112);
  v23 = *(v0 + 160);
  if (!v22)
  {
    [objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntent()) init];
  }

  v24 = v23;
  sub_266D97920((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_266C78954(v0 + 16);
  v25 = OUTLINED_FUNCTION_15_5();

  return v26(v25);
}

uint64_t sub_266C74AF8()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C74BA8()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    *OUTLINED_FUNCTION_11() = 0;
    OUTLINED_FUNCTION_32_1(&dword_266C08000, v4, v5, "FindDevice.FlowStrategy.makeSiriKitIntentHandler() called");
    OUTLINED_FUNCTION_5_1();
  }

  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  v11 = *v9;
  type metadata accessor for FindDeviceAndPlaySoundIntent();

  v12 = v11;
  v13 = v10;
  sub_266DA7A3C();
  sub_266DA7A9C();
  sub_266DA7A8C();
  (*(v7 + 8))(v6, v8);

  v14 = OUTLINED_FUNCTION_15_5();

  return v15(v14);
}

uint64_t sub_266C74D0C()
{
  OUTLINED_FUNCTION_22_0();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v1[49] = type metadata accessor for Snippets(0);
  v1[50] = OUTLINED_FUNCTION_64();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[58] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[59] = v6;
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v7 = sub_266DA7C0C();
  v1[62] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[63] = v8;
  v1[64] = OUTLINED_FUNCTION_64();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  v1[67] = OUTLINED_FUNCTION_64();
  v1[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v1[69] = OUTLINED_FUNCTION_64();
  v1[70] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v9);
  v1[71] = v10;
  v1[72] = *(v11 + 64);
  v1[73] = OUTLINED_FUNCTION_64();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_266C75010()
{
  v47 = v0;
  v1 = *(v0 + 376);
  v2 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800E6498);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136315138;
    DeviceAndPlaySoundIntentResponse = FindDeviceAndPlaySoundIntentResponseCode.description.getter(v3);
    v11 = sub_266C22A3C(DeviceAndPlaySoundIntentResponse, v10, &v46);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266C08000, v5, v6, "FindDevice.FlowStrategy.makeFailureConfirmingIntentResponse called with response code: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if ((v3 - 105) < 2)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 384) + 104), *(*(v0 + 384) + 128));
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 696) = v12;
    *v12 = v13;
    v12[1] = sub_266C755B0;
    OUTLINED_FUNCTION_51_1();

    return sub_266CA23EC();
  }

  if (v3 == 107)
  {
    v16 = *(v0 + 688);
    v17 = *(v0 + 392);
    v18 = *(v0 + 368);
    *(v0 + 704) = *(*(v0 + 384) + 96);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    v19 = sub_266D14B44(v18);
    if (v19)
    {
      if (sub_266C3A14C())
      {
        sub_266CB9F54();
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x26D5F1780](0, v19);
        }

        else
        {
          v20 = *(v19 + 32);
        }

        v21 = v20;

        v22 = sub_266C1CEB4(v21);
        v24 = v23;
        LOBYTE(v19) = sub_266CC7C44();

        goto LABEL_22;
      }

      LOBYTE(v19) = 0;
    }

    v22 = 0;
    v24 = 0;
LABEL_22:
    v41 = *(v0 + 680);
    v42 = *(v0 + 392);
    *v41 = 4;
    *(v41 + 8) = v22;
    *(v41 + 16) = v24;
    *(v41 + 24) = v19 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
    *(v0 + 882) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    swift_allocObject();
    *(v0 + 712) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v43 = swift_allocObject();
    *(v0 + 720) = v43;
    *(v43 + 16) = xmmword_266DAE3B0;
    v44 = swift_task_alloc();
    *(v0 + 728) = v44;
    *v44 = v0;
    v44[1] = sub_266C75A28;
    OUTLINED_FUNCTION_51_1();

    return sub_266D44B5C();
  }

  v25 = sub_266DA948C();
  v26 = sub_266DAAAFC();
  if (OUTLINED_FUNCTION_16_0(v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136446210;
    v29 = FindDeviceAndPlaySoundIntentResponseCode.description.getter(v3);
    v31 = sub_266C22A3C(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_266C08000, v25, v26, "FindDevice.FlowStrategy.makeFailureConfirmingIntentResponse called with unexpected error code: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_5_1();
  }

  v32 = *(v0 + 624);
  v33 = *(v0 + 616);
  v34 = *(v0 + 392);
  *(v0 + 792) = *(*(v0 + 384) + 96);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  *v33 = 4;
  *(v33 + 8) = xmmword_266DB2290;
  *(v33 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
  *(v0 + 880) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  swift_allocObject();
  *(v0 + 800) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v35 = swift_allocObject();
  *(v0 + 808) = v35;
  *(v35 + 16) = xmmword_266DAE3B0;
  *(v0 + 881) = 3;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 816) = v36;
  *v36 = v37;
  v36[1] = sub_266C76C0C;
  OUTLINED_FUNCTION_51_1();

  return sub_266D945C8(v38, v39);
}

uint64_t sub_266C755B0()
{

  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266C75A28(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[92] = v1;

  if (v1)
  {
    sub_266C47654(v5[85], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266C77DEC;
  }

  else
  {
    v5[93] = a1;
    v11 = sub_266C75B68;
  }

  return MEMORY[0x2822009F8](v11);
}

void sub_266C75B68()
{
  *(v0[90] + 32) = v0[93];
  sub_266DA7E5C();
  v1 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v1, v2, 1, v3);
  sub_266DA7C7C();
  v4 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v7 = v0[90] & 0xC000000000000001;
    sub_266CB9F54();
    v8 = v0[90];
    if (v7)
    {
      v9 = MEMORY[0x26D5F1780](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;
    v11 = [v9 catId];

    v79 = sub_266DAA70C();
    v84 = v12;
  }

  else
  {
    v79 = 0;
    v84 = 0;
  }

  v13 = v0[88];
  v14 = v0[86];
  v15 = v0[84];
  v16 = v0[83];
  v17 = v0[71];
  v73 = v0[70];
  v74 = v0[68];
  v72 = v0[66];
  v76 = v0[61];
  v77 = v14;
  v80 = v0[49];
  v82 = v0[82];
  sub_266C4756C(v0[85], v15);
  sub_266C4756C(v14, v16);
  OUTLINED_FUNCTION_38_1();
  v20 = v19 & ~v18;
  v21 = swift_allocObject();
  v0[94] = v21;
  *(v21 + 16) = v13;
  sub_266C475DC(v15, v21 + v17);
  sub_266C475DC(v16, v21 + v20);
  v22 = OUTLINED_FUNCTION_47_1();
  v23(v22);
  v24 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_20_5(v24, v25, v26, v27, v28, v29, v30, v31, v72, v73, v74, v76, v77, v79, v80, v82, v84);
  v32[9] = sub_266C48BBC;
  v32[10] = v21;
  v32[11] = v75;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v78, v83);
  if (__swift_getEnumTagSinglePayload(v83, 1, v81) == 1)
  {
    v33 = v0 + 82;
  }

  else
  {
    v34 = v0[49];
    sub_266C476A8(v0[82], v0[57]);
    v35 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v35, v36);
    v37 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v37, v38, v34) != 1)
    {
      v58 = v0[49];
      sub_266C476A8(v0[81], v0[56]);
      v0[35] = v58;
      v59 = sub_266C4DB4C();
      v0[36] = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[40] = v58;
      v0[41] = v59;
      v61 = __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_86(v61);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[95] = v62;
      *v62 = v63;
      v62[1] = sub_266C760C8;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v33 = v0 + 81;
    sub_266C477B4(v0[57]);
  }

  v39 = v0[49];
  sub_266C47654(*v33, &qword_2800CA050, &qword_266DB0080);
  v40 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v40, v41);
  v42 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v43, v39);
  v45 = v0[80];
  v46 = v0[49];
  if (EnumTagSinglePayload == 1)
  {
    v47 = v0[85];
    v48 = v0[79];
    sub_266C47654(v45, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v47, v48);
    v49 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
    {
      sub_266C47654(v0[79], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[98] = v51;
      *v51 = v52;
      v51[1] = sub_266C76948;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v66 = v0[49];
    sub_266C476A8(v0[79], v0[54]);
    v0[25] = v66;
    v0[26] = sub_266C4DB4C();
    v67 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_55_0(v67);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[97] = v68;
    *v68 = v69;
    OUTLINED_FUNCTION_40_0(v68);
  }

  else
  {
    sub_266C476A8(v45, v0[55]);
    v0[30] = v46;
    v0[31] = sub_266C4DB4C();
    v55 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_86(v55);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[96] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_40_0(v56);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C760C8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C761D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();
  v35 = *(v32 + 448);
  v34 = *(v32 + 456);

  sub_266C477B4(v35);
  sub_266C477B4(v34);
  v36 = OUTLINED_FUNCTION_3_16();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C763A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C764A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();
  v35 = *(v33 + 440);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_3_16();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C76678()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C76778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();
  v35 = *(v33 + 432);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_3_16();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C76948()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266C76A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_48_1();

  v34 = OUTLINED_FUNCTION_3_16();
  v35(v34);
  v36 = OUTLINED_FUNCTION_6_14();
  v37(v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C76C0C(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[103] = v1;

  if (v1)
  {
    sub_266C47654(v5[77], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266C77F74;
  }

  else
  {
    v5[104] = a1;
    v11 = sub_266C76D4C;
  }

  return MEMORY[0x2822009F8](v11);
}

void sub_266C76D4C()
{
  *(v0[101] + 32) = v0[104];
  sub_266DA7E5C();
  v1 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v1, v2, 1, v3);
  sub_266DA7C7C();
  v4 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v7 = v0[101] & 0xC000000000000001;
    sub_266CB9F54();
    v8 = v0[101];
    if (v7)
    {
      v9 = MEMORY[0x26D5F1780](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;
    v11 = [v9 catId];

    v79 = sub_266DAA70C();
    v84 = v12;
  }

  else
  {
    v79 = 0;
    v84 = 0;
  }

  v13 = v0[99];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[78];
  v17 = v0[71];
  v73 = v0[69];
  v74 = v0[67];
  v72 = v0[64];
  v76 = v0[60];
  v77 = v16;
  v80 = v0[49];
  v82 = v0[76];
  sub_266C4756C(v0[77], v14);
  sub_266C4756C(v16, v15);
  OUTLINED_FUNCTION_38_1();
  v20 = v19 & ~v18;
  v21 = swift_allocObject();
  v0[105] = v21;
  *(v21 + 16) = v13;
  sub_266C475DC(v14, v21 + v17);
  sub_266C475DC(v15, v21 + v20);
  v22 = OUTLINED_FUNCTION_47_1();
  v23(v22);
  v24 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_20_5(v24, v25, v26, v27, v28, v29, v30, v31, v72, v73, v74, v76, v77, v79, v80, v82, v84);
  v32[9] = sub_266C4764C;
  v32[10] = v21;
  v32[11] = v75;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v78, v83);
  if (__swift_getEnumTagSinglePayload(v83, 1, v81) == 1)
  {
    v33 = v0 + 76;
  }

  else
  {
    v34 = v0[49];
    sub_266C476A8(v0[76], v0[53]);
    v35 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v35, v36);
    v37 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v37, v38, v34) != 1)
    {
      v58 = v0[49];
      sub_266C476A8(v0[75], v0[52]);
      v0[15] = v58;
      v59 = sub_266C4DB4C();
      v0[16] = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[20] = v58;
      v0[21] = v59;
      v61 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_86(v61);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[106] = v62;
      *v62 = v63;
      v62[1] = sub_266C772A8;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v33 = v0 + 75;
    sub_266C477B4(v0[53]);
  }

  v39 = v0[49];
  sub_266C47654(*v33, &qword_2800CA050, &qword_266DB0080);
  v40 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v40, v41);
  v42 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v43, v39);
  v45 = v0[74];
  v46 = v0[49];
  if (EnumTagSinglePayload == 1)
  {
    v47 = v0[77];
    v48 = v0[73];
    sub_266C47654(v45, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v47, v48);
    v49 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
    {
      sub_266C47654(v0[73], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[109] = v51;
      *v51 = v52;
      v51[1] = sub_266C77B28;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v66 = v0[49];
    sub_266C476A8(v0[73], v0[50]);
    v0[5] = v66;
    v0[6] = sub_266C4DB4C();
    v67 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_55_0(v67);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[108] = v68;
    *v68 = v69;
    OUTLINED_FUNCTION_39_0(v68);
  }

  else
  {
    sub_266C476A8(v45, v0[51]);
    v0[10] = v46;
    v0[11] = sub_266C4DB4C();
    v55 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_86(v55);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[107] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_39_0(v56);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C772A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C773B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v35 = *(v32 + 416);
  v34 = *(v32 + 424);

  sub_266C477B4(v35);
  sub_266C477B4(v34);
  v36 = OUTLINED_FUNCTION_2_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77588()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C77688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v35 = *(v33 + 408);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_2_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77858()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C77958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v35 = *(v33 + 400);

  sub_266C477B4(v35);
  v36 = OUTLINED_FUNCTION_2_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_6_14();
  v39(v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v34, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77B28()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266C77C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();

  v34 = OUTLINED_FUNCTION_2_18();
  v35(v34);
  v36 = OUTLINED_FUNCTION_6_14();
  v37(v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v33, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v32, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_0_29();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C77DEC()
{

  *(*(v0 + 720) + 16) = 0;

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266C77F74()
{

  *(*(v0 + 808) + 16) = 0;

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266C78100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C781A4;

  return sub_266C74800(a1, a2);
}

uint64_t sub_266C781A4()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266C78298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266C7835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_266C78428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266C4716C;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266C784F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266C785C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266C7869C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266C74D0C();
}

uint64_t sub_266C7874C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4DA10;

  return sub_266C74AF8();
}

unint64_t sub_266C787F4()
{
  result = qword_2800CAA98;
  if (!qword_2800CAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAA98);
  }

  return result;
}

unint64_t sub_266C7884C()
{
  result = qword_2800CAAA0;
  if (!qword_2800CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAAA0);
  }

  return result;
}

unint64_t sub_266C788A4()
{
  result = qword_2800CAAA8;
  if (!qword_2800CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAAA8);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_0_29()
{
  v4 = v0[52];
  v3 = v0[53];
  *(v1 - 112) = v0[54];
  *(v1 - 104) = v3;
  v5 = v0[50];
  v6 = v0[51];
  *(v1 - 96) = v4;
  *(v1 - 88) = v6;
  *(v1 - 80) = v5;
}

uint64_t OUTLINED_FUNCTION_12_9()
{
  v4 = v0[52];
  v3 = v0[53];
  *(v1 - 120) = v0[54];
  *(v1 - 112) = v3;
  v5 = v0[50];
  v6 = v0[51];
  *(v1 - 104) = v4;
  *(v1 - 96) = v6;
  *(v1 - 88) = v5;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a14;
  *(result + 48) = a17;
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

void OUTLINED_FUNCTION_32_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{

  return sub_266C47750(v1, a1);
}

uint64_t type metadata accessor for FMIPCoreDevicePinger(uint64_t a1)
{
  result = qword_2800CAAD0;
  if (!qword_2800CAAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266C799B8(uint64_t a1)
{
  result = type metadata accessor for FMIPCoreDeviceSearcher(319);
  if (v2 <= 0x3F)
  {
    result = sub_266C79A8C(319, &qword_2800CAAE0, &protocol descriptor for SFMContactDataProvider);
    if (v3 <= 0x3F)
    {
      result = sub_266C79A8C(319, &qword_2800CAAE8, &protocol descriptor for FMIPManagerWrapper);
      if (v4 <= 0x3F)
      {
        result = sub_266C22FD4();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_266C79A8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_266C79B08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  *a8 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);

  sub_266DA946C();
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;

  return a2;
}

uint64_t sub_266C79BA0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CAAB8);
  v1 = __swift_project_value_buffer(v0, qword_2800CAAB8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C79C68(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v81 = v6;
  v82 = sub_266DAAB4C();
  OUTLINED_FUNCTION_0_2();
  v80 = v7;
  MEMORY[0x28223BE20](v8);
  v79 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPCoreDevicePinger(0);
  OUTLINED_FUNCTION_0_2();
  v67[0] = v11;
  MEMORY[0x28223BE20](v12);
  v83 = v13;
  OUTLINED_FUNCTION_15_0(v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAF0, &qword_266DB2490);
  OUTLINED_FUNCTION_0_2();
  v67[2] = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v16);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAF8, &qword_266DB2498);
  OUTLINED_FUNCTION_0_2();
  v70 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10();
  v84 = v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB00, &qword_266DB24A0);
  OUTLINED_FUNCTION_0_2();
  v75 = v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v22);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB08, &qword_266DB24A8);
  OUTLINED_FUNCTION_0_2();
  v74 = v23;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v25);
  v26 = sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_266DAE4A0;
  v88[40] = 1;
  *(v32 + 32) = a1;
  *(v32 + 40) = a2;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0u;
  *(v32 + 96) = 0;
  *(v32 + 104) = 1;
  *(v32 + 112) = 0;
  *(v32 + 120) = 0;
  *(v32 + 128) = 1;
  *(v32 + 136) = 0u;
  *(v32 + 152) = 0u;
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0;
  v78 = v10;
  v33 = *(v10 + 20);
  v85 = v2;
  sub_266C233D0(v2 + v33, v86);

  v34 = sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  OUTLINED_FUNCTION_3_17(v34);
  v35 = *(v28 + 8);
  v36 = v35(v31, v26);
  MEMORY[0x28223BE20](v36);
  v66 = v86;
  v87[0] = sub_266D69B00(sub_266C7ACB4, &v67[-4], v32);
  sub_266C233D0(v86, v88);
  v87[1] = v32;
  v37 = sub_266DAABCC();
  sub_266DA946C();
  OUTLINED_FUNCTION_3_17(v37);
  v35(v31, v26);
  __swift_destroy_boxed_opaque_existential_0(v86);
  v38 = v85;
  sub_266CD0570();
  v86[0] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  sub_266C230E8(&qword_2800CAB18, &qword_2800CAB10, &unk_266DB5340, MEMORY[0x277CBCD90]);
  sub_266C7ACD4();
  v40 = v67[1];
  sub_266DA98FC();

  v41 = v69;
  sub_266C7AD28(v38, v69);
  v42 = (*(v67[0] + 80) + 16) & ~*(v67[0] + 80);
  v43 = swift_allocObject();
  sub_266C7AD8C(v41, v43 + v42);
  v67[0] = sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB28, &qword_266DB24C8);
  sub_266C230E8(&qword_2800CAB30, &qword_2800CAAF0, &qword_266DB2490, MEMORY[0x277CBCD08]);
  sub_266C230E8(&qword_2800CAB38, &qword_2800CAB28, &qword_266DB24C8, MEMORY[0x277CBCF40]);
  v44 = v68;
  sub_266DA98DC();

  OUTLINED_FUNCTION_9();
  v45(v40, v44);
  v46 = v85;
  sub_266C7AD28(v85, v41);
  v47 = swift_allocObject();
  sub_266C7AD8C(v41, v47 + v42);
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB40, &qword_266DB24D0);
  v48 = MEMORY[0x277CBCCE0];
  sub_266C230E8(&qword_2800CAB48, &qword_2800CAAF8, &qword_266DB2498, MEMORY[0x277CBCCE0]);
  sub_266C230E8(&qword_2800CAB50, &qword_2800CAB40, &qword_266DB24D0, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
  v49 = v73;
  v50 = v71;
  v51 = v84;
  sub_266DA98DC();

  OUTLINED_FUNCTION_9();
  v52(v51, v50);
  v53 = v79;
  sub_266DAAB3C();
  v86[0] = *(v46 + *(v78 + 28));
  v54 = v86[0];
  v55 = sub_266DAAB1C();
  v56 = v81;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v55);
  sub_266C22FD4();
  sub_266C230E8(&qword_2800CAB58, &qword_2800CAB00, &qword_266DB24A0, v48);
  v57 = sub_266C23060();
  v58 = v54;
  v66 = v57;
  v59 = v72;
  v60 = v77;
  sub_266DA98EC();
  sub_266C47654(v56, &qword_2800CC360, &qword_266DB00D0);

  (*(v80 + 8))(v53, v82);
  OUTLINED_FUNCTION_9();
  v61(v49, v60);
  sub_266C230E8(&qword_2800CAB60, &qword_2800CAB08, &qword_266DB24A8, MEMORY[0x277CBCCE8]);
  v62 = v76;
  v63 = sub_266DA97EC();
  OUTLINED_FUNCTION_9();
  v64(v59, v62);
  sub_266C7AFE4(v87);
  return v63;
}

uint64_t sub_266C7A6D8(uint64_t *a1)
{
  sub_266C7A74C(*a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB70, &unk_266DB24E0);
  sub_266DAB31C();
  return sub_266C47654(v2, &qword_2800CAB70, &unk_266DB24E0);
}

void sub_266C7A74C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_266CB7AE8(a1, &v8);
  if (v9)
  {
    sub_266C0B0D8(&v8, v10);
    if (*(a1 + 16) == 1)
    {
      sub_266C0B0D8(v10, a2);
      a2[40] = 0;
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_266C47654(&v8, &qword_2800CAB78, &qword_266DB5300);
  }

  if (qword_2800C9228 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CAAB8);

  v5 = sub_266DA948C();
  v6 = sub_266DAAAEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_266C08000, v5, v6, "Did not get exactly one device results for PlaySound. (result count: %ld)", v7, 0xCu);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  else
  {
  }

  *a2 = 0;
  a2[40] = 1;
}

uint64_t sub_266C7A8D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_266DA947C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPCoreDevicePinger(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_266C7AD28(v2, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_266C233D0(a1, v17);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_266C7AD8C(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_266C0B0D8(v17, v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB68, &qword_266DB24D8);
  swift_allocObject();
  sub_266DA97AC();
  v14 = sub_266C7AB8C(a1);
  sub_266DA946C();
  sub_266C79B08(&dword_266C08000, v14, "P-01 Play Sound", 15, 2, &qword_2800CAB40, &qword_266DB24D0, a2);

  return (*(v6 + 8))(v8, v5);
}

void sub_266C7AB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FMIPCoreDevicePinger(0);
  __swift_project_boxed_opaque_existential_1((a3 + *(v5 + 24)), *(a3 + *(v5 + 24) + 24));
  sub_266CFE0EC();
}

id sub_266C7AB8C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 40))(v1, v2) == 1296389193 && v3 == 0xE400000000000000)
  {
  }

  else
  {
    v5 = sub_266DAB17C();

    if ((v5 & 1) == 0)
    {
      if (qword_2800C9140 != -1)
      {
        swift_once();
      }

      v6 = &qword_2800C9828;
      goto LABEL_13;
    }
  }

  if (qword_2800C9138 != -1)
  {
    swift_once();
  }

  v6 = &qword_2800C9820;
LABEL_13:
  v7 = *v6;

  return v7;
}

unint64_t sub_266C7ACD4()
{
  result = qword_2800CAB20;
  if (!qword_2800CAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAB20);
  }

  return result;
}

uint64_t sub_266C7AD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDevicePinger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C7AD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDevicePinger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C7ADF0(uint64_t *a1)
{
  type metadata accessor for FMIPCoreDevicePinger(0);

  return sub_266C7A6D8(a1);
}

uint64_t objectdestroyTm_4()
{
  type metadata accessor for FMIPCoreDevicePinger(0);
  OUTLINED_FUNCTION_24_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_19();
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + 256));
  v6 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v7 = *(v6 + 52);
  sub_266DAAB4C();
  OUTLINED_FUNCTION_8_0();
  (*(v8 + 8))(v0 + v3 + v7);

  OUTLINED_FUNCTION_6_15();

  return MEMORY[0x2821FE8E8](v0, v3 + v5, v2 | 7);
}

void sub_266C7B038(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPCoreDevicePinger(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_266C7AB2C(a1, a2, v2 + v6, v7);
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  __swift_destroy_boxed_opaque_existential_0(v0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return sub_266DA945C();
}

void OUTLINED_FUNCTION_6_15()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + v0[7]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v0[8]));
  v2 = *(v1 + v0[9]);
}

uint64_t sub_266C7B198()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CAB90);
  v1 = __swift_project_value_buffer(v0, qword_2800CAB90);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C7B268(uint64_t a1)
{
  result = sub_266DA7FDC();
  if (v2 <= 0x3F)
  {
    result = sub_266C79A8C(319, &qword_2800CAC28, MEMORY[0x277D5BA10]);
    if (v3 <= 0x3F)
    {
      result = sub_266C79A8C(319, &qword_2800CAC30, MEMORY[0x277D5BF38]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266C7B384(uint64_t a1)
{
  sub_266DA77EC();
  sub_266DA77CC();
  v1 = sub_266DA798C();

  return v1;
}

uint64_t sub_266C7B3E8@<X0>(uint64_t *a2@<X8>)
{
  sub_266DA7FDC();
  v3 = sub_266DA7FCC();
  v4 = sub_266DA7FBC();
  *a2 = v3;
  a2[1] = v4;
  v5 = *MEMORY[0x277D5B3E0];
  v6 = sub_266DA75DC();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_266C7B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_266DA79AC();
}

uint64_t sub_266C7B50C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266C7B530);
}

uint64_t sub_266C7B530()
{
  sub_266C7B384(*(v0 + 24));
  sub_266DA7D6C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266C7B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C7B658;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266C7B658(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_266C7B758(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C29DCC;

  return sub_266C7B50C(a1, a2);
}

uint64_t DeviceSearchError.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

unint64_t sub_266C7B89C()
{
  result = qword_2800CAC38;
  if (!qword_2800CAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAC38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceSearchError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266C7B9D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266C7BA14(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C7BA84()
{
  OUTLINED_FUNCTION_22_0();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[45] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[46] = OUTLINED_FUNCTION_64();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[54] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[55] = v6;
  v1[56] = OUTLINED_FUNCTION_64();
  v1[57] = swift_task_alloc();
  v7 = sub_266DA7C0C();
  v1[58] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[59] = v8;
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[63] = OUTLINED_FUNCTION_64();
  v1[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[65] = OUTLINED_FUNCTION_64();
  v1[66] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[67] = v12;
  v1[68] = *(v13 + 64);
  v1[69] = OUTLINED_FUNCTION_64();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v14);
  v1[83] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_266C7BDB0()
{
  v39 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v1 = sub_266DA80CC();
  *(v0 + 672) = v1;
  v2 = sub_266DA80DC();
  *(v0 + 680) = v2;
  if ([v2 unsupportedReason] == 1)
  {
    sub_266DA914C();
    if (qword_2800C93F0 != -1)
    {
      swift_once();
    }

    *(v0 + 688) = sub_266C556E8(v3);
    v4 = [v1 location];
    if (!v4 || (v5 = v4, sub_266D6CDF4(&v33), v5, v6 = v35, v35 == 255))
    {
      sub_266DA919C();
      v11 = OUTLINED_FUNCTION_72();
    }

    else
    {
      v7 = *(v0 + 664);
      v9 = v33;
      v8 = v34;
      v36 = v33;
      v37 = v34;
      v38 = v35;
      sub_266D91274();
      sub_266C23130(v9, v8, v6);
      v10 = sub_266DA919C();
      v11 = v7;
      v12 = 0;
    }

    __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
    v18 = *(v0 + 656);
    v19 = *(v0 + 360);
    *(v0 + 696) = *(*(v0 + 352) + 128);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
    v20 = OUTLINED_FUNCTION_72();
    __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
    *(v0 + 873) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    swift_allocObject();
    *(v0 + 704) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v22 = swift_allocObject();
    *(v0 + 712) = v22;
    *(v22 + 16) = xmmword_266DAE3B0;
    v23 = swift_task_alloc();
    *(v0 + 720) = v23;
    *v23 = v0;
    v23[1] = sub_266C7C224;

    return sub_266CB2710();
  }

  else
  {
    if (qword_2800C93F8 != -1)
    {
      swift_once();
    }

    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800E64C0);
    v14 = v2;
    v15 = sub_266DA948C();
    v16 = sub_266DAAAFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = [v14 unsupportedReason];

      _os_log_impl(&dword_266C08000, v15, v16, "Unexpected unsupported reason of %ld", v17, 0xCu);
      MEMORY[0x26D5F2480](v17, -1, -1);
    }

    else
    {

      v15 = v14;
    }

    v26 = *(v0 + 352);
    v25 = *(v0 + 360);

    *(v0 + 784) = *(v26 + 128);
    v27 = OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v27, v28, 1, v25);
    v29 = OUTLINED_FUNCTION_55();
    __swift_storeEnumTagSinglePayload(v29, v30, 1, v25);
    *(v0 + 872) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    swift_allocObject();
    *(v0 + 792) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v31 = swift_allocObject();
    *(v0 + 800) = v31;
    *(v31 + 16) = xmmword_266DAE3B0;
    v32 = swift_task_alloc();
    *(v0 + 808) = v32;
    *v32 = v0;
    v32[1] = sub_266C7D4AC;

    return sub_266CB4B54();
  }
}

uint64_t sub_266C7C224(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[91] = v1;

  if (v1)
  {
    sub_266C47654(v5[81], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266C7E6B0;
  }

  else
  {
    v5[92] = a1;
    v11 = sub_266C7C364;
  }

  return MEMORY[0x2822009F8](v11);
}

void sub_266C7C364()
{
  *(v0[89] + 32) = v0[92];
  sub_266DA7E5C();
  v1 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v1, v2, 1, v3);
  sub_266DA7C7C();
  v4 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v7 = v0[89] & 0xC000000000000001;
    sub_266CB9F54();
    v8 = v0[89];
    if (v7)
    {
      v9 = MEMORY[0x26D5F1780](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;
    v11 = [v9 catId];

    v78 = sub_266DAA70C();
    v83 = v12;
  }

  else
  {
    v78 = 0;
    v83 = 0;
  }

  v13 = v0[87];
  v14 = v0[82];
  v15 = v0[80];
  v16 = v0[79];
  v17 = v0[67];
  v72 = v0[66];
  v73 = v0[64];
  v71 = v0[62];
  OUTLINED_FUNCTION_49_1(v0[81]);
  sub_266C4756C(v14, v16);
  OUTLINED_FUNCTION_30_1();
  v18 = swift_allocObject();
  v0[93] = v18;
  *(v18 + 16) = v13;
  sub_266C475DC(v15, v18 + v17);
  sub_266C475DC(v16, v18 + v14);
  v19 = OUTLINED_FUNCTION_47_1();
  v20(v19);
  v21 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_17_9(v21, v22, v23, v24, v25, v26, v27, v28, v71, v72, v73, v75, v76, v78, v79, v81, v83);
  v29[9] = sub_266C48BBC;
  v29[10] = v18;
  v29[11] = v74;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v77, v82);
  v30 = OUTLINED_FUNCTION_72();
  if (__swift_getEnumTagSinglePayload(v30, v31, v80) == 1)
  {
    v32 = v0 + 78;
  }

  else
  {
    v33 = v0[45];
    sub_266C476A8(v0[78], v0[53]);
    v34 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v34, v35);
    v36 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v36, v37, v33) != 1)
    {
      v57 = v0[45];
      sub_266C476A8(v0[77], v0[52]);
      v0[35] = v57;
      v58 = sub_266C4DB4C();
      v0[36] = v58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[40] = v57;
      v0[41] = v58;
      v60 = __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_86(v60);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[94] = v61;
      *v61 = v62;
      v61[1] = sub_266C7C8A8;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v32 = v0 + 77;
    sub_266C477B4(v0[53]);
  }

  v38 = v0[45];
  sub_266C47654(*v32, &qword_2800CA050, &qword_266DB0080);
  v39 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v39, v40);
  v41 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v38);
  v44 = v0[76];
  v45 = v0[45];
  if (EnumTagSinglePayload == 1)
  {
    v46 = v0[81];
    v47 = v0[75];
    sub_266C47654(v44, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v46, v47);
    v48 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v48, v49, v45) == 1)
    {
      sub_266C47654(v0[75], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[97] = v50;
      *v50 = v51;
      v50[1] = sub_266C7D1B8;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v65 = v0[45];
    sub_266C476A8(v0[75], v0[50]);
    v0[25] = v65;
    v0[26] = sub_266C4DB4C();
    v66 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_55_0(v66);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[96] = v67;
    *v67 = v68;
    OUTLINED_FUNCTION_36_2(v67);
  }

  else
  {
    sub_266C476A8(v44, v0[51]);
    v0[30] = v45;
    v0[31] = sub_266C4DB4C();
    v54 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_86(v54);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[95] = v55;
    *v55 = v56;
    OUTLINED_FUNCTION_36_2(v55);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}