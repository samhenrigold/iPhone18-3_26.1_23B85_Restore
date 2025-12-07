uint64_t sub_266D90348(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266D903A8()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v2(v1);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_266D9048C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266D90530(uint64_t a1)
{
  result = type metadata accessor for Snippets.Contact(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s17SetGeoFenceResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D90698()
{
  result = qword_2800CDEB8;
  if (!qword_2800CDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEB8);
  }

  return result;
}

unint64_t sub_266D906F0()
{
  result = qword_2800CDEC0;
  if (!qword_2800CDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEC0);
  }

  return result;
}

unint64_t sub_266D90748()
{
  result = qword_2800CDEC8;
  if (!qword_2800CDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEC8);
  }

  return result;
}

void sub_266D907E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_266DA85BC();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = sub_266DA869C();
  if (v14)
  {
    v15 = v14;
    v46 = a1;
    v47 = a2;
    v16 = 0;
    v17 = *(v14 + 16);
    for (i = (v8 + 8); ; (*i)(v13, v6))
    {
      if (v17 == v16)
      {

        a2 = v47;
        goto LABEL_8;
      }

      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v2 = *(v8 + 16);
      v2(v13, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v6);
      sub_266DA859C();
      v3 = sub_266DAAF8C();

      if (v3 < 5)
      {
        break;
      }

      ++v16;
    }

    v45 = v6;

    if (qword_2800C94A8 == -1)
    {
      goto LABEL_11;
    }

LABEL_27:
    OUTLINED_FUNCTION_0_91(&qword_2800C94A8);
LABEL_11:
    v22 = sub_266DA94AC();
    __swift_project_value_buffer(v22, qword_2800CDED0);
    v23 = v48;
    v24 = v45;
    v2(v48, v13, v45);
    v25 = sub_266DA948C();
    v26 = sub_266DAAB0C();
    if (os_log_type_enabled(v25, v26))
    {
      v44 = v26;
      v27 = 0xEC0000005F24213ELL;
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v28 = 136315394;
      v29 = OUTLINED_FUNCTION_15_26();
      a2 = v47;
      switch(v3)
      {
        case 1:
          v29 = OUTLINED_FUNCTION_7_37();
          break;
        case 2:
          v27 = 0xEE005F24213E6C6FLL;
          v29 = OUTLINED_FUNCTION_9_27();
          break;
        case 3:
          v27 = 0xEB000000005F2421;
          v29 = OUTLINED_FUNCTION_6_44();
          break;
        case 4:
          v27 = 0xED00005F24213E72;
          v29 = OUTLINED_FUNCTION_8_24();
          break;
        default:
          break;
      }

      v35 = sub_266C22A3C(v29, v27, &v50);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2080;
      v36 = sub_266DA859C();
      v37 = v23;
      v39 = v38;
      v40 = *i;
      v41 = v45;
      (*i)(v37, v45);
      v42 = sub_266C22A3C(v36, v39, &v50);

      *(v28 + 14) = v42;
      _os_log_impl(&dword_266C08000, v25, v44, "Found valid place label: %s, %s", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();

      v40(v13, v41);
      v20 = 0;
      v21 = 0;
    }

    else
    {

      v34 = *i;
      (*i)(v23, v24);
      v34(v13, v24);
      v20 = 0;
      v21 = 0;
      a2 = v47;
    }
  }

  else
  {
LABEL_8:
    v18 = sub_266DA897C();
    if (v19)
    {
      v3 = v18;
      v20 = v19;

      v21 = 1;
    }

    else
    {
      if (qword_2800C94A8 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_2800C94A8);
      }

      v30 = sub_266DA94AC();
      __swift_project_value_buffer(v30, qword_2800CDED0);
      v31 = sub_266DA948C();
      v32 = sub_266DAAAEC();
      if (os_log_type_enabled(v31, v32))
      {
        v3 = 2;
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_266C08000, v31, v32, "No uso identifier or label for contact trigger contact address", v33, 2u);
        OUTLINED_FUNCTION_6_1();

        v20 = 0;
      }

      else
      {

        v20 = 0;
        v3 = 2;
      }

      v21 = 2;
    }
  }

  *a2 = v3;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
}

void sub_266D90D14(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_2800C94A8 != -1)
  {
    OUTLINED_FUNCTION_0_91(&qword_2800C94A8);
  }

  v9 = sub_266DA94AC();
  v10 = __swift_project_value_buffer(v9, qword_2800CDED0);

  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();

  v35 = a1;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v13 = 136315394;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 45;
    }

    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0xE100000000000000;
    }

    v16 = sub_266C22A3C(v14, v15, v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 45;
    }

    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0xE100000000000000;
    }

    v19 = sub_266C22A3C(v17, v18, v37);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_266C08000, v11, v12, "Creating LocationLabel with personPlaceName: %s, personPlaceReference: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if (!a2)
  {

    v25 = sub_266DA948C();
    v26 = sub_266DAAB0C();
    if (os_log_type_enabled(v25, v26))
    {
      v24 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v26, "Person place name missing, defaulting to current location.", v27, 2u);
      OUTLINED_FUNCTION_6_1();

      v23 = 0;
      goto LABEL_30;
    }

LABEL_29:
    v23 = 0;
    v24 = 2;
    goto LABEL_30;
  }

  v20 = v35;
  v21 = v35 == 0xD000000000000010 && 0x8000000266DC1CA0 == a2;
  if (v21 || (OUTLINED_FUNCTION_14_34(), (sub_266DAB17C() & 1) != 0))
  {

    if (a4)
    {
      v22 = sub_266C573DC(a3, a4);
      if (v22 != 2)
      {
        v23 = 0;
        v24 = (v22 & 1) == 0;
LABEL_30:
        v28 = 2;
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v29 = 0xEC0000005F24213ELL;

  OUTLINED_FUNCTION_14_34();
  sub_266C5739C();
  OUTLINED_FUNCTION_4_57();
  v30 = v10 | 0x656D6F6800000000;
  switch(v31)
  {
    case 1:
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x6B726F7700000000;
      goto LABEL_37;
    case 2:
      OUTLINED_FUNCTION_11_34();
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x6F68637300000000;
      goto LABEL_37;
    case 3:
      v29 = 0xEB000000005F2421;
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x3E6D796700000000;
      goto LABEL_37;
    case 4:
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x6568746F00000000;
      goto LABEL_37;
    case 5:
      goto LABEL_38;
    default:
LABEL_37:

      v20 = v30;
      a2 = v29;
LABEL_38:
      OUTLINED_FUNCTION_14_34();
      v32._countAndFlagsBits = sub_266DAA73C();
      DefaultLocationLabel.init(rawValue:)(v32);
      v24 = LOBYTE(v37[0]);
      if (LOBYTE(v37[0]) == 5)
      {
        OUTLINED_FUNCTION_14_34();
        v33 = sub_266DAA73C();
        sub_266D91A18(v33, v34, v37);

        v28 = v38;
        if (v38 == 255)
        {
          v28 = 1;
          v24 = v20;
          v23 = a2;
        }

        else
        {
          v24 = v37[0];
          v23 = v37[1];
        }
      }

      else
      {

        v23 = 0;
        v28 = 0;
      }

      break;
  }

LABEL_31:
  *a5 = v24;
  *(a5 + 8) = v23;
  *(a5 + 16) = v28;
}

uint64_t LocationLabel.rawValue.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {

      return v1;
    }

    else
    {
      result = OUTLINED_FUNCTION_12_27();
      if (v1 != 2)
      {
        if (v1)
        {
          v3 = 0x7269656874;
        }

        else
        {
          v3 = 31085;
        }

        if (v1)
        {
          v4 = 0xE500000000000000;
        }

        else
        {
          v4 = 0xE200000000000000;
        }

        MEMORY[0x26D5F1170](v3, v4);

        MEMORY[0x26D5F1170](32, 0xE100000000000000);
        v5 = OUTLINED_FUNCTION_12_27();
        MEMORY[0x26D5F1170](v5);
        return 0;
      }
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_15_26();
    switch(v1)
    {
      case 1:
        result = OUTLINED_FUNCTION_7_37();
        break;
      case 2:
        OUTLINED_FUNCTION_11_34();
        result = OUTLINED_FUNCTION_9_27();
        break;
      case 3:
        result = OUTLINED_FUNCTION_6_44();
        break;
      case 4:
        OUTLINED_FUNCTION_10_25();
        result = OUTLINED_FUNCTION_8_24();
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_266D91274()
{
  sub_266DA70DC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  if (*(v0 + 16))
  {
    LocationLabel.rawValue.getter();
  }

  else
  {
    OUTLINED_FUNCTION_5_48();
    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_5_48();
        break;
      default:
        break;
    }

    sub_266DA708C();
    sub_266C680F8();
    sub_266DAAC7C();
    v3 = OUTLINED_FUNCTION_13_11();
    v4(v3);

    sub_266DAA73C();

    MEMORY[0x26D5F1170](0x7373657264646120, 0xE800000000000000);
  }

  sub_266DAA77C();
}

uint64_t LocationLabel.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6._countAndFlagsBits = sub_266DAA73C();
  DefaultLocationLabel.init(rawValue:)(v6);
  v7 = LOBYTE(v13[0]);
  if (LOBYTE(v13[0]) == 5)
  {
    v8 = sub_266DAA73C();
    sub_266D91A18(v8, v9, v13);

    v11 = v14;
    if (v14 == 255)
    {
      v11 = 1;
      v7 = a1;
    }

    else
    {
      v7 = v13[0];
      v12 = v13[1];

      a2 = v12;
    }
  }

  else
  {

    a2 = 0;
    v11 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = a2;
  *(a3 + 16) = v11;
  return result;
}

void sub_266D9156C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  if (v4)
  {
    v5 = v4;
    v6 = sub_266DAA70C();
    v8 = v7;

    v9._countAndFlagsBits = sub_266DAA73C();
    DefaultLocationLabel.init(rawValue:)(v9);
    v10 = LOBYTE(v25[0]);
    if (LOBYTE(v25[0]) == 5)
    {
      v11 = sub_266DAA73C();
      sub_266D91A18(v11, v12, v25);

      v13 = v26;
      if (v26 == 255)
      {
        v13 = 1;
        v10 = v6;
        v14 = v8;
      }

      else
      {
        v10 = v25[0];
        v14 = v25[1];
      }
    }

    else
    {

      v14 = 0;
      v13 = 0;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v20 = [a1 value];
    v21 = [v19 stringFromPostalAddress_];

    v22 = sub_266DAA70C();
    v24 = v23;

    *a2 = v10;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 24) = v22;
    *(a2 + 32) = v24;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    if (qword_2800C94A8 != -1)
    {
      OUTLINED_FUNCTION_0_91(&qword_2800C94A8);
    }

    v15 = sub_266DA94AC();
    __swift_project_value_buffer(v15, qword_2800CDED0);
    v16 = sub_266DA948C();
    v17 = sub_266DAAAEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266C08000, v16, v17, "Contact postal address missing label, could not convert to LabelledLocation", v18, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1;
  }
}

uint64_t LocationLabel.LocationReference.rawValue.getter()
{
  if (*v0)
  {
    return 0x7269656874;
  }

  else
  {
    return 31085;
  }
}

uint64_t sub_266D917D0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDED0);
  v1 = __swift_project_value_buffer(v0, qword_2800CDED0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

SiriFindMy::DefaultLocationLabel_optional __swiftcall DefaultLocationLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DefaultLocationLabel.rawValue.getter()
{
  result = 0x656D6F683C21245FLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_37();
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_27();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_44();
      break;
    case 4:
      result = OUTLINED_FUNCTION_8_24();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D919F0@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultLocationLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_266D91A18(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_2800C94A8 != -1)
  {
    OUTLINED_FUNCTION_0_91(&qword_2800C94A8);
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800CDED0);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136315138;
    v10 = OUTLINED_FUNCTION_13_11();
    *(v9 + 4) = sub_266C22A3C(v10, v11, v12);
    _os_log_impl(&dword_266C08000, v7, v8, "LocationReference parsing raw value: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if (a1 == 0xD000000000000010 && 0x8000000266DC1CA0 == a2)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_11();
  if (sub_266DAB17C())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_11();
  v16 = sub_266DAA7CC();
  OUTLINED_FUNCTION_12_27();
  v17 = sub_266DAA7CC();
  if (__OFADD__(v17, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 < v17 + 1 || (sub_266DAA87C() & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = -1;
    goto LABEL_13;
  }

  v18 = sub_266DAA7CC();
  OUTLINED_FUNCTION_12_27();
  v19 = sub_266DAA7CC();
  if (__OFADD__(v18, v19))
  {
    goto LABEL_27;
  }

  if (!__OFSUB__(0, v18 + v19))
  {
    sub_266DAA7EC();
    v20 = sub_266DAA8AC();
    MEMORY[0x26D5F10D0](v20);

    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v23 = 136315138;
      v24 = OUTLINED_FUNCTION_13_11();
      *(v23 + 4) = sub_266C22A3C(v24, v25, v26);
      _os_log_impl(&dword_266C08000, v21, v22, "LocationReference parsed prefix: '%s'", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    v27 = sub_266DAAF8C();

    if (v27 == 1)
    {
      v14 = xmmword_266DB3600;
      goto LABEL_11;
    }

    if (!v27)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_12;
    }

LABEL_10:
    v14 = xmmword_266DAD420;
LABEL_11:
    *a3 = v14;
LABEL_12:
    v15 = 2;
LABEL_13:
    *(a3 + 16) = v15;
    return;
  }

LABEL_28:
  __break(1u);
}

SiriFindMy::LocationLabel::LocationReference_optional __swiftcall LocationLabel.LocationReference.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_266D91DEC()
{
  result = qword_2800CDEE8;
  if (!qword_2800CDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEE8);
  }

  return result;
}

unint64_t sub_266D91E50()
{
  result = qword_2800CDEF0;
  if (!qword_2800CDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEF0);
  }

  return result;
}

uint64_t sub_266D91EC8@<X0>(uint64_t *a1@<X8>)
{
  result = LocationLabel.LocationReference.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_266D91EF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LocationLabel.init(rawValue:)(*a1, a1[1], &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_266D91F38@<X0>(uint64_t *a1@<X8>)
{
  result = LocationLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DefaultLocationLabel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationLabel.LocationReference(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266D92150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_266D921A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_266D92214(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_266D92254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_91(uint64_t a1)
{

  return swift_once();
}

SiriFindMy::DIIdentifier __swiftcall DIIdentifier.init(namespace:id:)(Swift::String a1, Swift::String id)
{
  *v2 = a1;
  v2[1] = id;
  result.id = id;
  result.namespace = a1;
  return result;
}

uint64_t sub_266D923B4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDEF8);
  v1 = __swift_project_value_buffer(v0, qword_2800CDEF8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DIIdentifier.namespace.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DIIdentifier.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DIIdentifier.payloadId.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x26D5F1170](v1, v2);
  return v4;
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266D926BC();
  (*(v5 + 16))(v7, v2, a1);
  return sub_266D92700(v7, a1, a2);
}

unint64_t sub_266D926BC()
{
  result = qword_2800CDF10;
  if (!qword_2800CDF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CDF10);
  }

  return result;
}

id sub_266D92700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a3 + 32))(v25, a2, a3);
  v7 = v25[2];
  v8 = v25[3];
  v24[1] = v25[1];

  MEMORY[0x26D5F1170](v7, v8);
  v9 = sub_266DAA6FC();

  v10 = [v6 initWithIdentifier_];

  sub_266DA701C();
  swift_allocObject();
  v11 = v10;
  sub_266DA700C();
  v15 = sub_266DA6FFC();
  v17 = v16;

  v18 = objc_opt_self();
  v19 = sub_266DA739C();
  sub_266C2BB04(v15, v17);
  v24[0] = 0;
  v20 = [v18 JSONObjectWithData:v19 options:0 error:v24];

  v21 = v24[0];
  if (v20)
  {
    sub_266DAACDC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD48, &qword_266DBE270);
    if (swift_dynamicCast())
    {
      v12 = v24[0];
      goto LABEL_3;
    }
  }

  else
  {
    v22 = v21;
    v23 = sub_266DA72FC();

    swift_willThrow();
  }

  v12 = sub_266DAA6CC();
LABEL_3:
  sub_266D7C9E4(v12);

  v13 = sub_266DAA69C();

  [v11 setUserData_];

  (*(*(a2 - 8) + 8))(a1, a2);
  return v11;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v8 = [v6 runSiriKitExecutorCommandWithContext:a1 payload:v7];

  return v8;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_266D92A94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_266D92AD4(uint64_t result, int a2, int a3)
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

uint64_t sub_266D92B38()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDF18);
  v1 = __swift_project_value_buffer(v0, qword_2800CDF18);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D92C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266D92C34);
}

uint64_t sub_266D92C34()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_266D9BD30(*(v0 + 16));
    *(v0 + 40) = v3;
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = swift_task_alloc();
      *(v0 + 48) = v6;
      *v6 = v0;
      v6[1] = sub_266D92DDC;
      v7 = *(v0 + 24);
      v8 = *(v0 + 32);

      return sub_266D93028(v4, v5, v7, v8);
    }

    sub_266D9BD18(v1);
    *(v0 + 56) = v10;
    if (v10)
    {
      v11 = sub_266CC909C(v1);
      *(v0 + 64) = v12;
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        v15 = swift_task_alloc();
        *(v0 + 72) = v15;
        *v15 = v0;
        v15[1] = sub_266D92EF0;
        v16 = OUTLINED_FUNCTION_4_4();

        return sub_266D9346C(v16, v17, v13, v14, v18, v19);
      }
    }
  }

  OUTLINED_FUNCTION_4_58();

  return v20(0, 0xF000000000000000);
}

uint64_t sub_266D92DDC()
{
  OUTLINED_FUNCTION_1_69();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return v4(v3);
}

uint64_t sub_266D92EF0()
{
  OUTLINED_FUNCTION_1_69();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return v4(v3);
}

uint64_t sub_266D93028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_266DAA29C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_266DAA57C();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D93148);
}

uint64_t sub_266D93148()
{
  v1 = *(v0 + 104);
  v6 = *(v0 + 48);
  (*(*(v0 + 72) + 104))(*(v0 + 80), *MEMORY[0x277D07CA0], *(v0 + 64));

  CGColorCreateGenericGray(1.0, 1.0);
  sub_266DAA56C();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
  *v3 = v0;
  v3[1] = sub_266D932CC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000015, 0x8000000266DC45D0, sub_266D943D4, v2, v4);
}

uint64_t sub_266D932CC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_266D933D8);
}

uint64_t sub_266D933D8()
{
  v1 = v0[2];
  v2 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_4_58();

  return v3(v1, v2);
}

uint64_t sub_266D9346C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_266DAA4EC();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_266DAA31C();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_266DAA5DC();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D935EC);
}

uint64_t sub_266D935EC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v9 = *(v0 + 64);
  (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x277D07CB8], *(v0 + 104));
  (*(v4 + 104))(v2, *MEMORY[0x277D07CD8], v3);

  sub_266DAA5CC();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = v9;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
  *v6 = v0;
  v6[1] = sub_266D937B8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000266DC45F0, sub_266D9440C, v5, v7);
}

uint64_t sub_266D937B8()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_266D938C4);
}

uint64_t sub_266D938C4()
{
  v1 = v0[2];
  v2 = v0[3];
  (*(v0[17] + 8))(v0[18], v0[16]);

  OUTLINED_FUNCTION_4_58();

  return v3(v1, v2);
}

uint64_t sub_266D9396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-1] - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v8, v5);

  sub_266DAA24C();

  v13 = v24[2];
  v12 = v24[3];
  swift_beginAccess();
  if (*(v9 + 16))
  {
    sub_266C2BAF0(v13, v12);
  }

  else
  {
    if (qword_2800C94B8 != -1)
    {
      swift_once();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800CDF18);
    sub_266C2BA84(v13, v12);
    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();
    sub_266C2BAF0(v13, v12);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      if (v12 >> 60 == 15)
      {
        v19 = 7104878;
      }

      else
      {
        v19 = 0x6C696E2D6E6F6ELL;
      }

      v23 = a1;
      if (v12 >> 60 == 15)
      {
        v20 = 0xE300000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = sub_266C22A3C(v19, v20, v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_266C08000, v15, v16, "Returning image immediately: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5F2480](v18, -1, -1);
      MEMORY[0x26D5F2480](v17, -1, -1);
    }

    v24[0] = v13;
    v24[1] = v12;
    sub_266DAA9BC();
  }
}

uint64_t sub_266D93C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-1] - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v8, v5);

  sub_266DAA24C();

  v13 = v24[2];
  v12 = v24[3];
  swift_beginAccess();
  if (*(v9 + 16))
  {
    sub_266C2BAF0(v13, v12);
  }

  else
  {
    if (qword_2800C94B8 != -1)
    {
      swift_once();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800CDF18);
    sub_266C2BA84(v13, v12);
    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();
    sub_266C2BAF0(v13, v12);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      if (v12 >> 60 == 15)
      {
        v19 = 7104878;
      }

      else
      {
        v19 = 0x6C696E2D6E6F6ELL;
      }

      v23 = a1;
      if (v12 >> 60 == 15)
      {
        v20 = 0xE300000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = sub_266C22A3C(v19, v20, v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_266C08000, v15, v16, "Returning item image immediately: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5F2480](v18, -1, -1);
      MEMORY[0x26D5F2480](v17, -1, -1);
    }

    v24[0] = v13;
    v24[1] = v12;
    sub_266DAA9BC();
  }
}

uint64_t sub_266D93FC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  swift_beginAccess();
  *(a2 + 16) = 1;
  if (v10 == 1)
  {
    if (qword_2800C94B8 != -1)
    {
      OUTLINED_FUNCTION_2_73(&qword_2800C94B8);
    }

    v11 = sub_266DA94AC();
    __swift_project_value_buffer(v11, qword_2800CDF18);
    v12 = v8;
    v13 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    sub_266D943F4(v8, v9, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v25 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_266DAB23C();
      v19 = sub_266C22A3C(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_266C08000, v13, v14, a5, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v25 = xmmword_266DBF390;
  }

  else
  {
    if (qword_2800C94B8 != -1)
    {
      OUTLINED_FUNCTION_2_73(&qword_2800C94B8);
    }

    v20 = sub_266DA94AC();
    __swift_project_value_buffer(v20, qword_2800CDF18);
    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266C08000, v21, v22, a4, v23, 2u);
      MEMORY[0x26D5F2480](v23, -1, -1);
    }

    *&v25 = v8;
    *(&v25 + 1) = v9;
    sub_266D94400(v8, v9, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  return sub_266DAA9BC();
}

uint64_t sub_266D94244(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266D942EC;

  return sub_266D92C10(a1, v5, v4);
}

uint64_t sub_266D942EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1_69();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  OUTLINED_FUNCTION_4_58();
  v3 = OUTLINED_FUNCTION_4_4();

  return v4(v3);
}

void sub_266D943F4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_266C2BB04(a1, a2);
  }
}

id sub_266D94400(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_266C2BA98(a1, a2);
  }
}

uint64_t objectdestroy_7Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_2_73(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_266D945C8(_BYTE *a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 48) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 49) = *a1;

  return MEMORY[0x2822009F8](sub_266D94674);
}

uint64_t sub_266D94674()
{
  v2 = *(v0 + 24);
  sub_266DAA77C();

  v3 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_266D947DC;

  return sub_266D45044();
}

uint64_t sub_266D947DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  sub_266C55ECC(*(v4 + 24));
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_266D9494C);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_266D9494C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t WontPlaySoundReason.rawValue.getter()
{
  result = 0x45636972656E6567;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

SiriFindMy::WontPlaySoundReason_optional __swiftcall WontPlaySoundReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_266D94ABC()
{
  result = qword_2800CDF38;
  if (!qword_2800CDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF38);
  }

  return result;
}

unint64_t sub_266D94B34@<X0>(unint64_t *a1@<X8>)
{
  result = WontPlaySoundReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WontPlaySoundReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t GEOServicesReverseGeocoder.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266DA750C();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t sub_266D94C9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_266D94D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_266D94DAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriFindMy::ReverseGeocodingSpokenNeeds sub_266D94E80@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ReverseGeocodingSpokenNeeds.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266D94EC0@<X0>(uint64_t *a1@<X8>)
{
  result = ReverseGeocodingSpokenNeeds.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266D94EEC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDF40);
  v1 = __swift_project_value_buffer(v0, qword_2800CDF40);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GEOServicesReverseGeocoder.reverseGeocodeLocationAsync(_:spokenNeeds:)()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v1[99] = v0;
  v1[93] = v4;
  v1[87] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v6);
  v1[105] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v7 = type metadata accessor for Location(0);
  v1[117] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[123] = v8;
  v1[124] = *(v9 + 64);
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v10 = type metadata accessor for GEOServicesReverseGeocoder(0);
  OUTLINED_FUNCTION_11_3(v10);
  v1[127] = v11;
  v1[128] = *(v12 + 64);
  v1[129] = swift_task_alloc();
  v13 = type metadata accessor for Address(0);
  v1[130] = v13;
  OUTLINED_FUNCTION_4_3(v13);
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = *v3;

  return MEMORY[0x2822009F8](sub_266D95178);
}

uint64_t sub_266D95178()
{
  v20 = v0[135];
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[124];
  v6 = v0[123];
  v7 = v0[93];
  if (v20 == 2)
  {
    v8 = 4;
  }

  else
  {
    v8 = 17;
  }

  v19 = v8;
  sub_266D9610C(v0[99], v1);
  sub_266D9610C(v7, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[136] = v11;
  sub_266D96164(v1, v11 + v9);
  sub_266D96164(v4, v11 + v10);
  *(v11 + ((v5 + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = v19;
  swift_asyncLet_begin();
  if (v20 == 3)
  {
    v12 = v0[125];
    sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
    OUTLINED_FUNCTION_1_70();
    v13 = OUTLINED_FUNCTION_4_4();
    sub_266D9610C(v13, v14);
    v15 = CLLocation.init(_:)(v12);
    v0[137] = v15;
    v16 = swift_task_alloc();
    v0[138] = v16;
    *v16 = v0;
    v16[1] = sub_266D953F8;
    v17 = v0[133];

    return sub_266D961BC(v17, v15, 4);
  }

  else
  {

    return MEMORY[0x282200930](v0 + 2);
  }
}

uint64_t sub_266D953F8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 1112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D95950);
  }

  else
  {

    return MEMORY[0x282200930](v3 + 16);
  }
}

uint64_t sub_266D95528()
{
  *(v1 + 1120) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_8(sub_266D95A70);
  }

  else
  {
    return OUTLINED_FUNCTION_2_8(sub_266D95554);
  }
}

uint64_t sub_266D95554()
{
  v1 = v0[133];
  v2 = v0[105];
  OUTLINED_FUNCTION_5_49();
  sub_266D9610C(v3, v4);
  sub_266C67BE8(v1, v2, &qword_2800CA038, &unk_266DAFBF0);
  sub_266D7FB28(v1);
  v5 = sub_266DA919C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    v6 = v0[105];
    sub_266C67BE8(v0[132] + *(v0[130] + 32), v0[111], &qword_2800CA038, &unk_266DAFBF0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v5) != 1)
    {
      sub_266C1825C(v0[105], &qword_2800CA038, &unk_266DAFBF0);
    }
  }

  else
  {
    v7 = v0[111];
    (*(*(v5 - 8) + 32))(v7, v0[105], v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v8 = v0[132];
  v9 = v0[117];
  v10 = v0[93];
  v11 = v0[87];
  sub_266C64CA4(v0[111], v8 + *(v0[130] + 32));
  OUTLINED_FUNCTION_1_70();
  sub_266D9610C(v10, v11);
  v12 = *(v9 + 44);
  sub_266C1825C(v11 + v12, &qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_5_49();
  sub_266D9610C(v8, v11 + v12);
  OUTLINED_FUNCTION_20_17();
  sub_266D7FB28(v8);
  v13 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v13);
}

uint64_t sub_266D9574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_266D9581C()
{
  *(v1 + 1128) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16);
  }

  else
  {
    return OUTLINED_FUNCTION_2_8(sub_266D95858);
  }
}

uint64_t sub_266D95858()
{
  v1 = v0[131];
  v2 = v0[117];
  v3 = v0[93];
  v4 = v0[87];
  sub_266D9610C(v0[134], v1);
  OUTLINED_FUNCTION_1_70();
  sub_266D9610C(v3, v4);
  v5 = *(v2 + 44);
  sub_266C1825C(v4 + v5, &qword_2800CC420, &unk_266DB0480);
  sub_266D96164(v1, v4 + v5);
  OUTLINED_FUNCTION_20_17();
  v6 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v6);
}

uint64_t sub_266D95950()
{
  OUTLINED_FUNCTION_22_0();

  v1 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_266D959C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_74();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_266D95A70()
{
  OUTLINED_FUNCTION_22_0();
  sub_266D7FB28(*(v0 + 1064));
  v1 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_266D95AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_74();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_266D95BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_74();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t type metadata accessor for GEOServicesReverseGeocoder(uint64_t a1)
{
  result = qword_2800CDF88;
  if (!qword_2800CDF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D95C9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  type metadata accessor for Location(0);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D95D34);
}

uint64_t sub_266D95D34()
{
  v1 = *(v0 + 40);
  sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
  OUTLINED_FUNCTION_1_70();
  v2 = OUTLINED_FUNCTION_4_4();
  sub_266D9610C(v2, v3);
  v4 = CLLocation.init(_:)(v1);
  *(v0 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_266D95E18;
  v6 = *(v0 + 72);
  v7 = *(v0 + 16);

  return sub_266D961BC(v7, v4, v6);
}

uint64_t sub_266D95E18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D95F44);
  }

  else
  {

    OUTLINED_FUNCTION_28();

    return v7();
  }
}

uint64_t sub_266D95F44()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D95FA8(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for GEOServicesReverseGeocoder(0);
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_11_3(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + ((*(v13 + 64) + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_266C48BB4;

  return sub_266D95C9C(a1, v1 + v7, v1 + v12, v14);
}

uint64_t sub_266D9610C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_2();
  v4(v3);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return a2;
}

uint64_t sub_266D96164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_2();
  v4(v3);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return a2;
}

uint64_t sub_266D961BC(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_266D961E4);
}

uint64_t sub_266D961E4()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i32[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for Address(0);
  *v3 = v0;
  v3[1] = sub_266D962EC;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000021, 0x8000000266DC4620, sub_266D96890, v2, v4);
}

uint64_t sub_266D962EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266C44228);
  }

  else
  {

    OUTLINED_FUNCTION_28();

    return v7();
  }
}

unint64_t sub_266D96410()
{
  result = qword_2800CDF60;
  if (!qword_2800CDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF60);
  }

  return result;
}

unint64_t sub_266D96468()
{
  result = qword_2800CDF68;
  if (!qword_2800CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF68);
  }

  return result;
}

unint64_t sub_266D964C0()
{
  result = qword_2800CDF70;
  if (!qword_2800CDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF70);
  }

  return result;
}

unint64_t sub_266D96518()
{
  result = qword_2800CDF78;
  if (!qword_2800CDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy14GeocodingErrorO(unint64_t *a1)
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

uint64_t sub_266D96590(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D965EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_266D9664C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    v2 = a2 - 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_266D966C0(uint64_t a1)
{
  result = sub_266DA750C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266D9672C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  sub_266D96ABC(a3, a2, v4, sub_266D96A44, v13);
}

uint64_t sub_266D9689C(uint64_t a1)
{
  v2 = type metadata accessor for Address(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA8, &unk_266DBF878);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_266C67BE8(a1, &v12 - v6, &qword_2800CDFA8, &unk_266DBF878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v7;
    v8 = *(v7 + 2);
    sub_266D97820();
    v9 = swift_allocError();
    *v10 = v12;
    *(v10 + 16) = v8;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
    return sub_266DAA9AC();
  }

  else
  {
    sub_266D96164(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
    return sub_266DAA9BC();
  }
}

uint64_t sub_266D96A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
  OUTLINED_FUNCTION_4_3(v2);

  return sub_266D9689C(a1);
}

uint64_t sub_266D96ABC(void *a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  LODWORD(v51) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA8, &unk_266DBF878);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_266DA750C();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = [objc_opt_self() sharedService];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v50 = a4;
  v16 = [v14 defaultTraits];
  if (!v16)
  {

    a4 = v50;
LABEL_10:
    if (qword_2800C94C0 != -1)
    {
      swift_once();
    }

    v37 = sub_266DA94AC();
    __swift_project_value_buffer(v37, qword_2800CDF40);
    v38 = sub_266DA948C();
    v39 = sub_266DAAAEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266C08000, v38, v39, "GEOServicesReverseGeocoder: Failed getting GEOMapService or default traits.", v40, 2u);
      MEMORY[0x26D5F2480](v40, -1, -1);
    }

    *v11 = xmmword_266DBF540;
    *(v11 + 2) = 0x8000000266DC4650;
    swift_storeEnumTagMultiPayload();
    a4(v11);
    return sub_266C1825C(v11, &qword_2800CDFA8, &unk_266DBF878);
  }

  v17 = v16;
  [v16 clearDeviceDisplayLanguages];
  v18 = sub_266DA74CC();
  sub_266CC0208(v18, v19, v17, &selRef_addDeviceDisplayLanguage_);
  v47 = a2;
  v20 = sub_266DA74CC();
  sub_266CC0208(v20, v21, v17, &selRef_setDeviceSpokenLocale_);
  sub_266C29814(0, &qword_2800CDFB0, 0x277D0EB80);
  sub_266C29884(a1);
  v48 = v22;
  v23 = [v15 ticketForReverseGeocodeLocation_placeTypeLimit_traits_];
  if (!v23)
  {
    if (qword_2800C94C0 != -1)
    {
      swift_once();
    }

    v41 = sub_266DA94AC();
    __swift_project_value_buffer(v41, qword_2800CDF40);
    v42 = sub_266DA948C();
    v43 = sub_266DAAAEC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266C08000, v42, v43, "GEOServicesReverseGeocoder: Failed getting ticket", v44, 2u);
      MEMORY[0x26D5F2480](v44, -1, -1);
    }

    *v11 = xmmword_266DBF530;
    *(v11 + 2) = 0x8000000266DC4680;
    swift_storeEnumTagMultiPayload();
    v50(v11);

    return sub_266C1825C(v11, &qword_2800CDFA8, &unk_266DBF878);
  }

  v46 = v23;
  if (qword_2800C94C0 != -1)
  {
    swift_once();
  }

  v24 = sub_266DA94AC();
  __swift_project_value_buffer(v24, qword_2800CDF40);
  v25 = sub_266DA948C();
  v26 = sub_266DAAB0C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v27 = 136315138;
    v52 = v51;
    type metadata accessor for GEOMapItemPlaceType(0);
    v28 = sub_266DAA72C();
    v51 = a5;
    v30 = sub_266C22A3C(v28, v29, aBlock);
    a5 = v51;

    *(v27 + 4) = v30;
    _os_log_impl(&dword_266C08000, v25, v26, "Performing Reverse Geocode for type %s", v27, 0xCu);
    v31 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x26D5F2480](v31, -1, -1);
    MEMORY[0x26D5F2480](v27, -1, -1);
  }

  v32 = v49;
  (*(v49 + 16))(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v12);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v50;
  *(v34 + 24) = a5;
  (*(v32 + 32))(v34 + v33, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_266D97788;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266D976E8;
  aBlock[3] = &block_descriptor_5;
  v35 = _Block_copy(aBlock);

  [v46 submitWithHandler:v35 networkActivity:0];
  _Block_release(v35);

  return swift_unknownObjectRelease();
}

uint64_t sub_266D9711C(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA8, &unk_266DBF878);
  MEMORY[0x28223BE20](v49);
  v10 = v45 - v9;
  v11 = sub_266DA750C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Address(0);
  v15 = MEMORY[0x28223BE20](v46);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v45 - v19;
  MEMORY[0x28223BE20](v18);
  v48 = v45 - v21;
  if (!a1 || !sub_266C3A14C())
  {
    goto LABEL_7;
  }

  v45[1] = a4;
  sub_266CB9F54();
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, a1);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  if (a2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_2800C94C0 != -1)
    {
      swift_once();
    }

    v22 = sub_266DA94AC();
    __swift_project_value_buffer(v22, qword_2800CDF40);
    v23 = a2;
    v24 = sub_266DA948C();
    v25 = sub_266DAAAEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = a2;
      v51 = v27;
      *v26 = 136315138;
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
      v29 = sub_266DAA72C();
      v31 = sub_266C22A3C(v29, v30, &v51);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_266C08000, v24, v25, "Reverse Geocoding failed with error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x26D5F2480](v27, -1, -1);
      MEMORY[0x26D5F2480](v26, -1, -1);
    }

    *v10 = a2;
    *(v10 + 8) = xmmword_266DBF550;
    swift_storeEnumTagMultiPayload();
    v32 = a2;
    a3(v10);
    return sub_266C1825C(v10, &qword_2800CDFA8, &unk_266DBF878);
  }

  (*(v12 + 16))(v14, v47, v11);
  swift_unknownObjectRetain();
  v34 = v48;
  sub_266D80070();
  if (qword_2800C94C0 != -1)
  {
    swift_once();
  }

  v35 = sub_266DA94AC();
  __swift_project_value_buffer(v35, qword_2800CDF40);
  sub_266D9610C(v34, v20);
  v36 = sub_266DA948C();
  v37 = sub_266DAAB0C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    *v38 = 136315138;
    sub_266D9610C(v20, v17);
    v40 = sub_266DAA72C();
    v42 = v41;
    sub_266D7FB28(v20);
    v43 = sub_266C22A3C(v40, v42, &v51);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_266C08000, v36, v37, "Got reverse geocode result: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v44 = v39;
    v34 = v48;
    MEMORY[0x26D5F2480](v44, -1, -1);
    MEMORY[0x26D5F2480](v38, -1, -1);
  }

  else
  {

    sub_266D7FB28(v20);
  }

  sub_266D9610C(v34, v10);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  swift_unknownObjectRelease();
  sub_266C1825C(v10, &qword_2800CDFA8, &unk_266DBF878);
  return sub_266D7FB28(v34);
}

uint64_t sub_266D976E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFB8, &qword_266DBF888);
    v4 = sub_266DAA93C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_266D97788(uint64_t a1, void *a2)
{
  v5 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_266D9711C(a1, a2, v7, v8, v9);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266D97820()
{
  result = qword_2800CDFC8;
  if (!qword_2800CDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDFC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_74()
{
}

uint64_t OUTLINED_FUNCTION_20_17()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

void sub_266D97920(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  [v1 setDeviceQuery_];
}

uint64_t (*sub_266D979A8(uint64_t (*a1)(__int128 *), uint64_t a2))(__int128 *)
{
  OUTLINED_FUNCTION_1_71(v16);
  OUTLINED_FUNCTION_1_71(__src);
  if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(__src) != 1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (qword_2800C94C8 != -1)
    {
      swift_once();
    }

    v4 = sub_266DA94AC();
    __swift_project_value_buffer(v4, qword_2800CDFD0);
    memcpy(v14, v16, 0x99uLL);
    sub_266C9CF60(v14, v13);
    v5 = sub_266DA948C();
    v6 = sub_266DAAB0C();
    sub_266C3A088(v16, &qword_2800CDC18, &qword_266DBDCB0);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315138;
      v9 = sub_266D67FC4();
      v11 = sub_266C22A3C(v9, v10, v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_266C08000, v5, v6, "Starting tree filter for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D5F2480](v8, -1, -1);
      MEMORY[0x26D5F2480](v7, -1, -1);
    }
  }

  return sub_266D98568(a1, a2, 0);
}

uint64_t sub_266D97B7C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDFD0);
  v1 = __swift_project_value_buffer(v0, qword_2800CDFD0);
  if (qword_2800C90E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2800E6160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_266D97C44@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_2800C94D0 != -1)
  {
    OUTLINED_FUNCTION_0_92(&qword_2800C94D0);
  }

  memcpy(__dst, &qword_2800E6588, 0xB9uLL);
  if (!sub_266D98210(a1, __dst))
  {
    memcpy(v24, &qword_2800E6588, 0xB9uLL);
    if (sub_266D98210(v3, v24))
    {
      OUTLINED_FUNCTION_1_71(__src);
      v6 = *(a1 + 3);
      v7 = *a1;
      v8 = *(a1 + 1);
      v9 = a1[16];
      v10 = v22;
      v11 = a1;
      goto LABEL_7;
    }

    v7 = *a1;
    v8 = *(a1 + 1);
    v12 = a1[16];
    if (v3[16] == 255)
    {
      v6 = *(v3 + 3);
      if (v12 != 255)
      {
        *&__src[0] = *(v3 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v14 = swift_allocObject();
        v15 = OUTLINED_FUNCTION_3_62(v14, xmmword_266DAE4A0);
        memcpy(v15, a1, 0xB9uLL);
        v21 = v6;
        sub_266D6638C(a1, v22);
        sub_266C744CC(__src, v22, &qword_2800CDFE8, &qword_266DBFB10);
        sub_266C38604(v14);
        sub_266D99240(v22);
        goto LABEL_13;
      }

      *&__src[0] = *(v3 + 3);
      *&v22[0] = v6;
      sub_266C744CC(__src, &v21, &qword_2800CDFE8, &qword_266DBFB10);

      sub_266C38604(v19);
      v6 = *&v22[0];
    }

    else
    {
      if (v12 != 255)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v6 = swift_allocObject();
        v13 = OUTLINED_FUNCTION_3_62(v6, xmmword_266DB05C0);
        memcpy(v13, v3, 0xB9uLL);
        memcpy(&v6[14], a1, 0xB9uLL);
        sub_266D99240(__src);
        sub_266D6638C(a1, v22);
        sub_266D6638C(v3, v22);
        memcpy(v22, __src, 0x99uLL);
LABEL_13:
        v7 = 0;
        v8 = 0;
LABEL_17:
        v9 = -1;
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
      v16 = swift_allocObject();
      v17 = OUTLINED_FUNCTION_3_62(v16, xmmword_266DAE4A0);
      memcpy(v17, v3, 0xB9uLL);
      *&__src[0] = v16;
      sub_266D6638C(v3, v22);

      sub_266C38604(v18);
      v6 = *&__src[0];
    }

    sub_266D99240(v22);
    goto LABEL_17;
  }

  memcpy(__src, v3 + 32, 0x99uLL);
  v6 = *(v3 + 3);
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = v3[16];
  v10 = v24;
  v11 = v3;
LABEL_7:
  sub_266D6638C(v11, v10);
  memcpy(v22, __src, 0x99uLL);
LABEL_18:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v6;
  return memcpy((a2 + 32), v22, 0x99uLL);
}

void *sub_266D97F44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2800C94D0 != -1)
  {
    OUTLINED_FUNCTION_0_92(&qword_2800C94D0);
  }

  memcpy(__dst, &qword_2800E6588, 0xB9uLL);
  if (sub_266D98210(a1, __dst))
  {
    OUTLINED_FUNCTION_1_71(v22);
    v5 = *(v2 + 24);
    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    sub_266D6638C(v2, v23);
    v9 = v22;
LABEL_8:
    memcpy(v19, v9, 0x99uLL);
    goto LABEL_9;
  }

  memcpy(v23, &qword_2800E6588, 0xB9uLL);
  if (sub_266D98210(v2, v23))
  {
    memcpy(__src, a1 + 32, 0x99uLL);
    v5 = *(a1 + 3);
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = a1[16];
LABEL_7:
    sub_266D6638C(a1, v22);
    v9 = __src;
    goto LABEL_8;
  }

  v11 = *(v2 + 24);
  v12 = *(v11 + 16);
  if (!v12)
  {
    if (a1[16] == 255)
    {
      v6 = *v2;
      v7 = *(v2 + 8);
      v8 = *(v2 + 16);
      v5 = *(a1 + 3);
      sub_266D99240(v22);
      sub_266D6643C(v6, v7, v8);
      memcpy(v19, v22, 0x99uLL);

      goto LABEL_9;
    }

    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
    v5 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_3_62(v5, xmmword_266DAE4A0);
    memcpy(v16, a1, 0xB9uLL);
    sub_266D99240(__src);
    sub_266D6643C(v6, v7, v8);
    goto LABEL_7;
  }

  v8 = *(v2 + 16);
  v17 = *(v2 + 8);
  v18 = *v2;
  sub_266D6643C(*v2, v17, v8);
  v20 = MEMORY[0x277D84F90];
  sub_266C38A88(0, v12, 0);
  v5 = v20;
  v13 = (v11 + 32);
  do
  {
    memcpy(v22, v13, 0xB9uLL);
    sub_266D6638C(v22, v19);
    sub_266D97F44(a1, __src);
    sub_266D663E8(v22);
    v20 = v5;
    v15 = v5[1].n128_u64[0];
    v14 = v5[1].n128_u64[1];
    if (v15 >= v14 >> 1)
    {
      sub_266C38A88((v14 > 1), v15 + 1, 1);
      v5 = v20;
    }

    v5[1].n128_u64[0] = v15 + 1;
    memcpy(&v5[12 * v15 + 2], __src, 0xB9uLL);
    v13 += 192;
    --v12;
  }

  while (v12);
  sub_266D99240(v19);
  v7 = v17;
  v6 = v18;
LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  return memcpy((a2 + 32), v19, 0x99uLL);
}

BOOL sub_266D98210(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *a2;
    v9 = *(a2 + 8);
    sub_266D66450(*a2, v9, v5);
    v10 = sub_266D30258(v6, v7, v4, v8, v9, v5);
    sub_266D77B70(v8, v9, v5);
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_266D7206C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_75(v20);
  OUTLINED_FUNCTION_1_71(v19);
  OUTLINED_FUNCTION_2_75(__src);
  OUTLINED_FUNCTION_1_71(&__src[160]);
  OUTLINED_FUNCTION_2_75(v18);
  if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(v18) != 1)
  {
    OUTLINED_FUNCTION_1_71(v15);
    if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(v15) == 1)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_71(v13);
    OUTLINED_FUNCTION_1_71(__dst);
    OUTLINED_FUNCTION_2_75(v21);
    sub_266C744CC(v20, v14, &qword_2800CDC18, &qword_266DBDCB0);
    sub_266C744CC(v19, v14, &qword_2800CDC18, &qword_266DBDCB0);
    v12 = sub_266D67828(v21, __dst);
    sub_266C3A088(v13, &qword_2800CDC18, &qword_266DBDCB0);
    OUTLINED_FUNCTION_2_75(v14);
    sub_266C3A088(v14, &qword_2800CDC18, &qword_266DBDCB0);
    return (v12 & 1) != 0;
  }

  OUTLINED_FUNCTION_1_71(__dst);
  if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(__dst) != 1)
  {
LABEL_11:
    memcpy(__dst, __src, 0x139uLL);
    OUTLINED_FUNCTION_4_59(v20, v21);
    OUTLINED_FUNCTION_4_59(v19, v21);
    sub_266C3A088(__dst, &qword_2800CDC20, &qword_266DBDCB8);
    return 0;
  }

  OUTLINED_FUNCTION_2_75(v21);
  OUTLINED_FUNCTION_4_59(v20, v15);
  OUTLINED_FUNCTION_4_59(v19, v15);
  sub_266C3A088(v21, &qword_2800CDC18, &qword_266DBDCB0);
  return 1;
}

uint64_t sub_266D98478(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 8236;
  }

  if (a1)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  sub_266D66450(*(a2 + 16), *(a2 + 24), *(a2 + 32));
  MEMORY[0x26D5F1170](v3, v4);

  v5 = sub_266DAA72C();
  MEMORY[0x26D5F1170](v5);

  v6 = sub_266D98478(0, v2);
  MEMORY[0x26D5F1170](v6);

  return 0;
}

uint64_t (*sub_266D98568(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = v3;
  v5 = a3;
  v8 = 0;
  v9 = *(v3 + 16);
  if (v9 == 255)
  {
  }

  else
  {
    *&v65 = 0;
    v12 = *v4;
    v11 = v4[1];
    v13 = swift_allocObject();
    v66 = &v63;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = v9;
    *(v13 + 40) = a3;
    MEMORY[0x28223BE20](v13);
    v60[2] = v12;
    v60[3] = v11;
    v61 = v9;
    v62 = a2;

    sub_266D6643C(v12, v11, v9);
    v8 = v65;
    a1 = sub_266CDAA74(sub_266D99208, v60, a1);
    v5 = v13;
  }

  if (qword_2800C94C8 != -1)
  {
    swift_once();
  }

  v14 = sub_266DA94AC();
  v15 = __swift_project_value_buffer(v14, qword_2800CDFD0);

  sub_266D6638C(v4, v68);

  sub_266D6638C(v4, v68);

  v66 = v15;
  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();

  v18 = os_log_type_enabled(v16, v17);
  v64 = v5;
  *&v65 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = v63;
    *v19 = 136315650;
    v68[0] = 91;
    v68[1] = 0xE100000000000000;
    v20 = sub_266D98478(1, v5);
    MEMORY[0x26D5F1170](v20);

    MEMORY[0x26D5F1170](93, 0xE100000000000000);
    v21 = sub_266C22A3C(v68[0], v68[1], v67);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2048;
    v22 = *(a1 + 2);

    *(v19 + 14) = v22;

    *(v19 + 22) = 2048;
    v23 = *(v4[3] + 16);
    sub_266D663E8(v4);
    *(v19 + 24) = v23;
    sub_266D663E8(v4);
    _os_log_impl(&dword_266C08000, v16, v17, "filterInternal path %s partial results: %ld, children: %ld", v19, 0x20u);
    v24 = v63;
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x26D5F2480](v24, -1, -1);
    MEMORY[0x26D5F2480](v19, -1, -1);
  }

  else
  {
    sub_266D663E8(v4);

    sub_266D663E8(v4);
  }

  v25 = *(a1 + 2);
  if (v25)
  {
    v26 = v4[3];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 32);
      v29 = v64;
      while (1)
      {
        memcpy(v68, v28, 0xB9uLL);
        sub_266D6638C(v68, v67);
        v30 = sub_266D98568(a1, a2, v29);
        sub_266D663E8(v68);
        if (*(v30 + 16))
        {
          break;
        }

        v28 += 192;
        if (!--v27)
        {

          return MEMORY[0x277D84F90];
        }
      }
    }

    else
    {

      v38 = v64;

      v39 = sub_266DA948C();
      v40 = sub_266DAAB0C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        v67[0] = v65;
        *v41 = 134218498;
        *(v41 + 4) = *(a1 + 2);

        *(v41 + 12) = 2080;
        v42 = *(a1 + 2);
        if (v42 <= 1)
        {
          v43 = 0;
        }

        else
        {
          v43 = 115;
        }

        if (v42 <= 1)
        {
          v44 = 0xE000000000000000;
        }

        else
        {
          v44 = 0xE100000000000000;
        }

        v45 = sub_266C22A3C(v43, v44, v67);

        *(v41 + 14) = v45;
        *(v41 + 22) = 2080;
        v68[0] = 91;
        v68[1] = 0xE100000000000000;
        v46 = sub_266D98478(1, v38);
        MEMORY[0x26D5F1170](v46);

        MEMORY[0x26D5F1170](93, 0xE100000000000000);
        v47 = sub_266C22A3C(v68[0], v68[1], v67);

        *(v41 + 24) = v47;
        _os_log_impl(&dword_266C08000, v39, v40, "Got %ld result%s on path %s", v41, 0x20u);
        v48 = v65;
        swift_arrayDestroy();
        MEMORY[0x26D5F2480](v48, -1, -1);
        MEMORY[0x26D5F2480](v41, -1, -1);
      }

      else
      {
      }

      v50 = a1 + 32;
      *&v49 = 136315138;
      v65 = v49;
      do
      {
        sub_266C233D0(v50, v68);
        v51 = sub_266DA948C();
        v52 = sub_266DAAB0C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v67[0] = v54;
          *v53 = v65;
          __swift_project_boxed_opaque_existential_1(v68, v68[3]);
          v55 = sub_266CDA8CC();
          v57 = v56;
          __swift_destroy_boxed_opaque_existential_0(v68);
          v58 = sub_266C22A3C(v55, v57, v67);

          *(v53 + 4) = v58;
          _os_log_impl(&dword_266C08000, v51, v52, "Partial result: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
          MEMORY[0x26D5F2480](v54, -1, -1);
          MEMORY[0x26D5F2480](v53, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v68);
        }

        v50 += 40;
        --v25;
      }

      while (v25);

      return a1;
    }
  }

  else
  {

    v31 = v64;

    v32 = sub_266DA948C();
    v33 = sub_266DAAB0C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67[0] = v35;
      *v34 = 136315138;
      v68[0] = 91;
      v68[1] = 0xE100000000000000;
      v36 = sub_266D98478(1, v31);
      MEMORY[0x26D5F1170](v36);

      MEMORY[0x26D5F1170](93, 0xE100000000000000);
      v37 = sub_266C22A3C(v68[0], v68[1], v67);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_266C08000, v32, v33, "Got no results on path %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x26D5F2480](v35, -1, -1);
      MEMORY[0x26D5F2480](v34, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v30;
}

void *sub_266D98D2C()
{
  sub_266D99240(v1);
  qword_2800E6588 = 0;
  unk_2800E6590 = 0;
  byte_2800E6598 = -1;
  qword_2800E65A0 = MEMORY[0x277D84F90];
  return memcpy(&unk_2800E65A8, v1, 0x99uLL);
}

uint64_t sub_266D98D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  __dst[0] = a1;
  __dst[1] = a2;

  MEMORY[0x26D5F1170](0x2020202020202020, 0xE800000000000000);
  v6 = __dst[1];
  v7 = *(v2 + 24);
  v8 = *(v7 + 16);
  v33 = v8;
  if (v8)
  {
    v31 = v5;
    v32 = v4;
    v9 = __dst[0];
    v38 = 2651;
    v39 = 0xE200000000000000;
    v37 = MEMORY[0x277D84F90];
    sub_266C387DC(0, v8, 0);
    v10 = v37;
    v11 = (v7 + 32);
    v12 = v8;
    do
    {
      memcpy(__dst, v11, 0xB9uLL);
      sub_266D6638C(__dst, &v34);
      v13 = sub_266D98D80(v9, v6);
      v15 = v14;
      sub_266D663E8(__dst);
      v37 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_266C387DC((v16 > 1), v17 + 1, 1);
        v10 = v37;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v11 += 192;
      --v12;
    }

    while (v12);

    v34 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
    sub_266D1731C();
    v19 = sub_266DAA6DC();
    v21 = v20;

    MEMORY[0x26D5F1170](v19, v21);

    MEMORY[0x26D5F1170](93, 0xE100000000000000);
    v23 = v38;
    v22 = v39;
    v5 = v31;
    v4 = v32;
    v3 = v2;
  }

  else
  {

    v22 = 0xE200000000000000;
    v23 = 23899;
  }

  v24 = *(v3 + 16);
  if (v24 == 255)
  {
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    v25 = *(v3 + 8);
    v34 = *v3;
    v35 = v25;
    v36 = v24;
    sub_266D66450(v34, v25, v24);
    v26 = sub_266DAA72C();
    v28 = v27;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_266DAADFC();
  MEMORY[0x26D5F1170](v5, v4);
  MEMORY[0x26D5F1170](0xD000000000000019, 0x8000000266DC46A0);
  MEMORY[0x26D5F1170](v26, v28);

  MEMORY[0x26D5F1170](10, 0xE100000000000000);
  MEMORY[0x26D5F1170](v5, v4);
  MEMORY[0x26D5F1170](0x6C69686320202020, 0xEF28203A6E657264);
  v38 = v33;
  v29 = sub_266DAB13C();
  MEMORY[0x26D5F1170](v29);

  MEMORY[0x26D5F1170](8233, 0xE200000000000000);
  MEMORY[0x26D5F1170](v23, v22);

  MEMORY[0x26D5F1170](10, 0xE100000000000000);
  MEMORY[0x26D5F1170](v5, v4);
  MEMORY[0x26D5F1170](125, 0xE100000000000000);
  return v34;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy15SearchCriterionOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xD)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D99148(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_266D99188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D99254(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_266D992A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_266D992F8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_0_92(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_1_71(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x99uLL);
}

void *OUTLINED_FUNCTION_2_75(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x99uLL);
}

uint64_t OUTLINED_FUNCTION_4_59(uint64_t a1, uint64_t a2)
{

  return sub_266C744CC(a1, a2, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for FriendLocationErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for LabeledLocationResult(uint64_t a1)
{
  result = qword_2800CDFF0;
  if (!qword_2800CDFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266D994C0(uint64_t a1)
{
  type metadata accessor for Location(319);
  if (v1 <= 0x3F)
  {
    sub_266D99534(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266D99534(uint64_t a1)
{
  if (!qword_2800CE000)
  {
    type metadata accessor for Location(255);
    v1 = sub_266DAA97C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CE000);
    }
  }
}

unint64_t sub_266D99590()
{
  result = qword_2800CE008[0];
  if (!qword_2800CE008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CE008);
  }

  return result;
}

uint64_t SFMContactDataProvider.withCaching()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFMCachingContactDataProvider();
  (*(v7 + 16))(v9, v3, a1);
  result = sub_266D9A558(v9, v10, a1, a2);
  a3[3] = v10;
  a3[4] = &protocol witness table for SFMCachingContactDataProvider;
  *a3 = result;
  return result;
}

uint64_t sub_266D99730(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_266D99824(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_266D998CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  v1 = sub_266DAA6CC();
  swift_beginAccess();
  *(v0 + 56) = v1;

  swift_beginAccess();
  memcpy(__dst, (v0 + 64), sizeof(__dst));
  *(v0 + 64) = sub_266D9AE00;
  *(v0 + 72) = v0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;

  return sub_266C3A088(__dst, &qword_2800CE090, &qword_266DBFCC8);
}

uint64_t sub_266D999BC(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

double sub_266D99A18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  if (!*(v3[7] + 16) || (, v7 = OUTLINED_FUNCTION_13_11(), sub_266D99E08(v7), v9 = v8, , (v9 & 1) == 0))
  {
    v10 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v11 = *(v10 + 16);

    v12 = OUTLINED_FUNCTION_13_11();
    v11(v12);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v3[7];
    sub_266D9A210(v30, a1, a2, isUniquelyReferenced_nonNull_native);
    v3[7] = v25[0];

    swift_endAccess();
  }

  v14 = v3[7];
  if (*(v14 + 16))
  {

    v15 = OUTLINED_FUNCTION_13_11();
    v16 = sub_266D99E08(v15);
    if (v17)
    {
      v18 = (*(v14 + 56) + (v16 << 6));
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *v18;
      v27 = v21;
      v28 = v20;
      v29 = v19;
      sub_266C744CC(&v26, v25, &qword_2800C9B18, &qword_266DBFC40);

      v22 = v27;
      *a3 = v26;
      a3[1] = v22;
      result = *&v28;
      v24 = v29;
      a3[2] = v28;
      a3[3] = v24;
      return result;
    }
  }

  result = 0.0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_266D99BC4@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  sub_266D99C14(a1);
  return swift_endAccess();
}

uint64_t sub_266D99C14@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v3;
  v4 = *(v1 + 64);
  v18[2] = *(v1 + 48);
  v18[3] = v4;
  if (*(&v4 + 1) == 1)
  {
    (*v1)();
    v5 = *(v1 + 32);
    v14[0] = *(v1 + 16);
    v14[1] = v5;
    v6 = *(v1 + 64);
    v14[2] = *(v1 + 48);
    v14[3] = v6;
    sub_266C3A088(v14, &qword_2800CE098, &qword_266DBFCD0);
    v7 = a1[1];
    v15[0] = *a1;
    v15[1] = v7;
    v9 = a1[3];
    v16 = a1[2];
    v8 = v16;
    v17 = v9;
    *(v1 + 16) = v15[0];
    *(v1 + 32) = v7;
    *(v1 + 48) = v8;
    *(v1 + 64) = v9;
    sub_266C744CC(v15, &v13, &qword_2800C9B18, &qword_266DBFC40);
  }

  else
  {
    v10 = *(v1 + 32);
    *a1 = *(v1 + 16);
    a1[1] = v10;
    v11 = *(v1 + 64);
    a1[2] = *(v1 + 48);
    a1[3] = v11;
  }

  return sub_266C744CC(v18, v15, &qword_2800CE098, &qword_266DBFCD0);
}

void *SFMCachingContactDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[17];

  sub_266D9A7D4(v1, v2, v3, v4, v5, v6, v7, v8);
  return v0;
}

uint64_t SFMCachingContactDataProvider.__deallocating_deinit()
{
  SFMCachingContactDataProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

unint64_t sub_266D99E08(uint64_t a1)
{
  OUTLINED_FUNCTION_1_72(a1);
  sub_266DAA7BC();
  sub_266DAB2DC();
  v1 = OUTLINED_FUNCTION_13_11();

  return sub_266D99F6C(v1, v2, v3);
}

unint64_t sub_266D99E68(uint64_t a1)
{
  OUTLINED_FUNCTION_1_72(a1);
  sub_266DAB2CC();
  if (v1)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2DC();
  v2 = OUTLINED_FUNCTION_13_11();

  return sub_266D9A020(v2, v3, v4);
}

unint64_t sub_266D99EE4(uint64_t a1)
{
  v2 = sub_266DAAD7C();

  return sub_266D9A0EC(a1, v2);
}

unint64_t sub_266D99F28(uint64_t a1)
{
  v2 = sub_266DAB29C();

  return sub_266D9A1B0(a1, v2);
}

unint64_t sub_266D99F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266DAB17C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266D9A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_266DAB17C() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_266D9A0EC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_266D9AE08(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5F16F0](v8, a1);
    sub_266CB00BC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266D9A1B0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_266D9A210(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_266D99E08(a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CE0A0, qword_266DBFCD8);
  if ((sub_266DAAEFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_266D99E08(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_266DAB1FC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7] + (v12 << 6);

    return sub_266D9AE64(a1, v17);
  }

  else
  {
    sub_266D9A48C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_266D9A34C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_266D99E08(a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC68, &unk_266DBDE10);
  if ((sub_266DAAEFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_266D99E08(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_266DAB1FC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7] + 248 * v12;

    return sub_266D9AED4(a1, v17);
  }

  else
  {
    sub_266D9A4E4(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_266D9A48C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void *sub_266D9A4E4(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 248 * a1), __src, 0xF2uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_266D9A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFMCachingContactDataProvider();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_266D9A668(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t sub_266D9A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_266C233D0(v12, a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  *(a2 + 56) = sub_266DAA6CC();
  sub_266C233D0(v12, v11);
  v8 = swift_allocObject();
  sub_266C0B0D8(v11, v8 + 16);
  *(a2 + 64) = sub_266D014EC;
  *(a2 + 72) = v8;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:a2 selector:sel_contactStoreChangedWithNotification_ name:*MEMORY[0x277CBD140] object:0];

  __swift_destroy_boxed_opaque_existential_0(v12);
  return a2;
}

uint64_t sub_266D9A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8 != 1)
  {
    return sub_266D9A7E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

uint64_t sub_266D9A7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
  }

  return result;
}

unint64_t sub_266D9A8BC(uint64_t a1)
{
  result = sub_266C3412C();
  if (v2 <= 0x3F)
  {
    result = sub_266DAAC1C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266D9A944(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 16) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_266D9AAF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 16] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 16] & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266D9AE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_1_72(uint64_t a1, ...)
{

  return sub_266DAB2AC();
}

uint64_t sub_266D9AF54(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a8;
  v89[1] = a5;
  v89[2] = a7;
  v94 = a6;
  v98 = a4;
  v101 = a2;
  sub_266DA750C();
  OUTLINED_FUNCTION_0_2();
  v99 = v12;
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  v90 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  MEMORY[0x28223BE20](v14 - 8);
  v95 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v16);
  v93 = v89 - v17;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v18);
  v92 = v89 - v19;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v20);
  v91 = v89 - v21;
  OUTLINED_FUNCTION_15_8();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v89 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96_2();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v89 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v89 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v89 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v89 - v36;
  type metadata accessor for FindmyDevice.Builder(0);
  swift_allocObject();
  v38 = sub_266C62630();
  sub_266C39CC0(a1, &selRef_deviceName);
  v97 = a3;
  if (v39)
  {
    sub_266DAA77C();

    v40 = sub_266DA919C();
    v41 = 0;
  }

  else
  {
    v40 = sub_266DA919C();
    v41 = 1;
  }

  v42 = 1;
  __swift_storeEnumTagSinglePayload(v37, v41, 1, v40);
  v43 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName;
  OUTLINED_FUNCTION_0_38(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName);
  sub_266CAB3E8(v37, v38 + v43);
  swift_endAccess();
  sub_266C55ECC(v37);
  sub_266C39CC0(a1, &selRef_emoji);
  if (v44)
  {
    sub_266DAA77C();

    v42 = 0;
  }

  sub_266DA919C();
  OUTLINED_FUNCTION_1_73(v35, v42);
  v45 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emoji;
  OUTLINED_FUNCTION_0_38(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emoji);
  sub_266CAB3E8(v35, v38 + v45);
  swift_endAccess();
  sub_266C55ECC(v35);
  sub_266C39CC0(a1, &selRef_productNameSemantic);
  if (v46 || (sub_266C39CC0(a1, &selRef_productName), v47))
  {
    sub_266DAA77C();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  OUTLINED_FUNCTION_1_73(v32, v48);
  v49 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName;
  OUTLINED_FUNCTION_0_38(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName);
  sub_266CAB3E8(v32, v38 + v49);
  swift_endAccess();
  sub_266C55ECC(v32);
  sub_266C39CC0(a1, &selRef_deviceClassSemantic);
  if (v50 || (sub_266C39CC0(a1, &selRef_deviceClass), v51))
  {
    sub_266DAA77C();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = 1;
  OUTLINED_FUNCTION_1_73(v29, v52);
  v54 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceClass;
  OUTLINED_FUNCTION_0_38(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceClass);
  sub_266CAB3E8(v29, v38 + v54);
  swift_endAccess();
  sub_266C55ECC(v29);
  sub_266C39CC0(a1, &selRef_category);
  if (v55)
  {
    sub_266DAA77C();

    v53 = 0;
  }

  OUTLINED_FUNCTION_1_73(v8, v53);
  v56 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_category;
  OUTLINED_FUNCTION_0_38(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_category);
  sub_266CAB3E8(v8, v38 + v56);
  swift_endAccess();
  sub_266C55ECC(v8);
  *(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem) = sub_266CC7C44() & 1;
  DeviceLocality.description.getter([a1 deviceLocality]);
  sub_266DAA77C();

  OUTLINED_FUNCTION_1_73(v25, 0);
  v57 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceLocality;
  OUTLINED_FUNCTION_0_38(v38 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceLocality);
  sub_266CAB3E8(v25, v38 + v57);
  swift_endAccess();
  sub_266C55ECC(v25);
  sub_266DA900C();
  v58 = [a1 deviceOwner];
  (*(v99 + 16))(v90, v101, v100);
  v59 = sub_266DA8FBC();
  v60 = sub_266C62788(v59);

  v61 = [a1 deviceOwner];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 isMe];
  }

  else
  {
    v63 = 0;
  }

  v64 = v97;
  v65 = v91;
  *(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_ownerIsMe) = v63;
  DeviceSpecificityLevel.description.getter([a1 deviceSpecificityLevel]);
  sub_266DAA77C();

  v66 = 1;
  OUTLINED_FUNCTION_1_73(v25, 0);
  v67 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_specificityLevel;
  OUTLINED_FUNCTION_0_38(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_specificityLevel);
  sub_266CAB3E8(v25, v60 + v67);
  swift_endAccess();
  sub_266C55ECC(v25);
  sub_266D9B8B0();
  if (v68)
  {
    sub_266DAA77C();

    v66 = 0;
  }

  v69 = v93;
  v70 = 1;
  OUTLINED_FUNCTION_1_73(v65, v66);
  v71 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName;
  OUTLINED_FUNCTION_0_38(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName);
  sub_266CAB3E8(v65, v60 + v71);
  swift_endAccess();
  sub_266C55ECC(v65);
  if ((sub_266CC7C44() & 1) == 0)
  {
    v70 = [a1 deviceSpecificityLevel] == 3;
  }

  *(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_displayByName) = v70;
  v72 = [a1 isEarbuds];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 BOOLValue];
  }

  else
  {
    v74 = 0;
  }

  v75 = v95;
  *(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isEarbuds) = v74;
  v76 = [a1 isHeadphones];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 BOOLValue];
  }

  else
  {
    v78 = 0;
  }

  *(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isHeadphones) = v78;
  v79 = v98;
  if (v98 >> 60 == 15)
  {
    v80 = 1;
    v81 = v92;
  }

  else
  {
    sub_266C2BA98(v64, v98);
    sub_266DA73AC();
    sub_266C2BAF0(v64, v79);
    v81 = v92;
    sub_266DAA77C();

    v80 = 0;
  }

  v82 = 1;
  OUTLINED_FUNCTION_1_73(v81, v80);
  v83 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_image;
  OUTLINED_FUNCTION_0_38(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_image);
  sub_266CAB3E8(v81, v60 + v83);
  swift_endAccess();
  sub_266C55ECC(v81);
  if (v94)
  {
    sub_266DAA77C();

    v82 = 0;
  }

  v84 = 1;
  OUTLINED_FUNCTION_1_73(v69, v82);
  v85 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_selectAction;
  OUTLINED_FUNCTION_0_38(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_selectAction);
  sub_266CAB3E8(v69, v60 + v85);
  swift_endAccess();
  sub_266C55ECC(v69);
  if (v96)
  {
    sub_266DAA77C();

    v84 = 0;
  }

  OUTLINED_FUNCTION_1_73(v75, v84);
  v86 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId;
  OUTLINED_FUNCTION_0_38(v60 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId);
  sub_266CAB3E8(v75, v60 + v86);
  swift_endAccess();
  sub_266C55ECC(v75);
  type metadata accessor for FindmyDevice(0);
  swift_allocObject();
  v87 = sub_266C628E8(v60);
  sub_266C2BAF0(v64, v79);

  (*(v99 + 8))(v101, v100);
  return v87;
}

uint64_t sub_266D9B8B0()
{
  if (sub_266CC7C44())
  {
    v1 = &selRef_category;
    return sub_266C39CC0(v0, v1);
  }

  if ([v0 deviceSpecificityLevel] == 1)
  {
    result = sub_266C39CC0(v0, &selRef_deviceClassSemantic);
    if (!v3)
    {
      v1 = &selRef_deviceClass;
      return sub_266C39CC0(v0, v1);
    }
  }

  else
  {
    result = sub_266C39CC0(v0, &selRef_productNameSemantic);
    if (!v4)
    {
      v1 = &selRef_productName;
      return sub_266C39CC0(v0, v1);
    }
  }

  return result;
}

uint64_t sub_266D9B934()
{
  v2 = 0xED000072656E774FLL;
  v3 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_96_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_266DAADFC();
  v28 = v26;
  v29 = v27;
  MEMORY[0x26D5F1170](0xD000000000000013, 0x8000000266DC4720);
  sub_266C64D14(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName, v14);
  v15 = sub_266DAA72C();
  MEMORY[0x26D5F1170](v15);

  MEMORY[0x26D5F1170](0x6375646F7270203BLL, 0xEB00000000203A74);
  sub_266C64D14(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName, v14);
  v16 = sub_266DAA72C();
  MEMORY[0x26D5F1170](v16);

  MEMORY[0x26D5F1170](0x3A72656E776F203BLL, 0xE900000000000020);
  if (!*(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner))
  {
    goto LABEL_4;
  }

  sub_266DA8FEC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_266C55ECC(v1);
LABEL_4:
    v17 = 0x206E776F6E6B6E55;
    goto LABEL_6;
  }

  v17 = sub_266DA917C();
  v2 = v18;
  (*(v25 + 8))(v1, v3);
LABEL_6:
  MEMORY[0x26D5F1170](v17, v2);

  MEMORY[0x26D5F1170](0x736168706D65203BLL, 0xEE00203A64497369);
  v19 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  swift_beginAccess();
  sub_266C64D14(v0 + v19, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3))
  {
    sub_266C55ECC(v11);
    v20 = 0x8000000266DC4740;
    v21 = 0xD000000000000012;
  }

  else
  {
    v22 = v25;
    (*(v25 + 16))(v7, v11, v3);
    sub_266C55ECC(v11);
    v21 = sub_266DA917C();
    v20 = v23;
    (*(v22 + 8))(v7, v3);
  }

  MEMORY[0x26D5F1170](v21, v20);

  return v28;
}

uint64_t OUTLINED_FUNCTION_1_73(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *sub_266D9BD54@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *a1;
  v4 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    v5 = v30;
    sub_266D99240(v32);
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_266D9BFD4(a1, v17);
    sub_266D9C280(a1, v18);
    sub_266D97F44(v18, v19);
    sub_266D663E8(v18);
    sub_266D663E8(v17);
    if (*(a1 + 72))
    {
      if (qword_2800C94D0 != -1)
      {
        swift_once();
      }

      memcpy(__dst, &qword_2800E6588, 0xB9uLL);
      v10 = __dst[3];
      v11 = __dst[0];
      v12 = __dst[1];
      v13 = __dst[2];
      sub_266D6638C(__dst, v26);
      memcpy(__src, &__dst[4], 0x99uLL);
    }

    else
    {
      v11 = *(a1 + 8);
      sub_266D99240(__src);
      v12 = 0;
      v10 = MEMORY[0x277D84F90];
      v13 = 4;
    }

    v15[0] = v11;
    v15[1] = v12;
    LOBYTE(v15[2]) = v13;
    v15[3] = v10;
    memcpy(&v15[4], __src, 0x99uLL);
    memcpy(__dst, v15, 0xB9uLL);
    sub_266D97F44(__dst, v20);
    sub_266D663E8(v15);
    sub_266D663E8(v19);
    sub_266D9C5CC(a1, v21);
    sub_266D97F44(v21, v22);
    sub_266D663E8(v21);
    sub_266D663E8(v20);
    sub_266D9C888(a1, v23);
    sub_266D97F44(v23, v24);
    sub_266D663E8(v23);
    sub_266D663E8(v22);
    sub_266D9C98C(a1, a2, v25);
    sub_266D97F44(v25, v26);
    sub_266D663E8(v25);
    sub_266D663E8(v24);
    memcpy(v32, v29, 0x99uLL);
    v7 = v28;
    v5 = v26[0];
    v4 = v26[1];
    v6 = v27;
  }

  memcpy(v15, v32, 0x99uLL);
  sub_266CAA834(&v30, __src);
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  return memcpy((a3 + 32), v15, 0x99uLL);
}

void *sub_266D9BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 48);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_266D99240(v10);
    __src[0] = v4;
    __src[1] = v3;
    LOBYTE(__src[2]) = 1;
    __src[3] = MEMORY[0x277D84F90];
    memcpy(&__src[4], v10, 0x99uLL);
    memcpy(__dst, __src, 0xB9uLL);
    v12[0] = v4;
    v12[1] = v3;
    LOBYTE(v12[2]) = 2;
    v12[3] = MEMORY[0x277D84F90];
    memcpy(&v12[4], v10, 0x99uLL);
    memcpy(v15, v12, 0xB9uLL);
    v6 = qword_2800C94D0;
    swift_bridgeObjectRetain_n();
    if (v6 != -1)
    {
      swift_once();
    }

    memcpy(v16, &qword_2800E6588, 0xB9uLL);
    if (sub_266D98210(v15, v16))
    {
      sub_266D663E8(v12);
      memcpy(v17, v10, sizeof(v17));
      v7 = MEMORY[0x277D84F90];
      v8 = 1;
    }

    else
    {
      memcpy(v14, &qword_2800E6588, 0xB9uLL);
      if (sub_266D98210(__dst, v14))
      {
        sub_266D663E8(__src);
        memcpy(v17, v10, sizeof(v17));
        v7 = MEMORY[0x277D84F90];
        v8 = 2;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v7 = swift_allocObject();
        v7[1] = xmmword_266DB05C0;
        memcpy(v7 + 2, __dst, 0xB9uLL);
        memcpy(v7 + 14, v15, 0xB9uLL);
        memcpy(v17, v10, sizeof(v17));
        v4 = 0;
        v3 = 0;
        v8 = -1;
      }
    }
  }

  else
  {
LABEL_9:
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(v16, &qword_2800E6588, 0xB9uLL);
    v7 = v16[3];
    v4 = v16[0];
    v3 = v16[1];
    v8 = v16[2];
    sub_266D6638C(v16, v15);
    memcpy(v17, &v16[4], sizeof(v17));
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  return memcpy((a2 + 32), v17, 0x99uLL);
}

void *sub_266D9C280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[2];
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = a1[10];
      if (!v6 || !*(v6 + 16))
      {
        sub_266D99240(__src);
        v21[0] = v4;
        v21[1] = v3;
        LOBYTE(v21[2]) = 3;
        v11 = MEMORY[0x277D84F90];
        v21[3] = MEMORY[0x277D84F90];
        memcpy(&v21[4], __src, 0x99uLL);
        memcpy(v29, v21, 0xB9uLL);
        v22[0] = v4;
        v22[1] = v3;
        LOBYTE(v22[2]) = 1;
        v22[3] = MEMORY[0x277D84F90];
        memcpy(&v22[4], __src, 0x99uLL);
        memcpy(v31, v22, 0xB9uLL);
        v12 = qword_2800C94D0;
        swift_bridgeObjectRetain_n();
        if (v12 != -1)
        {
          swift_once();
        }

        memcpy(__dst, &qword_2800E6588, 0xB9uLL);
        if (sub_266D98210(v31, __dst))
        {
          sub_266D663E8(v22);
          v13 = MEMORY[0x277D84F90];
          v14 = 3;
        }

        else
        {
          memcpy(v30, &qword_2800E6588, 0xB9uLL);
          if (!sub_266D98210(v29, v30))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
            v13 = swift_allocObject();
            v13[1] = xmmword_266DB05C0;
            memcpy(v13 + 2, v29, 0xB9uLL);
            memcpy(v13 + 14, v31, 0xB9uLL);
            v15 = 0;
            v16 = 0;
            v14 = -1;
            goto LABEL_18;
          }

          sub_266D663E8(v21);
          v13 = MEMORY[0x277D84F90];
          v14 = 1;
        }

        v15 = v4;
        v16 = v3;
LABEL_18:
        v18[0] = v15;
        v18[1] = v16;
        LOBYTE(v18[2]) = v14;
        v18[3] = v13;
        memcpy(&v18[4], __src, 0x99uLL);
        memcpy(v28, v18, sizeof(v28));
        v19[0] = v4;
        v19[1] = v3;
        LOBYTE(v19[2]) = 2;
        v19[3] = v11;
        memcpy(&v19[4], __src, 0x99uLL);
        memcpy(v27, v19, 0xB9uLL);

        sub_266D97C44(v27, v23);
        sub_266D663E8(v19);
        sub_266D663E8(v18);
        memcpy(v33, v26, sizeof(v33));
        v7 = v25;
        v8 = v23[0];
        v9 = v23[1];
        v10 = v24;
        goto LABEL_19;
      }
    }
  }

  if (qword_2800C94D0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_2800E6588, 0xB9uLL);
  v7 = __dst[3];
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  sub_266D6638C(__dst, v31);
  memcpy(v33, &__dst[4], sizeof(v33));
LABEL_19:
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v7;
  return memcpy((a2 + 32), v33, 0x99uLL);
}

void *sub_266D9C5CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = a1[4];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && ((v6 = a1[10]) == 0 || !*(v6 + 16)))
  {
    sub_266D99240(v11);
    v12[0] = v4;
    v12[1] = v3;
    LOBYTE(v12[2]) = 11;
    v12[3] = MEMORY[0x277D84F90];
    memcpy(&v12[4], v11, 0x99uLL);
    memcpy(v14, v12, 0xB9uLL);
    v13[0] = v4;
    v13[1] = v3;
    LOBYTE(v13[2]) = 2;
    v13[3] = MEMORY[0x277D84F90];
    memcpy(&v13[4], v11, 0x99uLL);
    memcpy(v16, v13, 0xB9uLL);
    v10 = qword_2800C94D0;
    swift_bridgeObjectRetain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2800E6588, 0xB9uLL);
    if (sub_266D98210(v16, __dst))
    {
      sub_266D663E8(v13);
      memcpy(__src, v11, sizeof(__src));
      v7 = MEMORY[0x277D84F90];
      v8 = 11;
    }

    else
    {
      memcpy(v15, &qword_2800E6588, 0xB9uLL);
      if (sub_266D98210(v14, v15))
      {
        sub_266D663E8(v12);
        memcpy(__src, v11, sizeof(__src));
        v7 = MEMORY[0x277D84F90];
        v8 = 2;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v7 = swift_allocObject();
        v7[1] = xmmword_266DB05C0;
        memcpy(v7 + 2, v14, 0xB9uLL);
        memcpy(v7 + 14, v16, 0xB9uLL);
        memcpy(__src, v11, sizeof(__src));
        v4 = 0;
        v3 = 0;
        v8 = -1;
      }
    }
  }

  else
  {
LABEL_7:
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2800E6588, 0xB9uLL);
    v7 = __dst[3];
    v4 = __dst[0];
    v3 = __dst[1];
    v8 = __dst[2];
    sub_266D6638C(__dst, v16);
    memcpy(__src, &__dst[4], sizeof(__src));
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  return memcpy((a2 + 32), __src, 0x99uLL);
}

void *sub_266D9C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 && *(v3 + 16))
  {

    sub_266CB89BC(v4);
    v6 = v5;
    sub_266D99240(v11);
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = 12;
  }

  else
  {
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2800E6588, 0xB9uLL);
    v8 = __dst[3];
    v6 = __dst[0];
    v7 = __dst[1];
    v9 = __dst[2];
    sub_266D6638C(__dst, v11);
    memcpy(v11, &__dst[4], 0x99uLL);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  return memcpy((a2 + 32), v11, 0x99uLL);
}

void *sub_266D9C98C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 152);
  v5 = *(a1 + 96) == 1 || v4 == 2;
  if (!v5 && (v4 & 1) != 0)
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    (*(v7 + 8))(v23, v6, v7);
    v8 = 0;
    v9 = v24;
    v10 = -1;
    if (v24)
    {
      v11 = 0;
      if (v23[1])
      {
        v8 = v23[0];
        v10 = 2;
      }
    }

    else
    {
      v11 = 0;
    }

    sub_266D99240(__src);
    v21[0] = 0;
    v21[1] = 0;
    LOBYTE(v21[2]) = 13;
    v15 = MEMORY[0x277D84F90];
    v21[3] = MEMORY[0x277D84F90];
    memcpy(&v21[4], __src, 0x99uLL);
    memcpy(v32, v21, 0xB9uLL);
    v22[0] = v8;
    v22[1] = v11;
    LOBYTE(v22[2]) = v10;
    v22[3] = MEMORY[0x277D84F90];
    memcpy(&v22[4], __src, 0x99uLL);
    memcpy(v31, v22, 0xB9uLL);
    sub_266D97C44(v31, v25);
    sub_266D663E8(v22);
    sub_266D663E8(v21);
    if (v9)
    {
      v9 = v23[2];
      v16 = v23[3];

      sub_266C24A30(v23);
      if (v16)
      {
        v17 = 2;
LABEL_17:
        v19[0] = v9;
        v19[1] = v16;
        LOBYTE(v19[2]) = v17;
        v19[3] = v15;
        memcpy(&v19[4], __src, 0x99uLL);
        memcpy(v30, v19, 0xB9uLL);
        sub_266D97C44(v30, &v26);
        sub_266D663E8(v19);
        sub_266D663E8(v25);
        memcpy(__dst, v29, sizeof(__dst));
        v12 = v28;
        v13 = v26;
        v14 = v27;
        goto LABEL_18;
      }

      v9 = 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = -1;
    goto LABEL_17;
  }

  sub_266D9CBD4(a1);
  memcpy(__dst, &v32[2], sizeof(__dst));
  v12 = *(&v32[1] + 1);
  v13 = v32[0];
  v14 = v32[1];
LABEL_18:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v12;
  return memcpy((a3 + 32), __dst, 0x99uLL);
}

void *sub_266D9CBD4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1[12];
  if (v4 == 1)
  {
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(v61, &qword_2800E6588, 0xB9uLL);
    v5 = v61[3];
    v6 = v61[0];
    v7 = v61[1];
    v8 = v61[2];
    sub_266D6638C(v61, v60);
    memcpy(__dst, &v61[4], sizeof(__dst));
  }

  else
  {
    v10 = v1[13];
    v9 = v1[14];
    v11 = v1[16];
    v12 = v1[18];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v1[17];
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_266D99240(__src);
      v54[0] = v13;
      v54[1] = v12;
      LOBYTE(v54[2]) = 6;
      v15 = MEMORY[0x277D84F90];
      v54[3] = MEMORY[0x277D84F90];
      memcpy(&v54[4], __src, 0x99uLL);
      memcpy(v61, v54, 0xB9uLL);
      v55[0] = v13;
      v55[1] = v12;
      LOBYTE(v55[2]) = 8;
      v55[3] = MEMORY[0x277D84F90];
      memcpy(&v55[4], __src, 0x99uLL);
      memcpy(v60, v55, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97F44(v60, v57);
      sub_266D663E8(v55);
      sub_266D663E8(v54);
      v56[0] = v13;
      v56[1] = v12;
      LOBYTE(v56[2]) = 2;
      v56[3] = v15;
      memcpy(&v56[4], __src, 0x99uLL);
      memcpy(v59, v56, 0xB9uLL);

      sub_266D97C44(v59, v58);
      sub_266D663E8(v56);
      sub_266D663E8(v57);
      memcpy(__dst, &v58[4], sizeof(__dst));
      v5 = v58[3];
      v6 = v58[0];
      v7 = v58[1];
      v8 = v58[2];
    }

    else
    {
LABEL_10:
      v30 = v1[15];
      if (v4)
      {
        v16 = v1[11];
      }

      else
      {
        v16 = 0;
      }

      if (v4)
      {
        v17 = 6;
      }

      else
      {
        v17 = -1;
      }

      if (v4)
      {
        v18 = 5;
      }

      else
      {
        v18 = -1;
      }

      sub_266D99240(v39);
      v40[0] = v16;
      v40[1] = v4;
      LOBYTE(v40[2]) = v18;
      v19 = MEMORY[0x277D84F90];
      v40[3] = MEMORY[0x277D84F90];
      memcpy(&v40[4], v39, 0x99uLL);
      memcpy(v61, v40, 0xB9uLL);
      v31 = v16;
      v41[0] = v16;
      v41[1] = v4;
      LOBYTE(v41[2]) = v17;
      v41[3] = MEMORY[0x277D84F90];
      memcpy(&v41[4], v39, 0x99uLL);
      memcpy(v60, v41, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97C44(v60, v42);
      sub_266D663E8(v41);
      sub_266D663E8(v40);
      if (v9)
      {
        v20 = v10;
      }

      else
      {
        v20 = 0;
      }

      if (v9)
      {
        v21 = 6;
      }

      else
      {
        v21 = -1;
      }

      v37[0] = v20;
      v37[1] = v9;
      if (v9)
      {
        v22 = 5;
      }

      else
      {
        v22 = -1;
      }

      LOBYTE(v37[2]) = v22;
      v37[3] = v19;
      memcpy(&v37[4], v39, 0x99uLL);
      memcpy(v59, v37, 0xB9uLL);
      v38[0] = v20;
      v38[1] = v9;
      LOBYTE(v38[2]) = v21;
      v38[3] = v19;
      memcpy(&v38[4], v39, 0x99uLL);
      memcpy(v58, v38, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97C44(v58, v43);
      sub_266D663E8(v38);
      sub_266D663E8(v37);
      if (v11)
      {
        v23 = 7;
        v24 = 8;
        v25 = 2;
        v26 = v30;
      }

      else
      {
        v26 = 0;
        v25 = -1;
        v24 = -1;
        v23 = -1;
      }

      v35[0] = v26;
      v35[1] = v11;
      LOBYTE(v35[2]) = v23;
      v35[3] = v19;
      memcpy(&v35[4], v39, 0x99uLL);
      memcpy(v57, v35, 0xB9uLL);
      v36[0] = v26;
      v36[1] = v11;
      LOBYTE(v36[2]) = v24;
      v36[3] = v19;
      memcpy(&v36[4], v39, 0x99uLL);
      memcpy(v56, v36, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97C44(v56, v44);
      sub_266D663E8(v36);
      sub_266D663E8(v35);
      sub_266D97C44(v43, v45);
      sub_266D663E8(v42);
      sub_266D663E8(v43);
      sub_266D97F44(v45, v46);
      sub_266D663E8(v44);
      sub_266D663E8(v45);
      if (v4)
      {
        v27 = 2;
      }

      else
      {
        v27 = -1;
      }

      v34[0] = v31;
      v34[1] = v4;
      LOBYTE(v34[2]) = v27;
      v34[3] = v19;
      memcpy(&v34[4], v39, 0x99uLL);
      memcpy(v55, v34, 0xB9uLL);

      sub_266D97C44(v55, v47);
      sub_266D663E8(v34);
      sub_266D663E8(v46);
      if (v9)
      {
        v28 = 2;
      }

      else
      {
        v28 = -1;
      }

      v33[0] = v20;
      v33[1] = v9;
      LOBYTE(v33[2]) = v28;
      v33[3] = v19;
      memcpy(&v33[4], v39, 0x99uLL);
      memcpy(v54, v33, 0xB9uLL);

      sub_266D97C44(v54, v48);
      sub_266D663E8(v33);
      sub_266D663E8(v47);
      v32[0] = v26;
      v32[1] = v11;
      LOBYTE(v32[2]) = v25;
      v32[3] = v19;
      memcpy(&v32[4], v39, 0x99uLL);
      memcpy(__src, v32, 0xB9uLL);

      sub_266D97C44(__src, v49);
      sub_266D663E8(v32);
      sub_266D663E8(v48);
      memcpy(__dst, v52, sizeof(__dst));
      v5 = v51;
      v6 = v49[0];
      v7 = v49[1];
      v8 = v50;
    }
  }

  *v3 = v6;
  *(v3 + 8) = v7;
  *(v3 + 16) = v8;
  *(v3 + 24) = v5;
  return memcpy((v3 + 32), __dst, 0x99uLL);
}

uint64_t sub_266D9D248()
{
  OUTLINED_FUNCTION_1_74();
  v2 = MEMORY[0x28223BE20](v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v20);
  v11(v10);
  if (sub_266DAB15C())
  {
    v12 = OUTLINED_FUNCTION_3_63();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_4_60();
    v12 = OUTLINED_FUNCTION_2_76(v14, v15);
  }

  v13(v12);
  v16 = sub_266DA72EC();

  v17 = [v16 domain];
  v18 = sub_266DAA70C();

  return v18;
}

id sub_266D9D360()
{
  OUTLINED_FUNCTION_1_74();
  v2 = MEMORY[0x28223BE20](v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v19);
  v11(v10);
  if (sub_266DAB15C())
  {
    v12 = OUTLINED_FUNCTION_3_63();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_4_60();
    v12 = OUTLINED_FUNCTION_2_76(v14, v15);
  }

  v13(v12);
  v16 = sub_266DA72EC();

  v17 = [v16 code];
  return v17;
}

uint64_t OUTLINED_FUNCTION_4_60()
{

  return swift_allocError();
}

uint64_t sub_266D9D4F0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (sub_266D1E0B4())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  return sub_266D1E0E8() & 1;
}

uint64_t sub_266D9D548(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_266D9D568);
}

uint64_t sub_266D9D568()
{
  if (sub_266D9D4F0())
  {
    if (qword_2800C9110 != -1)
    {
      OUTLINED_FUNCTION_53(&qword_2800C9110);
    }

    v1 = sub_266DA94AC();
    __swift_project_value_buffer(v1, &unk_2800E61A8);
    v2 = sub_266DA948C();
    v3 = sub_266DAAB0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v5, v6, "[CheckAppInstalledFlow] App is installed or device is watch with at least one installed: passing.");
      MEMORY[0x26D5F2480](v4, -1, -1);
    }

    v7 = *(v0 + 104);

    *(v7 + 16) = 0;
    sub_266DA7D7C();
  }

  else
  {
    if (qword_2800C9110 != -1)
    {
      OUTLINED_FUNCTION_53(&qword_2800C9110);
    }

    v8 = sub_266DA94AC();
    __swift_project_value_buffer(v8, &unk_2800E61A8);
    v9 = sub_266DA948C();
    v10 = sub_266DAAB0C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v12, v13, "[CheckAppInstalledFlow] App is NOT installed: failing.");
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    v14 = *(v0 + 104);

    *(v14 + 16) = 1;
    sub_266C233D0(v14 + 104, v0 + 16);
    sub_266C233D0(v14 + 64, v0 + 56);
    v15 = swift_allocObject();
    sub_266C0B0D8((v0 + 56), v15 + 16);
    sub_266DA75FC();
    swift_allocObject();
    *(v0 + 16) = sub_266DA75EC();
    sub_266DA7D5C();
  }

  OUTLINED_FUNCTION_28();

  return v16();
}

uint64_t sub_266D9D7B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D9D7D0);
}

uint64_t sub_266D9D7D0()
{
  OUTLINED_FUNCTION_22_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266D25D18;

  return sub_266CA23EC();
}

uint64_t sub_266D9D87C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CheckAppInstalledFlow();
  sub_266CE8070();
  return sub_266DA79AC();
}

void *sub_266D9D8D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v0;
}

uint64_t sub_266D9D910()
{
  sub_266D9D8D8();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_266D9D98C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C4716C;

  return sub_266D9D548(a1);
}

uint64_t sub_266D9DA28()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266C4716C;

  return sub_266D9D7B0(v3, v0 + 16);
}

void *sub_266D9DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = sub_266CAB510(0);
  v9 = v8;
  v10 = sub_266CAB510(1);
  v12 = v11;
  v13 = sub_266CAB510(4);
  v15 = v14;
  a4[3] = a1;
  a4[4] = a2;
  v16 = swift_allocObject();
  *a4 = v16;
  v16[5] = &type metadata for BaseNLContextProvider;
  v16[6] = &off_287861AA0;
  result = swift_allocObject();
  v16[2] = result;
  result[2] = 0x746361746E6F63;
  result[3] = 0xE700000000000000;
  result[4] = v7;
  result[5] = v9;
  result[6] = v10;
  result[7] = v12;
  result[8] = v13;
  result[9] = v15;
  v16[7] = 0x49746361746E6F63;
  v16[8] = 0xE900000000000064;
  v16[9] = 0xD000000000000010;
  v16[10] = 0x8000000266DC23D0;
  return result;
}

uint64_t objectdestroyTm_16()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266D9DC70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C29DCC;

  return sub_266D9DD10(a1, a2);
}

uint64_t sub_266D9DD10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D9DD30);
}

uint64_t sub_266D9DD30()
{
  v24 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v1 = sub_266DA7FBC();
  if (qword_2800C93D8 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800E6498);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v22[0] = v7;
    *v6 = 136315138;
    v8 = v3;
    v9 = [v8 description];
    v10 = sub_266DAA70C();
    v12 = v11;

    v13 = sub_266C22A3C(v10, v12, v22);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_266C08000, v4, v5, "Handling continueInApp response: %s)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D5F2480](v7, -1, -1);
    MEMORY[0x26D5F2480](v6, -1, -1);
  }

  v14 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266DAE3B0;
  v16 = [v3 device];
  v17 = sub_266D9DFB4(v16);

  *(v15 + 32) = v17;
  v18 = sub_266DA820C();
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v19 = MEMORY[0x277D5C1D8];
  v14[3] = v18;
  v14[4] = v19;
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_266DA81FC();

  v20 = *(v0 + 8);

  return v20();
}

id sub_266D9DFB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_266D2D3C0(a1, v4);
  v6 = sub_266DA737C();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) != 1)
  {
    v7 = sub_266DA732C();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  [v5 setPunchOutUri_];

  return v5;
}

BOOL sub_266D9E0D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v0 = sub_266DA7FBC();
  v1 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 2;
}

uint64_t sub_266D9E148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266CF5964;

  return sub_266D9DD10(a1, a2);
}

uint64_t sub_266D9E1E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266CF5964;

  return sub_266D9DC70(a1, a2);
}

uint64_t sub_266D9E28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266CF5964;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

unint64_t sub_266D9E344()
{
  result = qword_2800CE0A8;
  if (!qword_2800CE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0A8);
  }

  return result;
}

unint64_t sub_266D9E39C()
{
  result = qword_2800CE0B0;
  if (!qword_2800CE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0B0);
  }

  return result;
}

unint64_t sub_266D9E3F4()
{
  result = qword_2800CE0B8;
  if (!qword_2800CE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0B8);
  }

  return result;
}

uint64_t type metadata accessor for SiriFindMyExampleUtteranceCATsSimple(uint64_t a1)
{
  result = qword_2800CE0C0;
  if (!qword_2800CE0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D9E528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_266CEEA6C(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_266DA91AC();
  (*(v7 + 8))(a2, v3);
  sub_266C2A858(a1);
  return v13;
}

uint64_t sub_266D9E684(uint64_t a1, uint64_t a2)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_266DA91BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

id FindDeviceAndPlaySoundIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FindDeviceAndPlaySoundDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 11) < 0xFFFFFFFFFFFFFFF6)
  {
    return 0;
  }

  return result;
}

id sub_266D9E820@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceQuery];
  *a2 = result;
  return result;
}

void sub_266D9E85C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 devices];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DeviceDetail();
    v5 = sub_266DAA93C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266D9E8CC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for DeviceDetail();
    v3 = sub_266DAA91C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDevices_];
}

id FindDeviceAndPlaySoundIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FindDeviceAndPlaySoundIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FindDeviceAndPlaySoundIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FindDeviceAndPlaySoundIntent.init(coder:)(void *a1)
{
  DeviceAndPlaySoundIntent = type metadata accessor for FindDeviceAndPlaySoundIntent();
  v9 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindDeviceAndPlaySoundIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id FindDeviceAndPlaySoundIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  DeviceAndPlaySoundIntent = type metadata accessor for FindDeviceAndPlaySoundIntent();
  v12 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id FindDeviceAndPlaySoundIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v1) initWithDomain:v3 verb:v4 parametersByName:v5];

  return v6;
}

id FindDeviceAndPlaySoundIntent.init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for FindDeviceAndPlaySoundIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithDomain_verb_parametersByName_, v3, v4, v5);

  return v6;
}

unint64_t FindDeviceAndPlaySoundIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 8 && result >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266D9EE40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindDeviceAndPlaySoundIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266D9EE74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 needsConfirmPlaySound];
  *a2 = result;
  return result;
}

id sub_266D9EEB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 device];
  *a2 = result;
  return result;
}

uint64_t sub_266D9EF10()
{
  v1 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266D9EF7C(uint64_t a1)
{
  v3 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id FindDeviceAndPlaySoundIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FindDeviceAndPlaySoundIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code) = 0;
  DeviceAndPlaySoundIntentResponse = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindDeviceAndPlaySoundIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id FindDeviceAndPlaySoundIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code) = 0;
  DeviceAndPlaySoundIntentResponse = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindDeviceAndPlaySoundIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id FindDeviceAndPlaySoundIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266D9F468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindDeviceAndPlaySoundDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266D9F49C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id FindDeviceAndPlaySoundDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id FindDeviceAndPlaySoundDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266D9F6FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266D9F738()
{
  result = qword_2800CE0D8;
  if (!qword_2800CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0D8);
  }

  return result;
}

unint64_t sub_266D9F790()
{
  result = qword_2800CE0E0;
  if (!qword_2800CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_75(uint64_t a1)
{

  return sub_266DAA6FC();
}

uint64_t FindFriendFriendUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id FindFriendIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_266D9F970()
{
  v1 = [v0 friend];

  return v1;
}

void sub_266D9F9A8(void *a1)
{
  [v1 setFriend_];
}

id sub_266D9F9F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 friend];
  *a2 = result;
  return result;
}

id FindFriendIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FindFriendIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FindFriendIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FindFriendIntent.init(coder:)(void *a1)
{
  FriendIntent = type metadata accessor for FindFriendIntent();
  v9 = OUTLINED_FUNCTION_0_94(FriendIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindFriendIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id FindFriendIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  FriendIntent = type metadata accessor for FindFriendIntent();
  v12 = OUTLINED_FUNCTION_0_94(FriendIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id FindFriendIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v1) initWithDomain:v3 verb:v4 parametersByName:v5];

  return v6;
}

id FindFriendIntent.init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for FindFriendIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithDomain_verb_parametersByName_, v3, v4, v5);

  return v6;
}

unint64_t FindFriendIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266D9FF08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindFriendIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266D9FF3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 friendLocation];
  *a2 = result;
  return result;
}

id sub_266D9FF78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userLocation];
  *a2 = result;
  return result;
}

uint64_t sub_266D9FFD8()
{
  v1 = OBJC_IVAR___FindFriendIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266DA0044(uint64_t a1)
{
  v3 = OBJC_IVAR___FindFriendIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *FindFriendIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___FindFriendIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id FindFriendIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___FindFriendIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FindFriendIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FindFriendIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindFriendIntentResponse_code) = 0;
  FriendIntentResponse = type metadata accessor for FindFriendIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(FriendIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindFriendIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id FindFriendIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindFriendIntentResponse_code) = 0;
  FriendIntentResponse = type metadata accessor for FindFriendIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(FriendIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindFriendIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id FindFriendIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___FindFriendIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FindFriendIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266DA0530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindFriendFriendUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id FindFriendFriendResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id FindFriendFriendResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for FindFriendFriendResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA0778(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266DA07B4()
{
  result = qword_2800CE0F0;
  if (!qword_2800CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0F0);
  }

  return result;
}

unint64_t sub_266DA080C()
{
  result = qword_2800CE0F8;
  if (!qword_2800CE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0F8);
  }

  return result;
}

id SetSharedLocationVisibilityIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetSharedLocationVisibilityIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetSharedLocationVisibilityIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetSharedLocationVisibilityIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetSharedLocationVisibilityIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetSharedLocationVisibilityIntent();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSharedLocationVisibilityIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetSharedLocationVisibilityIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetSharedLocationVisibilityIntent();
  v12 = OUTLINED_FUNCTION_0_94(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetSharedLocationVisibilityIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v1) initWithDomain:v3 verb:v4 parametersByName:v5];

  return v6;
}

id SetSharedLocationVisibilityIntent.init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for SetSharedLocationVisibilityIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithDomain_verb_parametersByName_, v3, v4, v5);

  return v6;
}

unint64_t SetSharedLocationVisibilityIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266DA0E84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetSharedLocationVisibilityIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266DA0EDC()
{
  v1 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266DA0F48(uint64_t a1)
{
  v3 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetSharedLocationVisibilityIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetSharedLocationVisibilityIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code) = 0;
  v13 = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSharedLocationVisibilityIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetSharedLocationVisibilityIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code) = 0;
  v13 = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSharedLocationVisibilityIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetSharedLocationVisibilityIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_266DA1428(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266DA1464()
{
  result = qword_2800CE108;
  if (!qword_2800CE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE108);
  }

  return result;
}

uint64_t SetGeoFenceFriendUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id SetGeoFenceIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_266DA15C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notifyMe];
  *a2 = result;
  return result;
}

id sub_266DA1604@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notifyOnce];
  *a2 = result;
  return result;
}

id sub_266DA1640@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 location];
  *a2 = result;
  return result;
}

id SetGeoFenceIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetGeoFenceIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetGeoFenceIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetGeoFenceIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetGeoFenceIntent();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetGeoFenceIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetGeoFenceIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetGeoFenceIntent();
  v12 = OUTLINED_FUNCTION_0_94(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetGeoFenceIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v1) initWithDomain:v3 verb:v4 parametersByName:v5];

  return v6;
}

id SetGeoFenceIntent.init(domain:verb:parametersByName:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_75(a1);

  v4 = sub_266DAA6FC();

  if (v2)
  {
    v5 = sub_266DAA69C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for SetGeoFenceIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithDomain_verb_parametersByName_, v3, v4, v5);

  return v6;
}

unint64_t SetGeoFenceIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA1B58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetGeoFenceIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266DA1BB0()
{
  v1 = OBJC_IVAR___SetGeoFenceIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266DA1C1C(uint64_t a1)
{
  v3 = OBJC_IVAR___SetGeoFenceIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetGeoFenceIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetGeoFenceIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetGeoFenceIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetGeoFenceIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetGeoFenceIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetGeoFenceIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetGeoFenceIntentResponse_code) = 0;
  v13 = type metadata accessor for SetGeoFenceIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetGeoFenceIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetGeoFenceIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetGeoFenceIntentResponse_code) = 0;
  v13 = type metadata accessor for SetGeoFenceIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetGeoFenceIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetGeoFenceIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetGeoFenceIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetGeoFenceIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266DA2108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetGeoFenceFriendUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_266DA2200@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetGeoFenceLocationUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id _s10SiriFindMy33SetGeoFenceFriendResolutionResultC14JSONDictionary6intentACSgSDySSypG_So8INIntentCtcfC_0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_266DA22DC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_266DAA69C();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_266DA2430(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266DA246C()
{
  result = qword_2800CE118;
  if (!qword_2800CE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE118);
  }

  return result;
}

unint64_t sub_266DA24C4()
{
  result = qword_2800CE120;
  if (!qword_2800CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE120);
  }

  return result;
}

unint64_t sub_266DA251C()
{
  result = qword_2800CE128;
  if (!qword_2800CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE128);
  }

  return result;
}

unint64_t DeviceLocality.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA26A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeviceLocality.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266DA26D4(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_266DA2760(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id DeviceLocalityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceLocalityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceLocalityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DeviceLocalityResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceLocalityResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA29E0()
{
  result = qword_2800CE130;
  if (!qword_2800CE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE130);
  }

  return result;
}

unint64_t DeviceSpecificityLevel.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA2A98@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeviceSpecificityLevel.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id DeviceSpecificityLevelResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceSpecificityLevelResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceSpecificityLevelResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DeviceSpecificityLevelResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceSpecificityLevelResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA2D40()
{
  result = qword_2800CE138;
  if (!qword_2800CE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE138);
  }

  return result;
}

unint64_t SharedLocationVisibility.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA2DF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SharedLocationVisibility.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SharedLocationVisibilityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SharedLocationVisibilityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SharedLocationVisibilityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SharedLocationVisibilityResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedLocationVisibilityResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA30A0()
{
  result = qword_2800CE140;
  if (!qword_2800CE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE140);
  }

  return result;
}

unint64_t GeoFenceTrigger.init(rawValue:)(unint64_t result)
{
  if (result > 5 || result == 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA3160@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GeoFenceTrigger.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GeoFenceTriggerResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GeoFenceTriggerResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GeoFenceTriggerResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id GeoFenceTriggerResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoFenceTriggerResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA3408()
{
  result = qword_2800CE148;
  if (!qword_2800CE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE148);
  }

  return result;
}

unint64_t GeoFenceAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA34C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GeoFenceAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GeoFenceActionResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GeoFenceActionResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GeoFenceActionResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id GeoFenceActionResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoFenceActionResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA3768()
{
  result = qword_2800CE150;
  if (!qword_2800CE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE150);
  }

  return result;
}

id sub_266DA380C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceDetailResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA3870(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceDetailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_266DA3968()
{
  result = qword_2800CE158;
  if (!qword_2800CE158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CE158);
  }

  return result;
}

id sub_266DA39AC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceDetailResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266DA3A10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isEarbuds];
  *a2 = result;
  return result;
}

id sub_266DA3A4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isHeadphones];
  *a2 = result;
  return result;
}

id sub_266DA3A88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isThisDevice];
  *a2 = result;
  return result;
}

id sub_266DA3AC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 canPlaySound];
  *a2 = result;
  return result;
}

void sub_266DA3B00(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_266DAA70C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_266DA3B64(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_266DAA6FC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id DeviceDetail.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceDetail.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceDetail();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceDetail.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceDetail.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceDetail();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeviceDetailResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceDetailResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceDetailResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA42F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266DAAF1C();
}

id sub_266DA4474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceOwner];
  *a2 = result;
  return result;
}

void sub_266DA44B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deviceTypeCategories];
  if (v3)
  {
    v4 = v3;
    v5 = sub_266DAA93C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266DA4518(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_266DAA91C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDeviceTypeCategories_];
}

id DeviceQuery.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceQuery.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceQuery();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceQuery.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceQuery.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceQuery();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266DA48D8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA498C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA4AF0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id DeviceQueryResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceQueryResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceQueryResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA4E6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266DAAF1C();
}

id sub_266DA4F44(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SpeakableLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA4FA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SpeakableLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA50A0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SpeakableLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266DA5104@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 name];
  *a2 = result;
  return result;
}

id sub_266DA5140@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locality];
  *a2 = result;
  return result;
}

id sub_266DA517C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isCoarse];
  *a2 = result;
  return result;
}

void sub_266DA51B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 areasOfInterest];
  if (v3)
  {
    v4 = v3;
    v5 = sub_266DAA93C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266DA5220(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_266DAA91C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAreasOfInterest_];
}

id SpeakableLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id SpeakableLocation.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for SpeakableLocation();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id SpeakableLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpeakableLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpeakableLocation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SpeakableLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SpeakableLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SpeakableLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA59B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266DAAF1C();
}

id sub_266DA5AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 person];
  *a2 = result;
  return result;
}

id sub_266DA5B28(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA5B8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INFriendResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA5C84(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266DA5CE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sharesLocation];
  *a2 = result;
  return result;
}

id sub_266DA5D24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 followsMyLocation];
  *a2 = result;
  return result;
}

id INFriend.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id INFriend.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for INFriend();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id INFriend.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INFriend.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INFriend();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id INFriendResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id INFriendResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for INFriendResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA6484(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266DAAF1C();
}

id sub_266DA655C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isProactiveLocation];
  *a2 = result;
  return result;
}

id sub_266DA6598@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locateInProgress];
  *a2 = result;
  return result;
}

id sub_266DA65D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isInaccurate];
  *a2 = result;
  return result;
}

id INFriendLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id INFriendLocation.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for INFriendLocation();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id INFriendLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INFriendLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INFriendLocation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266DA6960(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA6A14(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INFriendLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA6B78(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INFriendLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id INFriendLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for INFriendLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA6EF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_99(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266DAAF1C();
}