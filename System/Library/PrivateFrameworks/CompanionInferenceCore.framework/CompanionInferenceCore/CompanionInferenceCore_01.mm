uint64_t sub_243CF5330(uint64_t a1, unint64_t a2)
{
  v2 = sub_243CF539C(sub_243CF5398, 0, a1, a2);
  v6 = sub_243CF53D0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_243CF53D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_243D0F18C();
    if (!v9 || (v10 = v9, v11 = sub_243CF4D3C(v9, 0), v12 = sub_243CF5530(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_243D0EDEC();

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
      return sub_243D0EDEC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_243D0F1EC();
LABEL_4:

  return sub_243D0EDEC();
}

unint64_t sub_243CF5530(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_243CF5740(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_243D0EE7C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_243D0F1EC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_243CF5740(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_243D0EE4C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_243CF5740(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_243D0EE8C();
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
    v5 = MEMORY[0x245D4EC00](15, a1 >> 16);
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

uint64_t sub_243CF57BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_243D0F1EC();
  }

  result = sub_243CF5894(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v16 = BYTE4(result) & 1;
    v14 = result | ((BYTE4(result) & 1) << 32);
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_243CF5894(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_243CF5740(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_105;
    }

    result = sub_243D0EE6C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_243CF5740(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_243CF5740(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_101;
  }

  if (v23 < a4 >> 16)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = sub_243D0EE6C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v24 < v18)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v40 = a7 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a7 <= 10)
        {
          v41 = a7 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                v36 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v35 | (v36 << 32);
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

            v46 = v30 * a7;
            if ((v46 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_97;
            }

            v47 = v44 + v45;
            v30 = v46 + v47;
            if (__CFADD__(v46, v47))
            {
              goto LABEL_97;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_95:
          v36 = 0;
          v35 = v30;
          return v35 | (v36 << 32);
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_104;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 87;
      if (a7 > 10)
      {
        v49 = a7 + 55;
      }

      else
      {
        v48 = 97;
        v49 = 65;
      }

      if (a7 <= 10)
      {
        v50 = a7 + 48;
      }

      else
      {
        v50 = 58;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v50)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              v36 = 1;
              if (v51 < 0x61 || v51 >= v48)
              {
                return v35 | (v36 << 32);
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

          v53 = v30 * a7;
          if ((v53 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_97;
          }

          v54 = v51 + v52;
          v30 = v53 + v54;
          if (__CFADD__(v53, v54))
          {
            goto LABEL_97;
          }

          ++v25;
          if (!--result)
          {
            goto LABEL_95;
          }
        }
      }

      goto LABEL_96;
    }

LABEL_97:
    v35 = 0;
    v36 = 1;
    return v35 | (v36 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 87;
      if (a7 > 10)
      {
        v28 = a7 + 55;
      }

      else
      {
        v27 = 97;
        v28 = 65;
      }

      if (a7 <= 10)
      {
        v29 = a7 + 48;
      }

      else
      {
        v29 = 58;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v29)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              v36 = 1;
              if (v33 < 0x61 || v33 >= v27)
              {
                return v35 | (v36 << 32);
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

          v37 = v30 * a7;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_97;
          }

          v38 = v33 + v34;
          v30 = v37 - v38;
          if (v37 < v38)
          {
            goto LABEL_97;
          }

          ++v31;
          if (!--v32)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      v35 = 0;
      v36 = 0;
      return v35 | (v36 << 32);
    }

    goto LABEL_97;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_243CF5D14()
{
  result = qword_27EDA9FE0;
  if (!qword_27EDA9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA9FE0);
  }

  return result;
}

unint64_t sub_243CF5D6C()
{
  result = qword_27EDA9FF0;
  if (!qword_27EDA9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA9FF0);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Version.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Version.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x243CF5F84);
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

unint64_t sub_243CF5FC8()
{
  result = qword_27EDA9FF8;
  if (!qword_27EDA9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA9FF8);
  }

  return result;
}

unint64_t sub_243CF6020()
{
  result = qword_27EDAA000;
  if (!qword_27EDAA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA000);
  }

  return result;
}

unint64_t sub_243CF6078()
{
  result = qword_27EDAA008;
  if (!qword_27EDAA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA008);
  }

  return result;
}

unint64_t sub_243CF60CC()
{
  result = qword_27EDAA010;
  if (!qword_27EDAA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return MEMORY[0x2821FDA60](a1, v1);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDBA0](a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_243D0F2FC();
}

NSObject *sub_243CF61C0(char a1, double a2)
{
  result = nw_parameters_create_application_service_quic();
  if (result)
  {
    v5 = result;
    nw_parameters_set_prohibit_expensive(result, 1);
    nw_parameters_set_prohibit_constrained(v5, 1);
    nw_parameters_set_include_peer_to_peer(v5, 1);
    swift_unknownObjectRetain();
    nw_parameters_set_attach_protocol_listener();
    empty = xpc_array_create_empty();
    v7 = sub_243D0EC1C();
    xpc_array_set_string(empty, v7, "com.apple.networkrelay");
    v8 = xpc_array_create_empty();
    v9 = sub_243D0EC1C();
    if (a1)
    {
      xpc_array_set_string(v8, v9, "ASListener");
      nw_parameters_set_local_only(v5, 0);
    }

    else
    {
      xpc_array_set_string(v8, v9, "ASResolver");
    }

    nw_parameters_set_preferred_netagent_classes();
    swift_unknownObjectRelease();
    nw_parameters_set_multipath_service(v5, nw_multipath_service_disabled);
    v10 = nw_parameters_copy_default_protocol_stack(v5);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_243CF64DC;
    *(v12 + 24) = v11;
    v15[4] = sub_243CF64F0;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_243CF6518;
    v15[3] = &block_descriptor;
    v13 = _Block_copy(v15);

    nw_protocol_stack_iterate_application_protocols(v10, v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_243CF640C(NSObject *a1, double a2)
{
  if (!nw_protocol_options_is_quic(a1))
  {
    return;
  }

  v4 = a2 * 1000.0;
  v5 = COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (a2 * 1000.0 < 4294967300.0)
  {
    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 4294967290.0;
  }

  if (v4 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 >= 4294967300.0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  nw_quic_set_idle_timeout(a1, v4);
}

uint64_t sub_243CF6518(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243CF658C()
{
  v1 = sub_243D0E75C();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_243D0E74C();
  v13 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  swift_beginAccess();
  (*(v3 + 16))(v7, v0 + v13, v1);
  sub_243D0E73C();
  v14 = *(v3 + 8);
  v14(v7, v1);
  sub_243CFB530(&qword_27EDAA108, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v15 = sub_243D0ED4C();
  v14(v10, v1);
  v14(v12, v1);
  return v15 & 1;
}

uint64_t sub_243CF6760(uint64_t a1, uint64_t a2)
{
  sub_243D0E74C();
  *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_keepAliveInterval) = 10;
  *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_isCanceled) = 0;
  v5 = (v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_queue) = a2;
  return v2;
}

uint64_t sub_243CF67EC()
{
  v1 = sub_243D0E75C();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243CFB144;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243CF6EC0;
  aBlock[3] = &block_descriptor_31;
  v9 = _Block_copy(aBlock);

  nw_connection_set_state_changed_handler(v7, v9);
  _Block_release(v9);
  nw_connection_set_queue(v7, *(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_queue));
  v10 = nw_protocol_copy_quic_definition();
  v11 = nw_connection_copy_protocol_metadata(v7, v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    if (MEMORY[0x245D4F470](v11))
    {
      nw_quic_set_keepalive();
    }

    swift_unknownObjectRelease();
  }

  nw_connection_start(v7);
  sub_243D0E74C();
  v12 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  swift_beginAccess();
  (*(v3 + 40))(v0 + v12, v6, v1);
  return swift_endAccess();
}

uint64_t sub_243CF69E4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v7 = sub_243D0EC0C();
    __swift_project_value_buffer(v7, qword_27EDAA638);
    swift_unknownObjectRetain();

    v8 = sub_243D0EBEC();
    v9 = sub_243D0F0FC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v10 = 136315650;
      nw_connection_state_to_string();
      v11 = sub_243D0EE2C();
      v13 = sub_243CE0A08(v11, v12, &v25);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = [*(v6 + 16) description];
      v15 = sub_243D0ED7C();
      v17 = v16;

      v18 = sub_243CE0A08(v15, v17, &v25);

      *(v10 + 14) = v18;
      *(v10 + 22) = 2080;
      if (a2)
      {
        v19 = [a2 description];
        v20 = sub_243D0ED7C();
        v22 = v21;
      }

      else
      {
        v22 = 0xE400000000000000;
        v20 = 1280070990;
      }

      v23 = sub_243CE0A08(v20, v22, &v25);

      *(v10 + 24) = v23;
      _os_log_impl(&dword_243CDB000, v8, v9, "Connection state update: %s - %s - error: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D4F8C0](v24, -1, -1);
      MEMORY[0x245D4F8C0](v10, -1, -1);
    }

    if ((v4 - 4) >= 2)
    {
      if (v4 == 3)
      {
        sub_243CF6C84();
      }

      if (!a2)
      {
      }
    }

    sub_243CF6F30();
  }

  return result;
}

uint64_t sub_243CF6C84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA4D0, &qword_243D127C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_27EDA9980 != -1)
  {
    swift_once();
  }

  v5 = sub_243D0EC0C();
  __swift_project_value_buffer(v5, qword_27EDAA638);

  v6 = sub_243D0EBEC();
  v7 = sub_243D0F0FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v16 = *(v1 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
    v10 = sub_243D0EDCC();
    v12 = sub_243CE0A08(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_243CDB000, v6, v7, "Receiving network message on [%s]", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x245D4F8C0](v9, -1, -1);
    MEMORY[0x245D4F8C0](v8, -1, -1);
  }

  v13 = sub_243D0EF8C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_243CEE6DC(0, 0, v4, &unk_243D10F58, v14);
}

uint64_t sub_243CF6EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243CF6F30()
{
  v2 = v0;
  v3 = sub_243D0E75C();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  result = MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_isCanceled;
  if ((*(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_isCanceled) & 1) == 0)
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
    }

    v11 = sub_243D0EC0C();
    __swift_project_value_buffer(v11, qword_27EDAA638);
    OUTLINED_FUNCTION_28_1();

    v12 = sub_243D0EBEC();
    sub_243D0F0FC();
    OUTLINED_FUNCTION_27_2();

    if (OUTLINED_FUNCTION_31_1())
    {
      v13 = OUTLINED_FUNCTION_44_0();
      v26 = v3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v28[0] = v15;
      *v14 = 136315138;
      v27 = *(v2 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
      v16 = sub_243D0EDCC();
      v18 = sub_243CE0A08(v16, v17, v28);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_243CDB000, v12, v1, "Destroying connection %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_17_1();
      v19 = v14;
      v3 = v26;
      MEMORY[0x245D4F8C0](v19, -1, -1);
    }

    nw_connection_cancel(*(v2 + 16));
    sub_243D0E72C();
    v20 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v20, v9, v3);
    result = swift_endAccess();
    *(v2 + v10) = 1;
    v21 = v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel;
    v22 = *(v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel);
    if (v22)
    {
      v23 = *(v21 + 8);

      v22(v24);
      return sub_243CFB0FC(v22, v23);
    }
  }

  return result;
}

uint64_t sub_243CF7194()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  sub_243D0E75C();
  OUTLINED_FUNCTION_16_1();
  (*(v2 + 8))(v0 + v1);

  sub_243CFB0FC(*(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived), *(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived + 8));
  sub_243CFB0FC(*(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel), *(v0 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_didCancel + 8));
  return v0;
}

uint64_t sub_243CF7228()
{
  sub_243CF7194();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for Connection(uint64_t a1)
{
  result = qword_27EDAA0A8;
  if (!qword_27EDAA0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243CF72D4(uint64_t a1)
{
  result = sub_243D0E75C();
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

uint64_t sub_243CF73A0(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_243CFB0FC(v4, v5);
}

uint64_t sub_243CF73C4()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  type metadata accessor for NetworkMessage(0);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243CF744C()
{
  v30 = v0;
  v1 = sub_243D0D78C();
  v0[6] = v1;
  v0[7] = v2;
  v3 = v1;
  v4 = v2;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
  }

  v5 = v0[5];
  v6 = v0[3];
  v7 = sub_243D0EC0C();
  __swift_project_value_buffer(v7, qword_27EDAA638);
  OUTLINED_FUNCTION_5_1();
  sub_243CFB2F8(v6, v5, v8);

  v9 = sub_243D0EBEC();
  LOBYTE(v6) = sub_243D0F0FC();

  v10 = os_log_type_enabled(v9, v6);
  v11 = v0[5];
  if (v10)
  {
    v28 = v0[4];
    v12 = OUTLINED_FUNCTION_32_1();
    v29[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);

    OUTLINED_FUNCTION_0_8();
    sub_243CFB2A4(v11, v15);
    v16 = sub_243CE0A08(v13, v14, v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[2] = *(v28 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
    v17 = sub_243D0EDCC();
    v19 = sub_243CE0A08(v17, v18, v29);

    *(v12 + 14) = v19;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    OUTLINED_FUNCTION_0_8();
    sub_243CFB2A4(v11, v25);
  }

  v26 = swift_task_alloc();
  v0[8] = v26;
  *v26 = v0;
  v26[1] = sub_243CF7704;

  return sub_243CF78D0(v3, v4);
}

uint64_t sub_243CF7704()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 72) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_243CF7804()
{
  OUTLINED_FUNCTION_13();
  sub_243CE148C(*(v0 + 48), *(v0 + 56));

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CF786C()
{
  OUTLINED_FUNCTION_13();
  sub_243CE148C(*(v0 + 48), *(v0 + 56));

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CF78D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_20();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_243CF7900()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  id = nw_connection_get_id();
  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = id;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_243CF7A04;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822008A0](v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_243CF7A04()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243CF7B28()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_243CF7B84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
        JUMPOUT(0x243CF7C90);
      }

      v6 = a2;
      v7 = a2 >> 32;
      return sub_243CFAF34(v6, v7, sub_243CFAF14);
    case 2uLL:
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      return sub_243CFAF34(v6, v7, sub_243CFAF14);
    case 3uLL:
      v9 = 0;
      v11 = 0;
      v10 = 0;
      v5 = &v9;
      return sub_243CFAF14(&v9, v5);
    default:
      v9 = a2;
      v10 = a3;
      v11 = WORD2(a3);
      v5 = (&v9 + BYTE6(a3));
      return sub_243CFAF14(&v9, v5);
  }
}

uint64_t sub_243CF7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a3;
  v27 = a4;
  v6 = sub_243D0E75C();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v28 = sub_243D0ED0C();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243D0ECEC();
  v24 = *(a3 + 16);
  v15 = sub_243D0ECCC();
  v16 = *MEMORY[0x277CD9218];
  (*(v9 + 16))(v11, v25, v8);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_243CFB064;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243CF8308;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  nw_connection_send(v24, v15, v16, 1, v19);
  _Block_release(v19);

  v20 = v29;
  sub_243D0E74C();
  (*(v12 + 8))(v14, v28);
  v21 = OBJC_IVAR____TtC22CompanionInferenceCore10Connection_lastTimeUsed;
  v22 = v26;
  swift_beginAccess();
  (*(v30 + 40))(v22 + v21, v20, v31);
  return swift_endAccess();
}

uint64_t sub_243CF8000(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = qword_27EDA9980;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_243D0EC0C();
    __swift_project_value_buffer(v5, qword_27EDAA638);
    swift_unknownObjectRetain();
    v6 = sub_243D0EBEC();
    v7 = sub_243D0F0FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 134218242;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      v10 = [a1 description];
      v11 = sub_243D0ED7C();
      v13 = v12;

      v14 = sub_243CE0A08(v11, v13, &v26);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_243CDB000, v6, v7, "[%llu Failed to send with error %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x245D4F8C0](v9, -1, -1);
      MEMORY[0x245D4F8C0](v8, -1, -1);
    }

    v15 = [a1 description];
    v16 = sub_243D0ED7C();
    v18 = v17;

    sub_243CE9F0C();
    v19 = swift_allocError();
    *v20 = v16;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
    sub_243D0EEEC();
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v22 = sub_243D0EC0C();
    __swift_project_value_buffer(v22, qword_27EDAA638);
    v23 = sub_243D0EBEC();
    v24 = sub_243D0F0FC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a2;
      _os_log_impl(&dword_243CDB000, v23, v24, "************ Data sent on [%llu]", v25, 0xCu);
      MEMORY[0x245D4F8C0](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
    return sub_243D0EEFC();
  }
}

uint64_t sub_243CF8308(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243CF8368(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 80) = a3;
  *(v5 + 84) = a4;
  *(v5 + 32) = a1;
  return MEMORY[0x2822009F8](sub_243CF8390);
}

uint64_t sub_243CF8390()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = v0[10];
  v4[2] = v1;
  v4[3] = v5;
  v4[4] = v3;
  v4[5] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_243CF8490;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822008A0](v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_243CF8490()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243CF85AC()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_9();

  return v0();
}

void sub_243CF8608(uint64_t a1, uint64_t a2, uint32_t a3, uint32_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v20 = *(a2 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  (*(v12 + 32))(&v18[v17], v15, v11);
  *&v18[(v13 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL] = a4;
  aBlock[4] = sub_243CFB458;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243CF8F7C;
  aBlock[3] = &block_descriptor_54;
  v19 = _Block_copy(aBlock);

  nw_connection_receive(v20, v21, a4, v19);
  _Block_release(v19);
}

uint64_t sub_243CF8820(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, int a9)
{
  v75 = a8;
  v15 = sub_243D0ED0C();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v71 = a3;
    v73 = a6;
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v20 = sub_243D0EC0C();
    v21 = __swift_project_value_buffer(v20, qword_27EDAA638);
    swift_unknownObjectRetain();

    v22 = a1;
    swift_unknownObjectRetain();
    v72 = v21;
    v23 = sub_243D0EBEC();
    v24 = sub_243D0F0FC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v25 = os_log_type_enabled(v23, v24);
    v74 = v19;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v70 = v17;
      v27 = v26;
      v67 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76[0] = v69;
      *v27 = 136316418;
      *(v27 + 4) = sub_243CE0A08(v73, a7, v76);
      *(v27 + 12) = 2080;
      v77 = *(v19 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
      v28 = sub_243D0EDCC();
      v68 = v24;
      v30 = sub_243CE0A08(v28, v29, v76);

      *(v27 + 14) = v30;
      *(v27 + 22) = 2112;
      *(v27 + 24) = v22;
      v31 = v67;
      *v67 = a1;
      *(v27 + 32) = 2080;
      v77 = a2;
      v32 = v22;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0F8, qword_243D10FB0);
      v33 = sub_243D0EDCC();
      v35 = sub_243CE0A08(v33, v34, v76);

      *(v27 + 34) = v35;
      *(v27 + 42) = 1024;
      *(v27 + 44) = v71 & 1;
      *(v27 + 48) = 2080;
      v77 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0F0, &unk_243D10FA0);
      v36 = sub_243D0EDCC();
      v38 = sub_243CE0A08(v36, v37, v76);

      *(v27 + 50) = v38;
      _os_log_impl(&dword_243CDB000, v23, v68, "Receiving %s on: %s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v27, 0x3Au);
      sub_243CFB23C(v31);
      MEMORY[0x245D4F8C0](v31, -1, -1);
      v39 = v69;
      swift_arrayDestroy();
      MEMORY[0x245D4F8C0](v39, -1, -1);
      v40 = v27;
      v17 = v70;
      MEMORY[0x245D4F8C0](v40, -1, -1);
    }

    if (a1)
    {
      sub_243D0ECDC();
      v41 = v22;
      v42 = sub_243CE4648(v17);
      v44 = v43;

      v45 = v74;

      v46 = sub_243D0EBEC();
      v47 = sub_243D0F0FC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v76[0] = v49;
        *v48 = 136315906;
        *(v48 + 4) = sub_243CE0A08(v73, a7, v76);
        *(v48 + 12) = 1024;
        *(v48 + 14) = a9;
        *(v48 + 18) = 2048;
        v50 = 0;
        switch(v44 >> 62)
        {
          case 1uLL:
            LODWORD(v50) = HIDWORD(v42) - v42;
            if (__OFSUB__(HIDWORD(v42), v42))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              JUMPOUT(0x243CF8F6CLL);
            }

            v50 = v50;
LABEL_16:
            *(v48 + 20) = v50;
            *(v48 + 28) = 2080;
            v77 = *(v45 + 16);
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C0, &qword_243D10F38);
            v63 = sub_243D0EDCC();
            v65 = sub_243CE0A08(v63, v64, v76);

            *(v48 + 30) = v65;
            _os_log_impl(&dword_243CDB000, v46, v47, "Received %s. Expected %u; got %ld on %s;", v48, 0x26u);
            swift_arrayDestroy();
            MEMORY[0x245D4F8C0](v49, -1, -1);
            MEMORY[0x245D4F8C0](v48, -1, -1);
            break;
          case 2uLL:
            v61 = *(v42 + 16);
            v60 = *(v42 + 24);
            v62 = __OFSUB__(v60, v61);
            v50 = v60 - v61;
            if (!v62)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          case 3uLL:
            goto LABEL_16;
          default:
            v50 = BYTE6(v44);
            goto LABEL_16;
        }
      }

      v76[0] = v42;
      v76[1] = v44;
      sub_243CE1434(v42, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
      sub_243D0EEFC();

      return sub_243CE148C(v42, v44);
    }

    else
    {

      swift_unknownObjectRetain();
      v51 = sub_243D0EBEC();
      v52 = sub_243D0F0EC();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v76[0] = v54;
        *v53 = 136315394;
        *(v53 + 4) = sub_243CE0A08(v73, a7, v76);
        *(v53 + 12) = 2080;
        v77 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0F0, &unk_243D10FA0);
        v55 = sub_243D0EDCC();
        v57 = sub_243CE0A08(v55, v56, v76);

        *(v53 + 14) = v57;
        _os_log_impl(&dword_243CDB000, v51, v52, "Received nil as content when receiving %s, error: %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D4F8C0](v54, -1, -1);
        MEMORY[0x245D4F8C0](v53, -1, -1);
      }

      sub_243CE9F0C();
      v58 = swift_allocError();
      *v59 = xmmword_243D108B0;
      *(v59 + 16) = 2;
      v76[0] = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
      sub_243D0EEEC();
    }
  }

  return result;
}

void sub_243CF8F7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_243CF902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for NetworkMessage(0);
  v4[4] = swift_task_alloc();
  type metadata accessor for NetworkProto.Header(0);
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for HeaderPreamble(0);
  v5 = swift_task_alloc();
  v4[7] = v5;
  v6 = swift_task_alloc();
  v4[8] = v6;
  *v6 = v4;
  v6[1] = sub_243CF9158;

  return sub_243CF9CC0(v5);
}

uint64_t sub_243CF9158()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = *(v3[7] + *(v3[6] + 20));
    v9 = swift_task_alloc();
    v3[10] = v9;
    *v9 = v5;
    v9[1] = sub_243CF92CC;
    v10 = v3[5];

    return sub_243CF9F20(v10, v8);
  }
}

uint64_t sub_243CF92CC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[12] = v8;
    *v8 = v5;
    v8[1] = sub_243CF9424;
    v9 = v3[5];

    return sub_243CFA290(v9);
  }
}

uint64_t sub_243CF9424(uint64_t a1)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_2_3();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_3();
  *v11 = v10;
  v8[13] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v12);
  }

  else
  {
    v14 = v8[4];
    v15 = v8[3];
    sub_243CFB2F8(v8[5], v14, type metadata accessor for NetworkProto.Header);
    v16 = (v14 + *(v15 + 20));
    *v16 = v6;
    v16[1] = v4;
    v17 = swift_task_alloc();
    v8[14] = v17;
    *v17 = v10;
    v17[1] = sub_243CF95C0;
    OUTLINED_FUNCTION_35_1();

    return sub_243CFA46C();
  }
}

uint64_t sub_243CF95C0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_243CF96C0()
{
  OUTLINED_FUNCTION_22();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  sub_243CF6C84();
  OUTLINED_FUNCTION_0_8();
  sub_243CFB2A4(v3, v4);
  OUTLINED_FUNCTION_6_2();
  sub_243CFB2A4(v2, v5);
  OUTLINED_FUNCTION_2_8();
  sub_243CFB2A4(v1, v6);
  OUTLINED_FUNCTION_30_1();

  OUTLINED_FUNCTION_9();

  return v7();
}

uint64_t sub_243CF9CC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_243CF9D70;

  return sub_243CF8368(0x656C626D61657270, 0xE800000000000000, 20, 20);
}

uint64_t sub_243CF9D70(uint64_t a1)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_2_3();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_3();
  *v11 = v10;
  v8[4] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_35_1();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v8[5] = v4;
    v8[6] = v6;
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v21);
  }
}

uint64_t sub_243CF9EA8()
{
  OUTLINED_FUNCTION_22();
  sub_243CFCCC4(*(v0 + 48), *(v0 + 40), *(v0 + 16));
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CF9F20(uint64_t a1, int a2)
{
  v2[4] = a1;
  sub_243D0E9DC();
  v2[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_243CF9FFC;

  return sub_243CF8368(0x726564616568, 0xE600000000000000, a2, a2);
}

uint64_t sub_243CF9FFC()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v0;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v10);
  }
}

uint64_t sub_243CFA13C()
{
  v1 = v0[8];
  v2 = v0[7];
  type metadata accessor for NetworkProto.Header(0);
  v0[2] = v2;
  v0[3] = v1;
  sub_243CE1434(v2, v1);
  sub_243D0E9CC();
  sub_243CFB530(&qword_27EDAA100, type metadata accessor for NetworkProto.Header, &unk_243D12528);
  sub_243D0EACC();
  sub_243CE148C(v0[7], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_243CFA290(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243CFA2B0);
}

uint64_t sub_243CFA2B0()
{
  OUTLINED_FUNCTION_22();
  v1 = *(*(v0 + 16) + 92);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_243CFA36C;

  return sub_243CF8368(0xD000000000000017, 0x8000000243D131B0, v1, v1);
}

uint64_t sub_243CFA36C()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_243CFA46C()
{
  OUTLINED_FUNCTION_13();
  v1[17] = v2;
  v1[18] = v0;
  type metadata accessor for NetworkMessage(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243CFA500()
{
  v72 = v0;
  v1 = v0[17];
  v2 = *(v1 + 80);
  if (*(v1 + 88) == 1)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        if (qword_27EDA9980 != -1)
        {
          OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
          v1 = v0[17];
        }

        v22 = v0[19];
        v23 = sub_243D0EC0C();
        __swift_project_value_buffer(v23, qword_27EDAA638);
        OUTLINED_FUNCTION_5_1();
        sub_243CFB2F8(v1, v22, v24);
        v25 = sub_243D0EBEC();
        v26 = sub_243D0F0DC();
        v27 = OUTLINED_FUNCTION_37_0(v26);
        v28 = v0[19];
        if (v27)
        {
          v29 = OUTLINED_FUNCTION_44_0();
          swift_slowAlloc();
          OUTLINED_FUNCTION_26_2();
          *v29 = 136315138;
          v30 = *v28;
          v31 = v28[1];

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v28, v32);
          v33 = sub_243CE0A08(v30, v31, v71);

          *(v29 + 4) = v33;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_12_3();
        }

        else
        {

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v28, v56);
        }

        v57 = v0[18];
        v58 = v57 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived;
        v59 = *(v57 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
        v0[27] = v59;
        if (v59)
        {
          v60 = *(v58 + 8);
          v0[28] = v60;
          v0[5] = type metadata accessor for Connection(0);
          v0[6] = &off_2856F1318;
          v0[2] = v57;
          v7 = v0 + 2;

          sub_243CFB360(v59, v60);
          OUTLINED_FUNCTION_3_4();
          v70 = v61;
          v9 = swift_task_alloc();
          v0[29] = v9;
          *v9 = v0;
          v10 = sub_243CFADB0;
          goto LABEL_25;
        }
      }

      else
      {
        if (qword_27EDA9980 != -1)
        {
          OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
          v1 = v0[17];
        }

        v39 = v0[20];
        v40 = sub_243D0EC0C();
        __swift_project_value_buffer(v40, qword_27EDAA638);
        OUTLINED_FUNCTION_5_1();
        sub_243CFB2F8(v1, v39, v41);
        v42 = sub_243D0EBEC();
        v43 = sub_243D0F0DC();
        v44 = OUTLINED_FUNCTION_37_0(v43);
        v45 = v0[20];
        if (v44)
        {
          v46 = OUTLINED_FUNCTION_44_0();
          swift_slowAlloc();
          OUTLINED_FUNCTION_26_2();
          *v46 = 136315138;
          v47 = *v45;
          v48 = v45[1];

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v45, v49);
          v50 = sub_243CE0A08(v47, v48, v71);

          *(v46 + 4) = v50;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_12_3();
        }

        else
        {

          OUTLINED_FUNCTION_0_8();
          sub_243CFB2A4(v45, v62);
        }

        v63 = v0[18];
        v64 = v63 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived;
        v65 = *(v63 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
        v0[24] = v65;
        if (v65)
        {
          v66 = *(v64 + 8);
          v0[25] = v66;
          v0[10] = type metadata accessor for Connection(0);
          v0[11] = &off_2856F1318;
          v0[7] = v63;
          v7 = v0 + 7;

          sub_243CFB360(v65, v66);
          OUTLINED_FUNCTION_3_4();
          v70 = v67;
          v9 = swift_task_alloc();
          v0[26] = v9;
          *v9 = v0;
          v10 = sub_243CFAC58;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v3 = v0[18];
      v4 = v3 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived;
      v5 = *(v3 + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
      v0[21] = v5;
      if (v5)
      {
        v6 = *(v4 + 8);
        v0[22] = v6;
        v0[15] = type metadata accessor for Connection(0);
        v0[16] = &off_2856F1318;
        v0[12] = v3;
        v7 = v0 + 12;
        sub_243CFB360(v5, v6);

        OUTLINED_FUNCTION_3_4();
        v70 = v8;
        v9 = swift_task_alloc();
        v0[23] = v9;
        *v9 = v0;
        v10 = sub_243CFAB00;
LABEL_25:
        v9[1] = v10;
        v68 = v0[17];

        return v70(v68, v7);
      }
    }

    OUTLINED_FUNCTION_9();
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
    }

    v11 = sub_243D0EC0C();
    __swift_project_value_buffer(v11, qword_27EDAA638);
    v12 = sub_243D0EBEC();
    v13 = sub_243D0F0DC();
    if (OUTLINED_FUNCTION_37_0(v13))
    {
      v14 = OUTLINED_FUNCTION_44_0();
      *v14 = 134217984;
      *(v14 + 4) = v2;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      OUTLINED_FUNCTION_12_3();
    }

    sub_243CE9F0C();
    swift_allocError();
    *v20 = xmmword_243D10E90;
    *(v20 + 16) = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_9();
  }

  return v21();
}

uint64_t sub_243CFAB00()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  *v3 = *v0;

  sub_243CFB0FC(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_35_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_243CFAC58()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  *v3 = *v0;

  sub_243CFB0FC(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_35_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_243CFADB0()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  *v3 = *v0;

  sub_243CFB0FC(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_35_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_243CFAF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_243D0E64C();
  v7 = result;
  if (result)
  {
    result = sub_243D0E66C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_243D0E65C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_243CFAFDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
  OUTLINED_FUNCTION_16_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243CFB064(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0C8, &unk_243D10F40);
  v3 = *(v1 + 16);

  return sub_243CF8000(a1, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243CFB0FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243CFB10C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243CFB14C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243CFB18C()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_243CE06A0;

  return sub_243CF902C(v3, v4, v5, v6);
}

uint64_t sub_243CFB23C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E0, &qword_243D10B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243CFB2A4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_243CFB2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243CFB360(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243CFB380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 4, v4 | 7);
}

uint64_t sub_243CFB458(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA0E8, &unk_243D10F90) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  return sub_243CF8820(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL)));
}

uint64_t sub_243CFB530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_8_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x245D4F8C0);
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_243CE0A08(0xD000000000000017, (a1 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_12_3()
{

  JUMPOUT(0x245D4F8C0);
}

void OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  JUMPOUT(0x245D4F760);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_17_1()
{

  JUMPOUT(0x245D4F8C0);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

BOOL OUTLINED_FUNCTION_31_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_243CFB854(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 32))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
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

uint64_t sub_243CFB890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_243CFB8E4@<X0>(void *a3@<X8>)
{
  v5 = sub_243D0EDBC();
  MEMORY[0x28223BE20](v5 - 8);
  sub_243D0E5EC();
  swift_allocObject();
  sub_243D0E5DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA118, &unk_243D11090);
  sub_243CFCA4C(&qword_27EDAA120, sub_243CFC950, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_243D0E5CC();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_4_5();
    sub_243CE148C(v6, v7);
  }

  if (!*(v44 + 16))
  {
    goto LABEL_17;
  }

  v9 = sub_243CF2010(0x6E6F6973726576, 0xE700000000000000);
  if ((v10 & 1) == 0 || !*(v44 + 16))
  {
    goto LABEL_17;
  }

  v46 = a3;
  v11 = (*(v44 + 56) + 16 * v9);
  v12 = *v11;
  v13 = v11[1];
  sub_243CE1434(*v11, v13);
  v14 = sub_243CF2010(0xD000000000000014, 0x8000000243D132E0);
  if ((v15 & 1) == 0)
  {
    v33 = v12;
LABEL_15:
    v34 = v13;
    goto LABEL_16;
  }

  v43 = v13;
  if (!*(v44 + 16))
  {
    v33 = v12;
    v34 = v13;
LABEL_16:
    sub_243CE148C(v33, v34);
LABEL_17:

    sub_243CFC8FC();
    swift_allocError();
    *v35 = 0xD000000000000031;
    v35[1] = 0x8000000243D132A0;
    swift_willThrow();
    v31 = OUTLINED_FUNCTION_4_5();
    return sub_243CE148C(v31, v32);
  }

  v16 = (*(v44 + 56) + 16 * v14);
  v17 = *v16;
  v13 = v16[1];
  sub_243CE1434(*v16, v13);
  v18 = OUTLINED_FUNCTION_2_9();
  v20 = sub_243CF2010(v18, v19);
  if ((v21 & 1) == 0)
  {
    sub_243CE148C(v12, v43);
    v33 = v17;
    goto LABEL_15;
  }

  v41 = v13;
  v42 = v17;
  v22 = (*(v44 + 56) + 16 * v20);
  v24 = *v22;
  v23 = v22[1];
  sub_243CE1434(*v22, v23);

  sub_243D0EDAC();
  v25 = sub_243D0ED9C();
  if (!v26 || (v27 = sub_243D0B1A0(v25, v26), v27 == 2))
  {
    sub_243CFC8FC();
    swift_allocError();
    *v28 = 0xD000000000000037;
    v28[1] = 0x8000000243D13300;
    swift_willThrow();
    v29 = OUTLINED_FUNCTION_4_5();
    sub_243CE148C(v29, v30);
    sub_243CE148C(v24, v23);
    sub_243CE148C(v42, v41);
    v31 = v12;
    v32 = v43;
    return sub_243CE148C(v31, v32);
  }

  v36 = v27;
  v40 = v24;
  if (v27)
  {
    v37 = v43;
    if (qword_27EDA99F0 != -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v37 = v43;
    if (qword_27EDA99E8 != -1)
    {
LABEL_24:
      swift_once();
    }
  }

  swift_allocObject();
  sub_243D0E5DC();
  sub_243CFC9A4();
  sub_243D0E5CC();
  sub_243CE148C(v12, v37);
  sub_243CE148C(v40, v23);
  v38 = OUTLINED_FUNCTION_4_5();
  sub_243CE148C(v38, v39);

  *v46 = v44;
  *(v46 + 2) = v45;
  *(v46 + 12) = v36 & 1;
  v46[2] = v42;
  v46[3] = v41;
  return result;
}

uint64_t sub_243CFBD4C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 164) = *v1;
  *(v2 + 172) = *(v1 + 8);
  *(v2 + 176) = *(v1 + 12);
  *(v2 + 104) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_243CFBD8C);
}

uint64_t sub_243CFBD8C()
{
  if (*(v0 + 176))
  {
    if (qword_27EDA99F0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v1 = &qword_27EDAA7B0;
  }

  else
  {
    if (qword_27EDA99E8 != -1)
    {
      OUTLINED_FUNCTION_1_6();
      swift_once();
    }

    v1 = &qword_27EDAA788;
  }

  v2 = *(v0 + 172);
  v3 = *(v0 + 164);
  sub_243CE1C20(v1, v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;
  v8 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_243CFBF44;

  return v8(v0 + 152, v4, v5);
}

uint64_t sub_243CFBF44(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_10();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_10();
  *v7 = v6;
  *(v4 + 128) = v1;

  if (v1)
  {
    v8 = sub_243CFC3F0;
  }

  else
  {
    *(v4 + 177) = a1 & 1;
    v8 = sub_243CFC068;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_243CFC068()
{
  v1 = *(v0 + 177);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1 == 1)
  {
    if (*(v0 + 176))
    {
      if (qword_27EDA99F0 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v2 = &qword_27EDAA7B0;
    }

    else
    {
      if (qword_27EDA99E8 != -1)
      {
        OUTLINED_FUNCTION_1_6();
        swift_once();
      }

      v2 = &qword_27EDAA788;
    }

    sub_243CE1C20(v2, v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    v12 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_243CFC28C;
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return v12(v11, v9, v10, v6, v7);
  }

  else
  {
    sub_243CFC8FC();
    swift_allocError();
    *v3 = 0xD000000000000035;
    v3[1] = 0x8000000243D13260;
    swift_willThrow();
    OUTLINED_FUNCTION_9();

    return v4();
  }
}

uint64_t sub_243CFC28C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_10();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_243CFC44C;
  }

  else
  {
    v7 = sub_243CFC394;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243CFC394()
{
  OUTLINED_FUNCTION_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CFC3F0()
{
  OUTLINED_FUNCTION_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CFC44C()
{
  OUTLINED_FUNCTION_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243CFC4A8()
{
  v2 = sub_243D0EDBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  LOBYTE(v4) = *(v0 + 12);
  v8 = *(v0 + 16);
  v32 = *(v0 + 24);
  v33 = v8;
  if (v4)
  {
    if (qword_27EDA99F0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v9 = &qword_27EDAA7B0;
  }

  else
  {
    if (qword_27EDA99E8 != -1)
    {
      OUTLINED_FUNCTION_1_6();
      swift_once();
    }

    v9 = &qword_27EDAA788;
  }

  sub_243CE1C20(v9, v37);
  v10 = sub_243D0ED1C();
  sub_243D0E61C();
  swift_allocObject();
  v11 = sub_243D0E60C();
  v34 = v6;
  LODWORD(v35) = v7;
  sub_243CFC9F8();
  v12 = sub_243D0E5FC();
  v14 = v13;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v10;
    sub_243CF2558(v12, v14, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v36 = v34;
    v16 = v38;
    v17 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v17 + 8))(v16, v17);
    sub_243D0EDAC();
    v18 = sub_243D0ED8C();
    v20 = v19;

    (*(v3 + 8))(v5, v2);
    if (v20 >> 60 == 15)
    {
      v21 = OUTLINED_FUNCTION_2_9();
      sub_243CF213C(v21, v22, v23);
      sub_243CE8DC8(v34, v35);
      v24 = v36;
    }

    else
    {
      v25 = v36;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v25;
      sub_243CF2558(v18, v20, 0x7A696C6169726573, 0xEE00657079547265, v26);
      v24 = v34;
    }

    v28 = v32;
    v27 = v33;
    sub_243CE1434(v33, v32);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v24;
    sub_243CF2558(v27, v28, 0xD000000000000014, 0x8000000243D132E0, v29);
    v30 = v34;
    swift_allocObject();
    sub_243D0E60C();
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA118, &unk_243D11090);
    sub_243CFCA4C(&qword_27EDAA140, sub_243CFCAD0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v11 = sub_243D0E5FC();

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  return v11;
}

unint64_t sub_243CFC8FC()
{
  result = qword_27EDAA110;
  if (!qword_27EDAA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA110);
  }

  return result;
}

unint64_t sub_243CFC950()
{
  result = qword_27EDAA128;
  if (!qword_27EDAA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA128);
  }

  return result;
}

unint64_t sub_243CFC9A4()
{
  result = qword_27EDAA130;
  if (!qword_27EDAA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA130);
  }

  return result;
}

unint64_t sub_243CFC9F8()
{
  result = qword_27EDAA138;
  if (!qword_27EDAA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA138);
  }

  return result;
}

uint64_t sub_243CFCA4C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAA118, &unk_243D11090);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243CFCAD0()
{
  result = qword_27EDAA148;
  if (!qword_27EDAA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA148);
  }

  return result;
}

uint64_t sub_243CFCB7C(uint64_t a1, unint64_t a2, void *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_243CFF4B8(a1, v7, v6, a3);
      break;
    case 3uLL:
      memset(v9, 0, 14);
      result = *(v9 + *a3);
      break;
    default:
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = *(v9 + *a3);
      break;
  }

  return result;
}

uint64_t sub_243CFCCC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_243D0E7BC();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OUTLINED_FUNCTION_4_5();
  if (MEMORY[0x245D4E4B0](v13) != 20)
  {
    sub_243CE9F0C();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_14_3(v14, v15);
    v16 = OUTLINED_FUNCTION_4_5();
    return sub_243CE148C(v16, v17);
  }

  v36 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v34 = v3;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v20 = sub_243D0E64C();
      if (!v20)
      {
        goto LABEL_16;
      }

      v22 = sub_243D0E66C();
      if (__OFSUB__(a1, v22))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v20 += a1 - v22;
LABEL_16:
      sub_243D0E65C();
      if (!v20)
      {
LABEL_26:
        __break(1u);
        JUMPOUT(0x243CFD01CLL);
      }

LABEL_17:
      (*(v9 + 16))(v12, v20, v7);
LABEL_18:
      if (qword_27EDA99A0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v7, qword_27EDAA6B0);
      if (sub_243D0E78C())
      {
        v36 = 16;
        v23 = OUTLINED_FUNCTION_4_5();
        v26 = sub_243CFCB7C(v23, v24, v25);
        v27 = OUTLINED_FUNCTION_4_5();
        sub_243CE148C(v27, v28);
        (*(v9 + 32))(a3, v12, v7);
        result = type metadata accessor for HeaderPreamble(0);
        *(a3 + *(result + 20)) = v26;
      }

      else
      {
        sub_243CE9F0C();
        v29 = swift_allocError();
        OUTLINED_FUNCTION_14_3(v29, v30);
        v31 = OUTLINED_FUNCTION_4_5();
        sub_243CE148C(v31, v32);
        return (*(v9 + 8))(v12, v7);
      }

      return result;
    case 2uLL:
      v34 = v3;
      v19 = *(a1 + 16);
      v20 = sub_243D0E64C();
      if (!v20)
      {
        goto LABEL_8;
      }

      v21 = sub_243D0E66C();
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_24;
      }

      v20 += v19 - v21;
LABEL_8:
      sub_243D0E65C();
      if (v20)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_10:
      memset(v35, 0, 14);
LABEL_11:
      (*(v9 + 16))(v12, v35, v7);
      goto LABEL_18;
    case 3uLL:
      goto LABEL_10;
    default:
      v35[0] = a1;
      LOWORD(v35[1]) = a2;
      BYTE2(v35[1]) = BYTE2(a2);
      BYTE3(v35[1]) = BYTE3(a2);
      BYTE4(v35[1]) = BYTE4(a2);
      BYTE5(v35[1]) = BYTE5(a2);
      goto LABEL_11;
  }
}

uint64_t sub_243CFD02C(uint64_t a1)
{
  v2 = sub_243D0EF8C();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  (*(v4 + 16))(&v23 - v9, a1, v2);
  sub_243D0EF2C();
  sub_243CFF40C();
  v10 = OUTLINED_FUNCTION_3_5();
  v11 = *(v4 + 8);
  v11(v8, v2);
  if (v10)
  {
    v12 = OUTLINED_FUNCTION_10_2();
    (v11)(v12);
    v13 = OUTLINED_FUNCTION_38();
    (v11)(v13);
    return 1;
  }

  else
  {
    sub_243D0EF6C();
    OUTLINED_FUNCTION_3_5();
    v15 = OUTLINED_FUNCTION_6_3();
    (v11)(v15);
    sub_243D0EF3C();
    OUTLINED_FUNCTION_3_5();
    v16 = OUTLINED_FUNCTION_6_3();
    (v11)(v16);
    sub_243D0EF1C();
    OUTLINED_FUNCTION_3_5();
    v17 = OUTLINED_FUNCTION_6_3();
    (v11)(v17);
    sub_243D0EF3C();
    OUTLINED_FUNCTION_3_5();
    v18 = OUTLINED_FUNCTION_6_3();
    (v11)(v18);
    sub_243D0EF2C();
    OUTLINED_FUNCTION_3_5();
    v19 = OUTLINED_FUNCTION_6_3();
    (v11)(v19);
    sub_243D0EF6C();
    v20 = OUTLINED_FUNCTION_3_5();
    v21 = OUTLINED_FUNCTION_10_2();
    (v11)(v21);
    v11(v8, v2);
    v22 = OUTLINED_FUNCTION_38();
    (v11)(v22);
    if (v20)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_243CFD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  *a1 = a2;
  *(a1 + 8) = a3;

  *(a1 + 16) = a4;
  *(a1 + 24) = a5;

  *(a1 + 32) = a6;
  *(a1 + 40) = a7;

  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11 & 1;
  *(a1 + 80) = a12;
  *(a1 + 88) = a13 & 1;
  *(a1 + 92) = a14;

  *(a1 + 96) = a15;
  *(a1 + 104) = a16;

  *(a1 + 112) = a17;
  *(a1 + 120) = a18;
  v26 = (a1 + *(type metadata accessor for NetworkProto.Header(0) + 56));
  if (a20)
  {
  }

  *v26 = a19;
  v26[1] = a20;
  return result;
}

uint64_t sub_243CFD4F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_243D0EF6C();
  }

  switch(a1)
  {
    case 1:
    case 4:
      result = sub_243D0EF2C();
      break;
    case 3:
    case 5:
      result = sub_243D0EF3C();
      break;
    case 6:
      result = sub_243D0EF1C();
      break;
    default:
      return sub_243D0EF6C();
  }

  return result;
}

uint64_t sub_243CFD550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        JUMPOUT(0x245D4E480);
      }

      return 0;
    }

    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (a6 != 2 || a4 != 5)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    if (a5)
    {
      return 0;
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      return sub_243D0F31C();
    }
  }

  return 1;
}

uint64_t sub_243CFD664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
  if (v4 || (sub_243D0F31C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D726F666C616DLL && a2 == 0xED00006174614464;
    if (v6 || (sub_243D0F31C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65746E6F436F6ELL && a2 == 0xE900000000000074;
      if (v7 || (sub_243D0F31C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
        if (v8 || (sub_243D0F31C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x63656E6E6F436F6ELL && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_243D0F31C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000243D13370 == a2;
            if (v10 || (sub_243D0F31C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E676F6365726E75 && a2 == 0xEC00000064657A69;
              if (v11 || (sub_243D0F31C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000017 && 0x8000000243D13390 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_243D0F31C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_243CFD910(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0x656D726F666C616DLL;
      break;
    case 2:
      result = 0x6E65746E6F436F6ELL;
      break;
    case 3:
      result = 0x74756F656D6974;
      break;
    case 4:
      result = 0x63656E6E6F436F6ELL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6E676F6365726E75;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_243CFDA4C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v78 = a4;
  v77 = a3;
  v79 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA200, &qword_243D112F8);
  OUTLINED_FUNCTION_2();
  v72 = v6;
  v73 = v5;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_3();
  v71 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA208, &qword_243D11300);
  OUTLINED_FUNCTION_2();
  v75 = v10;
  v76 = v9;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_3();
  v74 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA210, &qword_243D11308);
  OUTLINED_FUNCTION_2();
  v69 = v14;
  v70 = v13;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_3();
  v68 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA218, &qword_243D11310);
  OUTLINED_FUNCTION_2();
  v66 = v18;
  v67 = v17;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_3();
  v65 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA220, &qword_243D11318);
  OUTLINED_FUNCTION_2();
  v63 = v22;
  v64 = v21;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_3();
  v62 = v24;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA228, &qword_243D11320);
  OUTLINED_FUNCTION_2();
  v60 = v25;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_3();
  v59 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA230, &qword_243D11328);
  OUTLINED_FUNCTION_2();
  v58[1] = v29;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v30);
  v32 = v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA238, &qword_243D11330);
  OUTLINED_FUNCTION_2();
  v35 = v34;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v36);
  v38 = v58 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA240, &qword_243D11338);
  OUTLINED_FUNCTION_2();
  v80 = v39;
  v81 = v40;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v41);
  v42 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_243CFF72C();
  sub_243D0F41C();
  if (!v78)
  {
    LOBYTE(v82) = 0;
    sub_243CFF9CC();
    OUTLINED_FUNCTION_12_4(&type metadata for NetworkSyncError.InternalErrorCodingKeys);
    sub_243D0F2CC();
    (*(v35 + 8))(v38, v33);
    goto LABEL_5;
  }

  if (v78 == 1)
  {
    LOBYTE(v82) = 6;
    sub_243CFF7D4();
    v43 = v74;
    OUTLINED_FUNCTION_12_4(&type metadata for NetworkSyncError.UnrecognizedCodingKeys);
    v82 = v79;
    v83 = v77;
    sub_243CFCAD0();
    v44 = v76;
    sub_243D0F2DC();
    (*(v75 + 8))(v43, v44);
LABEL_5:
    v45 = OUTLINED_FUNCTION_13_1();
    return v46(v45, v42);
  }

  switch(v79)
  {
    case 1:
      LOBYTE(v82) = 2;
      sub_243CFF924();
      v55 = v59;
      OUTLINED_FUNCTION_2_10(&type metadata for NetworkSyncError.NoContentCodingKeys);
      OUTLINED_FUNCTION_5_2();
      v57 = v55;
      v53 = v61;
      goto LABEL_14;
    case 2:
      LOBYTE(v82) = 3;
      sub_243CFF8D0();
      v52 = v62;
      OUTLINED_FUNCTION_2_10(&type metadata for NetworkSyncError.TimeoutCodingKeys);
      v54 = v63;
      v53 = v64;
      goto LABEL_13;
    case 3:
      LOBYTE(v82) = 4;
      sub_243CFF87C();
      v52 = v65;
      OUTLINED_FUNCTION_2_10(&type metadata for NetworkSyncError.NoConnectionCodingKeys);
      v54 = v66;
      v53 = v67;
      goto LABEL_13;
    case 4:
      LOBYTE(v82) = 5;
      sub_243CFF828();
      v52 = v68;
      OUTLINED_FUNCTION_2_10(&type metadata for NetworkSyncError.IncompatibleVersionCodingKeys);
      v54 = v69;
      v53 = v70;
      goto LABEL_13;
    case 5:
      LOBYTE(v82) = 7;
      sub_243CFF780();
      v52 = v71;
      OUTLINED_FUNCTION_2_10(&type metadata for NetworkSyncError.UnrecognizedMessageTypeCodingKeys);
      v54 = v72;
      v53 = v73;
LABEL_13:
      v56 = *(v54 + 8);
      v57 = v52;
LABEL_14:
      v56(v57, v53);
      v49 = OUTLINED_FUNCTION_13_1();
      v51 = v32;
      break;
    default:
      LOBYTE(v82) = 1;
      sub_243CFF978();
      OUTLINED_FUNCTION_12_4(&type metadata for NetworkSyncError.MalformedDataCodingKeys);
      OUTLINED_FUNCTION_5_2();
      v48(v32, v28);
      v49 = OUTLINED_FUNCTION_13_1();
      v51 = v42;
      break;
  }

  return v50(v49, v51);
}

uint64_t sub_243CFE170(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA170, &qword_243D112A8);
  OUTLINED_FUNCTION_2();
  v111 = v2;
  v112 = v3;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_3();
  v110 = v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA178, &qword_243D112B0);
  OUTLINED_FUNCTION_2();
  v96 = v6;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_3();
  v115 = v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA180, &qword_243D112B8);
  OUTLINED_FUNCTION_2();
  v107 = v9;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_3();
  v114 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA188, &qword_243D112C0);
  OUTLINED_FUNCTION_2();
  v103 = v12;
  v104 = v13;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_3();
  v113 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA190, &qword_243D112C8);
  OUTLINED_FUNCTION_2();
  v101 = v17;
  v102 = v16;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_3();
  v109 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA198, &qword_243D112D0);
  OUTLINED_FUNCTION_2();
  v99 = v21;
  v100 = v20;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_3();
  v108 = v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA1A0, &qword_243D112D8);
  OUTLINED_FUNCTION_2();
  v97 = v24;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA1A8, &qword_243D112E0);
  OUTLINED_FUNCTION_2();
  v95 = v29;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA1B0, &unk_243D112E8);
  OUTLINED_FUNCTION_2();
  v34 = v33;
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  v38 = a1[3];
  v116 = a1;
  v39 = __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_243CFF72C();
  v40 = v118;
  sub_243D0F40C();
  if (v40)
  {
    goto LABEL_8;
  }

  v92 = v27;
  v93 = v32;
  v91 = v28;
  v42 = v113;
  v41 = v114;
  v43 = v115;
  v94 = v34;
  v118 = v37;
  v44 = sub_243D0F2AC();
  sub_243CE6DE0(v44, 0);
  if (v46 == v47 >> 1)
  {
    goto LABEL_7;
  }

  v90 = 0;
  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    JUMPOUT(0x243CFEC58);
  }

  v89 = *(v45 + v46);
  sub_243CE74D0(v46 + 1);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_7:
    v56 = sub_243D0F1DC();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9DF8, &qword_243D10230);
    *v58 = &type metadata for NetworkSyncError;
    v39 = v118;
    sub_243D0F26C();
    sub_243D0F1CC();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = OUTLINED_FUNCTION_1_7();
    v60(v59);
LABEL_8:
    v55 = v116;
    goto LABEL_9;
  }

  switch(v89)
  {
    case 1:
      LOBYTE(v117) = 1;
      sub_243CFF978();
      v74 = v92;
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.MalformedDataCodingKeys);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_2();
      v75(v74, v98);
      v76 = OUTLINED_FUNCTION_1_7();
      v77(v76);
      v39 = 0;
      goto LABEL_16;
    case 2:
      LOBYTE(v117) = 2;
      sub_243CFF924();
      v64 = v108;
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.NoContentCodingKeys);
      swift_unknownObjectRelease();
      (*(v99 + 8))(v64, v100);
      v65 = OUTLINED_FUNCTION_1_7();
      v66(v65);
      OUTLINED_FUNCTION_15_1();
      v39 = 1;
      goto LABEL_16;
    case 3:
      LOBYTE(v117) = 3;
      sub_243CFF8D0();
      v67 = v109;
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.TimeoutCodingKeys);
      swift_unknownObjectRelease();
      (*(v101 + 8))(v67, v102);
      v68 = OUTLINED_FUNCTION_1_7();
      v69(v68);
      v39 = 2;
      goto LABEL_16;
    case 4:
      LOBYTE(v117) = 4;
      sub_243CFF87C();
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.NoConnectionCodingKeys);
      swift_unknownObjectRelease();
      (*(v104 + 8))(v42, v103);
      v62 = OUTLINED_FUNCTION_1_7();
      v63(v62);
      OUTLINED_FUNCTION_15_1();
      v39 = 3;
      goto LABEL_16;
    case 5:
      LOBYTE(v117) = 5;
      sub_243CFF828();
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.IncompatibleVersionCodingKeys);
      swift_unknownObjectRelease();
      (*(v107 + 8))(v41, v105);
      v78 = OUTLINED_FUNCTION_1_7();
      v79(v78);
      OUTLINED_FUNCTION_15_1();
      v39 = 4;
      goto LABEL_16;
    case 6:
      LOBYTE(v117) = 6;
      sub_243CFF7D4();
      v80 = v43;
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.UnrecognizedCodingKeys);
      sub_243CFC950();
      v81 = v106;
      sub_243D0F28C();
      v55 = v116;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_2();
      v85(v80, v81);
      v86 = OUTLINED_FUNCTION_16_2();
      v87(v86);
      v39 = v117;
      break;
    case 7:
      LOBYTE(v117) = 7;
      sub_243CFF780();
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.UnrecognizedMessageTypeCodingKeys);
      swift_unknownObjectRelease();
      v70 = OUTLINED_FUNCTION_4_5();
      v71(v70);
      v72 = OUTLINED_FUNCTION_1_7();
      v73(v72);
      OUTLINED_FUNCTION_15_1();
      v39 = 5;
LABEL_16:
      v55 = v116;
      break;
    default:
      LOBYTE(v117) = 0;
      sub_243CFF9CC();
      v52 = v93;
      OUTLINED_FUNCTION_9_3(&type metadata for NetworkSyncError.InternalErrorCodingKeys);
      v53 = v91;
      v54 = sub_243D0F27C();
      v55 = v116;
      v39 = v54;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5_2();
      v82(v52, v53);
      OUTLINED_FUNCTION_5_2();
      v83 = OUTLINED_FUNCTION_16_2();
      v84(v83);
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  return v39;
}

uint64_t sub_243CFEC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243CFD664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243CFECA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243CFD908();
  *a1 = result;
  return result;
}

uint64_t sub_243CFECD0(uint64_t a1)
{
  v2 = sub_243CFF72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFED0C(uint64_t a1)
{
  v2 = sub_243CFF72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFED48(uint64_t a1)
{
  v2 = sub_243CFF828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFED84(uint64_t a1)
{
  v2 = sub_243CFF828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEDDC(uint64_t a1)
{
  v2 = sub_243CFF9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEE18(uint64_t a1)
{
  v2 = sub_243CFF9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEE54(uint64_t a1)
{
  v2 = sub_243CFF978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEE90(uint64_t a1)
{
  v2 = sub_243CFF978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEECC(uint64_t a1)
{
  v2 = sub_243CFF87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEF08(uint64_t a1)
{
  v2 = sub_243CFF87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEF44(uint64_t a1)
{
  v2 = sub_243CFF924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEF80(uint64_t a1)
{
  v2 = sub_243CFF924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFEFBC(uint64_t a1)
{
  v2 = sub_243CFF8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFEFF8(uint64_t a1)
{
  v2 = sub_243CFF8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFF034(uint64_t a1)
{
  v2 = sub_243CFF7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFF070(uint64_t a1)
{
  v2 = sub_243CFF7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFF0AC(uint64_t a1)
{
  v2 = sub_243CFF780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243CFF0E8(uint64_t a1)
{
  v2 = sub_243CFF780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243CFF124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_243CFE170(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_243CFF190()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA150, &unk_243D110A0);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - v1;
  v3 = sub_243D0E7BC();
  __swift_allocate_value_buffer(v3, qword_27EDAA6B0);
  v4 = __swift_project_value_buffer(v3, qword_27EDAA6B0);
  sub_243D0E76C();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_243CFF29C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = sub_243D0E79C();
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v15 = *(v1 + *(type metadata accessor for HeaderPreamble(0) + 20));
  v25 = MEMORY[0x245D4E490](&v16, 16);
  v26 = v10;
  v11 = MEMORY[0x245D4E490](&v15, 4);
  v13 = v12;
  sub_243D0E71C();
  sub_243CE148C(v11, v13);
  return v25;
}

uint64_t type metadata accessor for HeaderPreamble(uint64_t a1)
{
  result = qword_27EDAA160;
  if (!qword_27EDAA160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243CFF40C()
{
  result = qword_27EDAA158;
  if (!qword_27EDAA158)
  {
    sub_243D0EF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA158);
  }

  return result;
}

BOOL sub_243CFF464(uint64_t a1, uint64_t a2)
{
  if ((sub_243D0E78C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HeaderPreamble(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_243CFF4B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_243D0E64C();
  if (v6)
  {
    v7 = v6;
    result = sub_243D0E66C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_243D0E65C();
  if (v9)
  {
    return *(v9 + *a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_243CFF548(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E7BC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_243CFF5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E7BC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_243CFF5F0(uint64_t a1)
{
  result = sub_243D0E7BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22CompanionInferenceCore16NetworkSyncErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_243CFF680(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_243CFF6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_243CFF704(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_243CFF72C()
{
  result = qword_27EDAA1B8;
  if (!qword_27EDAA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1B8);
  }

  return result;
}

unint64_t sub_243CFF780()
{
  result = qword_27EDAA1C0;
  if (!qword_27EDAA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1C0);
  }

  return result;
}

unint64_t sub_243CFF7D4()
{
  result = qword_27EDAA1C8;
  if (!qword_27EDAA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1C8);
  }

  return result;
}

unint64_t sub_243CFF828()
{
  result = qword_27EDAA1D0;
  if (!qword_27EDAA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1D0);
  }

  return result;
}

unint64_t sub_243CFF87C()
{
  result = qword_27EDAA1D8;
  if (!qword_27EDAA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1D8);
  }

  return result;
}

unint64_t sub_243CFF8D0()
{
  result = qword_27EDAA1E0;
  if (!qword_27EDAA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1E0);
  }

  return result;
}

unint64_t sub_243CFF924()
{
  result = qword_27EDAA1E8;
  if (!qword_27EDAA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1E8);
  }

  return result;
}

unint64_t sub_243CFF978()
{
  result = qword_27EDAA1F0;
  if (!qword_27EDAA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1F0);
  }

  return result;
}

unint64_t sub_243CFF9CC()
{
  result = qword_27EDAA1F8;
  if (!qword_27EDAA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA1F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkSyncError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkSyncError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x243CFFB74);
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

_BYTE *sub_243CFFC14(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x243CFFCB0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_243CFFCFC()
{
  result = qword_27EDAA248;
  if (!qword_27EDAA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA248);
  }

  return result;
}

unint64_t sub_243CFFD54()
{
  result = qword_27EDAA250;
  if (!qword_27EDAA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA250);
  }

  return result;
}

unint64_t sub_243CFFDAC()
{
  result = qword_27EDAA258;
  if (!qword_27EDAA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA258);
  }

  return result;
}

unint64_t sub_243CFFE04()
{
  result = qword_27EDAA260;
  if (!qword_27EDAA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA260);
  }

  return result;
}

unint64_t sub_243CFFE5C()
{
  result = qword_27EDAA268;
  if (!qword_27EDAA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA268);
  }

  return result;
}

unint64_t sub_243CFFEB4()
{
  result = qword_27EDAA270;
  if (!qword_27EDAA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA270);
  }

  return result;
}

unint64_t sub_243CFFF0C()
{
  result = qword_27EDAA278;
  if (!qword_27EDAA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA278);
  }

  return result;
}

unint64_t sub_243CFFF64()
{
  result = qword_27EDAA280;
  if (!qword_27EDAA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA280);
  }

  return result;
}

unint64_t sub_243CFFFBC()
{
  result = qword_27EDAA288;
  if (!qword_27EDAA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA288);
  }

  return result;
}

unint64_t sub_243D00014()
{
  result = qword_27EDAA290;
  if (!qword_27EDAA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA290);
  }

  return result;
}

unint64_t sub_243D0006C()
{
  result = qword_27EDAA298;
  if (!qword_27EDAA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA298);
  }

  return result;
}

unint64_t sub_243D000C4()
{
  result = qword_27EDAA2A0;
  if (!qword_27EDAA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2A0);
  }

  return result;
}

unint64_t sub_243D0011C()
{
  result = qword_27EDAA2A8;
  if (!qword_27EDAA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2A8);
  }

  return result;
}

unint64_t sub_243D00174()
{
  result = qword_27EDAA2B0;
  if (!qword_27EDAA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2B0);
  }

  return result;
}

unint64_t sub_243D001CC()
{
  result = qword_27EDAA2B8;
  if (!qword_27EDAA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2B8);
  }

  return result;
}

unint64_t sub_243D00224()
{
  result = qword_27EDAA2C0;
  if (!qword_27EDAA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2C0);
  }

  return result;
}

unint64_t sub_243D0027C()
{
  result = qword_27EDAA2C8;
  if (!qword_27EDAA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2C8);
  }

  return result;
}

unint64_t sub_243D002D4()
{
  result = qword_27EDAA2D0;
  if (!qword_27EDAA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2D0);
  }

  return result;
}

unint64_t sub_243D0032C()
{
  result = qword_27EDAA2D8;
  if (!qword_27EDAA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2D8);
  }

  return result;
}

unint64_t sub_243D00384()
{
  result = qword_27EDAA2E0;
  if (!qword_27EDAA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2E0);
  }

  return result;
}

unint64_t sub_243D003DC()
{
  result = qword_27EDAA2E8;
  if (!qword_27EDAA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA2E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1)
{

  return sub_243D0F2BC();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_243D0ED5C();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  return sub_243D0F25C();
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1)
{

  return sub_243D0F2BC();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_243D00578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_243D0E9BC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_243D00670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_243D0E9BC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_243D0076C(uint64_t a1)
{
  sub_243D0E9BC();
  if (v1 <= 0x3F)
  {
    sub_243D00808(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243D00808(uint64_t a1)
{
  if (!qword_27EDAA300)
  {
    type metadata accessor for Inference.Configuration(255);
    v1 = sub_243D0F17C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDAA300);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Inference.RequestType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Inference.RequestType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_243D008E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D00900(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_243D00944(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_243D009A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_243D00A0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D00A44(uint64_t a1)
{
  result = sub_243D0E9BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D00AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_243D0E9BC();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_243D00B60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_243D0E9BC();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_243D00BE0(uint64_t a1)
{
  result = sub_243D0E9BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_243D00C64(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_243D00CC8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E65476E656B6F74;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x8000000243D12B40;
  }

  else
  {
    v4 = 0xEF6E6F6974617265;
  }

  if (a2)
  {
    v5 = 0x6E65476E656B6F74;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (a2)
  {
    v6 = 0xEF6E6F6974617265;
  }

  else
  {
    v6 = 0x8000000243D12B40;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243D0F31C();
  }

  return v8 & 1;
}

BOOL sub_243D00D84(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_243D00DC4(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_243D00DE8(uint64_t a1@<X8>)
{
  sub_243D00DB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_243D00E38(uint64_t a1@<X8>)
{
  sub_243D00DB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

BOOL sub_243D00E70@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_243D00DC4(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_243D00EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D030F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_243D00F24()
{
  result = qword_27EDAA328;
  if (!qword_27EDAA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA328);
  }

  return result;
}

unint64_t sub_243D00F7C()
{
  result = qword_27EDAA330;
  if (!qword_27EDAA330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAA338, qword_243D11C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA330);
  }

  return result;
}

unint64_t sub_243D00FE4()
{
  result = qword_27EDAA340;
  if (!qword_27EDAA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA340);
  }

  return result;
}

unint64_t sub_243D0103C()
{
  result = qword_27EDAA348;
  if (!qword_27EDAA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA348);
  }

  return result;
}

uint64_t sub_243D01090@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  type metadata accessor for Inference.Configuration(0);
  return sub_243D0E9AC();
}

uint64_t sub_243D010D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_243D100E0;
  v2 = type metadata accessor for Inference.Request(0);
  sub_243D0E9AC();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Inference.Configuration(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_243D01154()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA6C8);
  __swift_project_value_buffer(v0, qword_27EDAA6C8);
  return sub_243D0EB8C();
}

uint64_t sub_243D011A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_243D0EA3C();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_243D011FC(uint64_t a1, uint64_t a2)
{
  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v2, v3, MEMORY[0x277D216D0]);
  return sub_243D0ED5C() & 1;
}

uint64_t sub_243D01294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243D0E9BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_243D012FC(uint64_t a1)
{
  v3 = sub_243D0E9BC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_243D013B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D02DD8(&qword_27EDAA3B0, type metadata accessor for Inference, &unk_243D11FF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D01454(uint64_t a1)
{
  v2 = sub_243D02DD8(&qword_27EDAA380, type metadata accessor for Inference, &unk_243D12028);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D0151C(uint64_t a1, uint64_t a2)
{
  sub_243D02DD8(&qword_27EDAA380, type metadata accessor for Inference, &unk_243D12028);

  return sub_243D0EAFC();
}

uint64_t sub_243D0159C()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA6E0);
  __swift_project_value_buffer(v0, qword_27EDAA6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D11B30;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "oneShot";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "stream";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D01788()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA6F8);
  __swift_project_value_buffer(v0, qword_27EDAA6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D11B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assetBundleIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "useCaseIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requestLoggingIdentifier";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D01990()
{
  OUTLINED_FUNCTION_6_4();
  while (1)
  {
    result = sub_243D0EA3C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_243D0EA7C();
    }
  }

  return result;
}

uint64_t sub_243D01A08()
{
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_11();
  if (!v1 || (OUTLINED_FUNCTION_1_8(), result = sub_243D0EB3C(), !v0))
  {
    OUTLINED_FUNCTION_2_11();
    if (!v3 || (OUTLINED_FUNCTION_1_8(), result = sub_243D0EB3C(), !v0))
    {
      OUTLINED_FUNCTION_2_11();
      if (!v4 || (OUTLINED_FUNCTION_1_8(), result = sub_243D0EB3C(), !v0))
      {
        type metadata accessor for Inference.Configuration(0);
        return OUTLINED_FUNCTION_5_3();
      }
    }
  }

  return result;
}

uint64_t sub_243D01AB0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_243D0F31C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_243D0F31C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_243D0F31C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Inference.Configuration(0);
  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v7, v8, MEMORY[0x277D216D0]);
  return sub_243D0ED5C() & 1;
}

uint64_t sub_243D01BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_243D01C38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_243D01D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D02DD8(&qword_27EDAA3D0, type metadata accessor for Inference.Configuration, &unk_243D11E60);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D01DA8(uint64_t a1)
{
  v2 = sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration, &unk_243D11E98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D01E70(uint64_t a1, uint64_t a2)
{
  sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration, &unk_243D11E98);

  return sub_243D0EAFC();
}

uint64_t sub_243D01EF4()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA710);
  __swift_project_value_buffer(v0, qword_27EDAA710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D11B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "configuration";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Data";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D020FC()
{
  OUTLINED_FUNCTION_6_4();
  while (1)
  {
    result = sub_243D0EA3C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_243D0EA5C();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_7_3();
        sub_243D021EC(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_7_3();
        sub_243D02184(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_243D021EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Inference.Request(0);
  type metadata accessor for Inference.Configuration(0);
  sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration, &unk_243D11E98);
  return sub_243D0EA9C();
}

uint64_t sub_243D022A0()
{
  OUTLINED_FUNCTION_4_6();
  if (!*v1 || (sub_243D030F0(), result = sub_243D0EB1C(), !v0))
  {
    result = sub_243D0237C(v4, v5, v3, v2);
    if (!v0)
    {
      if (!sub_243D00C64(*(v4 + 16), *(v4 + 24)))
      {
        OUTLINED_FUNCTION_1_8();
        sub_243D0EB2C();
      }

      type metadata accessor for Inference.Request(0);
      return OUTLINED_FUNCTION_5_3();
    }
  }

  return result;
}

uint64_t sub_243D0237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Inference.Configuration(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Inference.Request(0);
  sub_243CEDB0C(a1 + *(v11 + 28), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_243CF3770(v7, &qword_27EDA9F08, &qword_243D10990);
  }

  sub_243D03144(v7, v10);
  sub_243D02DD8(&qword_27EDA9F58, type metadata accessor for Inference.Configuration, &unk_243D11E98);
  sub_243D0EB5C();
  return sub_243D031A8(v10);
}

uint64_t sub_243D0251C(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Inference.Configuration(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F08, &qword_243D10990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v31 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3D8, &qword_243D12128);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a1 + 8))
  {
    v14 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v15)
    {
      if (v14 != 1)
      {
        goto LABEL_40;
      }
    }

    else if (v14)
    {
LABEL_40:
      v20 = 0;
      return v20 & 1;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_40;
  }

  v16 = *(type metadata accessor for Inference.Request(0) + 28);
  v17 = *(v10 + 48);
  sub_243CEDB0C(a1 + v16, v13);
  sub_243CEDB0C(a2 + v16, &v13[v17]);
  OUTLINED_FUNCTION_8_4(v13);
  if (v21)
  {
    OUTLINED_FUNCTION_8_4(&v13[v17]);
    if (v21)
    {
      sub_243CF3770(v13, &qword_27EDA9F08, &qword_243D10990);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  sub_243CEDB0C(v13, v9);
  OUTLINED_FUNCTION_8_4(&v13[v17]);
  if (v21)
  {
    sub_243D031A8(v9);
LABEL_20:
    v22 = &qword_27EDAA3D8;
    v23 = &qword_243D12128;
LABEL_39:
    sub_243CF3770(v13, v22, v23);
    goto LABEL_40;
  }

  sub_243D03144(&v13[v17], v6);
  v24 = *v9 == *v6 && v9[1] == v6[1];
  if (!v24 && (sub_243D0F31C() & 1) == 0 || (v9[2] == v6[2] ? (v25 = v9[3] == v6[3]) : (v25 = 0), !v25 && (sub_243D0F31C() & 1) == 0 || (v9[4] == v6[4] ? (v26 = v9[5] == v6[5]) : (v26 = 0), !v26 && (sub_243D0F31C() & 1) == 0)))
  {
    sub_243D031A8(v6);
    sub_243D031A8(v9);
    v22 = &qword_27EDA9F08;
    v23 = &qword_243D10990;
    goto LABEL_39;
  }

  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v27, v28, MEMORY[0x277D216D0]);
  v29 = sub_243D0ED5C();
  sub_243D031A8(v6);
  sub_243D031A8(v9);
  sub_243CF3770(v13, &qword_27EDA9F08, &qword_243D10990);
  if ((v29 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  if ((MEMORY[0x245D4E480](a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_243D0E9BC();
  OUTLINED_FUNCTION_0_10();
  sub_243D02DD8(v18, v19, MEMORY[0x277D216D0]);
  v20 = sub_243D0ED5C();
  return v20 & 1;
}

uint64_t sub_243D0288C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_243D0F3CC();
  a1(0);
  sub_243D02DD8(a2, a3, a4);
  sub_243D0ED3C();
  return sub_243D0F3FC();
}

uint64_t sub_243D02934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_243D029A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_243D02A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D02DD8(&qword_27EDAA3A0, type metadata accessor for Inference.Request, &unk_243D11D70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D02B10@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_243D0EB9C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_243D02BAC(uint64_t a1)
{
  v2 = sub_243D02DD8(&qword_27EDA9D38, type metadata accessor for Inference.Request, &unk_243D120A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D02C74(uint64_t a1, uint64_t a2)
{
  sub_243D02DD8(&qword_27EDA9D38, type metadata accessor for Inference.Request, &unk_243D120A0);

  return sub_243D0EAFC();
}

uint64_t sub_243D02CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243D0F3CC();
  sub_243D0ED3C();
  return sub_243D0F3FC();
}

uint64_t sub_243D02DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243D030F0()
{
  result = qword_27EDAA3A8;
  if (!qword_27EDAA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA3A8);
  }

  return result;
}

uint64_t sub_243D03144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Inference.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D031A8(uint64_t a1)
{
  v2 = type metadata accessor for Inference.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_243D0E99C();
}

uint64_t sub_243D032F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_243D0E9BC();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_243D0338C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_243D0E9BC();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_243D0342C(uint64_t a1)
{
  sub_243D0E9BC();
  if (v1 <= 0x3F)
  {
    sub_243D034F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243D034F0()
{
  if (!qword_27EDAA3F0)
  {
    v0 = sub_243D0F17C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDAA3F0);
    }
  }
}

uint64_t _s22CompanionInferenceCore12NetworkProtoV6HeaderV8PriorityOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_6_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D03558(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D035AC(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_243D0F3CC();
  v5 = a3(v4);
  OUTLINED_FUNCTION_8_5(v5, v6);
  return sub_243D0F3FC();
}

uint64_t sub_243D03610(uint64_t a1, char a2)
{
  sub_243D0EDFC();
}

uint64_t sub_243D036AC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_243D0F3CC();
  v6 = a4(v5);
  OUTLINED_FUNCTION_8_5(v6, v7);
  return sub_243D0F3FC();
}

uint64_t sub_243D03700(uint64_t a1, char a2)
{
  sub_243D0F3CC();
  sub_243D0EDFC();

  return sub_243D0F3FC();
}

uint64_t sub_243D03818(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D05684();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_243D038C0()
{
  result = qword_27EDAA3F8;
  if (!qword_27EDAA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA3F8);
  }

  return result;
}

unint64_t sub_243D03948()
{
  result = qword_27EDAA410;
  if (!qword_27EDAA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA410);
  }

  return result;
}

unint64_t sub_243D039A0()
{
  result = qword_27EDAA418;
  if (!qword_27EDAA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA418);
  }

  return result;
}

uint64_t sub_243D03B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D056D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_243D03BA0()
{
  result = qword_27EDAA420;
  if (!qword_27EDAA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA420);
  }

  return result;
}

uint64_t sub_243D03C24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_243D03C7C()
{
  result = qword_27EDAA438;
  if (!qword_27EDAA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA438);
  }

  return result;
}

unint64_t sub_243D03CD4()
{
  result = qword_27EDAA440;
  if (!qword_27EDAA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA440);
  }

  return result;
}

uint64_t sub_243D03D28@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  v2 = type metadata accessor for NetworkProto.Header(0);
  result = sub_243D0E9AC();
  v4 = (a1 + *(v2 + 56));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_243D03DA0()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA728);
  __swift_project_value_buffer(v0, qword_27EDAA728);
  return sub_243D0EB8C();
}

uint64_t sub_243D03DEC(uint64_t a1, uint64_t a2)
{
  sub_243D0E9BC();
  OUTLINED_FUNCTION_2_12();
  sub_243D0546C(v2, v3, MEMORY[0x277D216D0]);
  return sub_243D0ED5C() & 1;
}

uint64_t sub_243D03E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0546C(&qword_27EDAA480, type metadata accessor for NetworkProto, &unk_243D12658);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D03F24(uint64_t a1)
{
  v2 = sub_243D0546C(&qword_27EDAA468, type metadata accessor for NetworkProto, &unk_243D12690);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D03FEC(uint64_t a1, uint64_t a2)
{
  sub_243D0546C(&qword_27EDAA468, type metadata accessor for NetworkProto, &unk_243D12690);

  return sub_243D0EAFC();
}

uint64_t sub_243D0406C()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA740);
  __swift_project_value_buffer(v0, qword_27EDAA740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_243D12130;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_243D0EB6C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "messageID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "senderID";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "receiverID";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "priority";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "type";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contentLength";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "currentVersion";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "minCompatibleVersion";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "responseToId";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  return sub_243D0EB7C();
}

uint64_t sub_243D04420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_243D0EA3C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 8:
      case 9:
        sub_243D0EA7C();
        break;
      case 5:
        v6 = OUTLINED_FUNCTION_7_3();
        sub_243D04540(v6, v7, v8, v9);
        break;
      case 6:
        v14 = OUTLINED_FUNCTION_7_3();
        sub_243D045A8(v14, v15, v16, v17);
        break;
      case 7:
        sub_243D0EA8C();
        break;
      case 10:
        v10 = OUTLINED_FUNCTION_7_3();
        sub_243D04610(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_243D04674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_2_11();
  if (!v7 || (result = OUTLINED_FUNCTION_1_9(v6), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_2_11();
    if (!v10 || (result = OUTLINED_FUNCTION_1_9(v9), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_2_11();
      if (!v12 || (result = OUTLINED_FUNCTION_1_9(v11), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_2_11();
        if (!v14 || (result = OUTLINED_FUNCTION_1_9(v13), (v5 = v4) == 0))
        {
          if (!*(v3 + 64) || (v15 = *(v3 + 72), v23 = *(v3 + 64), v24 = v15, v16 = sub_243D05684(), result = OUTLINED_FUNCTION_9_4(&v23, 5, &type metadata for NetworkProto.Header.Priority, v16), (v5 = v4) == 0))
          {
            if (!*(v3 + 80) || (v17 = *(v3 + 88), v23 = *(v3 + 80), v24 = v17, v18 = sub_243D056D8(), result = OUTLINED_FUNCTION_9_4(&v23, 6, &type metadata for NetworkProto.Header.MessageType, v18), (v5 = v4) == 0))
            {
              if (!*(v3 + 92) || (v4 = v5, result = sub_243D0EB4C(), !v5))
              {
                OUTLINED_FUNCTION_2_11();
                if (!v20 || (result = OUTLINED_FUNCTION_1_9(v19), (v5 = v4) == 0))
                {
                  OUTLINED_FUNCTION_2_11();
                  if (!v22 || (result = OUTLINED_FUNCTION_1_9(v21), (v5 = v4) == 0))
                  {
                    result = sub_243D04848(v3);
                    if (!v5)
                    {
                      type metadata accessor for NetworkProto.Header(0);
                      return sub_243D0E99C();
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

  return result;
}

uint64_t sub_243D04848(uint64_t a1)
{
  result = type metadata accessor for NetworkProto.Header(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_243D0EB3C();
  }

  return result;
}

uint64_t sub_243D048C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_243D0F31C() & 1) != 0)
  {
    v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
    if (v5 || (sub_243D0F31C() & 1) != 0)
    {
      v6 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
      if (v6 || (sub_243D0F31C() & 1) != 0)
      {
        v7 = a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56);
        if (v7 || (sub_243D0F31C()) && sub_243D03210(a1[8], *(a1 + 72), *(a2 + 64)) && sub_243D03210(a1[10], *(a1 + 88), *(a2 + 80)) && *(a1 + 23) == *(a2 + 92))
        {
          v8 = a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104);
          if (v8 || (sub_243D0F31C() & 1) != 0)
          {
            v9 = a1[14] == *(a2 + 112) && a1[15] == *(a2 + 120);
            if (v9 || (sub_243D0F31C() & 1) != 0)
            {
              v10 = *(type metadata accessor for NetworkProto.Header(0) + 56);
              v11 = (a1 + v10);
              v12 = *(a1 + v10 + 8);
              v13 = (a2 + v10);
              v14 = v13[1];
              if (v12)
              {
                if (v14)
                {
                  v15 = *v11 == *v13 && v12 == v14;
                  if (v15 || (sub_243D0F31C() & 1) != 0)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else if (!v14)
              {
LABEL_41:
                sub_243D0E9BC();
                OUTLINED_FUNCTION_2_12();
                sub_243D0546C(v16, v17, MEMORY[0x277D216D0]);
                return sub_243D0ED5C() & 1;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_243D04A94(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_243D0F3CC();
  a1(0);
  sub_243D0546C(a2, a3, a4);
  sub_243D0ED3C();
  return sub_243D0F3FC();
}

uint64_t sub_243D04B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_243D04BB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_243D0E9BC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_243D04C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0546C(&qword_27EDAA488, type metadata accessor for NetworkProto.Header, &unk_243D124F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243D04D18(uint64_t a1)
{
  v2 = sub_243D0546C(&qword_27EDAA100, type metadata accessor for NetworkProto.Header, &unk_243D12528);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243D04DE0(uint64_t a1, uint64_t a2)
{
  sub_243D0546C(&qword_27EDAA100, type metadata accessor for NetworkProto.Header, &unk_243D12528);

  return sub_243D0EAFC();
}

uint64_t sub_243D04E60()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA758);
  __swift_project_value_buffer(v0, qword_27EDAA758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D12140;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "defaultPriority";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "high";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "medium";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "low";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "userInitiated";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "utility";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "background";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D05178()
{
  v0 = sub_243D0EB9C();
  __swift_allocate_value_buffer(v0, qword_27EDAA770);
  __swift_project_value_buffer(v0, qword_27EDAA770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C0, &qword_243D12118);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA3C8, &qword_243D12120) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243D12150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "defaultType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_243D0EB6C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "streamFinal";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "failure";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "keepAlive";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_243D0EB7C();
}

uint64_t sub_243D0546C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243D05684()
{
  result = qword_27EDAA490;
  if (!qword_27EDAA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA490);
  }

  return result;
}

unint64_t sub_243D056D8()
{
  result = qword_27EDAA498;
  if (!qword_27EDAA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA498);
  }

  return result;
}

uint64_t sub_243D05740(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_243D0579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_243D0E9BC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1)
{

  return sub_243D0EB3C();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_243D0ED3C();
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_243D0EB1C();
}

uint64_t sub_243D058A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_243CF2010(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
    v13 = a3;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  }

  v10 = v8;
  v11 = *(v7 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
  (*(*(v12 - 8) + 16))(a3, v11 + *(*(v12 - 8) + 72) * v10, v12);

  v13 = a3;
  v14 = 0;
  v15 = v12;
  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_243D059C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_243CF2010(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_243D05A14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_243CF2010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_243CE1C20(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_243D05A80()
{
  swift_beginAccess();

  v1 = sub_243D05AE4(v0);

  return v1;
}

uint64_t sub_243D05AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_243D0770C(0, v1, 0);
  v2 = v30;
  result = sub_243D07924(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v26 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v27 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(a1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v30 + 16);
      v14 = *(v30 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_243D0770C((v14 > 1), v15 + 1, 1);
      }

      *(v30 + 16) = v15 + 1;
      v16 = v30 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v17 = 1 << *(a1 + 32);
      if (v7 >= v17)
      {
        goto LABEL_25;
      }

      v9 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v29)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v20 = v26;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v20 = v26;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_243D0AE38(v7, v29, v27 & 1);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_18;
          }
        }

        result = sub_243D0AE38(v7, v29, v27 & 1);
      }

LABEL_18:
      v8 = v28 + 1;
      if (v28 + 1 == v20)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_243D05D1C(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 72) + OBJC_IVAR____TtC22CompanionInferenceCore20MessagingCoordinator_messageProcessor + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_243D05D70()
{
  v1 = v0;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
  }

  v2 = sub_243D0EC0C();
  __swift_project_value_buffer(v2, qword_27EDAA638);

  v3 = sub_243D0EBEC();
  sub_243D0F0FC();
  OUTLINED_FUNCTION_29_2();

  if (OUTLINED_FUNCTION_35_2())
  {
    v4 = OUTLINED_FUNCTION_44_0();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    type metadata accessor for NetworkServer();

    v6 = sub_243D0EDCC();
    v8 = sub_243CE0A08(v6, v7, &v17);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_30_2();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_24();
  }

  sub_243D05F80(v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9DA0, &qword_243D101F0);
  sub_243D0EFCC();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_243D05F28()
{
  sub_243D05D70();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_243D05F80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = swift_unknownObjectRetain();
    nw_listener_set_state_changed_handler(v4, 0);
    nw_listener_set_new_connection_handler(v3, 0);
    nw_listener_cancel(v3);
    swift_unknownObjectRelease();
    *(v2 + 56) = 0;
    swift_unknownObjectRelease();
  }

  return sub_243D05FEC();
}

uint64_t sub_243D05FEC()
{
  v1 = v0;
  if (qword_27EDA9980 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
  }

  v2 = sub_243D0EC0C();
  __swift_project_value_buffer(v2, qword_27EDAA638);
  v3 = sub_243D0EBEC();
  v4 = sub_243D0F0FC();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_30_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_24();
  }

  OUTLINED_FUNCTION_45_0(v1 + 64, v20);
  v10 = *(v1 + 64);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_243CE1C20(*(v10 + 56) + 40 * (v17 | (v16 << 6)), v19);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      sub_243CF6F30();
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA510, &qword_243D12808);
  sub_243D0ED2C();
  return swift_endAccess();
}

id sub_243D061D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_243CF61C0(1, 60.0);
  v4 = nw_listener_create(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_243D0ED6C();
    v7 = [v6 UTF8String];
    result = v6;
    if (v7)
    {
      application_service = nw_advertise_descriptor_create_application_service(v7);
      nw_listener_set_advertise_descriptor(v5, application_service);
      *(v2 + 56) = v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v10 = *(v2 + 104);
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      v28 = sub_243D07904;
      v29 = v12;
      v24 = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_243CF8308;
      v27 = &block_descriptor_1;
      v13 = _Block_copy(&v24);
      v14 = v10;

      nw_listener_set_new_connection_handler(v5, v13);
      _Block_release(v13);
      v28 = sub_243D06F84;
      v29 = 0;
      v24 = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_243D07234;
      v27 = &block_descriptor_20;
      v15 = _Block_copy(&v24);
      nw_listener_set_state_changed_handler(v5, v15);
      _Block_release(v15);
      nw_listener_set_queue(v5, v14);
      nw_listener_start(v5);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
    }

    v16 = sub_243D0EC0C();
    __swift_project_value_buffer(v16, qword_27EDAA638);
    v17 = sub_243D0EBEC();
    v18 = sub_243D0F0FC();
    if (os_log_type_enabled(v17, v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_30_2();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_24();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243D064C4(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_27EDA9980 != -1)
    {
      swift_once();
    }

    v7 = sub_243D0EC0C();
    __swift_project_value_buffer(v7, qword_27EDAA638);
    swift_unknownObjectRetain();
    v8 = sub_243D0EBEC();
    v9 = sub_243D0F0FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      v12 = [a1 description];
      v13 = sub_243D0ED7C();
      v15 = v14;

      v16 = sub_243CE0A08(v13, v15, v24);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_243CDB000, v8, v9, "New connection=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x245D4F8C0](v11, -1, -1);
      MEMORY[0x245D4F8C0](v10, -1, -1);
    }

    v17 = type metadata accessor for Connection(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v18 = sub_243CF6760(a1, a3);
    v25 = v17;
    v26 = &off_2856F1318;
    v24[0] = v18;
    v19 = __swift_project_boxed_opaque_existential_1(v24, v17);
    sub_243D0A7F0(*v19, v6);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = (*__swift_mutable_project_boxed_opaque_existential_1(v24, v25) + OBJC_IVAR____TtC22CompanionInferenceCore10Connection_onNetworkMessageReceived);
    v22 = *v21;
    v23 = v21[1];
    *v21 = &unk_243D127B8;
    v21[1] = v20;

    sub_243CFB580(v22, v23);

    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_243CF67EC();

    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return result;
}

uint64_t sub_243D06774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(type metadata accessor for NetworkMessage(0) - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA4D0, &qword_243D127C0);
  v3[16] = swift_task_alloc();
  v5 = sub_243D0EF8C();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243D068DC);
}

uint64_t sub_243D068DC()
{
  v40 = v0;
  OUTLINED_FUNCTION_45_0(*(v0 + 96) + 16, v0 + 56);
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 80);
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    v38 = v2;
    sub_243D075AC(v2, v3, 0);
    sub_243CFD4F0(*(v1 + 64), *(v1 + 72));
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
    }

    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    v8 = sub_243D0EC0C();
    __swift_project_value_buffer(v8, qword_27EDAA638);
    v37 = *(v7 + 16);
    v37(v5, v4, v6);

    v9 = sub_243D0EBEC();
    v10 = sub_243D0F0FC();

    v35 = v3;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_32_1();
      v39 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_243CE0A08(v2, v3, &v39);
      *(v11 + 12) = 2080;
      sub_243D0AE98(&qword_27EDAA4D8, MEMORY[0x277D85720], MEMORY[0x277D85730]);
      v12 = sub_243D0F2FC();
      v14 = v13;
      v15 = OUTLINED_FUNCTION_27_3();
      v16(v15);
      v17 = sub_243CE0A08(v12, v14, &v39);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_243CDB000, v9, v10, "NetworkMessage [%s] will be processed with %s", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_24();
    }

    else
    {

      v18 = OUTLINED_FUNCTION_27_3();
      v19(v18);
    }

    v34 = *(v0 + 160);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    v24 = *(v0 + 104);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);
    (v37)(v21);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v20);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_243D0A9F0(v26, v23);
    sub_243CE1C20(v25, v0 + 16);
    v28 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v29 = (v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v27;
    sub_243D0ABC4(v23, v30 + v28);
    sub_243CE1C08((v0 + 16), v30 + v29);
    v31 = (v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v31 = v38;
    v31[1] = v35;
    sub_243CEE6DC(0, 0, v21, &unk_243D127D0, v30);

    v36(v34, v20);
  }

  OUTLINED_FUNCTION_9();

  return v32();
}

uint64_t sub_243D06CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_243D06CF0);
}

uint64_t sub_243D06CF0()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_45_0(v0[5] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    v0[11] = *(Strong + 72);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);

    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_243D06E18;
    OUTLINED_FUNCTION_29_1(v0[6]);

    return sub_243D0A09C();
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v5();
  }
}

uint64_t sub_243D06E18()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243D06F18()
{
  OUTLINED_FUNCTION_13();
  sub_243D075AC(*(v0 + 64), *(v0 + 72), 1);

  OUTLINED_FUNCTION_9();

  return v1();
}

void sub_243D06F84(int a1, void *a2)
{
  v3 = 0xE700000000000000;
  v4 = 0x676E6974696177;
  switch(a1)
  {
    case 0:
      v4 = 0x64696C61766E69;
      break;
    case 1:
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x7964616572;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x64656C696166;
      break;
    case 4:
      v3 = 0xE900000000000064;
      v4 = 0x656C6C65636E6163;
      break;
    default:
      v4 = 0x6E776F6E6B6E75;
      break;
  }

  if (qword_27EDA9980 != -1)
  {
    swift_once();
  }

  v5 = sub_243D0EC0C();
  __swift_project_value_buffer(v5, qword_27EDAA638);
  swift_unknownObjectRetain();

  oslog = sub_243D0EBEC();
  v6 = sub_243D0F0FC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    v9 = sub_243CE0A08(v4, v3, &v16);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    if (a2)
    {
      v10 = [a2 description];
      v11 = sub_243D0ED7C();
      v13 = v12;
    }

    else
    {
      v13 = 0xE400000000000000;
      v11 = 1280070990;
    }

    v14 = sub_243CE0A08(v11, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_243CDB000, oslog, v6, "Listener event handler, state=%s, error=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D4F8C0](v8, -1, -1);
    MEMORY[0x245D4F8C0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_243D07234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243D072A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA4B0, &unk_243D127A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  OUTLINED_FUNCTION_45_0(v3 + 64, v16);

  sub_243D074DC(v11, &v14);

  if (v15)
  {
    sub_243CE1C08(&v14, v17);
    sub_243CEEDC8(a1, a2, v17, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    sub_243D0AE44(&v14, &qword_27EDA9EE0, &qword_243D10920);
    (*(v8 + 104))(v10, *MEMORY[0x277D858A0], v7);
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA4C0, &qword_243D0FE50);
    a3[4] = sub_243CE16D0();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_243D0F0CC();
  }
}

uint64_t sub_243D07460()
{
  sub_243CE9F0C();
  swift_allocError();
  *v0 = xmmword_243D12710;
  *(v0 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
  return sub_243D0F09C();
}

uint64_t sub_243D074DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_243D07924(a1);
  if (v6)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {

    return sub_243D07834(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_243D075AC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA500, &unk_243D127F8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  v11[1] = a1;
  v11[2] = a2;
  v12 = a3 & 1;
  sub_243CE4454(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9DA0, &qword_243D101F0);
  sub_243D0EFBC();
  return (*(v7 + 8))(v9, v6);
}

char *sub_243D076E0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[32 * a2] <= __dst)
  {
    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

char *sub_243D0770C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243D0772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243D0772C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F50, &unk_243D109F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243D07834@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_243CE1C20(*(a3 + 56) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_243D0788C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D078C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D07964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  type metadata accessor for NetworkMessage(0);
  v3[9] = swift_task_alloc();
  v3[5] = type metadata accessor for Connection(0);
  v3[6] = &off_2856F1318;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_243D07A1C);
}

uint64_t sub_243D07A1C()
{
  OUTLINED_FUNCTION_38_1();
  v32 = v1;
  OUTLINED_FUNCTION_31();
  v2 = sub_243CE5C98(*(v0 + 56));
  *(v0 + 104) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_26_3();
    v3 = *(v0 + 8);
    v4 = *(v0 + 104);

    return v3(v4);
  }

  else
  {
    if (qword_27EDA9980 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
    }

    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = sub_243D0EC0C();
    *(v0 + 80) = __swift_project_value_buffer(v8, qword_27EDAA638);
    sub_243D0A9F0(v7, v6);
    v9 = sub_243D0EBEC();
    v10 = sub_243D0F0FC();
    v11 = OUTLINED_FUNCTION_37_0(v10);
    v12 = *(v0 + 72);
    if (v11)
    {
      v13 = OUTLINED_FUNCTION_44_0();
      v14 = swift_slowAlloc();
      *v13 = 136315138;

      v15 = sub_243CF3654(v12);
      v23 = OUTLINED_FUNCTION_36_2(v15, v16, v17, v18, v19, v20, v21, v22, v14);

      *(v13 + 4) = v23;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_12_3();
    }

    else
    {

      sub_243CF3654(v12);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    *(v0 + 88) = v29;
    *v29 = v30;
    v29[1] = sub_243D07C28;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_24_3();

    return sub_243CEF8DC();
  }
}

uint64_t sub_243D07C28()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

    v8 = *(v5 + 8);
    v9 = *(v3 + 104);

    return v8(v9);
  }
}

uint64_t sub_243D07D5C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x245D4F760](*(v0 + 96));
  v1 = sub_243D0EBEC();
  sub_243D0F0FC();

  v2 = OUTLINED_FUNCTION_35_2();
  v3 = *(v0 + 96);
  if (v2)
  {
    OUTLINED_FUNCTION_44_0();
    v4 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_39_2(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_31_2(v5);
    OUTLINED_FUNCTION_8_6(&dword_243CDB000, v6, v7, "Unable to check and send compatibility of network message: %@");
    sub_243D0AE44(v4, &qword_27EDAA0E0, &qword_243D10B10);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_28_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_35_1();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_243D07E68(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAA4E0, &qword_243D0FF80);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for NetworkMessage(0);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F90, &qword_243D10B30);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9D48, &unk_243D0FF60);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243D0801C);
}

uint64_t sub_243D0801C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = v0[9];
  v2 = (v1 + *(type metadata accessor for NetworkProto.Header(0) + 56));
  v0[22] = *v2;
  v3 = v2[1];
  v0[23] = v3;
  if (v3)
  {
    v0[24] = *(v0[10] + 16);

    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v4);
  }

  else
  {
    OUTLINED_FUNCTION_15_2();

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_35_1();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_243D08118()
{
  OUTLINED_FUNCTION_13();
  sub_243D058A8(v0[22], v0[23], v0[18]);
  v1 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_243D0817C()
{
  OUTLINED_FUNCTION_43_1();
  v38 = v0;
  v2 = v0[18];
  v1 = v0[19];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_243D0AE44(v2, &qword_27EDA9F90, &qword_243D10B30);
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v2, v1);
    if (!sub_243D0D778())
    {
      if (qword_27EDA9980 != -1)
      {
        OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
      }

      v5 = v0[23];
      v6 = v0[15];
      v7 = v0[9];
      v8 = sub_243D0EC0C();
      __swift_project_value_buffer(v8, qword_27EDAA638);
      sub_243D0A9F0(v7, v6);

      v9 = sub_243D0EBEC();
      LOBYTE(v7) = sub_243D0F0FC();

      v10 = os_log_type_enabled(v9, v7);
      v11 = v0[23];
      if (v10)
      {
        v12 = v0[22];
        v13 = v0[15];
        OUTLINED_FUNCTION_32_1();
        v37 = OUTLINED_FUNCTION_34_1();
        *v5 = 136315394;
        v14 = sub_243CE0A08(v12, v11, &v37);

        *(v5 + 4) = v14;
        *(v5 + 12) = 2080;
        v15 = sub_243D0E6CC();
        v17 = v16;
        sub_243CF3654(v13);
        v18 = sub_243CE0A08(v15, v17, &v37);

        *(v5 + 14) = v18;
        OUTLINED_FUNCTION_9_5();
        _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28_0();
        OUTLINED_FUNCTION_12_3();
      }

      else
      {
        v24 = v0[15];

        sub_243CF3654(v24);
      }

      v26 = v0[20];
      v25 = v0[21];
      v27 = v0[19];
      v28 = v0[13];
      v29 = v0[11];
      v30 = v0[12];
      v31 = (v0[9] + *(v0[14] + 20));
      v32 = *v31;
      v33 = v31[1];
      v0[5] = *v31;
      v0[6] = v33;
      sub_243CE1434(v32, v33);
      sub_243D0F08C();
      (*(v30 + 8))(v28, v29);
      (*(v26 + 8))(v25, v27);
      OUTLINED_FUNCTION_15_2();

      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0();

      __asm { BRAA            X1, X16 }
    }

    __swift_storeEnumTagSinglePayload(v0[17], 1, 1, v0[19]);
  }

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243D084B0()
{
  OUTLINED_FUNCTION_13();
  *(v0 + 200) = sub_243D05A80();
  v1 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_243D08510()
{
  OUTLINED_FUNCTION_31();
  v27 = v0;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
  }

  v1 = v0[25];
  v2 = sub_243D0EC0C();
  __swift_project_value_buffer(v2, qword_27EDAA638);

  v3 = sub_243D0EBEC();
  v4 = sub_243D0F0EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[23];
  if (v5)
  {
    v8 = v0[22];
    OUTLINED_FUNCTION_32_1();
    v26 = OUTLINED_FUNCTION_34_1();
    *v1 = 136315394;
    v9 = sub_243CE0A08(v8, v7, &v26);

    *(v1 + 4) = v9;
    *(v1 + 12) = 2080;
    MEMORY[0x245D4EC70](v6, MEMORY[0x277D837D0]);

    v18 = OUTLINED_FUNCTION_36_2(v10, v11, v12, v13, v14, v15, v16, v17, v26);

    *(v1 + 14) = v18;
    OUTLINED_FUNCTION_9_5();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_9();

  return v24();
}

uint64_t sub_243D08700()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  sub_243D0AD74(v1, v2);
  sub_243CEE9BC(v2);
  sub_243D0AE44(v1, &qword_27EDA9F90, &qword_243D10B30);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243D0879C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  if (*(*(v0 + 72) + 80) == 2)
  {
    sub_243D0E5EC();
    swift_allocObject();
    sub_243D0E5DC();
    sub_243D0ADE4();
    sub_243D0E5CC();

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    sub_243CE9F0C();
    v7 = swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = v6;
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 152);
    *(v0 + 64) = v7;
    sub_243D0F09C();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    *(v0 + 56) = 0;
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    sub_243D0F09C();
    (*(v2 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_243D08978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a1;
  v3[25] = a3;
  sub_243D0EF8C();
  v3[26] = swift_task_alloc();
  v5 = sub_243D0E7BC();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for NetworkMessage(0);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[5] = type metadata accessor for Connection(0);
  v3[6] = &off_2856F1318;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_243D08AE0);
}

uint64_t sub_243D08AE0()
{
  OUTLINED_FUNCTION_43_1();
  v37 = v0;
  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[24];
  v4 = sub_243D0EC0C();
  v0[35] = __swift_project_value_buffer(v4, qword_27EDAA638);
  sub_243D0A9F0(v3, v1);
  sub_243D0A9F0(v3, v2);
  v5 = sub_243D0EBEC();
  v6 = sub_243D0F0FC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[33];
  v9 = v0[34];
  if (v7)
  {
    OUTLINED_FUNCTION_32_1();
    v36 = OUTLINED_FUNCTION_34_1();
    *v2 = 136315394;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);

    sub_243CF3654(v9);
    v12 = sub_243CE0A08(v10, v11, &v36);

    *(v2 + 4) = v12;
    *(v2 + 12) = 2080;
    type metadata accessor for NetworkProto.Header(0);
    v13 = v0[33];

    v14 = sub_243CF3654(v13);
    v22 = OUTLINED_FUNCTION_36_2(v14, v15, v16, v17, v18, v19, v20, v21, v36);

    *(v2 + 14) = v22;
    _os_log_impl(&dword_243CDB000, v5, v6, "Processing incoming message: [%s,%s]", v2, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    sub_243CF3654(v9);
    sub_243CF3654(v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    v0[37] = v24;
    *v24 = v25;
    v24[1] = sub_243D08E40;

    return sub_243CE2384();
  }

  else
  {
    v27 = sub_243D0EBEC();
    v28 = sub_243D0F0FC();
    if (OUTLINED_FUNCTION_37_0(v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_5();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    v0[48] = v34;
    *v34 = v35;
    v34[1] = sub_243D09E14;
    v39 = -1;
    OUTLINED_FUNCTION_3_6();

    return sub_243CEF8DC();
  }
}

uint64_t sub_243D08E40()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243D08F24()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v1 = v0[15];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_243D0F06C();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v0[38] = OBJC_IVAR____TtC22CompanionInferenceCore20MessagingCoordinator_senderId;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  v0[39] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_5_5(v5);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x282200310](v7);
}

uint64_t sub_243D090B0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243D091AC(uint64_t a1)
{
  v2 = *(v1 + 168);
  if (v2 >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
    swift_task_alloc();
    OUTLINED_FUNCTION_33_0();
    *(v1 + 344) = v3;
    *v3 = v4;
    v3[1] = sub_243D097D8;
    OUTLINED_FUNCTION_3_6();

    return sub_243CEF8DC();
  }

  v45 = *(v1 + 160);
  v7 = *(v1 + 232);
  v6 = *(v1 + 240);
  v8 = *(v1 + 216);
  v9 = *(v1 + 224);
  v10 = *(v1 + 208);
  v11 = *(v1 + 192);
  sub_243D0E7AC();
  v43 = sub_243D0E77C();
  v44 = v12;
  v13 = *(v9 + 8);
  v13(v6, v8);
  v14 = sub_243D0E77C();
  v16 = v15;
  v41 = v11[4];
  v42 = v14;
  v40 = v11[5];
  v17 = v11[2];
  v18 = v11[3];
  sub_243D0F05C();
  v39 = sub_243CFD02C(v10);
  v47 = v19;
  sub_243D0E7AC();
  v38 = sub_243D0E77C();
  v21 = v20;
  v13(v7, v8);
  v22 = MEMORY[0x245D4E4B0](v45, v2);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  LODWORD(v7) = v22;
  if (HIDWORD(v22))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v17;
  if (qword_27EDA9988 != -1)
  {
LABEL_15:
    swift_once();
  }

  v36 = v18;
  v23 = dword_27EDAA658;
  *(v1 + 400) = qword_27EDAA650;
  *(v1 + 408) = v23;
  v24 = Version.description.getter();
  v35 = v25;
  if (qword_27EDA9990 != -1)
  {
    swift_once();
  }

  v33 = *(v1 + 256);
  v34 = *(v1 + 248);
  v26 = dword_27EDAA668;
  *(v1 + 412) = qword_27EDAA660;
  *(v1 + 420) = v26;
  v27 = Version.description.getter();
  v29 = v28;
  type metadata accessor for NetworkProto.Header(0);
  v30 = swift_task_alloc();
  *(v30 + 16) = v38;
  *(v30 + 24) = v21;
  *(v30 + 32) = v43;
  *(v30 + 40) = v44;
  *(v30 + 48) = v42;
  *(v30 + 56) = v16;
  *(v30 + 64) = v41;
  *(v30 + 72) = v40;
  *(v30 + 80) = v39;
  *(v30 + 88) = v47 & 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 1;
  *(v30 + 108) = v7;
  *(v30 + 112) = v24;
  *(v30 + 120) = v35;
  *(v30 + 128) = v27;
  *(v30 + 136) = v29;
  *(v30 + 144) = v37;
  *(v30 + 152) = v36;
  sub_243D0AE98(&qword_27EDAA100, type metadata accessor for NetworkProto.Header, &unk_243D12528);
  sub_243D0EB0C();

  v31 = (v33 + *(v34 + 20));
  *v31 = v45;
  v31[1] = v2;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v32 = swift_task_alloc();
  *(v1 + 328) = v32;
  *v32 = v1;
  v32[1] = sub_243D096DC;
  OUTLINED_FUNCTION_29_1(*(v1 + 256));

  return sub_243CF73C4();
}

uint64_t sub_243D095C8()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_31();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_28_2();
  v1 = sub_243D0EBEC();
  sub_243D0F0FC();

  if (OUTLINED_FUNCTION_35_2())
  {
    OUTLINED_FUNCTION_44_0();
    v2 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_39_2(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_31_2(v3);
    OUTLINED_FUNCTION_8_6(&dword_243CDB000, v4, v5, "Error processing incoming message: %@");
    sub_243D0AE44(v2, &qword_27EDAA0E0, &qword_243D10B10);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_6_6();
  v6 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_1(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  *(v0 + 376) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_1_10(v8);
  OUTLINED_FUNCTION_24_3();

  return sub_243CEF8DC();
}

uint64_t sub_243D096DC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243D097D8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243D098D4()
{
  OUTLINED_FUNCTION_22();
  sub_243CF3654(v0[32]);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  v0[39] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_5(v1);

  return MEMORY[0x282200310](v3);
}

uint64_t sub_243D09968()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_31();
  v1 = v0[32];
  swift_unknownObjectRelease();
  sub_243CF3654(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_28_2();
  v2 = sub_243D0EBEC();
  sub_243D0F0FC();

  if (OUTLINED_FUNCTION_35_2())
  {
    OUTLINED_FUNCTION_44_0();
    v3 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_39_2(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_31_2(v4);
    OUTLINED_FUNCTION_8_6(&dword_243CDB000, v5, v6, "Error processing incoming message: %@");
    sub_243D0AE44(v3, &qword_27EDAA0E0, &qword_243D10B10);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_6_6();
  v7 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_1(v7, v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  v0[47] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_1_10(v9);
  OUTLINED_FUNCTION_24_3();

  return sub_243CEF8DC();
}

uint64_t sub_243D09A88()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_243D09BC0()
{
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_26_3();

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_243D09C64()
{
  OUTLINED_FUNCTION_34_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_26_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_243D09D08()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_31();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_2();
  v1 = sub_243D0EBEC();
  sub_243D0F0FC();

  if (OUTLINED_FUNCTION_35_2())
  {
    OUTLINED_FUNCTION_44_0();
    v2 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_39_2(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_31_2(v3);
    OUTLINED_FUNCTION_8_6(&dword_243CDB000, v4, v5, "Error processing incoming message: %@");
    sub_243D0AE44(v2, &qword_27EDAA0E0, &qword_243D10B10);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_6_6();
  v6 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_1(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  *(v0 + 376) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_1_10(v8);
  OUTLINED_FUNCTION_24_3();

  return sub_243CEF8DC();
}

uint64_t sub_243D09E14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_20();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

    OUTLINED_FUNCTION_9();

    return v8();
  }
}

uint64_t sub_243D09F98()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28_2();
  v1 = sub_243D0EBEC();
  sub_243D0F0FC();

  if (OUTLINED_FUNCTION_35_2())
  {
    OUTLINED_FUNCTION_44_0();
    v2 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_39_2(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_31_2(v3);
    OUTLINED_FUNCTION_8_6(&dword_243CDB000, v4, v5, "Error processing incoming message: %@");
    sub_243D0AE44(v2, &qword_27EDAA0E0, &qword_243D10B10);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_6_6();
  v6 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_1(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_0();
  *(v0 + 376) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_1_10(v8);
  OUTLINED_FUNCTION_24_3();

  return sub_243CEF8DC();
}

uint64_t sub_243D0A09C()
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_34_0();
  v2 = v1;
  v0[7] = v3;
  v0[8] = v4;
  type metadata accessor for NetworkMessage(0);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v5 = type metadata accessor for Connection(0);
  v0[5] = v5;
  v0[6] = &off_2856F1318;
  v0[2] = v2;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_243D0A1B4;
  OUTLINED_FUNCTION_35_1();

  return sub_243D07964(v7, v8, v9);
}

uint64_t sub_243D0A1B4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_243D0A2A0()
{
  OUTLINED_FUNCTION_43_1();
  v36 = v0;
  if (*(v0 + 112) != 1)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 56);
  v2 = *(v1 + 80);
  if (*(v1 + 88) == 1)
  {
    if (v2 >= 3)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 3)
  {
LABEL_4:
    OUTLINED_FUNCTION_26_3();

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_27EDA9980 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_27EDA9980);
    v1 = *(v0 + 56);
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = sub_243D0EC0C();
  __swift_project_value_buffer(v7, qword_27EDAA638);
  sub_243D0A9F0(v1, v5);
  sub_243D0A9F0(v1, v6);
  v8 = sub_243D0EBEC();
  v9 = sub_243D0F0FC();
  v10 = OUTLINED_FUNCTION_37_0(v9);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  if (v10)
  {
    v13 = OUTLINED_FUNCTION_32_1();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);

    sub_243CF3654(v12);
    v17 = sub_243CE0A08(v15, v16, &v35);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = *(v11 + 80);
    sub_243CF3654(*(v0 + 72));
    *(v13 + 14) = v18;
    OUTLINED_FUNCTION_9_5();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    sub_243CF3654(*(v0 + 72));

    sub_243CF3654(v12);
  }

  v24 = *(v0 + 56);
  if (*(v24 + *(type metadata accessor for NetworkProto.Header(0) + 56) + 8))
  {
    v25 = swift_task_alloc();
    *(v0 + 96) = v25;
    *v25 = v0;
    v25[1] = sub_243D0A57C;
    OUTLINED_FUNCTION_29_1(*(v0 + 56));
    OUTLINED_FUNCTION_6_0();

    return sub_243D07E68(v26, v27);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v30 = swift_task_alloc();
    *(v0 + 104) = v30;
    *v30 = v0;
    v30[1] = sub_243D0A6C0;
    OUTLINED_FUNCTION_29_1(*(v0 + 56));
    OUTLINED_FUNCTION_6_0();

    return sub_243D08978(v31, v32, v33);
  }
}

uint64_t sub_243D0A57C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243D0A660()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_243D0A6C0()
{
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_243D0A7F0(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for Connection(0);
  v9[4] = &off_2856F1318;
  v9[0] = a1;
  swift_beginAccess();
  v4 = *(a2 + 64);

  sub_243D05A14(0x43495645445F4F4ELL, 0xEC00000044495F45, v4, v7);

  if (v8)
  {
    sub_243CE1C20(v7, v6);
    sub_243D0AE44(v7, &qword_27EDA9EE0, &qword_243D10920);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_243CF6F30();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_243D0AE44(v7, &qword_27EDA9EE0, &qword_243D10920);
  }

  sub_243CE1C20(v9, v7);
  swift_beginAccess();
  sub_243CEEC74(v7, 0x43495645445F4F4ELL, 0xEC00000044495F45);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_243D0A94C()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243CE06A0;

  return sub_243D06774(v5, v3, v0);
}

uint64_t sub_243D0A9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D0AA54()
{
  v1 = (type metadata accessor for NetworkMessage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = *(type metadata accessor for NetworkProto.Header(0) + 52);
  sub_243D0E9BC();
  OUTLINED_FUNCTION_16_1();
  (*(v6 + 8))(v0 + v3 + v5);

  sub_243CE148C(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_243D0ABC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D0AC28()
{
  OUTLINED_FUNCTION_43_1();
  v2 = v1;
  v4 = v3;
  v5 = *(type metadata accessor for NetworkMessage(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = (v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_243CE1C84;

  return sub_243D06CC8(v4, v8, v9, v10, v0 + v6, v0 + v7, v12, v13);
}

uint64_t sub_243D0AD74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA9F90, &qword_243D10B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243D0ADE4()
{
  result = qword_27EDAA4F0;
  if (!qword_27EDAA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA4F0);
  }

  return result;
}

uint64_t sub_243D0AE38(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_243D0AE44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_243D0AE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{
  *(a1 + 8) = sub_243D09A88;
  *(v3 + 24) = 0;
  *(v3 + 16) = v1;
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_8_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14_4()
{

  JUMPOUT(0x245D4F8C0);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

void OUTLINED_FUNCTION_28_2()
{
  *(v1 + 360) = v0;

  JUMPOUT(0x245D4F760);
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_35_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_243CE0A08(v9, v10, &a9);
}

void OUTLINED_FUNCTION_39_2(float a1)
{
  *v1 = a1;

  JUMPOUT(0x245D4F760);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_243D0B1A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_243D0F24C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D0B1F4(char a1)
{
  if (a1)
  {
    return 0x6E65476E656B6F74;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_243D0B260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243D0B1A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_243D0B290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243D0B1F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_243D0B2BC(uint64_t a1, uint64_t a2)
{
  bytes[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA528, &unk_243D129A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &bytes[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &bytes[-1] - v7;
  sub_243D0E5EC();
  swift_allocObject();
  sub_243D0E5DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA118, &unk_243D11090);
  sub_243D0C6B4(&qword_27EDAA120, sub_243CFC950, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_243D0E5CC();

  if (!v2)
  {
    v10 = bytes[0];
    if (*(bytes[0] + 16) && (v11 = sub_243CF2010(0x61746144637078, 0xE700000000000000), (v12 & 1) != 0))
    {
      v13 = *(v10 + 56) + 16 * v11;
      v15 = *v13;
      v14 = *(v13 + 8);
      switch(v14 >> 62)
      {
        case 1uLL:
          if (v15 >> 32 < v15)
          {
            __break(1u);
          }

          sub_243CE1434(*v13, *(v13 + 8));
          v20 = v8;
          v21 = v15;
          v22 = v15 >> 32;
          goto LABEL_12;
        case 2uLL:
          v18 = *(v15 + 16);
          v19 = *(v15 + 24);
          sub_243CE1434(*v13, *(v13 + 8));
          v20 = v8;
          v21 = v18;
          v22 = v19;
LABEL_12:
          sub_243D0C7A8(v21, v22, v20);
          goto LABEL_13;
        case 3uLL:
          memset(bytes, 0, 14);
          v16 = 0;
          goto LABEL_9;
        default:
          bytes[0] = *v13;
          LOWORD(bytes[1]) = v14;
          BYTE2(bytes[1]) = BYTE2(v14);
          BYTE3(bytes[1]) = BYTE3(v14);
          BYTE4(bytes[1]) = BYTE4(v14);
          v16 = BYTE6(v14);
          BYTE5(bytes[1]) = BYTE5(v14);
LABEL_9:
          xpc_data_create(bytes, v16);
          sub_243D0EC3C();
          v23 = sub_243D0EC4C();
          __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
LABEL_13:
          sub_243CE148C(v15, v14);
          break;
      }
    }

    else
    {
      v17 = sub_243D0EC4C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
    }

    if (*(v10 + 16))
    {
      v24 = sub_243CF2010(1635017060, 0xE400000000000000);
      if (v25)
      {
        sub_243CE1434(*(*(v10 + 56) + 16 * v24), *(*(v10 + 56) + 16 * v24 + 8));
      }
    }

    sub_243D0C738(v8, v6);
    sub_243D0E7DC();
    return sub_243D0C64C(v8);
  }

  return result;
}

uint64_t sub_243D0B668@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  xpc_data_create(a1, v4);
  sub_243D0EC3C();
  v5 = sub_243D0EC4C();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);
}

uint64_t sub_243D0B6C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA528, &unk_243D129A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_243D0EC4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243D0ED1C();
  v8 = sub_243D0E7EC();
  if (v9 >> 60 != 15)
  {
    v10 = v8;
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v7;
    sub_243CF2558(v10, v11, 1635017060, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v7 = v24;
  }

  sub_243D0E7CC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_243D0C64C(v2);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v13 = sub_243D0EC2C();
    bytes_ptr = xpc_data_get_bytes_ptr(v13);
    if (bytes_ptr)
    {
      v15 = bytes_ptr;
      length = xpc_data_get_length(v13);
      v17 = MEMORY[0x245D4E490](v15, length);
      v19 = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v24 = v7;
      sub_243CF2558(v17, v19, 0x61746144637078, 0xE700000000000000, v20);
      swift_unknownObjectRelease();
      v7 = v24;
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      swift_unknownObjectRelease();
    }
  }

  sub_243D0E61C();
  swift_allocObject();
  sub_243D0E60C();
  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA118, &unk_243D11090);
  sub_243D0C6B4(&qword_27EDAA140, sub_243CFCAD0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v21 = sub_243D0E5FC();

  return v21;
}