uint64_t sub_25BB9E6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BB9E768(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_25BB9E7B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AveragePool1D.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BB9E980(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB9EA60()
{
  result = qword_27FBB5C78;
  if (!qword_27FBB5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C78);
  }

  return result;
}

unint64_t sub_25BB9EAB8()
{
  result = qword_27FBB5C80;
  if (!qword_27FBB5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C80);
  }

  return result;
}

unint64_t sub_25BB9EB10()
{
  result = qword_27FBB5C88;
  if (!qword_27FBB5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C88);
  }

  return result;
}

unint64_t sub_25BB9EB68()
{
  result = qword_27FBB5C90;
  if (!qword_27FBB5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C90);
  }

  return result;
}

unint64_t sub_25BB9EBC0()
{
  result = qword_27FBB5C98;
  if (!qword_27FBB5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C98);
  }

  return result;
}

unint64_t sub_25BB9EC18()
{
  result = qword_27FBB5CA0;
  if (!qword_27FBB5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CA0);
  }

  return result;
}

unint64_t sub_25BB9EC70()
{
  result = qword_27FBB5CA8;
  if (!qword_27FBB5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CA8);
  }

  return result;
}

unint64_t sub_25BB9ECC8()
{
  result = qword_27FBB5CB0;
  if (!qword_27FBB5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CB0);
  }

  return result;
}

unint64_t sub_25BB9ED20()
{
  result = qword_27FBB5CB8;
  if (!qword_27FBB5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CB8);
  }

  return result;
}

unint64_t sub_25BB9ED78()
{
  result = qword_27FBB5CC0;
  if (!qword_27FBB5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CC0);
  }

  return result;
}

unint64_t sub_25BB9EDD0()
{
  result = qword_27FBB5CC8;
  if (!qword_27FBB5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CC8);
  }

  return result;
}

unint64_t sub_25BB9EE28()
{
  result = qword_27FBB5CD0;
  if (!qword_27FBB5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CD0);
  }

  return result;
}

unint64_t sub_25BB9EE80()
{
  result = qword_27FBB5CD8;
  if (!qword_27FBB5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CD8);
  }

  return result;
}

unint64_t sub_25BB9EED8()
{
  result = qword_27FBB5CE0;
  if (!qword_27FBB5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CE0);
  }

  return result;
}

unint64_t sub_25BB9EF30()
{
  result = qword_27FBB5CE8;
  if (!qword_27FBB5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CE8);
  }

  return result;
}

unint64_t sub_25BB9EF88()
{
  result = qword_27FBB5CF0;
  if (!qword_27FBB5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CF0);
  }

  return result;
}

unint64_t sub_25BB9EFE0()
{
  result = qword_27FBB5CF8;
  if (!qword_27FBB5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CF8);
  }

  return result;
}

unint64_t sub_25BB9F038()
{
  result = qword_27FBB5D00;
  if (!qword_27FBB5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D00);
  }

  return result;
}

unint64_t sub_25BB9F090()
{
  result = qword_27FBB5D08;
  if (!qword_27FBB5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D08);
  }

  return result;
}

unint64_t sub_25BB9F0E8()
{
  result = qword_27FBB5D10;
  if (!qword_27FBB5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D10);
  }

  return result;
}

__n128 *sub_25BB9F1B4(uint64_t a1, id *a2)
{
  v5 = *(v2 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v6, xmmword_25BCBB6D0);
  switch(v5)
  {
    case 1uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v12 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (!v3)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    case 2uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v9 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 3uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v10 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 4uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v8 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 5uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v13 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 6uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v14 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 7uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v11 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
LABEL_33:
        OUTLINED_FUNCTION_27_4();
      }

      else
      {
LABEL_40:
        v22 = a2[5];
      }

      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_3_24();
      v21 = sub_25BB07CA4(v23, v24, v25, v26, v27, v28);
      break;
    default:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v7 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        OUTLINED_FUNCTION_27_4();
      }

      else
      {
        v15 = a2[5];
      }

      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_3_24();
      v21 = sub_25BB2B6D4(v16, v17, v18, v19, v20);
      break;
  }

  v29 = v21;

  v6[2].n128_u64[0] = v29;
  return v6;
}

uint64_t sub_25BB9F468(void *a1, uint64_t a2)
{
  v6 = sub_25BB9F510(a1, a2);
  if (!v3)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25BCBB6D0;
    v9 = *(v2 + 24);
    v8 = *(v2 + 32);
    sub_25BCB617C();
    *(v4 + 32) = sub_25BB9FAD0(v7, 2147483656, v9, v8, a1);
  }

  return v4;
}

id sub_25BB9F510(void *a1, uint64_t a2)
{
  MEMORY[0x25F876C90](*(v2 + 24), *(v2 + 32));
  v5 = *(v2 + 130);
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  switch(v5)
  {
    case 1:
      if (v6)
      {
        v16 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v16 = *(a2 + 32);
      }

      v8 = v16;
      sub_25BAB4D78(1uLL, v6 == 0, a2);
      if (v6)
      {
        v17 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v17 = *(a2 + 40);
      }

      v20 = v17;
      v21 = &selRef_greaterThanWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 2:
      if (v6)
      {
        v12 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v8 = v12;
      sub_25BAB4D78(1uLL, v6 == 0, a2);
      if (v6)
      {
        v13 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v13 = *(a2 + 40);
      }

      v20 = v13;
      v21 = &selRef_greaterThanOrEqualToWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 3:
      if (v6)
      {
        v14 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v14 = *(a2 + 32);
      }

      v8 = v14;
      sub_25BAB4D78(1uLL, v6 == 0, a2);
      if (v6)
      {
        v15 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v15 = *(a2 + 40);
      }

      v20 = v15;
      v21 = &selRef_lessThanWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 4:
      if (v6)
      {
        v10 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v10 = *(a2 + 32);
      }

      v8 = v10;
      sub_25BAB4D78(1uLL, v6 == 0, a2);
      if (v6)
      {
        v11 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v11 = *(a2 + 40);
      }

      v20 = v11;
      v21 = &selRef_lessThanOrEqualToWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 5:
      if (v6)
      {
        v18 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v18 = *(a2 + 32);
      }

      v8 = v18;
      sub_25BAB4D78(1uLL, v6 == 0, a2);
      if (v6)
      {
        v19 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v19 = *(a2 + 40);
      }

      v20 = v19;
      v21 = &selRef_notEqualWithPrimaryTensor_secondaryTensor_name_;
      break;
    default:
      if (v6)
      {
        v7 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v7 = *(a2 + 32);
      }

      v8 = v7;
      sub_25BAB4D78(1uLL, v6 == 0, a2);
      if (v6)
      {
        v9 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v9 = *(a2 + 40);
      }

      v20 = v9;
      v21 = &selRef_equalWithPrimaryTensor_secondaryTensor_name_;
      break;
  }

  v22 = sub_25BB07CA4(v8, v20, 1600483952, v24, a1, v21);

  return v22;
}

__n128 *sub_25BB9F838(uint64_t a1, id *a2)
{
  v5 = *(v2 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v6, xmmword_25BCBB6D0);
  if (!v5)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
      v9 = a2[4];
    }

    v8 = v9;
    OUTLINED_FUNCTION_1_35();
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v5 != 1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
      v10 = a2[4];
    }

    v8 = v10;
    OUTLINED_FUNCTION_1_35();
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_15:
    v11 = a2[5];
    goto LABEL_16;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v7 = a2[4];
  }

  v8 = v7;
  OUTLINED_FUNCTION_1_35();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_14:
  OUTLINED_FUNCTION_27_4();
LABEL_16:
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_3_24();
  v18 = sub_25BB07CA4(v12, v13, v14, v15, v16, v17);

  v6[2].n128_u64[0] = v18;
  return v6;
}

uint64_t sub_25BB9F9B0(uint64_t a1)
{
  result = sub_25BB9FA7C(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9F9F4(uint64_t a1)
{
  result = sub_25BB9FA7C(qword_28154D158, type metadata accessor for BinaryComparisonOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9FA38(uint64_t a1)
{
  result = sub_25BB9FA7C(qword_28154D288, type metadata accessor for BinaryArithmeticOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9FA7C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB9FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 castTensor:a1 toType:a2 name:v8];

  return v9;
}

uint64_t sub_25BB9FB60()
{
  result = 2;
  switch(*v0)
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001ELL, 0x800000025BCDCFD0, "NeuralNetworks/FrontendMILExtensions.swift", 42, 2, 53);
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

uint64_t sub_25BB9FC3C()
{
  result = 909209702;
  switch(*v0)
  {
    case 0:
      result = 947154537;
      break;
    case 1:
      result = 0x3631746E69;
      break;
    case 2:
      result = 0x3233746E69;
      break;
    case 3:
      result = 0x3436746E69;
      break;
    case 4:
      result = 0x38746E6975;
      break;
    case 5:
      result = 0x3631746E6975;
      break;
    case 8:
      return result;
    case 9:
      result = 909207138;
      break;
    case 0xA:
      result = 842231910;
      break;
    case 0xC:
      result = 1819242338;
      break;
    default:
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000017, 0x800000025BCDE320, "NeuralNetworks/FrontendMILExtensions.swift", 42, 2, 109);
      __break(1u);
      break;
  }

  return result;
}

void sub_25BB9FD70(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v16 = MEMORY[0x277D84F90];
  v14 = result + 56;
LABEL_2:
  v4 = v3 + 32 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v4 - 24);
    v6 = *(v4 - 16);
    swift_bridgeObjectRetain_n();
    sub_25BCB617C();
    v8 = sub_25BADBE78(v15, v7, v6);

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB1E30();
        v16 = v12;
      }

      v3 = v14;
      v9 = *(v16 + 16);
      if (v9 >= *(v16 + 24) >> 1)
      {
        sub_25BAB1E30();
        v16 = v13;
      }

      v10 = v16;
      *(v16 + 16) = v9 + 1;
      v11 = v10 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      v1 = v5;
      goto LABEL_2;
    }

    ++v1;
    v4 += 32;
  }
}

BOOL sub_25BB9FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25BCB79CC();
  OUTLINED_FUNCTION_109();
  sub_25BCB625C();
  v6 = sub_25BCB7A3C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    v12 = v11[1];
    if (*v11 == a1 && v12 == a2)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_18_2(*v11, v12);
    v6 = v8 + 1;
  }

  while ((v14 & 1) == 0);
  return v10;
}

uint64_t sub_25BB9FFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_25BCB79BC();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

void sub_25BBA003C()
{
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  sub_25BBA37F8(v1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_25BBA00B4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BCB617C();
  v12 = v4 + 48;
  OUTLINED_FUNCTION_109();
  sub_25BADBE78(v13, v14, v15);
  swift_endAccess();

  switch(v11)
  {
    case 1:
      Strong = swift_unknownObjectUnownedLoadStrong();
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v44)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v71 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_50;
        }

        v19 = OUTLINED_FUNCTION_12_20(v71, v72);
      }

      v70 = OUTLINED_FUNCTION_41_9(Strong, sel_constantScalar_dataType_name_location_, v17, 7);
      goto LABEL_41;
    case 2:
      _H8 = v9;
      v23 = swift_unknownObjectUnownedLoadStrong();
      __asm { FCVT            S8, H8 }

      v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v30) = _S8;
      v31 = [v29 initWithFloat_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v32)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v63 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_46;
        }

        v19 = OUTLINED_FUNCTION_12_20(v63, v64);
      }

      v65 = OUTLINED_FUNCTION_41_9(v23, sel_constantScalar_dataType_name_location_, v31, 2);
      goto LABEL_34;
    case 3:
      v33 = v9;
      v23 = swift_unknownObjectUnownedLoadStrong();
      v34 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v35) = v33;
      v31 = [v34 initWithFloat_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v36)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v66 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_47;
        }

        v19 = OUTLINED_FUNCTION_12_20(v66, v67);
      }

      v65 = OUTLINED_FUNCTION_41_9(v23, sel_constantScalar_dataType_name_location_, v31, 3);
LABEL_34:

      goto LABEL_43;
    case 4:
      v20 = swift_unknownObjectUnownedLoadStrong();
      v17 = sub_25BCB633C();
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v21)
      {
        v19 = 0;
LABEL_27:

        goto LABEL_42;
      }

      v56 = a4[3];
      v57 = a4[4];
      v59 = *a4;
      v58 = a4[1];
      v60 = *(a4 + 16);
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v61 = sub_25BC1E9E0(v59, v58, v60);
      if (((v57 | v56) & 0x8000000000000000) == 0)
      {
        v19 = OUTLINED_FUNCTION_12_20(v61, v62);
        goto LABEL_27;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    case 5:
      v37 = swift_unknownObjectUnownedLoadStrong();
      sub_25BAF99E8(v9);
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v38 = OUTLINED_FUNCTION_30_10();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v39 = swift_allocObject();
      *(v39 + 32) = [OUTLINED_FUNCTION_31_11(v39 xmmword_25BCBB6D0)];
      v40 = OUTLINED_FUNCTION_30_10();

      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_25_13();
      if (v45)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_23_15();
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v46 = OUTLINED_FUNCTION_20_17();
      if ((a2 | v39) < 0)
      {
        goto LABEL_51;
      }

      v39 = OUTLINED_FUNCTION_12_20(v46, v47);
      goto LABEL_23;
    case 6:
      v37 = swift_unknownObjectUnownedLoadStrong();
      sub_25BAF9F20(v9);
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v38 = OUTLINED_FUNCTION_30_10();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v39 = swift_allocObject();
      *(v39 + 32) = [OUTLINED_FUNCTION_31_11(v39 xmmword_25BCBB6D0)];
      v40 = OUTLINED_FUNCTION_30_10();

      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_25_13();
      if (v48)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_23_15();
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v49 = OUTLINED_FUNCTION_20_17();
      if ((a2 | v39) < 0)
      {
        goto LABEL_52;
      }

      v39 = OUTLINED_FUNCTION_12_20(v49, v50);
      goto LABEL_23;
    case 7:
      v37 = swift_unknownObjectUnownedLoadStrong();
      sub_25BAF99E8(v9);
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v38 = OUTLINED_FUNCTION_30_10();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v39 = swift_allocObject();
      *(v39 + 32) = [OUTLINED_FUNCTION_31_11(v39 xmmword_25BCBB6D0)];
      v40 = OUTLINED_FUNCTION_30_10();

      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_25_13();
      if (v41)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_23_15();
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v42 = OUTLINED_FUNCTION_20_17();
      if ((a2 | v39) < 0)
      {
        goto LABEL_48;
      }

      v39 = OUTLINED_FUNCTION_12_20(v42, v43);
LABEL_23:
      v51 = OUTLINED_FUNCTION_22_16();

      return;
    case 8:
      ObjectType = swift_getObjectType();
      MEMORY[0x28223BE20](ObjectType);
      v73[2] = v5;
      v73[3] = v9;
      v73[4] = v10;
      v73[5] = a2;
      v73[6] = a3;
      v73[7] = a4;
      v54 = *(v10 + 64);
      v55 = sub_25BB2BA50(0, &qword_28154BDD8, off_279970BF0);
      v54(v74, sub_25BBA46A0, v73, v55, ObjectType, v10);

      return;
    default:
      Strong = swift_unknownObjectUnownedLoadStrong();
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v68 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_49;
        }

        v19 = OUTLINED_FUNCTION_12_20(v68, v69);
      }

      v70 = OUTLINED_FUNCTION_41_9(Strong, sel_constantScalar_dataType_name_location_, v17, 0);
LABEL_41:

LABEL_42:
LABEL_43:

      return;
  }
}

id sub_25BBA0884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25BCB633C();

  v8 = [v6 initWithFilename:v7 line:a3 column:a4];

  return v8;
}

void *sub_25BBA0910@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_35(v1 + 16);
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_25BAD6FB0(v3 + 240 * v4 - 208, v7);
  }

  else
  {
    bzero(v7, 0xECuLL);
  }

  sub_25BBA45C8(v7, v6);
  if (v6[0])
  {
    sub_25BBA4638(v7);
    return memcpy(a1, v6, 0xECuLL);
  }

  else
  {
    result = sub_25BBA4638(v6);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBA09D4(uint64_t a1, void *a2, char a3, char a4)
{
  v9 = MEMORY[0x277D84FA0];
  *(v4 + 32) = 0;
  *(v4 + 40) = v9;
  *(v4 + 48) = v9;
  v10 = MEMORY[0x277D84F90];
  *(v4 + 64) = sub_25BCB614C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3998, &unk_25BCC5B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  sub_25BAD6FB0(a1, v11 + 32);
  *(v4 + 16) = v11;
  sub_25BA9AC78(a1);
  *(v4 + 56) = v10;
  swift_unknownObjectUnownedInit();

  *(v4 + 72) = a3;
  *(v4 + 73) = a4;
  return v4;
}

uint64_t sub_25BBA0ABC()
{

  swift_unknownObjectUnownedDestroy();

  return v0;
}

uint64_t sub_25BBA0B0C()
{
  sub_25BBA0ABC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA0B64(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_35(v1 + 56);
  sub_25BB73218(*(v1 + 56));
  if (v5 && (v6 = v5, v7 = OUTLINED_FUNCTION_27_14(), sub_25BB3EFD4(v7, v8, 0, v6), OUTLINED_FUNCTION_34(), , v2))
  {
    if (*(v1 + 73) == 1)
    {
      OUTLINED_FUNCTION_33_11();
      v45 = v1;
      v47 = v2;
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v9)
        {
          break;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v20)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v16)
        {
          OUTLINED_FUNCTION_39_10(v10, v11, v12, v13, v14, v15, v45, v47);
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2();
            if ((v17 & 1) == 0)
            {
              break;
            }

            v18 = OUTLINED_FUNCTION_8_25();
            v20 = v20 && v2 == v19;
            if (!v20)
            {
              OUTLINED_FUNCTION_18_2(v18, v19);
              OUTLINED_FUNCTION_35_9();
              if ((v21 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        v22 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v22);
LABEL_18:
      }

LABEL_38:

      return v49;
    }
  }

  else
  {
    sub_25BBA0910(v50);
    v23 = v51;
    v24 = v52;
    v1 = a1;
    v25 = sub_25BAC44E4();
    sub_25BB2E238(v25, v26, v23, v24);
    OUTLINED_FUNCTION_34();

    if (!v23)
    {
      v23 = v53;
      v27 = v54;
      v1 = a1;
      v28 = sub_25BAC44E4();
      sub_25BB2E238(v28, v29, v23, v27);
      OUTLINED_FUNCTION_34();

      if (!v23)
      {
        v1 = a1;
        sub_25BAC44E4();
        OUTLINED_FUNCTION_34();
      }
    }

    sub_25BA9AC78(v50);
    if (*(v3 + 73))
    {
      OUTLINED_FUNCTION_33_11();
      v46 = v1;
      v48 = v23;
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v30)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v20)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v37)
        {
          OUTLINED_FUNCTION_39_10(v31, v32, v33, v34, v35, v36, v46, v48);
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2();
            if ((v38 & 1) == 0)
            {
              break;
            }

            v39 = OUTLINED_FUNCTION_8_25();
            if (!v20 || v23 != v40)
            {
              OUTLINED_FUNCTION_18_2(v39, v40);
              OUTLINED_FUNCTION_35_9();
              if ((v42 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_37;
          }
        }

        v43 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v43);
LABEL_37:
      }
    }
  }

  return v1;
}

uint64_t sub_25BBA0DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (*(v5 + 16) && (v6 = OUTLINED_FUNCTION_35_8(), v8 = sub_25BA9266C(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_17();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 64);
    sub_25BAD3E08();
    *(v3 + 64) = v13;
    swift_endAccess();
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v12 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v12);

    return a1;
  }

  return result;
}

void sub_25BBA0EF4(uint64_t a1)
{
  if (sub_25BAB3058() && (v3 = v2, ObjectType = swift_getObjectType(), (*(v3 + 48))(v18, ObjectType, v3), swift_unknownObjectRelease(), (v22 & 1) == 0))
  {
    v6 = v20;
    v7 = v21;
    v9 = v18[0];
    v8 = v18[1];
    v10 = v19;
    sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
    v11 = sub_25BC1E9E0(v9, v8, v10);
    if ((v7 | v6) < 0)
    {
      __break(1u);
      return;
    }

    v5 = sub_25BBA0884(v11, v12, v6, v7);
  }

  else
  {
    v5 = 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_25BAF99E8(*(a1 + 152));
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v17 = sub_25BCB672C();

  v14 = sub_25BB9FB60();
  sub_25BBA0B64(a1);
  v15 = sub_25BCB633C();

  v16 = [Strong placeholderWithShape:v17 dataType:v14 name:v15 location:v5];
}

void sub_25BBA10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_35(v4 + 48);
  v6 = *(v4 + 48);
  sub_25BCB617C();
  v7 = OUTLINED_FUNCTION_9_23();
  v9 = sub_25BB9FED4(v7, v8, v6);

  if (!v9)
  {
    OUTLINED_FUNCTION_109();
    sub_25BBA00B4(v10, v11, v12, a4);
  }
}

void sub_25BBA114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BCB617C();
  sub_25BADBE78(v20, a2, a3);
  swift_endAccess();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OUTLINED_FUNCTION_9_23();
  v10 = v9(v8);
  v11 = sub_25BCB633C();
  v12 = 0;
  if (*(a4 + 57))
  {
    goto LABEL_4;
  }

  v13 = a4[3];
  v14 = a4[4];
  v16 = *a4;
  v15 = a4[1];
  v17 = *(a4 + 16);
  sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
  v18 = sub_25BC1E9E0(v16, v15, v17);
  if (((v14 | v13) & 0x8000000000000000) == 0)
  {
    v12 = sub_25BBA0884(v18, v19, v13, v14);
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_25BBA12C0(uint64_t a1@<X0>, uint64_t a4@<X4>, uint64_t *a7@<X7>, void *a8@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  ObjectType = swift_getObjectType();
  (*(a4 + 16))(&v29, ObjectType, a4);
  sub_25BAF99E8(v29);

  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v13 = sub_25BCB672C();

  (*(a4 + 8))(&v28, ObjectType, a4);
  v14 = sub_25BB9FB60();
  v15 = sub_25BCB633C();
  v16 = 0;
  if (*(a7 + 57))
  {
    goto LABEL_4;
  }

  v25 = a1;
  v27 = Strong;
  v17 = a7[3];
  v18 = a7[4];
  v20 = *a7;
  v19 = a7[1];
  v21 = *(a7 + 16);
  sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
  v22 = sub_25BC1E9E0(v20, v19, v21);
  if (((v18 | v17) & 0x8000000000000000) == 0)
  {
    v16 = sub_25BBA0884(v22, v23, v17, v18);
    Strong = v27;
    a1 = v25;
LABEL_4:
    v24 = [Strong constantTensorWithBytes:a1 shape:v13 dataType:v14 name:v15 location:v16];

    *a8 = v24;
    return;
  }

  __break(1u);
}

uint64_t sub_25BBA1494(_BYTE *a1, uint64_t a2, uint64_t a3, float _S0)
{
  switch(*a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_59;
      }

      if (v23 <= -32769.0)
      {
        goto LABEL_67;
      }

      if (v23 >= 32768.0)
      {
        goto LABEL_75;
      }

      v24 = v23;
      v25 = MEMORY[0x277D84958];
      v26 = &protocol witness table for Int16;
      goto LABEL_45;
    case 2:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_55;
      }

      if (v17 <= -2147500000.0)
      {
        goto LABEL_63;
      }

      if (v17 >= 2147500000.0)
      {
        goto LABEL_71;
      }

      LOBYTE(v40) = 1;
      OUTLINED_FUNCTION_2_37(1, v35, v36, v37, v17, 0, v40, v41, v42, *v43, *&v43[16], v43[24], v43[25]);
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 1;
      return sub_25BB06134(v13, v14, v15);
    case 3:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_56;
      }

      if (v18 <= -9.2234e18)
      {
        goto LABEL_64;
      }

      if (v18 >= 9.2234e18)
      {
        goto LABEL_72;
      }

      v19 = v18;
      v20 = MEMORY[0x277D84A28];
      v21 = &protocol witness table for Int64;
      goto LABEL_32;
    case 4:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
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
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
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
        __break(1u);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
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
LABEL_77:
        __break(1u);
LABEL_78:
        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD000000000000027, 0x800000025BCDE640);
        LOBYTE(v38) = 9;
        sub_25BCB73CC();
        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        v46 = 9;
        sub_25BA97890("addConstant(_:castingTo:name:creationSite:)", 43, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MIL/MILProgramBuilder.swift", 112, 2, 373, v34, v35, v36, v37, v38, v39, v40, 0, 0xE000000000000000, v42, *(&v42 + 1), *v43, *&v43[8], *&v43[16], *&v43[24], v44, v45);
      }

      v10 = v16;
      v11 = MEMORY[0x277D84B78];
      v12 = &protocol witness table for UInt8;
LABEL_15:
      *(&v42 + 1) = v11;
      *v43 = v12;
      LOBYTE(v41) = v10;
LABEL_52:
      sub_25BB9483C(&v41, &v38);
      v29 = v38;
      v30 = v39;
      v31 = v40;
      v35 = v38;
      v36 = v39;
      LOBYTE(v37) = v40;
      HIBYTE(v40) = 1;
      v41 = 0u;
      v42 = 0u;
      memset(v43, 0, 25);
      v43[25] = 1;
      sub_25BBA10A8(&v35, a2, a3, &v41);
      v13 = v29;
      v14 = v30;
      v15 = v31;
      return sub_25BB06134(v13, v14, v15);
    case 5:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
        goto LABEL_76;
      }

      v24 = v27;
      v25 = MEMORY[0x277D84C58];
      v26 = &protocol witness table for UInt16;
LABEL_45:
      *(&v42 + 1) = v25;
      *v43 = v26;
      LOWORD(v41) = v24;
      goto LABEL_52;
    case 6:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
        goto LABEL_77;
      }

      *(&v42 + 1) = MEMORY[0x277D84CC0];
      *v43 = &protocol witness table for UInt32;
      LODWORD(v41) = v28;
      goto LABEL_52;
    case 7:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
        goto LABEL_73;
      }

      v19 = v22;
      v20 = MEMORY[0x277D84D38];
      v21 = &protocol witness table for UInt64;
LABEL_32:
      *(&v42 + 1) = v20;
      *v43 = v21;
      *&v41 = v19;
      goto LABEL_52;
    case 8:
      __asm { FCVT            H0, S0; jumptable 000000025BBA14D8 case 8 }

      LOBYTE(v40) = 2;
      OUTLINED_FUNCTION_2_37(1, v35, v36, v37, LODWORD(_S0), 0, v40, v41, v42, *v43, *&v43[16], v43[24], v43[25]);
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 2;
      return sub_25BB06134(v13, v14, v15);
    case 9:
      goto LABEL_78;
    case 0xA:
      LOBYTE(v40) = 3;
      OUTLINED_FUNCTION_2_37(1, v35, v36, v37, LODWORD(_S0), 0, v40, v41, v42, *v43, *&v43[16], v43[24], v43[25]);
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 3;
      return sub_25BB06134(v13, v14, v15);
    case 0xB:
      *(&v42 + 1) = MEMORY[0x277D839F8];
      *v43 = &protocol witness table for Double;
      *&v41 = _S0;
      goto LABEL_52;
    case 0xC:
      LOBYTE(v40) = 0;
      OUTLINED_FUNCTION_2_37(1, v35, v36, v37, _S0 > 0.0, 0, v40, v41, v42, *v43, *&v43[16], v43[24], v43[25]);
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 0;
      return sub_25BB06134(v13, v14, v15);
    default:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_29_12();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_66;
      }

      if (v9 >= 128.0)
      {
        goto LABEL_74;
      }

      v10 = v9;
      v11 = MEMORY[0x277D84900];
      v12 = &protocol witness table for Int8;
      goto LABEL_15;
  }
}

uint64_t sub_25BBA18D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = a3 + 48;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v10 - 16);
      v13 = *(v10 - 8);
      sub_25BCB617C();

      v15 = sub_25BBA0B64(v14);
      v17 = v16;
      sub_25BCB617C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFE1C4();
        v11 = v20;
      }

      v18 = *(v11 + 16);
      if (v18 >= *(v11 + 24) >> 1)
      {
        sub_25BAFE1C4();
        v11 = v21;
      }

      *(v11 + 16) = v18 + 1;
      v19 = (v11 + 32 * v18);
      v19[4] = v12;
      v19[5] = v13;
      v19[6] = v15;
      v19[7] = v17;
      v10 += 24;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v29 = sub_25BCB614C();
  sub_25BAFCBDC(v29);
  sub_25BBA1A84(a1, a2, v11, v29, a5, v22, a7, v23, a9);
}

void sub_25BBA1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  sub_25BB2BA50(0, &qword_28154BE08, off_279970C18);
  v10 = MEMORY[0x277D84F90];
  v121 = sub_25BCB614C();
  v124 = MEMORY[0x277D84FA0];
  v111 = a3;
  sub_25BB9FD70(a3);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
  *(swift_initStackObject() + 16) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D28, &qword_25BCC5B80);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = 0;
  sub_25BCB617C();

  while (1)
  {
    v14 = sub_25BBA4560();
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v123 = v10;
    v115 = v14;
    sub_25BBA242C(v14, v15, v111, a4);
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v118 = v16;
      sub_25BB2BA50(0, &qword_28154BDD8, off_279970BF0);
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        OUTLINED_FUNCTION_21_17();
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        sub_25BADBE78(&v122, v21, v22);
        swift_endAccess();

        sub_25BBA3BD8(v21, v22, &selRef_initWithName_);
        MEMORY[0x25F876F40]();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v20 += 2;
        --v19;
      }

      while (v19);
      v23 = v123;
      v10 = MEMORY[0x277D84F90];
      v16 = v118;
    }

    else
    {
      v23 = v10;
    }

    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_12;
      }

      if (v24 != 1)
      {
        sub_25BCB617C();
        sub_25BCB78CC();
        v26 = v23;
LABEL_18:
        sub_25BB2BA50(0, &qword_28154BDE0, off_279970BE0);
        v27 = sub_25BBA2574(v26);
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (sub_25BCB749C())
    {
      if (sub_25BCB749C() != 1)
      {
        sub_25BCB617C();
        v26 = sub_25BCB74EC();

        goto LABEL_18;
      }

LABEL_14:
      if ((v23 & 0xC000000000000001) == 0)
      {
        v25 = v121;
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v119 = *(v23 + 32);
        goto LABEL_20;
      }

      v27 = MEMORY[0x25F8779B0](0, v23);
LABEL_19:
      v119 = v27;
      v25 = v121;
LABEL_20:
      swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_25BA9266C(v115, v16);
      if (__OFADD__(v25[2], (v29 & 1) == 0))
      {
        goto LABEL_69;
      }

      v30 = v28;
      v31 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D30, &qword_25BCC5B88);
      if (sub_25BCB745C())
      {
        v32 = v115;
        v33 = sub_25BA9266C(v115, v16);
        if ((v31 & 1) != (v34 & 1))
        {
          goto LABEL_74;
        }

        v30 = v33;
      }

      else
      {
        v32 = v115;
      }

      v121 = v25;
      if (v31)
      {
        v35 = v25[7];
        v36 = *(v35 + 8 * v30);
        *(v35 + 8 * v30) = v119;
      }

      else
      {
        v25[(v30 >> 6) + 8] |= 1 << v30;
        v37 = (v25[6] + 16 * v30);
        *v37 = v32;
        v37[1] = v16;
        *(v25[7] + 8 * v30) = v119;
        v38 = v25[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_71;
        }

        v25[2] = v40;
      }
    }

    else
    {
LABEL_12:
    }
  }

  v41 = *(a5 + 16);
  if (!v41)
  {
LABEL_44:
    v84 = *(a7 + 16);
    v85 = MEMORY[0x277D84F90];
    if (v84)
    {
      sub_25BCB727C();
      v86 = 0;
      v117 = v84;
      do
      {
        v87 = a7 + 32 + 32 * v86;
        v88 = *v87;
        v89 = *(v87 + 8);
        v90 = *(v87 + 16);
        v91 = *(v87 + 24);
        v92 = *(v90 + 16);
        sub_25BCB617C();
        sub_25BCB617C();
        if (v92)
        {
          v122 = v85;
          sub_25BCB727C();
          v93 = v90 + 32;
          do
          {
            v93 += 8;
            sub_25BCB6A6C();
            sub_25BCB723C();
            sub_25BCB728C();
            sub_25BCB729C();
            sub_25BCB725C();
            --v92;
          }

          while (v92);
          v94 = v122;
          v85 = MEMORY[0x277D84F90];
        }

        else
        {
          v94 = v85;
        }

        ++v86;
        v95 = 2;
        switch(v91)
        {
          case 1:
            v95 = 6;
            break;
          case 2:
          case 3:
            v95 = 7;
            break;
          case 4:
            v95 = 9;
            break;
          case 5:
            v95 = 10;
            break;
          case 6:
            v95 = 11;
            break;
          case 7:
            v95 = 12;
            break;
          case 8:
            break;
          case 9:
            goto LABEL_73;
          case 10:
            v95 = 3;
            break;
          case 11:
            v95 = 4;
            break;
          case 12:
            v95 = 0;
            break;
          default:
            v95 = 5;
            break;
        }

        sub_25BCB617C();
        v96 = objc_allocWithZone(SNNMILValueDescriptor);
        sub_25BBA44B0(v94, v95, v88, v89);

        sub_25BCB723C();
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
      }

      while (v86 != v117);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v98 = sub_25BCB633C();
    v99 = sub_25BCB60FC();

    sub_25BB2BA50(0, &qword_28154BD98, &off_279970C20);
    v100 = sub_25BCB672C();

    v101 = 0;
    if ((*(a9 + 57) & 1) == 0)
    {
      v102 = a9[3];
      v103 = a9[4];
      v105 = *a9;
      v104 = a9[1];
      v106 = *(a9 + 16);
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v107 = sub_25BC1E9E0(v105, v104, v106);
      if ((v103 | v102) < 0)
      {
        goto LABEL_72;
      }

      v101 = sub_25BBA0884(v107, v108, v102, v103);
    }

    return;
  }

  v42 = a5 + 64;
  while (1)
  {
    v113 = v42;
    v114 = v41;
    v43 = *(v42 - 32);
    v44 = *(v42 - 24);
    sub_25BCB617C();
    v45 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v45, v46, v47);
    sub_25BCB617C();
    v48 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v48, v49, v50);

    v51 = OUTLINED_FUNCTION_3_25();
    sub_25BB06134(v51, v52, v53);
    sub_25BCB617C();
    v54 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_3_25();
    sub_25BB06134(v57, v58, v59);
    sub_25BCB617C();
    v60 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v60, v61, v62);

    v116 = sub_25BB3E4C0();
    v63 = OUTLINED_FUNCTION_3_25();
    sub_25BB06134(v63, v64, v65);
    swift_isUniquelyReferenced_nonNull_native();
    v122 = v121;
    v120 = v43;
    v66 = sub_25BA9266C(v43, v44);
    if (__OFADD__(*(v121 + 16), (v67 & 1) == 0))
    {
      break;
    }

    v68 = v66;
    v69 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D30, &qword_25BCC5B88);
    if (sub_25BCB745C())
    {
      v70 = sub_25BA9266C(v43, v44);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_74;
      }

      v68 = v70;
    }

    if (v69)
    {

      v121 = v122;
      v72 = v122[7];
      v73 = *(v72 + 8 * v68);
      *(v72 + 8 * v68) = v116;

      v74 = OUTLINED_FUNCTION_3_25();
      sub_25BB06134(v74, v75, v76);
    }

    else
    {
      v77 = v122;
      v122[(v68 >> 6) + 8] |= 1 << v68;
      v78 = (v77[6] + 16 * v68);
      *v78 = v120;
      v78[1] = v44;
      *(v77[7] + 8 * v68) = v116;

      v79 = OUTLINED_FUNCTION_3_25();
      sub_25BB06134(v79, v80, v81);
      v82 = v77[2];
      v39 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v39)
      {
        goto LABEL_68;
      }

      v121 = v77;
      v77[2] = v83;
    }

    v42 = v113 + 40;
    v41 = v114 - 1;
    if (v114 == 1)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_68:
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
  sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001ELL, 0x800000025BCDCFD0, "NeuralNetworks/FrontendMILExtensions.swift", 42, 2, 53);
  __break(1u);
LABEL_74:
  sub_25BCB795C();
  __break(1u);
}

void sub_25BBA242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = sub_25BA9266C(a1, a2);
    if (v7)
    {
      v8 = *(*(a4 + 56) + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {
        v20 = MEMORY[0x277D84F90];
        sub_25BCB617C();
        sub_25BB004E4();
        v10 = 0;
        v19 = a3 + 32;
        v11 = *(a3 + 16);
        while (v10 < *(v8 + 16))
        {
          v12 = *(v8 + 8 * v10 + 32);
          if (v12 >= v11)
          {
            goto LABEL_13;
          }

          v13 = v19 + 32 * v12;
          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          v17 = *(v20 + 16);
          v16 = *(v20 + 24);
          sub_25BCB617C();
          if (v17 >= v16 >> 1)
          {
            sub_25BB004E4();
          }

          ++v10;
          *(v20 + 16) = v17 + 1;
          v18 = v20 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
          if (v9 == v10)
          {

            return;
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
      }
    }
  }
}

id sub_25BBA2574(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_25BB2BA50(0, &qword_28154BE08, off_279970C18);
  v2 = sub_25BCB672C();

  v3 = [v1 initWithValues_];

  return v3;
}

uint64_t sub_25BBA25FC(uint64_t a1, uint64_t a2)
{
  sub_25BAAF54C(*(a1 + 88));
  sub_25BAAF54C(*(a1 + 152));
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BAFD0D0();
  v6 = *(*(v2 + 16) + 16);
  sub_25BAFD178(v6);
  v7 = *(v2 + 16);
  *(v7 + 16) = v6 + 1;
  sub_25BAD6FB0(a1, v7 + 240 * v6 + 32);
  *(v2 + 16) = v7;
  swift_endAccess();
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BCB617C();
  sub_25BAFD0B8();
  v8 = *(*(v2 + 56) + 16);
  sub_25BAFD210(v8);
  v9 = *(v2 + 56);
  *(v9 + 16) = v8 + 1;
  *(v9 + 8 * v8 + 32) = a2;
  *(v2 + 56) = v9;
  swift_endAccess();
  v27 = v2;
  sub_25BBA0910(v28);
  v10 = v29;
  sub_25BCB617C();
  result = sub_25BA9AC78(v28);
  v12 = 0;
  v26 = *(v10 + 16);
  v30 = v10;
  for (i = (v10 + 40); ; i += 2)
  {
    if (v26 == v12)
    {

      return sub_25BBA288C(v27);
    }

    if (v12 >= *(v30 + 16))
    {
      break;
    }

    v14 = *(i - 1);
    v15 = *i;
    ObjectType = swift_getObjectType();
    if (!dynamic_cast_existential_1_conditional(v14, ObjectType, &protocol descriptor for MILOperationEncodable))
    {
      swift_unknownObjectRetain();

      v21 = swift_getObjectType();
      v22 = (*(v15 + 24))(v21, v15);
      v24 = v23;
      sub_25BBA41B4();
      swift_allocError();
      *v25 = v22;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      swift_willThrow();
      goto LABEL_10;
    }

    v18 = v17;
    v19 = swift_getObjectType();
    v20 = *(v18 + 16);
    swift_unknownObjectRetain_n();
    v20(v2, v19, v18);
    if (v3)
    {

      swift_unknownObjectRelease();
LABEL_10:
      swift_unknownObjectRelease();
      return sub_25BBA288C(v27);
    }

    result = swift_unknownObjectRelease_n();
    ++v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBA288C(uint64_t a1)
{
  swift_beginAccess();
  sub_25BB3BEFC();
  swift_endAccess();

  swift_beginAccess();
  sub_25BB3BF8C(v2);
  swift_endAccess();
  return sub_25BA9AC78(v2);
}

uint64_t sub_25BBA291C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v14 = *a8;
  HIDWORD(v40) = *(a8 + 8);
  v15 = sub_25BBCBB14(a1);
  v44 = v16;
  v46 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v18 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
  v18[3].n128_u64[0] = a2;
  v18[3].n128_u64[1] = a3;
  v18[4].n128_u64[0] = 121;
  v18[4].n128_u64[1] = v19;
  v18[5].n128_u64[0] = a4;
  v18[5].n128_u64[1] = a5;
  sub_25BCB617C();
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v20 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_35_8();
  v21 = sub_25BCB614C();
  sub_25BAFA1D4(inited, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, a6, v44, v46, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v21, v60, v61, v62);
  v30 = v29;
  swift_setDeallocating();
  v31 = sub_25BC0C500();
  sub_25BAFCBDC(v31);
  OUTLINED_FUNCTION_35_8();
  sub_25BCB614C();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_25BCBAE50;
  *(v32 + 32) = v43;
  *(v32 + 40) = a7;
  *(v32 + 48) = v14;
  *(v32 + 56) = v41;
  sub_25BCB617C();
  sub_25BCB617C();
  OUTLINED_FUNCTION_35_8();
  sub_25BCB614C();
  v33 = sub_25BAF9B54(v32);
  swift_setDeallocating();
  sub_25BC0C4EC();
  sub_25BAFC990();
  sub_25BBA1A84(v47, v45, v30, v59, v20, v34, v33, v35, v48);
}

uint64_t sub_25BBA2B64(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v10 = *a6;
  HIDWORD(v36) = *(a6 + 8);
  v11 = sub_25BBCBBB4(a1);
  v40 = v12;
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v14 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE50);
  v14[3].n128_u64[0] = a2;
  v14[3].n128_u64[1] = a3;
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v15 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_9_23();
  v16 = sub_25BCB614C();
  sub_25BAFA1D4(inited, v17, v18, v19, v20, v21, v22, v23, v32, v33, 1, 2, v35, v36, a4, v40, v42, a7, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v16, v57);
  v25 = v24;
  swift_setDeallocating();
  v26 = sub_25BC0C500();
  sub_25BAFCBDC(v26);
  OUTLINED_FUNCTION_9_23();
  sub_25BCB614C();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v27 = swift_initStackObject();
  *(v27 + 16) = v34;
  *(v27 + 32) = v39;
  *(v27 + 40) = a5;
  *(v27 + 48) = v10;
  *(v27 + 56) = v37;
  sub_25BCB617C();
  sub_25BCB617C();
  OUTLINED_FUNCTION_9_23();
  sub_25BCB614C();
  v28 = sub_25BAF9B54(v27);
  swift_setDeallocating();
  sub_25BC0C4EC();
  sub_25BAFC990();
  sub_25BBA1A84(v43, v41, v25, v56, v15, v29, v28, v30, v45);
}

uint64_t sub_25BBA2D88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE50)[3].n128_u64[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_24_10();
  v56 = sub_25BCB614C();
  v10 = sub_25BAD8178(inited);
  swift_setDeallocating();
  v11 = sub_25BC0C4C4();
  sub_25BAD8324(v11);
  v12 = v10;
  v33 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_25BCBAE50;
  *(v13 + 32) = 0x6570797464;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = sub_25BB9FC3C();
  *(v13 + 56) = v14;
  *(v13 + 64) = 4;
  OUTLINED_FUNCTION_24_10();
  v57 = sub_25BCB614C();
  sub_25BAFA0CC(v13, v15, v16, v17, v18, v19, v20, v21, v22, v31, v32, v33, a2, a5, v38, 1, 2, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v24 = v23;
  swift_setDeallocating();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  v25 = v24;
  v26 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v27 = swift_initStackObject();
  *(v27 + 16) = v39;
  *(v27 + 32) = v35;
  *(v27 + 40) = a3;
  *(v27 + 48) = v7;
  *(v27 + 56) = v8;
  sub_25BCB617C();
  sub_25BCB617C();
  OUTLINED_FUNCTION_24_10();
  v58 = sub_25BCB614C();
  v28 = sub_25BAF9B54(v27);
  swift_setDeallocating();
  sub_25BC0C4EC();
  sub_25BAFC990();
  sub_25BBA18D8(1953718627, 0xE400000000000000, v12, v29, v25, v26, v28, v58, v37);
}

uint64_t sub_25BBA2FF8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  *v15 = a3;
  *&v15[8] = a4;
  sub_25BCB617C();
  MEMORY[0x25F876C90](0x7669746167656E5FLL, 0xED0000656E6F5F65);
  v11 = *v15;
  LOBYTE(v13) = v10;
  v17 = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 1;
  sub_25BBA1494(&v13, v11, *(&v11 + 1), -1.0);
  v13 = v9;
  v14 = v10;
  sub_25BBA291C(2, a1, a2, v11, *(&v11 + 1), a3, a4, &v13, v15);
}

void sub_25BBA3110(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  *(v3 + 32) = sub_25BBA0B64(a1);
  *(v3 + 40) = v4;
  v5 = sub_25BCB672C();

  [Strong retainOutputsWithNames_];
}

uint64_t sub_25BBA31D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    v7 = sub_25BAC4018();
    return MEMORY[0x25F878200](v7);
  }

  if (a3 >> 62 != 1)
  {
    v9 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(ObjectType, v9);
    sub_25BCB625C();

    v7 = a4;
    return MEMORY[0x25F878200](v7);
  }

  v4 = a3 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = swift_getObjectType();
  (*(v4 + 16))(v5, v4);
  sub_25BCB625C();
}

BOOL sub_25BBA32B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!(a2 >> 62))
  {
    if (a5 >> 62)
    {
      return 0;
    }

    v20 = sub_25BAC4018();
    return v20 == sub_25BAC4018();
  }

  if (a2 >> 62 != 1)
  {
    if (a5 >> 62 != 2)
    {
      return 0;
    }

    v24 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    v27 = (*(v24 + 16))(ObjectType, v24);
    v29 = v28;
    v31 = v30;
    v32 = swift_getObjectType();
    if (v27 != (*(v25 + 16))(v32, v25))
    {
      goto LABEL_20;
    }

    if (v29 == v33 && v31 == v34)
    {
    }

    else
    {
      v36 = sub_25BCB789C();

      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

    return a3 == a6;
  }

  if (a5 >> 62 != 1)
  {
    return 0;
  }

  v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v7 = a5 & 0x3FFFFFFFFFFFFFFFLL;
  v8 = swift_getObjectType();
  v9 = (*(v6 + 16))(v8, v6);
  v11 = v10;
  v13 = v12;
  v14 = swift_getObjectType();
  if (v9 != (*(v7 + 16))(v14, v7))
  {
LABEL_20:

    return 0;
  }

  if (v11 == v15 && v13 == v16)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_35_8();
    v18 = sub_25BCB789C();

    return v18 & 1;
  }
}

uint64_t sub_25BBA34D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_25BCB79CC();
  sub_25BBA31D0(v7, a1, a2, a3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BBA3550(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_25BCB79CC();
  sub_25BBA31D0(v6, v2, v3, v4);
  return sub_25BCB7A3C();
}

uint64_t sub_25BBA35C4(uint64_t a1, uint64_t a2, char a3, _OWORD *a4)
{
  v5 = v4;
  v8 = a2;
  sub_25BAD6FB0(a1, v5 + 16);
  *(v5 + 314) = v8;
  *(v5 + 315) = a3;
  v10 = a4[1];
  *(v5 + 256) = *a4;
  *(v5 + 272) = v10;
  *(v5 + 288) = a4[2];
  *(v5 + 298) = *(a4 + 42);
  sub_25BBA3650(v8);
  LOBYTE(a4) = v11;
  sub_25BA9AC78(a1);
  *(v5 + 316) = a4;
  return v5;
}

void sub_25BBA3650(char a1)
{
  v3 = 0;
  v4 = *(v1 + 120);
  v5 = *(v4 + 16);
  v6 = v4 + 32;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (v6 + 16 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    ++v3;
    v9 = v8 + 2;
    v10 = *v8;
    ObjectType = swift_getObjectType();
    v12 = dynamic_cast_existential_1_conditional(v10, ObjectType, &protocol descriptor for MILOpsetSensitive);
    v8 = v9;
    if (v12)
    {
      v14 = v12;
      v15 = v13;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD334();
        v7 = v18;
      }

      v16 = v7[2];
      if (v16 >= v7[3] >> 1)
      {
        sub_25BAFD334();
        v7 = v19;
      }

      v7[2] = v16 + 1;
      v17 = &v7[2 * v16];
      v17[4] = v14;
      v17[5] = v15;
      v6 = v4 + 32;
      goto LABEL_2;
    }
  }

  v20 = v7[2];
  if (v20)
  {
    v21 = 0;
    v22 = v7 + 5;
    do
    {
      v23 = *v22;
      v24 = swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = sub_25BBF7534(a1 & 1, v24, v23);
      swift_unknownObjectRelease();
      if (v21 <= v25)
      {
        v21 = v25;
      }

      v22 += 2;
      --v20;
    }

    while (v20);
  }
}

void sub_25BBA37F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  sub_25BB2BA50(0, &qword_28154BE00, off_279970BC0);
  v6 = sub_25BBF749C(*(a1 + 316));
  v8 = sub_25BBA3BD8(v6, v7, &selRef_initWithOpsetName_);
  v9 = 0;
  if ((*(a1 + 313) & 1) == 0)
  {
    v10 = *(a1 + 280);
    v11 = *(a1 + 288);
    v13 = *(a1 + 256);
    v12 = *(a1 + 264);
    v14 = *(a1 + 272);
    sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
    v15 = sub_25BC1E9E0(v13, v12, v14);
    if ((v11 | v10) < 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = sub_25BBA0884(v15, v16, v10, v11);
  }

  sub_25BB2BA50(0, &qword_28154BDA8, off_279970C08);
  v50 = v8;
  v17 = sub_25BBA3C48(v50, v9);
  v18 = sub_25BCB633C();
  v19 = 0;
  v51 = v17;
  if (*(a1 + 313))
  {
LABEL_7:
    v27 = [v17 functionWithName:v18 location:v19];

    sub_25BAD6FB0(a1 + 16, v54);
    v28 = *(a1 + 314);
    v29 = *(a1 + 315);
    type metadata accessor for MILFunctionBuilder();
    swift_allocObject();
    v49 = v27;
    v55 = sub_25BBA09D4(v54, v49, v28, v29);
    v30 = 0;
    v31 = *(a1 + 136);
    v52 = v31;
    v53 = *(v31 + 16);
    for (i = (v31 + 40); ; i += 2)
    {
      if (v53 == v30)
      {
        sub_25BBA3CA4(v55);
        sub_25BBA3FA8();
        v40 = [v51 build];

        *a3 = v40;
        return;
      }

      if (v30 >= *(v52 + 16))
      {
        break;
      }

      v33 = *(i - 1);
      v34 = *i;
      ObjectType = swift_getObjectType();
      if (!dynamic_cast_existential_1_conditional(v33, ObjectType, &protocol descriptor for MILOperationEncodable))
      {
        v41 = swift_getObjectType();
        v42 = *(v34 + 24);
        swift_unknownObjectRetain();
        v43 = v42(v41, v34);
        v45 = v44;
        sub_25BBA41B4();
        v4 = swift_allocError();
        *v46 = v43;
        *(v46 + 8) = v45;
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        *(v46 + 32) = 0;
        swift_willThrow();
LABEL_15:
        swift_unknownObjectRelease();

        *a2 = v4;
        return;
      }

      v37 = v36;
      v38 = swift_getObjectType();
      v39 = *(v37 + 16);
      swift_unknownObjectRetain_n();
      v39(v55, v38, v37);
      swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      ++v30;
    }

    __break(1u);
    goto LABEL_17;
  }

  v20 = *(a1 + 280);
  v21 = *(a1 + 288);
  v23 = *(a1 + 256);
  v22 = *(a1 + 264);
  v24 = *(a1 + 272);
  sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
  v25 = sub_25BC1E9E0(v23, v22, v24);
  if (((v21 | v20) & 0x8000000000000000) == 0)
  {
    v19 = sub_25BBA0884(v25, v26, v20, v21);
    v17 = v51;
    goto LABEL_7;
  }

LABEL_18:
  __break(1u);
}

id sub_25BBA3BD8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_9_23();
  v5 = sub_25BCB633C();

  v6 = [v4 *a3];

  return v6;
}

id sub_25BBA3C48(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1 location:a2];

  return v4;
}

uint64_t sub_25BBA3CA4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 104);
  if (v3 >> 62)
  {
    goto LABEL_40;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      if (v4 < 1)
      {
        __break(1u);
        return result;
      }

      v5 = v41[15];
      v6 = v41[16];
      v43 = v3 & 0xC000000000000001;
      swift_beginAccess();
      v7 = 0;
      v38 = v5;
      v39 = v3 + 32;
      v37 = v5 + 32;
      v42 = v6;
      v40 = v4;
      while (1)
      {
        if (v43)
        {
          v8 = MEMORY[0x25F8779B0](v7, v3);
        }

        else
        {
          v8 = *(v39 + 8 * v7);
        }

        v9 = sub_25BAC44E4();
        if (!*(v6 + 16))
        {

          goto LABEL_14;
        }

        v11 = sub_25BA9266C(v9, v10);
        v13 = v12;

        if (v13)
        {
          break;
        }

LABEL_14:
        v19 = v41[19];
        v18 = v41[20];
        v20 = sub_25BAC44E4();
        if (!*(v18 + 16))
        {

LABEL_21:
          v17 = sub_25BAC44E4();
          v16 = v27;
          goto LABEL_22;
        }

        v22 = sub_25BA9266C(v20, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }

        v25 = *(*(v18 + 56) + 8 * v22);
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v25 >= *(v19 + 16))
        {
          goto LABEL_39;
        }

        v26 = v19 + 16 * v25;
        v17 = *(v26 + 32);
        v16 = *(v26 + 40);
LABEL_19:
        sub_25BCB617C();
LABEL_22:
        v28 = *(v2 + 40);
        if (*(v28 + 16))
        {
          v29 = v3;
          v30 = v2;
          sub_25BCB79CC();
          sub_25BCB617C();
          sub_25BCB625C();
          v31 = sub_25BCB7A3C();
          v32 = ~(-1 << *(v28 + 32));
          while (1)
          {
            v33 = v31 & v32;
            if (((*(v28 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
            {
              break;
            }

            v34 = (*(v28 + 48) + 16 * v33);
            if (*v34 != v17 || v34[1] != v16)
            {
              v36 = sub_25BCB789C();
              v31 = v33 + 1;
              if ((v36 & 1) == 0)
              {
                continue;
              }
            }

            v2 = v30;
            sub_25BBA0EF4(v8);

            goto LABEL_33;
          }

          v2 = v30;
LABEL_33:
          v3 = v29;
          v4 = v40;
        }

        else
        {
        }

        ++v7;
        v6 = v42;
        if (v7 == v4)
        {
          return result;
        }
      }

      v14 = *(*(v6 + 56) + 8 * v11);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 >= *(v38 + 16))
        {
          goto LABEL_37;
        }

        v15 = (v37 + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        goto LABEL_19;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_25BCB749C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_25BBA3FA8()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    v2 = sub_25BCB749C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25F8779B0](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      sub_25BBA3110(v4);
    }
  }
}

uint64_t sub_25BBA4068()
{
  sub_25BA9AC78(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA40D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_25BBA4124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

unint64_t sub_25BBA41B4()
{
  result = qword_27FBB5D20;
  if (!qword_27FBB5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D20);
  }

  return result;
}

unint64_t sub_25BBA4208()
{
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v9 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v9);
      OUTLINED_FUNCTION_38_9();
      v10 = OUTLINED_FUNCTION_15_18();
      MEMORY[0x25F876C90](v10);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();

      v12 = 0xD000000000000019;
      v4 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v4);
      OUTLINED_FUNCTION_38_9();
      v5 = OUTLINED_FUNCTION_15_18();
      MEMORY[0x25F876C90](v5);
      v6 = 46;
      v7 = 0xE100000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v8 = OUTLINED_FUNCTION_15_18();
      MEMORY[0x25F876C90](v8);
      MEMORY[0x25F876C90](0x7269757165722060, 0xEF60207962206465);
      v3 = OUTLINED_FUNCTION_10_21();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      MEMORY[0x25F876C90](0x7265706F20656854, 0xEF60206E6F697461);
      v2 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v2);
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v3 = OUTLINED_FUNCTION_15_18();
LABEL_6:
      MEMORY[0x25F876C90](v3);
      v6 = 11872;
      v7 = 0xE200000000000000;
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v1 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v1);
LABEL_8:
      OUTLINED_FUNCTION_26_15();
      break;
  }

  MEMORY[0x25F876C90](v6, v7);
  return v12;
}

unint64_t sub_25BBA445C()
{
  result = qword_28154EA70;
  if (!qword_28154EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154EA70);
  }

  return result;
}

id sub_25BBA44B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB672C();

  v7 = sub_25BCB633C();

  v8 = [v4 initWithShape:v6 dataType:a2 name:v7];

  return v8;
}

uint64_t sub_25BBA4560()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  if (v2 < v3)
  {
    v4 = *(v1 + 16 * v2 + 32);
    *(v0 + 24) = v2 + 1;
    sub_25BCB617C();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBA45C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4828, &qword_25BCBF518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BBA4638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4828, &qword_25BCBF518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BBA46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_35(a3 + 56);
  sub_25BB73218(*(a3 + 56));
  if (v10 && (v11 = sub_25BB3EFD4(a1, a5 | 0x8000000000000000, a2, v10), v13 = v12, , v13))
  {
    if (*(a3 + 73) == 1)
    {
      OUTLINED_FUNCTION_33_11();
      v49 = v11;
      v51 = v13;
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v25)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v21)
        {
          OUTLINED_FUNCTION_39_10(v15, v16, v17, v18, v19, v20, v49, v51);
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2();
            if ((v22 & 1) == 0)
            {
              break;
            }

            v23 = OUTLINED_FUNCTION_8_25();
            v25 = v25 && v11 == v24;
            if (!v25)
            {
              OUTLINED_FUNCTION_18_2(v23, v24);
              OUTLINED_FUNCTION_35_9();
              if ((v26 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        v27 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v27);
LABEL_18:
      }

LABEL_37:

      return v53;
    }
  }

  else
  {
    sub_25BBA0910(v54);
    v11 = (*(a5 + 72))(a2, a4, a5);
    v29 = v28;
    v30 = sub_25BB2E238(v11, v28, v55, v56);
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v11 = v32;
      v29 = v33;
    }

    sub_25BA9AC78(v54);
    if (*(a3 + 73) == 1)
    {
      OUTLINED_FUNCTION_33_11();
      v50 = v11;
      v52 = v29;
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v34)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v25)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v41)
        {
          OUTLINED_FUNCTION_39_10(v35, v36, v37, v38, v39, v40, v50, v52);
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2();
            if ((v42 & 1) == 0)
            {
              break;
            }

            v43 = OUTLINED_FUNCTION_8_25();
            if (!v25 || v11 != v44)
            {
              OUTLINED_FUNCTION_18_2(v43, v44);
              OUTLINED_FUNCTION_35_9();
              if ((v46 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_36;
          }
        }

        v47 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v47);
LABEL_36:
      }
    }
  }

  return v11;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BBA4950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
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

uint64_t sub_25BBA4990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BBA49FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_25BCB641C();
  v7 = __OFADD__(v6, a1);
  result = v6 + a1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x25F876C10](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D48, &unk_25BCC6180);
    sub_25BBA5860();
    sub_25BCB644C();
    sub_25BCB644C();
    return 0;
  }

  return result;
}

uint64_t sub_25BBA4AC8()
{
  result = OUTLINED_FUNCTION_14_13();
  if (v2 <= 1)
  {
LABEL_4:
    OUTLINED_FUNCTION_7_24(result);
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v5, v6, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  v3 = *(result + 40);
  v4 = *(v0 + 112);
  result = v3 * v4;
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_25BBA4B70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = OUTLINED_FUNCTION_31(v1);
  *(v2 + 16) = xmmword_25BCBAE40;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;

  return v2;
}

uint64_t sub_25BBA4BCC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t *a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  v16 = *a8;
  v17 = *(a8 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x6C756D74616DLL, 0xE600000000000000);
  }

  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a6;
  *(v11 + 56) = a5 & 1;
  *(v11 + 57) = a7 & 1;
  *(v11 + 64) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = a10;
  *(v11 + 88) = a11;
  v18 = a9[1];
  *(v11 + 96) = *a9;
  *(v11 + 112) = v18;
  *(v11 + 128) = a9[2];
  *(v11 + 138) = *(a9 + 42);
  return v11;
}

BOOL sub_25BBA4C84(uint64_t a1)
{
  v2 = sub_25BAC4018();
  v3 = v2 == sub_25BAC4018();
  v4 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_17_20();
  }

  v5 = *(a1 + 16);
  if (sub_25BAC4018() == v5)
  {
    OUTLINED_FUNCTION_15_19();

    return 1;
  }

  return v4;
}

uint64_t sub_25BBA4D20()
{

  sub_25BA9D148(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_25BBA4D60()
{
  sub_25BBA4D20();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA4DBC(uint64_t a1)
{
  sub_25BCB625C();
  sub_25BCB79EC();
  return sub_25BCB79EC();
}

uint64_t sub_25BBA4E28()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  if (v3 == sub_25BAC4018())
  {
    OUTLINED_FUNCTION_17_20();
LABEL_8:

    return 1;
  }

  v4 = *(v2 + 16);
  if (sub_25BAC4018() == v4)
  {
    OUTLINED_FUNCTION_15_19();
    goto LABEL_8;
  }

  if (!*(v1 + 56))
  {
    return 0;
  }

  v5 = *(v2 + 16);
  if (sub_25BAC4018() != v5)
  {
    return 0;
  }

  *(v1 + 56) = v0;

  return 1;
}

uint64_t sub_25BBA4EE4()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  if (v3 == sub_25BAC4018())
  {
    OUTLINED_FUNCTION_17_20();
LABEL_10:

    return 1;
  }

  v4 = *(v2 + 16);
  if (sub_25BAC4018() == v4)
  {
    OUTLINED_FUNCTION_15_19();
    goto LABEL_10;
  }

  v5 = *(v2 + 16);
  if (sub_25BAC4018() == v5)
  {
    *(v1 + 56) = v0;
    goto LABEL_10;
  }

  if (!*(v1 + 64))
  {
    return 0;
  }

  v6 = *(v2 + 16);
  if (sub_25BAC4018() != v6)
  {
    return 0;
  }

  *(v1 + 64) = v0;

  return 1;
}

void sub_25BBA4FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift", 107, 2, 312, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BBA5020()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (!v1)
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v3, v4, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  return *(v0 + 32);
}

void sub_25BBA5090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("initResultDescriptorsArray()", 28, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift", 107, 2, 385, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BBA50F0()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  if (v3 == sub_25BAC4018())
  {
    OUTLINED_FUNCTION_17_20();
  }

  else
  {
    v4 = *(v2 + 16);
    if (sub_25BAC4018() == v4)
    {
      OUTLINED_FUNCTION_15_19();
    }

    else
    {
      if (!*(v1 + 56))
      {
        return 0;
      }

      v5 = *(v2 + 16);
      if (sub_25BAC4018() != v5)
      {
        return 0;
      }

      *(v1 + 56) = v0;
    }
  }

  return 1;
}

uint64_t sub_25BBA519C()
{
  sub_25BAA32B8();

  return swift_deallocClassInstance();
}

__n128 sub_25BBA51F4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 160);
  result = *(v1 + 170);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BBA528C()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BBA50F0() & 1) == 0)
  {
    v2 = sub_25BAC4018();
    if (v2 != sub_25BAC4018())
    {
      return 0;
    }

    *(v1 + 192) = v0;
  }

  return 1;
}

uint64_t sub_25BBA5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 *a17, uint64_t a18, uint64_t a19)
{
  v20 = *(a16 + 8);
  *(v19 + 192) = *a16;
  *(v19 + 200) = v20;
  *(v19 + 208) = a18;
  *(v19 + 216) = a19;
  *(v19 + 224) = a11;
  *(v19 + 232) = a12;
  if (a3)
  {
    v21 = OUTLINED_FUNCTION_35_8();
    v23 = sub_25BA9D8C4(v21, v22);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_35_8();
    sub_25BA9D8C4(v31, v32);
    v33 = OUTLINED_FUNCTION_9_24();
    v23 = sub_25BAA5EA0(v33, v34);
  }

  *(v19 + 112) = a15;
  *(v19 + 120) = 0;
  OUTLINED_FUNCTION_3_26(v23, v24, v25, v26, v27, v28, v29, v30, v43, a13, a14, a4, a5, a6, a7, a8);
  *(v19 + 88) = a10;
  *(v19 + 96) = v35;
  *(v19 + 104) = v36;
  v37 = *a17;
  v38 = a17[1];
  v39 = a17[2];
  *(v19 + 170) = *(a17 + 42);
  *(v19 + 144) = v38;
  *(v19 + 160) = v39;
  *(v19 + 128) = v37;
  v40 = OUTLINED_FUNCTION_35_8();
  sub_25BA9D148(v40, v41);
  return v19;
}

uint64_t sub_25BBA53FC()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return sub_25BA9D148(v1, v2);
}

uint64_t sub_25BBA542C()
{
  sub_25BAA3558();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA5484()
{
  OUTLINED_FUNCTION_14_22();
  v2 = v1;
  OUTLINED_FUNCTION_5_30(v3, v4, v1, v5);

  if (!v2)
  {
    v6 = sub_25BAA5EA0(0xD000000000000013, 0x800000025BCDC030);
  }

  OUTLINED_FUNCTION_0_45(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20);
  return v0;
}

uint64_t sub_25BBA5518()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BBA50F0() & 1) == 0)
  {
    v2 = sub_25BAC4018();
    if (v2 != sub_25BAC4018())
    {
      return 0;
    }

    *(v1 + 192) = v0;
  }

  return 1;
}

uint64_t sub_25BBA55B4(uint64_t a1)
{
  result = sub_25BBA581C(&qword_27FBB44E0, type metadata accessor for ConvolutionTranspose2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA560C(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA5664(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154CCD8, type metadata accessor for BaseConvolution2DOperation, &unk_25BCC5FA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA56BC(uint64_t a1)
{
  result = sub_25BBA581C(&qword_28154D770, type metadata accessor for LinearGradientOperation, &unk_25BCC6048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA5714(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154D778, type metadata accessor for LinearGradientOperation, &unk_25BCC6004);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA576C(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154F578, type metadata accessor for LinearOperation, &unk_25BCC6074);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA57C4(uint64_t a1)
{
  result = sub_25BBA581C(&qword_27FBB5D40, type metadata accessor for MatrixMultiplicationOperation, &unk_25BCC6100);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA581C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BBA5860()
{
  result = qword_27FBB5D50;
  if (!qword_27FBB5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB5D48, &unk_25BCC6180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D50);
  }

  return result;
}

uint64_t *sub_25BBA58F4(uint64_t a1)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_2_38();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v10);
  v12 = OUTLINED_FUNCTION_26_2(v11);
  v13 = sub_25BB3EE04(v12, a1);
  if (!v13)
  {
    goto LABEL_8;
  }

  v15 = v13;
  v3 = v14;
  v16 = sub_25BAC4018();
  v46 = sub_25BB3EE04(v16, a1);
  if (!v46)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    sub_25BB0E2EC();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC6190, v23, v24);
    return v3;
  }

  v44 = v17;
  v45 = v3;
  v18 = sub_25BAC4018();
  v19 = sub_25BB3EE04(v18, a1);
  if (!v19)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v3 = v20;
  v43 = v19;
  if (*(v1 + 136))
  {
    v21 = sub_25BAC4018();
    v41 = sub_25BB3EE04(v21, a1);
    v42 = v22;
  }

  else
  {
    if (*(v1 + 116) != 0.0)
    {
      sub_25BB0E2EC();
      v34 = swift_allocError();
      OUTLINED_FUNCTION_11_2(xmmword_25BCC6190, v34, v35);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v3;
    }

    v41 = 0;
    v42 = 0;
  }

  ObjectType = swift_getObjectType();
  (v3[7])(&v47, sub_25BBA69D8, 0, MEMORY[0x277D83A90], ObjectType, v3);
  v40 = v2;
  v27 = v47;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_46(v6);
  OUTLINED_FUNCTION_0_46(v4);
  v28 = OUTLINED_FUNCTION_0_46(v5);
  v3 = &v40;
  MEMORY[0x28223BE20](v28);
  v38[4] = v27;
  v39 = v1;
  v29 = swift_getObjectType();
  MEMORY[0x28223BE20](v29);
  v37[2] = v46;
  v37[3] = v44;
  v30 = v41;
  v37[4] = v4;
  v37[5] = v41;
  v37[6] = v42;
  v37[7] = v5;
  v37[8] = sub_25BBA690C;
  v37[9] = v38;
  v31 = v40;
  sub_25BC675C0(sub_25BBA692C, v37, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v31)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v6);
    sub_25BB0EA20(v5);
    sub_25BB0EA20(v4);
  }

  else
  {
    v32 = v42;
    sub_25BB0EA20(v6);
    sub_25BB0EA20(v5);
    sub_25BB0EA20(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    if (v30)
    {
      *(v3 + 1) = xmmword_25BCBAE70;
      v33 = v45;
      v3[4] = v15;
      v3[5] = v33;
      v3[6] = v30;
      v3[7] = v32;
    }

    else
    {
      *(v3 + 1) = xmmword_25BCBAE50;
      v36 = v45;
      v3[4] = v15;
      v3[5] = v36;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_25BBA5CD8(const void *a1, const void *a2, const void *a3, uint64_t a4, float a5)
{
  v24 = sub_25BCB539C();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F875BB0](0, 1, *(a4 + 120), 0, 0, a5, *(a4 + 116), 1.0, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
  v14 = swift_allocObject();
  v25 = xmmword_25BCBAE50;
  *(v14 + 16) = xmmword_25BCBAE50;
  memcpy((v14 + 32), a1, 0xB0uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = v25;
  memcpy((v15 + 32), a2, 0xB0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D60, qword_25BCC61E8);
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  memcpy((inited + 32), a3, 0xB1uLL);

  memcpy(v26, a3, 0xB1uLL);
  if (sub_25BB456E4(v26) != 1)
  {
    *&v25 = v5;
    sub_25BAFE3EC();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19 >= *(v17 + 24) >> 1)
    {
      sub_25BAFE3EC();
      v18 = v22;
    }

    *(v18 + 16) = v19 + 1;
    memcpy((v18 + 176 * v19 + 32), a3, 0xB0uLL);
  }

  sub_25BCB6E0C();
  sub_25BCB6D6C();
  v20 = v24;
  sub_25BCB509C();
  (*(v11 + 8))(v13, v20);
}

__n128 *sub_25BBA5FD4(__n128 *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2_38();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_26_2(v15);
  v17 = sub_25BB3EE04(v16, a1);
  if (!v17)
  {
    goto LABEL_17;
  }

  v19 = v17;
  v74 = v18;
  v20 = sub_25BAC4018();
  v21 = sub_25BB3EE04(v20, a1);
  if (!v21)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    sub_25BB0E2EC();
    v37 = swift_allocError();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC61A0, v37, v38);
    return a1;
  }

  v72 = v22;
  v75 = v21;
  v23 = sub_25BAC4018();
  v24 = sub_25BB3EE04(v23, a1);
  if (!v24)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v70 = v25;
  v73 = v24;
  v26 = sub_25BAC4018();
  v27 = sub_25BB3EE04(v26, a1);
  if (!v27)
  {
    a1 = v19;
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v68 = v28;
  v71 = v27;
  v29 = sub_25BAC4018();
  v30 = sub_25BB3EE04(v29, a1);
  if (!v30)
  {
    a1 = v75;
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v65 = v31;
  v69 = v30;
  v32 = sub_25BAC4018();
  v33 = sub_25BB3EE04(v32, a1);
  if (!v33)
  {
    swift_unknownObjectRelease();
    a1 = v73;
    goto LABEL_13;
  }

  v63 = v34;
  v66 = v33;
  if (*(v1 + 152))
  {
    v35 = sub_25BAC4018();
    v67 = sub_25BB3EE04(v35, a1);
    v64 = v36;
  }

  else
  {
    v67 = 0;
    v64 = 0;
  }

  ObjectType = swift_getObjectType();
  v41 = v76;
  (v65[7])(&v77 + 4, sub_25BBA69D8, 0, MEMORY[0x277D83A90], ObjectType);
  v42 = HIDWORD(v77);
  v43 = swift_getObjectType();
  (v63[7])(&v77, sub_25BBA654C, 0, MEMORY[0x277D849A8], v43);
  v76 = v41;
  v44 = v77;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_46(v4);
  OUTLINED_FUNCTION_0_46(v13);
  OUTLINED_FUNCTION_0_46(v10);
  OUTLINED_FUNCTION_0_46(v2);
  v45 = OUTLINED_FUNCTION_0_46(v3);
  v65 = &v62;
  v46 = MEMORY[0x28223BE20](v45).n128_u32[0];
  *(&v62 - 8) = v42;
  *(&v62 - 28) = v47;
  *(&v62 - 5) = v44;
  *(&v62 - 4) = v46;
  *(&v62 - 1) = v1;
  v48 = swift_getObjectType();
  v63 = &v62;
  MEMORY[0x28223BE20](v48);
  v49 = v72;
  v50 = v73;
  *(&v62 - 14) = v75;
  *(&v62 - 13) = v49;
  *(&v62 - 12) = v13;
  *(&v62 - 11) = v50;
  a1 = v71;
  *(&v62 - 10) = v70;
  *(&v62 - 9) = v10;
  v51 = v67;
  v52 = v68;
  *(&v62 - 8) = a1;
  *(&v62 - 7) = v52;
  *(&v62 - 6) = v2;
  *(&v62 - 5) = v51;
  *(&v62 - 4) = v64;
  *(&v62 - 3) = v3;
  *(&v62 - 2) = sub_25BBA6960;
  *(&v62 - 1) = (&v62 - 6);
  v53 = v76;
  sub_25BC675C0(sub_25BBA698C, (&v62 - 16), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v53)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v4);
    sub_25BB0EA20(v3);
    sub_25BB0EA20(v2);
    sub_25BB0EA20(v10);
    sub_25BB0EA20(v13);
  }

  else
  {
    v54 = v64;
    sub_25BB0EA20(v4);
    sub_25BB0EA20(v3);
    sub_25BB0EA20(v2);
    sub_25BB0EA20(v10);
    sub_25BB0EA20(v13);
    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      a1 = swift_allocObject();
      v55 = OUTLINED_FUNCTION_3_27(a1, xmmword_25BCBDF80);
      v56 = v67;
      v57 = v68;
      v55[4].n128_u64[0] = v58;
      v55[4].n128_u64[1] = v57;
      v55[5].n128_u64[0] = v56;
      v55[5].n128_u64[1] = v54;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      a1 = swift_allocObject();
      v59 = OUTLINED_FUNCTION_3_27(a1, xmmword_25BCBAE90);
      v60 = v68;
      v59[4].n128_u64[0] = v61;
      v59[4].n128_u64[1] = v60;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a1;
}

_DWORD *sub_25BBA654C@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBA6560(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, int a6, uint64_t a7, float a8, float a9, float a10, float a11)
{
  v23 = a2;
  *&v21 = a5;
  v22 = a1;
  v13 = sub_25BCB51EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB51DC();
  sub_25BCB51CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
  v17 = swift_allocObject();
  v17[1] = xmmword_25BCBAE70;
  memcpy(v17 + 2, a3, 0xB0uLL);
  memcpy(v17 + 13, a4, 0xB0uLL);
  v26 = v17;
  memcpy(v24, v21, 0xB1uLL);
  if (sub_25BB456E4(v24) != 1)
  {
    memcpy(v25, v24, 0xB0uLL);
    sub_25BC03638(v25);
  }

  v18 = swift_allocObject();
  v21 = xmmword_25BCBAE50;
  *(v18 + 16) = xmmword_25BCBAE50;
  memcpy((v18 + 32), v22, 0xB0uLL);
  v19 = swift_allocObject();
  *(v19 + 16) = v21;
  memcpy((v19 + 32), v23, 0xB0uLL);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  sub_25BCB509C();
  (*(v14 + 8))(v16, v13);
}

uint64_t sub_25BBA6830(uint64_t a1)
{
  result = sub_25BBA68B8(qword_28154FD70, type metadata accessor for AdamOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA6874(uint64_t a1)
{
  result = sub_25BBA68B8(&qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA68B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BBA69F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD7860]) init];
  [v1 setBidirectional_];
  [v1 setProduceCell_];
  [v1 setTraining_];
  [v1 setInputGateActivation_];
  [v1 setForgetGateActivation_];
  [v1 setCellGateActivation_];
  [v1 setOutputGateActivation_];
  [v1 setActivation_];
  [v1 setForgetGateLast_];
  return v1;
}

uint64_t sub_25BBA6ADC(void *a1, uint64_t a2)
{
  v4 = sub_25BB4AD90();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = v4;
    sub_25BAB4D78(v4, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F8779B0](v7, a2);
    }

    else
    {
      v8 = *(a2 + 8 * v7 + 32);
    }

    v6 = v8;
  }

  v9 = sub_25BB4ADA8();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    sub_25BAB4D78(v9, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x25F8779B0](v12, a2);
    }

    else
    {
      v13 = *(a2 + 8 * v12 + 32);
    }

    v11 = v13;
  }

  v14 = sub_25BB4ADD4();
  v15 = a2 & 0xC000000000000001;
  v16 = (a2 & 0xC000000000000001) == 0;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_18;
  }

  v20 = v14;
  sub_25BAB4D78(v14, v15 == 0, a2);
  if (v15)
  {
    v21 = MEMORY[0x25F8779B0](v20, a2);
  }

  else
  {
    v21 = *(a2 + 8 * v20 + 32);
  }

  v19 = v21;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    sub_25BAB4D78(v20 + 1, v15 == 0, a2);
    if (!v15)
    {
      v18 = *(a2 + 8 * (v20 + 1) + 32);
      v16 = 1;
      goto LABEL_18;
    }
  }

  v18 = MEMORY[0x25F8779B0](v20 + 1, a2);
  v16 = 0;
LABEL_18:
  sub_25BAB4D78(0, v16, a2);
  if (v16)
  {
    v22 = *(a2 + 32);
  }

  else
  {
    v22 = MEMORY[0x25F8779B0](0, a2);
  }

  v23 = v22;
  sub_25BAB4D78(1uLL, v16, a2);
  if (v16)
  {
    v24 = *(a2 + 40);
  }

  else
  {
    v24 = MEMORY[0x25F8779B0](1, a2);
  }

  v25 = v24;
  v26 = sub_25BBA69F0();
  v27 = sub_25BCB633C();
  v28 = [a1 LSTMWithSourceTensor:v23 recurrentWeight:v25 inputWeight:v6 bias:v11 initState:v19 initCell:v18 descriptor:v26 name:v27];

  sub_25BB0607C();
  v29 = sub_25BCB673C();

  return v29;
}

uint64_t sub_25BBA6D60(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v44 = v6;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(1uLL, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v43 = v8;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(2uLL, v9, a2);
  if (v5)
  {
    v10 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  v45 = v10;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(3uLL, v11, a2);
  if (v5)
  {
    v12 = MEMORY[0x25F8779B0](3, a2);
  }

  else
  {
    v12 = *(a2 + 56);
  }

  v13 = v12;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(4uLL, v14, a2);
  if (v5)
  {
    v15 = MEMORY[0x25F8779B0](4, a2);
  }

  else
  {
    v15 = *(a2 + 64);
  }

  v16 = v15;
  if (*(v2 + 64))
  {
    OUTLINED_FUNCTION_0_47();
    sub_25BAB4D78(5uLL, v17, a2);
    if (v5)
    {
      v18 = MEMORY[0x25F8779B0](5, a2);
    }

    else
    {
      v18 = *(a2 + 72);
    }

    v42 = v18;
  }

  else
  {
    v42 = 0;
  }

  v19 = sub_25BBA706C();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v22 = v19;
    OUTLINED_FUNCTION_0_47();
    sub_25BAB4D78(v23, v24, a2);
    if (v5)
    {
      v25 = MEMORY[0x25F8779B0](v22, a2);
    }

    else
    {
      v25 = *(a2 + 8 * v22 + 32);
    }

    v21 = v25;
  }

  v26 = sub_25BBA7098();
  if (v27)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = v26;
    OUTLINED_FUNCTION_0_47();
    sub_25BAB4D78(v31, v32, a2);
    if (v5)
    {
      v33 = MEMORY[0x25F8779B0](v30, a2);
    }

    else
    {
      v33 = *(a2 + 8 * v30 + 32);
    }

    v29 = v33;
    OUTLINED_FUNCTION_0_47();
    v34 = v30 + 1;
    sub_25BAB4D78(v34, v35, a2);
    if (v5)
    {
      v36 = MEMORY[0x25F8779B0](v34, a2);
    }

    else
    {
      v36 = *(a2 + 8 * v34 + 32);
    }

    v28 = v36;
  }

  v37 = sub_25BBA69F0();
  v38 = sub_25BCB633C();
  v39 = [a1 LSTMGradientsWithSourceTensor:v13 recurrentWeight:v16 sourceGradient:v44 zState:v45 cellOutputFwd:v43 inputWeight:v42 bias:v21 initState:v29 initCell:v28 descriptor:v37 name:v38];

  sub_25BB0607C();
  v40 = sub_25BCB673C();

  return v40;
}

uint64_t sub_25BBA706C()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    return 6;
  }

  return 5;
}

uint64_t sub_25BBA7098()
{
  result = sub_25BB49CB0();
  if (result)
  {
    sub_25BB4AE24(result);
    v2 = 5;
    if (*(v0 + 64))
    {
      v2 = 6;
    }

    if (*(v0 + 72))
    {
      return v2 + 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_25BBA7100(uint64_t a1)
{
  result = sub_25BBA7188(&qword_27FBB4930, type metadata accessor for LSTMLayerGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA7144(uint64_t a1)
{
  result = sub_25BBA7188(&qword_27FBB4938, type metadata accessor for LSTMLayerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA7188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BBA71DC()
{
  v1 = *(v0 + 16);

  sub_25BAA3234();
  sub_25BBC9228(v1);
  sub_25BAA3258();
}

id sub_25BBA7240()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_25BBA72AC(void *a1)
{
  result = sub_25BBA73D4(a1);
  if (!v1)
  {
    v5 = v4;
    v6 = sub_25BBA747C(a1);
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(v5 + 24))(v6, v8, ObjectType, v5);
    v12 = v11;

    sub_25BBA7584(v10, v12, a1);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_25BBA73D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = a1;
  result = sub_25BAD8524(sub_25BAD8508, v3);
  if (!result)
  {
    MEMORY[0x28223BE20](0);
    return sub_25BBA7D18(sub_25BBA7E9C);
  }

  return result;
}

uint64_t sub_25BBA747C(uint64_t a1)
{
  v1 = *(a1 + 88);
  v8[2] = a1;
  v2 = sub_25BBFC200(sub_25BBA7E7C, v8, v1);
  v3 = *(v2 + 16);
  if (v3 == sub_25BAAF54C(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v10 = sub_25BCB614C();
    v4 = sub_25BAD8178(v2);

    v9 = v4;
    sub_25BAD8324(v5);
    return v9;
  }

  else
  {

    sub_25BBA7E28();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

void sub_25BBA7584(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[19];
  v49 = *(a1 + 16);
  if (v49 != sub_25BAAF54C(v5))
  {
    sub_25BBA7E28();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
    return;
  }

  v46 = sub_25BA9BEA0(v5);
  if (v46)
  {
    v6 = 0;
    v47 = v5 & 0xC000000000000001;
    v7 = a3[14];
    v42 = a3[13];
    v43 = v5 & 0xFFFFFFFFFFFFFF8;
    v44 = a1 + 32;
    v45 = v5;
    while (1)
    {
      if (v47)
      {
        v8 = MEMORY[0x25F8779B0](v6, v5);
      }

      else
      {
        if (v6 >= *(v43 + 16))
        {
          goto LABEL_37;
        }

        v8 = *(v5 + 8 * v6 + 32);
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_36:
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
        return;
      }

      v10 = sub_25BAC44E4();
      if (!*(v7 + 16))
      {
        break;
      }

      v12 = sub_25BA9266C(v10, v11);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }

      v15 = *(*(v7 + 56) + 8 * v12);
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v15 >= *(v42 + 16))
      {
        goto LABEL_39;
      }

      v16 = (v42 + 32 + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_25BCB617C();
LABEL_23:
      if (!*(a2 + 16))
      {

LABEL_33:
        sub_25BBA7E28();
        swift_allocError();
        *v41 = 1;
        swift_willThrow();

        return;
      }

      v31 = sub_25BA9266C(v18, v17);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        goto LABEL_33;
      }

      v34 = *(*(a2 + 56) + 8 * v31);
      if (!*(v34 + 16))
      {
        goto LABEL_33;
      }

      v35 = *(v34 + 32);
      if (v35 >= v49)
      {
        goto LABEL_36;
      }

      v36 = v44 + 32 * v35;
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      swift_unknownObjectRetain_n();

      v39 = sub_25BA928B4();
      [v39 lock];

      swift_beginAccess();
      sub_25BA9323C(v8 + 40, v52);
      if (!v52[105])
      {
        sub_25BA9323C(v8 + 40, v50);
        sub_25BA9BD18(v37, v38, v51);
        sub_25BA9778C(v50);
        swift_beginAccess();
        sub_25BA97834(v51, v8 + 40);
        swift_endAccess();
      }

      sub_25BA9778C(v52);
      [*(v8 + 224) unlock];
      swift_unknownObjectRelease_n();

      ++v6;
      v5 = v45;
      if (v9 == v46)
      {
        return;
      }
    }

LABEL_15:
    v53 = v6 + 1;
    v19 = a2;
    v20 = v7;
    v22 = a3[17];
    v21 = a3[18];
    v23 = sub_25BAC44E4();
    if (*(v21 + 16))
    {
      v25 = sub_25BA9266C(v23, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v21 + 56) + 8 * v25);
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v28 >= *(v22 + 16))
        {
          goto LABEL_41;
        }

        v29 = v22 + 16 * v28;
        v18 = *(v29 + 32);
        v17 = *(v29 + 40);
        sub_25BCB617C();
        goto LABEL_22;
      }
    }

    else
    {
    }

    v18 = sub_25BAC44E4();
    v17 = v30;
LABEL_22:
    v7 = v20;
    a2 = v19;
    v9 = v53;
    goto LABEL_23;
  }
}

double sub_25BBA7958@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *a2 = sub_25BC458D0();
  a2[1] = v5;
  a2[2] = v4;

  return result;
}

uint64_t sub_25BBA79A8()
{

  return v0;
}

uint64_t sub_25BBA79D0()
{
  sub_25BBA79A8();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA7A28()
{
  v1 = v0;
  if (qword_27FBB3378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FBB3840;
  type metadata accessor for LazyTensorFunctionExecutorCache();
  swift_allocObject();
  *(v1 + 16) = sub_25BBC8CAC(v2);
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_25BBA7AE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25BAA51C8(a1 + 168, &v14);
  if (*(&v15 + 1))
  {
    v5 = *(&v16 + 1);
    if ((*(&v16 + 1) - 1) >= 2)
    {
      swift_unknownObjectRetain();
      sub_25BABF0A8(&v14);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_25BABF0A8(&v14);
    }
  }

  else
  {
    sub_25BA9C2C8(&v14);
  }

  v6 = sub_25BC17078();
  if (v6)
  {
    v5 = v6;
LABEL_8:
    type metadata accessor for SharedMetalDevice();
    v7 = sub_25BBC97E0(v5);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    v9 = v7;
    sub_25BAD6FB0(a1, &v14);
    type metadata accessor for MPSGraphExecutor();
    swift_allocObject();

    v12 = sub_25BBB4A0C(&v14, v9);
    sub_25BAD6F54(a1, &v14);

    sub_25BBC8BC4(v13, &off_286D4D800, &v14);
    swift_unknownObjectRelease();

    *a2 = v12;
    a2[1] = &off_286D4D800;
    return result;
  }

  sub_25BAA51C8(a1 + 168, &v18);
  if (*(&v19 + 1))
  {
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
  }

  else
  {
    *(&v15 + 1) = &unk_286D4F738;
    *&v16 = &off_286D4F7B8;
    *(&v16 + 1) = 0;
    v17 = sub_25BC176D0(0);
    if (*(&v19 + 1))
    {
      sub_25BA9C2C8(&v18);
    }
  }

  sub_25BBA7EB8();
  swift_allocError();
  v11 = v10;
  sub_25BABEF40(&v14, v10);
  *(v11 + 108) = 19;
  swift_willThrow();
  return sub_25BABF0A8(&v14);
}

id sub_25BBA7D18(void (*a1)(uint64_t *__return_ptr))
{
  v3 = v1;
  v5 = sub_25BBA7240();
  [v5 lock];

  a1(&v7);
  if (v2)
  {
    return [*(v3 + 24) unlock];
  }

  [*(v3 + 24) unlock];
  return v7;
}

void sub_25BBA7DBC(void (*a1)(void))
{
  sub_25BAA3234();
  a1();
  sub_25BAA3258();
}

unint64_t sub_25BBA7E28()
{
  result = qword_27FBB5D68;
  if (!qword_27FBB5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D68);
  }

  return result;
}

unint64_t sub_25BBA7EB8()
{
  result = qword_27FBB5D70;
  if (!qword_27FBB5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MPSGraphBackend.ResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BBA7FEC()
{
  result = qword_27FBB5D78;
  if (!qword_27FBB5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D78);
  }

  return result;
}

void sub_25BBA8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryElementwiseOperation.swift", 127, 2, 19, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BBA80A8()
{
  sub_25BA9D740();

  return swift_deallocClassInstance();
}

__n128 sub_25BBA8100@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 80);
  result = *(v1 + 90);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BBA8194()
{
  sub_25BA9D740();
  sub_25BA9D148(*(v0 + 112), *(v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA81F4(uint64_t a1)
{
  result = sub_25BBA82A4(qword_28154CE88, type metadata accessor for UnaryElementwiseOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA824C(uint64_t a1)
{
  result = sub_25BBA82A4(&qword_28154C9C8, type metadata accessor for BaseUnaryElementwiseOperation, &unk_25BCC63A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA82A4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25BBA82E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ImageOps.swift", 110, 2, 19, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BBA8348(uint64_t a1)
{
  (*(*v1 + 128))();
  sub_25BCB625C();

  MEMORY[0x25F878200](*(v1 + 48));
  MEMORY[0x25F878200](*(v1 + 56));
  if (*(v1 + 64) == 2)
  {
    MEMORY[0x25F878200](1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    sub_25BCB79EC();
  }

  return MEMORY[0x25F878200](*(*(*(v1 + 40) + 152) + 16));
}

uint64_t sub_25BBA8410()
{

  return v0;
}

uint64_t sub_25BBA8440()
{
  sub_25BBA8410();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA8588(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 152) = a10;
  *(v11 + 160) = a11;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x657A69736572, 0xE600000000000000);
  }

  return OUTLINED_FUNCTION_0_48(a1, a2, a3);
}

uint64_t sub_25BBA8604()
{
  sub_25BBA8410();
  sub_25BA9D148(*(v0 + 152), *(v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA8664()
{
  v1 = *(v0 + 152);
  sub_25BA9D8C4(v1, *(v0 + 160));
  return v1;
}

uint64_t sub_25BBA86B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BBA8718(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a4;
  if (!a3)
  {
    v5 = OUTLINED_FUNCTION_1_37();
    a1 = sub_25BAA5EA0(v5, v6);
  }

  return OUTLINED_FUNCTION_0_48(a1, a2, a3);
}

uint64_t sub_25BBA877C(uint64_t a1, uint64_t a2)
{
  if (!sub_25BB07E0C(a1, a2))
  {
    v4 = sub_25BAC4018();
    if (v4 == sub_25BAC4018())
    {
      *(v2 + 152) = a2;
    }
  }

  return 1;
}

uint64_t sub_25BBA87F4()
{
  sub_25BBA8410();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA8854(uint64_t a1)
{
  result = sub_25BBA8904(&qword_27FBB4070, type metadata accessor for ResizeGradientOperation, &unk_25BCC6504);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA88AC(uint64_t a1)
{
  result = sub_25BBA8904(&qword_27FBB5D80, type metadata accessor for BaseResizeOperation, &unk_25BCC64CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA8904(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBA894C()
{
  v0 = sub_25BCB739C();

  v2 = *(v0 + 16);
  if (v2 < 2)
  {
    return v0;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 48 * v2 - 16;
  for (i = 32; ; i += 48)
  {
    if (v3 == v5)
    {
      goto LABEL_11;
    }

    v8 = *(v0 + 16);
    if (v3 >= v8)
    {
      break;
    }

    result = OUTLINED_FUNCTION_6_34(v0 + i, v11);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_6_34(v0 + v6, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BBF1348();
      v0 = v9;
    }

    result = sub_25BBA9C24(v10, v0 + i);
    if (v5 >= *(v0 + 16))
    {
      goto LABEL_15;
    }

    result = sub_25BBA9C24(v11, v0 + v6);
LABEL_11:
    ++v3;
    --v5;
    v6 -= 48;
    if (v4 == v3)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_25BBA8A7C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v1, v9, v10, v11);
      v1 = v12;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_25BBA8B34(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = sub_25BABD89C(a2 - result, 0);
  if (sub_25BCA6178() != v2)
  {
    __break(1u);
LABEL_5:
    v3 = MEMORY[0x277D84F90];
  }

  v4 = v3[2];
  if (v4 < 2)
  {
    return;
  }

  v5 = v4 >> 1;
  v6 = v4 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v6)
    {
      goto LABEL_14;
    }

    v8 = v3[2];
    if (i - 4 >= v8)
    {
      break;
    }

    if (v6 - 4 >= v8)
    {
      goto LABEL_17;
    }

    v9 = v3[i];
    v10 = v3[v6];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BBF14E4();
      v3 = v11;
    }

    v3[i] = v10;
    v3[v6] = v9;
LABEL_14:
    --v6;
    if (!--v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_25BBA8C44(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BC089B8(a1, a2);

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = v3 >> 1;
  v5 = v3 + 1;
  for (i = 2; ; ++i)
  {
    if (i == v5)
    {
      goto LABEL_9;
    }

    v7 = v2[2];
    if (i - 2 >= v7)
    {
      break;
    }

    if (v5 - 2 >= v7)
    {
      goto LABEL_12;
    }

    v9 = *&v2[2 * v5];
    v10 = *&v2[2 * i];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BBF152C();
      v2 = v8;
    }

    *&v2[2 * i] = v9;
    *&v2[2 * v5] = v10;
LABEL_9:
    --v5;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t matmul(_:transposed:_:transposed:)@<X0>(ValueMetadata **a1@<X0>, char a2@<W1>, ValueMetadata *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_25BCB783C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v68 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  Kind = a3->Kind;
  if (!OUTLINED_FUNCTION_1_38((*a1)[1].Kind))
  {
    goto LABEL_9;
  }

  v15 = OUTLINED_FUNCTION_1_38(*(Kind + 16));
  if (!v15)
  {
    v70 = a3;
    *v71 = xmmword_25BCC6530;
    v71[16] = 0;
    OUTLINED_FUNCTION_3_28(xmmword_25BCBC6A0);
    OUTLINED_FUNCTION_0_49();
    v49 = 34;
    goto LABEL_13;
  }

  v70 = v13;
  Tensor.scalarType.getter(v15);
  v17 = (*(v16 + 32))(v80);
  v18 = v80[0];
  *&v83 = Kind;
  a3 = Tensor.scalarType.getter(v17);
  v20 = (*(v19 + 32))(v79);
  if (v18 == LOBYTE(v79[0]))
  {
    goto LABEL_6;
  }

  v21 = LOBYTE(v79[0]) + 13 * v18;
  if (v21 > 0xA8)
  {
    __break(1u);
LABEL_9:
    v70 = a3;
    *v71 = xmmword_25BCC6520;
    v71[16] = 0;
    OUTLINED_FUNCTION_3_28(xmmword_25BCBC6A0);
    OUTLINED_FUNCTION_0_49();
    v49 = 33;
    goto LABEL_13;
  }

  v18 = byte_286D42018[v21 + 32];
  if (v18 == 13)
  {
LABEL_12:
    *&v83 = v13;
    v55 = Tensor.scalarType.getter(v20);
    v57 = v56;
    *v80 = Kind;
    v58 = Tensor.scalarType.getter(v55);
    v70 = v55;
    *v71 = v57;
    *&v71[8] = xmmword_25BCC06A0;
    v72 = 6;
    v73 = v58;
    v74 = v59;
    v75 = xmmword_25BCBC6A0;
    LOBYTE(v76) = 6;
    v78 = 1;
    OUTLINED_FUNCTION_0_49();
    v49 = 36;
LABEL_13:
    sub_25BADDD28(v43, v44, v45, v46, v47, v48, v49);
  }

LABEL_6:
  v67 = a5;
  v70 = *(v13[1].Kind + 152);
  *&v83 = *(*(Kind + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  v64 = a2 & 1;
  v65 = a4 & 1;
  sub_25BCA3E80(&v70, a2 & 1, &v83, a4 & 1, &v82);

  v69 = Kind;
  if (!v82)
  {
    v70 = 0;
    *v71 = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000021, 0x800000025BCDEC30);
    v50 = sub_25BCB617C();
    v51 = MEMORY[0x277D83B88];
    v52 = MEMORY[0x25F876F80](v50, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v52);

    MEMORY[0x25F876C90](0xD000000000000029, 0x800000025BCDEC60);
    v53 = sub_25BCB617C();
    v54 = MEMORY[0x25F876F80](v53, v51);
    MEMORY[0x25F876C90](v54);

    MEMORY[0x25F876C90](11817, 0xE200000000000000);
    v20 = sub_25BCB74CC("Fatal error", 11, 2, v70, *v71, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/LinearAlgebra.swift", 106, 2, 42);
    __break(1u);
    goto LABEL_12;
  }

  v70 = v13;
  *&v83 = v82;
  v22 = v82;
  v61 = v82;
  sub_25BABDA0C(&v83);
  LOBYTE(v83) = v18;
  v23 = *MEMORY[0x277D84660];
  v62 = v18;
  v63 = v13;
  v24 = *(v11 + 104);
  v25 = v68;
  v24(v68, v23, v10);
  OUTLINED_FUNCTION_5_31();
  v26 = *(v11 + 8);
  v60[1] = v11 + 8;
  v26(v25, v10);

  v27 = v70;
  v66 = v70;
  v70 = v69;
  *&v83 = v22;
  sub_25BABDA0C(&v83);
  LOBYTE(v22) = v62;
  LOBYTE(v83) = v62;
  v24(v25, v23, v10);
  OUTLINED_FUNCTION_5_31();
  v26(v25, v10);

  v28 = v27[1].Kind;
  v29 = v70[1].Kind;
  v70 = v61;
  v71[0] = v22;
  v30 = swift_allocObject();
  LOBYTE(v22) = v64;
  LOBYTE(v25) = v65;
  *(v30 + 16) = v64;
  *(v30 + 17) = v25;

  v31 = sub_25BAAF074(sub_25BBA9C10, v30);
  v33 = v32;

  v81 = 0;
  *&v83 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v83 + 1) = 107;
  v84 = 2;
  v85 = xmmword_25BCC6540;
  v86 = "init(id:leftOperand:transposed:rightOperand:transposed:resultDescriptor:creationSite:backward:)";
  v87 = 95;
  v88 = 2;
  type metadata accessor for MatrixMultiplicationOperation();
  swift_allocObject();
  v34 = sub_25BBA4BCC(0, 0, 0, v28, v22, v29, v25, &v70, &v83, v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25BCBAE70;
  v36 = v69;
  *(v35 + 32) = v63;
  *(v35 + 40) = v36;

  sub_25BAB524C(v35, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/LinearAlgebra.swift", 106, 2u, 85, "matmul(_:transposed:_:transposed:)", 34, 2u, v80);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA486C(v80, v79, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(&v70);

  v37 = v77;

  sub_25BAA4AF4(&v70);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v70);

  v38 = v76;

  sub_25BAA4AF4(&v70);
  type metadata accessor for TensorRepresentation();
  v39 = swift_allocObject();
  LOBYTE(v70) = 1;
  v40 = sub_25BC0E0A8(v34, 0, v79, 0x100000000, v37, v38, v39);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v80);
  *v67 = v41;
  return result;
}

uint64_t sub_25BBA94C0(uint64_t result, void *a2, char a3, char a4)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    v18[9] = v4;
    v18[10] = v5;
    v7 = *(result + 32);
    v8 = a2[4];
    v9 = a2[5];
    if (a3)
    {
      if (a4)
      {
        v17.Kind = a2[5];
        v17.Description = v7;

        matmul(_:transposed:_:transposed:)(&v17.Description, 1, &v17, 1, v18);
        v10 = v18[0];
        v17.Kind = v7;
        v17.Description = v8;
        v11 = 1;
        v12 = 1;
LABEL_13:
        matmul(_:transposed:_:transposed:)(&v17.Description, v11, &v17, v12, v18);
        v13 = v18[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_25BCBAE70;
        *(v14 + 32) = v10;

        *(v14 + 40) = sub_25BAC42B0();
        *(v14 + 48) = v15;
        *(v14 + 56) = v13;

        *(v14 + 64) = sub_25BAC42B0();
        *(v14 + 72) = v16;

        return v14;
      }

      v17.Kind = *(result + 32);
      v17.Description = v9;

      matmul(_:transposed:_:transposed:)(&v17.Description, 0, &v17, 1, v18);
      v10 = v18[0];
      v17.Kind = v7;
      v17.Description = v8;
      v11 = 0;
    }

    else
    {
      v17.Kind = a2[5];
      v17.Description = v7;
      if (a4)
      {

        matmul(_:transposed:_:transposed:)(&v17.Description, 0, &v17, 0, v18);
        v10 = v18[0];
        v17.Kind = v8;
        v17.Description = v7;
      }

      else
      {

        matmul(_:transposed:_:transposed:)(&v17.Description, 0, &v17, 1, v18);
        v10 = v18[0];
        v17.Kind = v7;
        v17.Description = v8;
      }

      v11 = 1;
    }

    v12 = 0;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_25BBA970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!*(a2 + 16))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v17[1] = 0;
    v17[2] = 0;
    v17[0] = v4;
    v18 = -1;
    v20 = 0;
    v21 = 0;
    v19 = v3;
    v22 = -1;
    v23 = 4;
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  v6 = *(a1 + 32);
  v3 = *(a3 + 16);

  v7 = sub_25BAC0E14(-1, v3);
  if (v3)
  {
    v8 = 0;
    v9 = a3 + 32;
    while (1)
    {
      v4 = *(v9 + 8 * v8);
      if (v4 < 0)
      {
        if (v4 < -v3)
        {
          goto LABEL_19;
        }

        v4 += v3;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v4 < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25BAA2110(v7, v10, v11, v12);
        v7 = v13;
        if (v4 < 0)
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      if (v4 >= *(v7 + 16))
      {
        break;
      }

      *(v7 + 8 * v4 + 32) = v8++;
      if (v3 == v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE50;
  v24 = v6;
  Tensor.transposed(permutation:)(v7, v17);

  *(v14 + 32) = v17[0];

  *(v14 + 40) = sub_25BAC42B0();
  *(v14 + 48) = v15;

  return v14;
}

uint64_t Tensor.transposed()@<X0>(uint64_t *a1@<X8>)
{
  sub_25BBA8B34(0, *(*(*(*v1 + 16) + 152) + 16));
  Tensor.transposed(permutation:)(v3, a1);
}

uint64_t Tensor.gramMatrix(scale:)(float a1)
{
  v3 = *v1;
  v4 = *(*((*v1)[1].Kind + 152) + 16);
  if (!sub_25BAB74D0(v4, 4, 0, 0))
  {
    *&v26 = 0;
    v25 = v4;
    BYTE8(v26) = 6;
    v27 = xmmword_25BCBCE40;
    LOBYTE(v28) = 0;
    v30 = 7;
    v15 = "gramMatrix(scale:)";
    v16 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/LinearAlgebra.swift";
    v17 = 18;
    v18 = 106;
    v19 = 145;
    goto LABEL_15;
  }

  v5 = *(v3[1].Kind + 152);
  v6 = v5[2];
  if (!v6)
  {
    v25 = 0uLL;
    *&v26 = 0;
    BYTE8(v26) = -1;
    v28 = 0;
    v27 = 0uLL;
    v29 = -1;
LABEL_14:
    v30 = 4;
    sub_25BCB617C();
    v15 = "positiveAxis(fromAxis:from:rank:from:function:file:line:)";
    v16 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift";
    v17 = 57;
    v18 = 102;
    v19 = 133;
LABEL_15:
    sub_25BADDD28(v15, v17, 2, v16, v18, 2, v19);
  }

  if (v6 == 1)
  {
    goto LABEL_9;
  }

  if (v6 <= 2)
  {
    *&v26 = 0;
    *&v25 = 2;
    goto LABEL_13;
  }

  if (v6 == 3)
  {
LABEL_9:
    *&v26 = 0;
    *&v25 = v6;
LABEL_13:
    *(&v25 + 1) = 0;
    BYTE8(v26) = -1;
    v28 = 0;
    v27 = v6;
    v29 = -1;
    goto LABEL_14;
  }

  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v21[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE90;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  v6 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v11 + 48) = v6;
  v24 = v11;
  Tensor.reshaped(to:)(&v24, &v25);

  v21[0] = v25;
  v24 = v25;
  matmul(_:transposed:_:transposed:)(v21, 0, &v24, 1, &v25);
  v24 = v25;
  v12 = *(v3[1].Kind + 160);
  LODWORD(v28) = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  v22 = v12;
  sub_25BAA486C(&v25, v21, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v23, inited, &v22, v21, &v20);
  sub_25BA9C2C8(&v25);
  static Tensor.* infix(_:_:)();
}

uint64_t sub_25BBA9C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static FeatureInputType.rgbImage(size:channelsFirst:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v4 = 0x2000000000000000;
  if (a3)
  {
    v4 = 0x2000000000000100;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

void *static FeatureInputType.tensor(shape:scalarType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a3 + 32);
  sub_25BCB617C();
  result = v8(&v11, a2, a3);
  v10 = v11;
  *a4 = v7;
  a4[1] = v10;
  a4[2] = 0;
  return result;
}

double static FeatureInputType.tensor(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = xmmword_25BCC4310;

  return result;
}

double sub_25BBA9DB8@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if ((v4 & 0x2000000000000000) != 0)
  {
    v10 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25BCBDF80;
    *(v11 + 32) = 1;
    if ((v4 & 0x100) != 0)
    {
      v13 = 3;
      if (v10 >= 2)
      {
        v13 = 1;
      }

      *(v11 + 40) = v13;
      *(v11 + 48) = v2;
      *(v11 + 56) = v3;
    }

    else
    {
      *(v11 + 40) = v2;
      *(v11 + 48) = v3;
      v12 = 3;
      if (v10 >= 2)
      {
        v12 = 1;
      }

      *(v11 + 56) = v12;
    }

    v22 = v11;
    v21 = 10;
    goto LABEL_13;
  }

  if (!(v4 >> 62))
  {
    v22 = *v1;
    v21 = v3;
    OUTLINED_FUNCTION_14_23();
    v15 = OUTLINED_FUNCTION_9_25();
    sub_25BB06184(v15, v16, v17);
    goto LABEL_14;
  }

  if (v4 >> 62 == 1)
  {
    v22 = *v1;
    v5 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v6 = OUTLINED_FUNCTION_9_25();
    v9 = sub_25BB06184(v6, v7, v8);
    v5(&v21, v3, v4 & 0x1FFFFFFFFFFFFFFFLL, v9);
LABEL_13:
    OUTLINED_FUNCTION_14_23();
LABEL_14:
    Tensor.init(zeros:scalarType:on:)();
    return result;
  }

  *a1 = v2;
  v18 = OUTLINED_FUNCTION_9_25();

  return sub_25BB06184(v18, v19, v20);
}

uint64_t sub_25BBA9F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[5] = a1;
  v11[2] = a2;
  v11[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_25BCB61AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25BAB2B20(sub_25BBAB9E4, v11, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return (*(a3 + 24))(v9, a2, a3);
}

double sub_25BBAA08C@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v15 - v9;
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v8 + 16))(v10, a1, TupleTypeMetadata2);
  sub_25BB0D1B8(*&v10[*(TupleTypeMetadata2 + 48)], *&v10[*(TupleTypeMetadata2 + 48) + 8], *&v10[*(TupleTypeMetadata2 + 48) + 16]);
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, v10, AssociatedTypeWitness);
  v12 = (a1 + *(TupleTypeMetadata2 + 48));
  v13 = *(v12 + 2);
  v15 = *v12;
  v16 = v13;
  return sub_25BBA9DB8((a4 + v11));
}

uint64_t sub_25BBAA234(uint64_t a1, uint64_t a2)
{
  v11 = (*(a2 + 32))();
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = sub_25BCB68CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25BAB2B20(sub_25BBABA04, v10, v4, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v11 = v8;
  sub_25BCB68CC();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_25BCB615C();
}

double sub_25BBAA3F0@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v13 - v9;
  v11 = a4 + *(swift_getTupleTypeMetadata2() + 48);
  (*(v8 + 16))(v10, a1, TupleTypeMetadata2);

  (*(*(AssociatedTypeWitness - 8) + 32))(a4, v10, AssociatedTypeWitness);
  *v11 = *(a1 + *(TupleTypeMetadata2 + 48));
  *(v11 + 8) = xmmword_25BCC4310;

  return result;
}

uint64_t sub_25BBAA588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v72 = a2;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D98, &qword_25BCC6828);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  sub_25BCB5B4C();
  OUTLINED_FUNCTION_2();
  v68 = v10;
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_25BCB5B7C();
  OUTLINED_FUNCTION_2();
  v70 = v15;
  v71 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_25BCB5B8C();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v28 = *v4;
  v27 = v4[1];
  v29 = v4[2];
  if ((v29 & 0x2000000000000000) == 0)
  {
    if (v29 >> 62)
    {
      if (v29 >> 62 != 1)
      {
        v76 = *v4;
        Tensor.scalarType.getter(v27);
        sub_25BBAADFC(v59, v26);
        sub_25BCB617C();
        OUTLINED_FUNCTION_16_24();

        return (*(v21 + 8))(v26, v19);
      }

      sub_25BBAADFC(v29 & 0x1FFFFFFFFFFFFFFFLL, v26);
    }

    else
    {
      LOBYTE(v76) = v4[1];
      sub_25BBAAC68(v23, v26);
    }

    OUTLINED_FUNCTION_16_24();
    return (*(v21 + 8))(v26, v19);
  }

  v30 = *(a1 + 152);
  v31 = *(v30 + 16);
  if ((v31 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_10_22();
    v78 = *(v30 + 16);
LABEL_7:
    v32 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v32);

    MEMORY[0x25F876C90](0x6E6920726F662060, 0xED00002720747570);
    MEMORY[0x25F876C90](v72, v73);
    v33 = 11815;
LABEL_27:
    MEMORY[0x25F876C90](v33, 0xE200000000000000);
    v55 = v76;
    v56 = v77;
    sub_25BB0A3A4();
    swift_allocError();
    *v57 = v55;
    v57[1] = v56;
    return swift_willThrow();
  }

  v63 = a1;
  v64 = v8;
  v67 = v27;
  v34 = v31 - 2;
  v35 = v31 - 1;
  v36 = v31 - 3;
  v37 = v31 == 4;
  if ((v29 & 0x100) != 0)
  {
    v38 = v37;
  }

  else
  {
    v38 = v35;
  }

  if ((v29 & 0x100) != 0)
  {
    v39 = v34;
  }

  else
  {
    v39 = v36;
  }

  v76 = v30;
  v65 = v39;
  v40 = v30;
  v41 = v28;
  v42 = TensorShape.subscript.getter(v39);
  v66 = v41;
  if (v42 != v41 || ((v29 & 0x100) != 0 ? (v43 = v35) : (v43 = v34), v76 = v40, v44 = TensorShape.subscript.getter(v43), v44 != v67))
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCDF000);
    MEMORY[0x25F876C90](v72, v73);
    MEMORY[0x25F876C90](0x60206572612027, 0xE700000000000000);
    OUTLINED_FUNCTION_12_21();
    v53 = v65;
    v75 = TensorShape.subscript.getter(v65);
    OUTLINED_FUNCTION_5_32();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](120, 0xE100000000000000);
    OUTLINED_FUNCTION_12_21();
    v75 = TensorShape.subscript.getter(v53);
    OUTLINED_FUNCTION_5_32();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCDF030);
    v78 = v66;
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](120, 0xE100000000000000);
    v78 = v67;
    OUTLINED_FUNCTION_23_0();
    v54 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v54);

    v33 = 11872;
    goto LABEL_27;
  }

  v76 = v40;
  v45 = TensorShape.subscript.getter(v38);
  if (v29 >= 2u)
  {
    v46 = 1;
  }

  else
  {
    v46 = 3;
  }

  if (v45 != v46)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    MEMORY[0x25F876C90](0xD000000000000030, 0x800000025BCDEE80);
    v78 = v46;
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDEEC0);
    LOBYTE(v78) = v29;
    sub_25BCB73CC();
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_12_21();
    v75 = TensorShape.subscript.getter(v38);
    OUTLINED_FUNCTION_5_32();
    goto LABEL_7;
  }

  v47 = *MEMORY[0x277D250B8];
  v48 = v69;
  v49 = *(v68 + 104);
  v49(v13, v47, v69);
  sub_25BCB5B6C();
  if (!v29)
  {
    v50 = v64;
LABEL_36:
    v52 = v50;
    v51 = v47;
    goto LABEL_37;
  }

  v50 = v64;
  if (v29 == 1)
  {
    v51 = *MEMORY[0x277D250B0];
    v52 = v64;
LABEL_37:
    v49(v52, v51, v48);
    OUTLINED_FUNCTION_15_20();
    goto LABEL_38;
  }

  v49(v64, *MEMORY[0x277D250C0], v48);
  OUTLINED_FUNCTION_15_20();
  if (*(v63 + 160) == 8)
  {
    v47 = *MEMORY[0x277D250A8];
    goto LABEL_36;
  }

LABEL_38:
  v60 = v74;
  (*(v70 + 32))(v74, v18, v71);
  v61 = *MEMORY[0x277D25120];
  sub_25BCB5B9C();
  OUTLINED_FUNCTION_4_34();
  return (*(v62 + 104))(v60, v61);
}

uint64_t sub_25BBAAC68@<X0>(uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x277D250E0];
  switch(*v3)
  {
    case 0:
      break;
    case 2:
      v5 = MEMORY[0x277D250E8];
      break;
    case 8:
      v5 = MEMORY[0x277D250F8];
      break;
    case 9:
      BYTE4(v20) = 9;
      sub_25BA97890("mlModelSpecDataType", 19, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Serialization/MLFeatureType.swift", 109, 2, 427, a2, v10, v11, 0xD000000000000029, 0x800000025BCDEFD0, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    case 0xA:
      v5 = MEMORY[0x277D25100];
      break;
    case 0xB:
      v5 = MEMORY[0x277D250F0];
      break;
    default:
      sub_25BC8FACC();
      sub_25BADDD28("mlModelSpecDataType", 19, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Serialization/MLFeatureType.swift", 109, 2, 433);
  }

  v6 = *v5;
  v7 = sub_25BCB5B8C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a3, v6, v7);
}

uint64_t _s14NeuralNetworks16FeatureInputTypeO11ColorLayoutO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

unint64_t sub_25BBAAE94()
{
  result = qword_27FBB5D88;
  if (!qword_27FBB5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D88);
  }

  return result;
}

unint64_t sub_25BBAAEEC()
{
  result = qword_27FBB5D90;
  if (!qword_27FBB5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D90);
  }

  return result;
}

uint64_t sub_25BBAAF58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 24))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 59) >> 2) & 1 | (2 * ((*(a1 + 16) >> 59) & 2 | (*(a1 + 16) >> 2) & 1))) ^ 7;
      if (v2 >= 6)
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

uint64_t sub_25BBAAFA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 3 | (4 * (-a2 & 7));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((v3 << 59) | (4 * v3)) & 0x3000000000000004;
    }
  }

  return result;
}

uint64_t sub_25BBAB050(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FE && *(a1 + 24))
    {
      v2 = *a1 + 2045;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 53) >> 9) | (4 * ((*(a1 + 8) >> 60) & 0x8F | (16 * (*(a1 + 16) & 7)) | (*(a1 + 16) >> 53) & 0x180))) ^ 0x7FF;
      if (v2 >= 0x7FD)
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

uint64_t sub_25BBAB0AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2046;
    if (a3 >= 0x7FE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF | ((-a2 & 0x7FF) << 9);
      *result = 0;
      *(result + 8) = v3 << 60;
      *(result + 16) = ((v3 >> 4) | (v3 << 53)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BBAB11C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 8) &= 0xFFFFFFFFFFFFFFFuLL;
  *(result + 16) = v2;
  return result;
}

unsigned __int16 *getEnumTagSinglePayload for FeatureOutputType(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *(result + 1);
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65282;
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 16)) - 65282);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FeatureOutputType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BBAB2E0(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BBAB2FC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

_BYTE *sub_25BBAB32C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BBAB404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v65 = a2;
  v7 = sub_25BCB5B8C();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D98, &qword_25BCC6828);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v57 - v15;
  sub_25BCB5B4C();
  OUTLINED_FUNCTION_2();
  v62 = v17;
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v20 = (v19 - v18);
  sub_25BCB5B7C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = *v4;
  v29 = *(a1 + 152);
  v30 = *(a1 + 160);
  if ((*v4 & 0xFF00) == 0x200)
  {
    LOBYTE(v68) = v30;
    sub_25BBAAC68(v23, v13);
    sub_25BCB5B3C();
    return (*(v9 + 8))(v13, v7);
  }

  v61 = a4;
  v32 = *(v29 + 16);
  if ((v32 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_10_22();
    v70 = *(v29 + 16);
LABEL_22:
    v49 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v49);

    MEMORY[0x25F876C90](0x756F20726F662060, 0xEE00272074757074);
    MEMORY[0x25F876C90](v65, v66);
    MEMORY[0x25F876C90](11815, 0xE200000000000000);
    v50 = v68;
    v51 = v69;
    sub_25BB0A3A4();
    swift_allocError();
    *v52 = v50;
    v52[1] = v51;
    return swift_willThrow();
  }

  v59 = v22;
  v60 = v27;
  v58 = v24;
  v33 = v32 - 1;
  if ((v28 & 0x100) != 0)
  {
    v34 = v32 == 4;
  }

  else
  {
    v34 = v32 - 1;
  }

  v68 = v29;
  v35 = TensorShape.subscript.getter(v34);
  if ((v28 & 0xFE) != 0)
  {
    v36 = 1;
  }

  else
  {
    v36 = 3;
  }

  if (v35 != v36)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    MEMORY[0x25F876C90](0xD000000000000030, 0x800000025BCDEE80);
    v70 = v36;
    OUTLINED_FUNCTION_23_0();
    v48 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v48);

    MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDEEC0);
    LOBYTE(v70) = v28;
    sub_25BCB73CC();
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_12_21();
    v67 = TensorShape.subscript.getter(v34);
    OUTLINED_FUNCTION_5_32();
    goto LABEL_22;
  }

  v37 = v32 - 2;
  if ((v28 & 0x100) != 0)
  {
    v38 = v32 - 2;
  }

  else
  {
    v38 = v32 - 3;
  }

  if ((v28 & 0x100) != 0)
  {
    v39 = v33;
  }

  else
  {
    v39 = v37;
  }

  v68 = v29;
  TensorShape.subscript.getter(v39);
  OUTLINED_FUNCTION_12_21();
  TensorShape.subscript.getter(v38);
  v40 = *MEMORY[0x277D250B8];
  v41 = v63;
  v42 = *(v62 + 104);
  v42(v20, v40, v63);
  sub_25BCB5B6C();
  if (v28)
  {
    v43 = v64;
    if (v28 == 1)
    {
      v42(v64, *MEMORY[0x277D250B0], v41);
      OUTLINED_FUNCTION_8_26();
      v44 = v60;
      sub_25BCB5B5C();
      v45 = v61;
      (*(v58 + 32))(v61, v44, v59);
      v46 = *MEMORY[0x277D25120];
      sub_25BCB5B9C();
      OUTLINED_FUNCTION_4_34();
      return (*(v47 + 104))(v45, v46);
    }

    v42(v64, *MEMORY[0x277D250C0], v41);
    OUTLINED_FUNCTION_8_26();
    v54 = v60;
    sub_25BCB5B5C();
    v53 = v61;
    if (v30 != 8)
    {
      goto LABEL_27;
    }

    v40 = *MEMORY[0x277D250A8];
  }

  else
  {
    v53 = v61;
    v43 = v64;
  }

  v42(v43, v40, v41);
  OUTLINED_FUNCTION_8_26();
  v54 = v60;
  sub_25BCB5B5C();
LABEL_27:
  (*(v58 + 32))(v53, v54, v59);
  v55 = *MEMORY[0x277D25120];
  sub_25BCB5B9C();
  OUTLINED_FUNCTION_4_34();
  return (*(v56 + 104))(v53, v55);
}

uint64_t sub_25BBABA44(uint64_t a1)
{
  v1 = *(a1 + 88);
  v5[2] = a1;
  v2 = sub_25BBFC060(sub_25BBABC10, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v7 = sub_25BCB614C();
  v3 = sub_25BAF9B54(v2);

  v6 = v3;
  sub_25BAFC990();
  return v6;
}

uint64_t sub_25BBABAF8(uint64_t a1)
{
  v1 = *(a1 + 152);
  v5[2] = a1;
  v2 = sub_25BBFC060(sub_25BBABC30, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v7 = sub_25BCB614C();
  v3 = sub_25BAF9B54(v2);

  v6 = v3;
  sub_25BAFC990();
  return v6;
}

uint64_t sub_25BBABBAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 160);
  sub_25BCB617C();
  result = sub_25BC458D0();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ComputePrecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BBABD24(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&var1, a1);
  if (var1 - 8 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10000u >> (8 * (var1 - 8));
  }
}

uint64_t sub_25BBABDB0(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25BBABDEC@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BBABDB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BBABE18@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25BBABDC8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_25BBABE44()
{
  result = qword_28154F2D0;
  if (!qword_28154F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F2D0);
  }

  return result;
}

uint64_t sub_25BBABF10(char a1)
{
  if (a1)
  {
    return 0x656C676E6973;
  }

  else
  {
    return 1718378856;
  }
}

__n128 sub_25BBABF48@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 184);
  result = *(v1 + 194);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BBABF6C(uint64_t a1)
{
  result = sub_25BBABFF4(&qword_28154F488, &unk_25BCC6A1C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBABFB0(uint64_t a1)
{
  result = sub_25BBABFF4(qword_28154F490, &unk_25BCC69D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBABFF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OneHotOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBAC034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA8, &qword_25BCC6A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BBAC09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BBAC0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OUTLINED_FUNCTION_15_21(a1, a2, a3, "key value ", a5, a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_25BCB690C();
  v14 = *(v11 + 48);
  (*(*(a6 - 8) + 32))(a1, v13, a6);
  return (*(*(a7 - 8) + 32))(a2, &v13[v14], a7);
}

uint64_t sub_25BBAC20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BCB605C();
  sub_25BCB617C();
  swift_getTupleTypeMetadata2();
  sub_25BCB68CC();
  swift_getWitnessTable();
  sub_25BCB65BC();

  OUTLINED_FUNCTION_11_25();
  sub_25BCB68CC();
  swift_getWitnessTable();
  v5 = sub_25BCB70AC();

  return v5;
}

void sub_25BBAC340(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v22 = *(result + 16);
  v20 = result + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_2:
    v5 = v3;
    if (v3 == v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      v23 = sub_25BCB614C();
      sub_25BAD8324(v23);
      return;
    }

    if (v3 >= v22)
    {
      break;
    }

    ++v3;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_23;
    }

    v6 = (v20 + 24 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *a3;
    if (*(*a3 + 16))
    {
      sub_25BCB79CC();
      sub_25BCB617C();

      sub_25BCB617C();
      sub_25BCB625C();
      v11 = sub_25BCB7A3C();
      v12 = ~(-1 << *(v10 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v10 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(v10 + 48) + 16 * v13);
        if (*v14 != v8 || v14[1] != v7)
        {
          v16 = sub_25BCB789C();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_25BCB617C();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_12_22(*(v4 + 16));
    }

    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_25BAD8238(v17 > 1, v18 + 1, 1);
    }

    *(v4 + 16) = v18 + 1;
    v19 = (v4 + 24 * v18);
    v19[4] = v8;
    v19[5] = v7;
    v19[6] = v9;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_25BBAC568()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v11 = sub_25BCB61BC();
  if (!v15)
  {
    goto LABEL_5;
  }

  if (!*(v15 + 16))
  {

LABEL_5:
    OUTLINED_FUNCTION_11_25();
    sub_25BCB67CC();
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v11);
  v14[2] = v5;
  v14[3] = v3;
  v14[4] = v1;
  v14[5] = v9;
  v14[6] = v7;
  v12 = sub_25BB074EC();
  sub_25BAB2B20(sub_25BBAEDD8, v14, v10, v3, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);

LABEL_6:
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBAC69C()
{
  OUTLINED_FUNCTION_3_30();
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_5_33(v1);
  sub_25BCB67CC();
  sub_25BCB614C();
  OUTLINED_FUNCTION_2_41();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_41();
  swift_getTupleTypeMetadata2();
  v2 = sub_25BCB73BC();

  v3 = OUTLINED_FUNCTION_2_41();
  v6 = type metadata accessor for KeyValuePairsCollection(v3, v4, v5, v0);
  sub_25BBACA6C(v6);
  return v2;
}

uint64_t sub_25BBAC76C()
{
  OUTLINED_FUNCTION_3_30();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_5_33(v2);
  sub_25BCB67CC();
  sub_25BCB614C();
  v3 = OUTLINED_FUNCTION_2_41();
  v6 = type metadata accessor for KeyValuePairsCollection(v3, v4, v5, v0);
  sub_25BBACA6C(v6);
  return v1;
}

uint64_t sub_25BBAC7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a4;
  v29 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v24 - v10;
  v12 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v9 + 16);
  v26 = a1;
  v25(v11, a1, TupleTypeMetadata2, v14);
  v17 = *(TupleTypeMetadata2 + 48);
  sub_25BCB6A4C();
  v18 = sub_25BCB6A1C();
  v27 = v12;
  (*(v12 + 8))(v16, a3);
  v19 = v28;
  v20 = *(*(v28 - 8) + 8);
  v20(&v11[v17], v28);
  if ((v18 & 1) == 0)
  {
    return __swift_storeEnumTagSinglePayload(v29, 1, 1, a3);
  }

  (v25)(v11, v26, TupleTypeMetadata2);
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = v29;
  (*(v27 + 32))(v29, v11, a3);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, a3);
  return (v20)(&v11[v21], v19);
}

uint64_t sub_25BBACA6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v54 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v43 - v8;
  MEMORY[0x28223BE20](v9);
  v50 = &v43 - v10;
  MEMORY[0x28223BE20](v11);
  v63 = &v43 - v12;
  v13 = swift_getTupleTypeMetadata2();
  v58 = sub_25BCB6E8C();
  v14 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v43 - v17);
  v19 = *v1;
  v66 = v1 + 1;
  v68[1] = v19;
  v52 = TupleTypeMetadata2;
  v20 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F876DF0](v68, v20, WitnessTable);
  v67 = v68[0];
  sub_25BCB754C();
  sub_25BCB751C();
  v22 = sub_25BCB753C();
  v55 = (v14 + 32);
  v56 = v22;
  v53 = v3;
  v47 = v3 - 8;
  v65 = v2;
  v46 = v2 - 8;
  v45 = (v5 + 16);
  v44 = (v5 + 8);
  v49 = v13;
  v48 = v18;
  while (1)
  {
    v23 = v57;
    sub_25BCB752C();
    (*v55)(v18, v23, v58);
    if (__swift_getEnumTagSinglePayload(v18, 1, v13) == 1)
    {
      break;
    }

    v24 = *v18;
    v25 = v18 + *(v13 + 48);
    v27 = v52;
    v26 = v53;
    v28 = *(v52 + 48);
    v61 = *(v53 - 8);
    v62 = v24;
    v59 = *(v61 + 32);
    v29 = v50;
    v59(v50, v25, v53);
    v30 = v65;
    v60 = *(v65 - 8);
    v31 = *(v60 + 32);
    v31(&v29[v28], &v25[v28], v65);
    v32 = *(v27 + 48);
    v33 = v63;
    v59(v63, v29, v26);
    v31(&v33[v32], &v29[v28], v30);
    v34 = *v45;
    (*v45)(v64, v33, v27);
    v35 = v51;
    v34(v51, v33, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v36 = v26;
    sub_25BCB61BC();
    if (v68[0])
    {
      v37 = v68[0];
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    v38 = *(v27 + 48);
    v39 = *(v60 + 8);
    v40 = v65;
    v39(&v35[v38], v65);
    (*(v61 + 8))(v35, v36);
    v68[0] = v37;
    sub_25BA95FB0(v62);
    v18 = v48;
    sub_25BCB61AC();
    v41 = v64;
    sub_25BCB61CC();
    (*v44)(v63, v27);
    v39(&v41[v38], v40);
    v13 = v49;
  }
}

uint64_t sub_25BBAD020@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v10 - v7;
  sub_25BCB690C();
  (*(*(a2 - 8) + 32))(a3, &v8[*(TupleTypeMetadata2 + 48)], a2);
  return (*(*(a1 - 8) + 8))(v8, a1);
}

uint64_t sub_25BBAD17C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_25BBAD1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();

  return sub_25BCB674C();
}

uint64_t sub_25BBAD210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();

  return sub_25BCB681C();
}

uint64_t sub_25BBAD268()
{
  OUTLINED_FUNCTION_7_25();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x2821FC2F0](v1, v0, TupleTypeMetadata2);
}

uint64_t sub_25BBAD2BC()
{
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_16_25(v0, v1, v2, "key value ", v3, v4);
  v5 = OUTLINED_FUNCTION_9_26();

  return MEMORY[0x2821FC338](v5, v6, v7, v8);
}

uint64_t sub_25BBAD304()
{
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_16_25(v0, v1, v2, "key value ", v3, v4);
  v5 = OUTLINED_FUNCTION_9_26();

  return MEMORY[0x2821FC308](v5, v6, v7, v8);
}

uint64_t sub_25BBAD34C()
{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_21(v0, v1, v2, "key value ", v3, v4, v5);
  return sub_25BCB684C();
}

uint64_t sub_25BBAD39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25BBAD1B8(*v3, a2, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_25BBAD3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25BBAD210(*v3, a2, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  return result;
}

void (*sub_25BBAD404(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v9 = a3[2];
  v8 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v7[6] = v12;
  v13 = sub_25BBAD5FC(v7, *a2, *v3, v3[1], v9, v8);
  v15 = v14;
  v7[7] = v13;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v15, v8);
  return sub_25BBAD584;
}

void sub_25BBAD584(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_25BBAD5FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  a1[1] = v12;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  a1[2] = v13;
  sub_25BBAC0F0(v13, v13 + *(TupleTypeMetadata2 + 48), a2, a3, v14, a5, a6);
  return sub_25BB4B344;
}

uint64_t sub_25BBAD6FC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_25BCB6A9C();
}

uint64_t sub_25BBAD77C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BBAD268();
  *a1 = result;
  return result;
}

uint64_t sub_25BBAD7B4(uint64_t *a1)
{
  result = sub_25BBAD268();
  *a1 = result;
  return result;
}

uint64_t sub_25BBAD7EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_25BCB617C();
  sub_25BCB617C();
  v9 = sub_25BBAD1B8(v5, v8, v6, v7);

  a2[2] = v9;
  return result;
}

uint64_t sub_25BBAD860(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25BBAD8B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t sub_25BBAD908()
{
  OUTLINED_FUNCTION_7_25();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x2821FC2F8](v1, v0, TupleTypeMetadata2);
}

uint64_t sub_25BBAD95C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BBAD908();
  *a1 = result;
  return result;
}

uint64_t sub_25BBAD994(uint64_t *a1)
{
  result = sub_25BBAD908();
  *a1 = result;
  return result;
}

uint64_t sub_25BBAD9CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_25BBAD34C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_25BBADA10()
{
  OUTLINED_FUNCTION_9_18();
  v57 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v15 - 8);
  v62 = v48 - v16;
  v72 = v14;
  v73 = v12;
  v58 = v12;
  v17 = OUTLINED_FUNCTION_11_25();
  type metadata accessor for KeyValuePairsCollection(v17, v18, v4, v2);
  swift_getWitnessTable();
  v19 = sub_25BCB6B4C();
  v63 = v10;
  v64 = v10;
  v59 = v8;
  v65 = v8;
  if (v19 != sub_25BCB6B4C())
  {
    goto LABEL_29;
  }

  v72 = sub_25BBAC20C(v14, v20, v6, v4, v2);
  OUTLINED_FUNCTION_11_25();
  sub_25BCB709C();
  swift_getWitnessTable();
  v21 = OUTLINED_FUNCTION_6_35();
  v72 = sub_25BBAC20C(v63, v22, v6, v4, v2);
  OUTLINED_FUNCTION_6_35();
  sub_25BCB617C();
  sub_25BCB69EC();

  v23 = sub_25BCB6A2C();

  if ((v23 & 1) == 0)
  {

LABEL_29:
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v55 = v4;
  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_25BCB705C();
    sub_25BCB6A3C();
    v21 = v72;
    v50 = v73;
    v24 = v74;
    v25 = v75;
    v26 = v76;
  }

  else
  {
    v25 = 0;
    v27 = -1 << *(v21 + 32);
    v28 = *(v21 + 56);
    v50 = v21 + 56;
    v24 = ~v27;
    v29 = -v27;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & v28;
  }

  v48[1] = v24;
  v49 = (v24 + 64) >> 6;
  v52 = v6 - 8;
  v53 = v21;
  v51 = v14;
  while (1)
  {
    v54 = v25;
    if ((v21 & 0x8000000000000000) == 0)
    {
      break;
    }

    v56 = v26;
    v34 = sub_25BCB706C();
    v31 = v55;
    v32 = v62;
    if (!v34)
    {
      v46 = OUTLINED_FUNCTION_17_22();
LABEL_26:
      sub_25BAB3820(v46);
      goto LABEL_29;
    }

    sub_25BCB787C();
    swift_unknownObjectRelease();
    v61 = v56;
LABEL_22:
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v6);
    sub_25BBAC568();
    v37 = v36;
    sub_25BBAC568();
    v39 = v38;
    (*(*(v6 - 8) + 8))(v32, v6);
    v40 = sub_25BCB681C();
    if (v40 != sub_25BCB681C())
    {

LABEL_28:
      OUTLINED_FUNCTION_8_27();
      sub_25BAB3820(v47);
      goto LABEL_29;
    }

    v64 = v37;
    v68 = v39;
    v41 = sub_25BCB68CC();
    OUTLINED_FUNCTION_7_2();
    WitnessTable = swift_getWitnessTable();
    sub_25BCB793C();

    v60 = v48;
    v68 = v70;
    v69 = v71;
    MEMORY[0x28223BE20](v43);
    v48[-4] = v6;
    v48[-3] = v31;
    v44 = v57;
    v48[-2] = v2;
    v48[-1] = v44;
    v64 = v41;
    v65 = v41;
    v66 = WitnessTable;
    v67 = WitnessTable;
    sub_25BCB715C();
    swift_getWitnessTable();
    v45 = sub_25BCB65AC();

    v26 = v61;
    v21 = v53;
    if ((v45 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v31 = v55;
  v32 = v62;
  if (v26)
  {
    v56 = v26;
    v33 = v26;
LABEL_21:
    v61 = (v33 - 1) & v33;
    (*(*(v6 - 8) + 16))(v62, *(v21 + 48) + *(*(v6 - 8) + 72) * (__clz(__rbit64(v33)) | (v25 << 6)), v6);
    goto LABEL_22;
  }

  v35 = v25;
  while (1)
  {
    v25 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v25 >= v49)
    {
      OUTLINED_FUNCTION_17_22();
      OUTLINED_FUNCTION_8_27();
      goto LABEL_26;
    }

    v33 = *(v50 + 8 * v25);
    ++v35;
    if (v33)
    {
      v56 = 0;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_25BBAE088()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v36 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v39 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  v48 = v11;
  v40 = v9;
  v41 = v7;
  v42 = v9;
  v43 = v7;
  v44 = v5;
  v45 = v3;
  v37 = v3;
  v38 = v1;
  v46 = v1;
  sub_25BCB68CC();
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  v21 = sub_25BCB664C();

  sub_25BCB617C();
  v22 = sub_25BCB674C();

  v48 = v22;
  if (v22 == sub_25BCB681C())
  {
LABEL_2:

    OUTLINED_FUNCTION_10_16();
    return;
  }

  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v40;
  v34 = (v39 + 16);
  v35 = v23;
  v32 = v41 - 8;
  v33 = v40 - 8;
  v25 = (v39 + 8);
  while (1)
  {
    v26 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v26 & 1) == 0)
    {
      break;
    }

    (*(v39 + 16))(v20, v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v22, TupleTypeMetadata2);
LABEL_6:
    sub_25BCB68AC();
    v27 = *(TupleTypeMetadata2 + 48);
    (*(*(v24 - 8) + 32))(v17, v20, v24);
    (*(*(v41 - 8) + 32))(&v17[v27], &v20[v35], v41);
    sub_25BCB624C();
    sub_25BCB624C();
    (*v25)(v17, TupleTypeMetadata2);
    v28 = sub_25BCB681C();
    v22 = v48;
    if (v48 == v28)
    {
      goto LABEL_2;
    }
  }

  v29 = sub_25BCB717C();
  if (v31 == 8)
  {
    v47 = v29;
    (*v34)(v20, &v47, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BBAE3F0()
{
  sub_25BCB79CC();
  sub_25BBAE088();
  return sub_25BCB7A3C();
}

uint64_t sub_25BBAE4A0(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BBAE088();
  return sub_25BCB7A3C();
}

void sub_25BBAE500()
{
  OUTLINED_FUNCTION_9_18();
  v59 = v1;
  v3 = *(v2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_50();
  v60 = v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = swift_getTupleTypeMetadata2();
  v58 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v57 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = (&v46 - v20);
  v54 = v0;
  v64 = *v0;
  v22 = sub_25BCB68CC();
  OUTLINED_FUNCTION_7_2();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F876DF0](&v61, v22, WitnessTable);
  v63 = v61;
  sub_25BCB754C();
  sub_25BCB751C();
  v49 = v22;
  v24 = sub_25BCB753C();
  v55 = (v16 + 32);
  v56 = v24;
  v47 = (v6 + 16);
  v48 = v3 - 8;
  v53 = v6;
  v46 = v6 + 8;
  v50 = v21;
  for (i = v14; ; v14 = i)
  {
    v25 = v57;
    sub_25BCB752C();
    (*v55)(v21, v25, v58);
    if (__swift_getEnumTagSinglePayload(v21, 1, v14) == 1)
    {

      OUTLINED_FUNCTION_10_16();
      return;
    }

    v26 = *v21;
    v27 = *(TupleTypeMetadata2 + 48);
    v28 = *(v21 + *(v14 + 48) + v27);
    v29 = *(v3 - 8);
    v30 = *(v29 + 32);
    v31 = v3;
    v32 = v52;
    v30(v52);
    *&v32[v27] = v28;
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = v32;
    v3 = v31;
    (v30)(v13, v34, v31);
    *&v13[v33] = v28;
    (*v47)(v60, v13, TupleTypeMetadata2);

    v35 = *&v13[v33];
    v36 = &protocol witness table for Int8;
    v37 = MEMORY[0x277D84900];
    switch(*(*(v35 + 16) + 160))
    {
      case 1:
        v37 = MEMORY[0x277D84958];
        v36 = &protocol witness table for Int16;
        break;
      case 2:
        v37 = MEMORY[0x277D849A8];
        v36 = &protocol witness table for Int32;
        break;
      case 3:
        v37 = MEMORY[0x277D83B88];
        v36 = &protocol witness table for Int;
        break;
      case 4:
        v37 = MEMORY[0x277D84B78];
        v36 = &protocol witness table for UInt8;
        break;
      case 5:
        v37 = MEMORY[0x277D84C58];
        v36 = &protocol witness table for UInt16;
        break;
      case 6:
        v37 = MEMORY[0x277D84CC0];
        v36 = &protocol witness table for UInt32;
        break;
      case 7:
        v37 = MEMORY[0x277D84D38];
        v36 = &protocol witness table for UInt64;
        break;
      case 8:
        v37 = MEMORY[0x277D84DC8];
        v36 = &protocol witness table for Float16;
        break;
      case 9:
        v36 = sub_25BB18AFC();
        v37 = &type metadata for BFloat16;
        break;
      case 0xA:
        v37 = MEMORY[0x277D83A90];
        v36 = &protocol witness table for Float;
        break;
      case 0xB:
        v37 = MEMORY[0x277D839F8];
        v36 = &protocol witness table for Double;
        break;
      case 0xC:
        v37 = MEMORY[0x277D839B0];
        v36 = &protocol witness table for Bool;
        break;
      default:
        break;
    }

    v38 = sub_25BBABD24(v37, v36);
    if (v38 != 2 && *(v59 + 40) == 2 && (v38 & 1) != 0)
    {
      break;
    }

    v61 = v35;

    Tensor.place(on:)(v59);
    v39 = v61;
    v40 = v54;
    sub_25BCB67BC();
    v41 = *v40;
    sub_25BC19AE4(v26, *v40, TupleTypeMetadata2);
    v42 = v53;
    v43 = v41 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v53 + 72) * v26;
    (*(v29 + 40))(v43, v60, v31);
    *(v43 + *(TupleTypeMetadata2 + 48)) = v39;

    nullsub_1();
    (*(v42 + 8))(v13, TupleTypeMetadata2);
    v21 = v50;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000002ALL, 0x800000025BCDF0B0);
  v44 = ComputeDevice.description.getter();
  MEMORY[0x25F876C90](v44);

  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDF0E0);
  MEMORY[0x25F876C90](0x656C676E6973, 0xE600000000000000);
  MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCDF100);
  v45 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v45);

  MEMORY[0x25F876C90](0xD000000000000028, 0x800000025BCDF130);
  sub_25BCB74CC("Fatal error", 11, 2, v61, v62, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", 95, 2, 94);
  __break(1u);
}

uint64_t sub_25BBAEB80()
{
  OUTLINED_FUNCTION_4_35();
  v4 = v0;
  type metadata accessor for KeyValuePairsCollection(0, v1, &type metadata for Tensor, v2);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BBAE500();
  return v4;
}

uint64_t sub_25BBAEBF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BBAEB80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BBAF110(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_25BCBAE50;
      *(v3 + 32) = v2;
      swift_retain_n();

      *(v3 + 40) = sub_25BAC42B0();
      *(v3 + 48) = v4;

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t acos(_:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    LOBYTE(v55) = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v42 = v0;
    v43 = &v55;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_5_34();
    sub_25BADDD28(v36, v37, v38, v39, v40, v41, 32);
  }

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_15_22();
  *&v55 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryArithmeticOps.swift";
  *(&v55 + 1) = 120;
  v56 = 2;
  v57 = xmmword_25BCC6DB0;
  v58 = "init(id:operator:operand:creationSite:backward:)";
  v59 = 48;
  v60 = 2;
  v2 = type metadata accessor for UnaryArithmeticOperation();
  OUTLINED_FUNCTION_23_16(v2);
  OUTLINED_FUNCTION_10_23(0, 0, 0, 1, v3, &v55);
  v4 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v4, v54);
  sub_25BAA51C8(v54, v53);
  v5 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v6 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v6, v7, v8, v9, v10, v11, v12, v13, v42);

  v14 = v52;

  sub_25BAA4AF4(&v42);
  v15 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v15, v16, v17, v18, v19, v20, v21, v22, v42);

  OUTLINED_FUNCTION_21_18(v23, v24, v25, v26, v27, v28, v29, v30, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_25BAA4AF4(&v42);
  v31 = type metadata accessor for TensorRepresentation();
  v32 = OUTLINED_FUNCTION_16_3(v31);
  LOBYTE(v42) = 1;
  sub_25BABE62C(v1, 0, v53, 0x100000000, v14, v5, v32);
  v33 = OUTLINED_FUNCTION_17_7();
  v34 = OUTLINED_FUNCTION_15_7(v33);
  OUTLINED_FUNCTION_13_22(v34);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v54);
  *v0 = v5;
  return result;
}

uint64_t sub_25BBAF3C4(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v10 = MEMORY[0x277D84F90];
      v9 = v4;
      sub_25BAA51C8(v12, v8);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v10, &unk_286D44F98, &v9, v8, &v11);
      sub_25BA9C2C8(v12);
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *&v12[0] = v2;
      static Tensor.- prefix(_:)(v12);
      v11 = v5;
      *&v12[0] = v3;
      Tensor.squared()();
      static Tensor.- infix(_:_:)();

      v11 = *&v12[0];
      rsqrt(_:)(&v10, &v11);

      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v12[0];

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

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

uint64_t sub_25BBAF874(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v10 = MEMORY[0x277D84F90];
      v9 = v4;
      sub_25BAA51C8(v12, v8);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v10, &unk_286D44FC0, &v9, v8, &v11);
      sub_25BA9C2C8(v12);
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      v8[0] = v2;
      *&v12[0] = v3;
      Tensor.squared()();
      v10 = v5;
      static Tensor.- infix(_:_:)();

      v11 = *&v12[0];
      rsqrt(_:)(&v10, &v11);

      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v12[0];

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

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

uint64_t sub_25BBAFD4C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t *, uint64_t *))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      OUTLINED_FUNCTION_29_13();
      OUTLINED_FUNCTION_8_28();
      OUTLINED_FUNCTION_16_26(v8, v33);

      v17 = OUTLINED_FUNCTION_17_23(v9, v10, v11, v12, v13, v14, v15, v16, v34, v36, v37, v38, v39, v40, v41, v42, v43);
      Tensor.init(shape:coercingScalars:scalarType:on:)(v17, v5, v18, v19, v20);
      sub_25BA9C2C8(v45);
      v21 = v44;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v23 = OUTLINED_FUNCTION_32_11(v22);
      *(v23 + 16) = xmmword_25BCBAE50;
      v44 = v21;
      v45[0] = v4;
      Tensor.squared()();
      a4(v45, &v44, &v43);

      v44 = v45[0];
      rsqrt(_:)(&v43, &v44);

      OUTLINED_FUNCTION_28_13(v24, v25, v26, v27, v28, v29, v30, v31, v35, v6);
      static Tensor.* infix(_:_:)();

      *(v23 + 32) = v45[0];

      *(v23 + 40) = sub_25BAC42B0();
      *(v23 + 48) = v32;

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB01F0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *, uint64_t *))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      OUTLINED_FUNCTION_29_13();
      OUTLINED_FUNCTION_8_28();
      OUTLINED_FUNCTION_16_26(v8, v33);

      v17 = OUTLINED_FUNCTION_17_23(v9, v10, v11, v12, v13, v14, v15, v16, v34, v36, v37, v38, v39, v40, v41, v42, v43);
      Tensor.init(shape:coercingScalars:scalarType:on:)(v17, v5, v18, v19, v20);
      sub_25BA9C2C8(v45);
      v21 = v44;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v23 = OUTLINED_FUNCTION_32_11(v22);
      *(v23 + 16) = xmmword_25BCBAE50;
      v44 = v4;
      v45[0] = v21;
      Tensor.squared()();
      a4(&v44, v45, &v43);

      OUTLINED_FUNCTION_28_13(v24, v25, v26, v27, v28, v29, v30, v31, v35, v6);
      static Tensor./ infix(_:_:)();

      *(v23 + 32) = v45[0];

      *(v23 + 40) = sub_25BAC42B0();
      *(v23 + 48) = v32;

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB0638(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_25BCBAE50;
      v7 = v2;

      static Tensor.- prefix(_:)(&v7);
      v7 = v3;
      sin(_:)(&v6, &v7);
      static Tensor.* infix(_:_:)();

      *(v4 + 32) = v7;

      *(v4 + 40) = sub_25BAC42B0();
      *(v4 + 48) = v5;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB0D60(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v10 = MEMORY[0x277D84F90];
      v9 = v4;
      sub_25BAA51C8(v12, v8);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v10, &unk_286D45088, &v9, v8, &v11);
      sub_25BA9C2C8(v12);
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *&v12[0] = v2;
      v8[0] = v3;
      exp2(_:)(&v11, v8);
      static Tensor.* infix(_:_:)();

      v11 = v5;
      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v12[0];

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

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

uint64_t exp10(_:)()
{
  OUTLINED_FUNCTION_35_10();
  v2 = *(*(v1 + 16) + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v22[0]) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v28[0] = v0;
    v28[1] = v22;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28(v12, v13, v14, v15, v16, v17, 228);
  }

  OUTLINED_FUNCTION_8_28();
  v4 = OUTLINED_FUNCTION_37_8(v3, v18, v20);
  OUTLINED_FUNCTION_36_9(v4, &unk_286D450B0, v5, v6, v7, v8, v9, v10, v19, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v23, v24, v25, v26, v27);
  sub_25BA9C2C8(v28);
  v28[0] = v1;
  pow(_:_:)();
}

uint64_t expMinusOne(_:)()
{
  OUTLINED_FUNCTION_35_10();
  v2 = *(*(v1 + 16) + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v25[0]) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v27[0] = v0;
    v27[1] = v25;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28(v17, v18, v19, v20, v21, v22, 235);
  }

  v27[0] = v1;
  exp(_:)(v27);
  OUTLINED_FUNCTION_8_28();
  v4 = OUTLINED_FUNCTION_16_26(v3, v23);
  v11 = OUTLINED_FUNCTION_17_23(v4, &unk_286D450D8, v5, v6, v7, v8, v9, v10, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v26);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v11, v12, v13, v14, v15);
  sub_25BA9C2C8(v27);
  static Tensor.- infix(_:_:)();
}

uint64_t sub_25BBB1280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v8, &unk_286D42270))
  {
    LOBYTE(v17[0]) = v8;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v22[0] = a4;
    v22[1] = v17;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28(v11, v12, v13, v14, v15, v16, a3);
  }

  v22[0] = v7;
  log(_:)(&v21, v22);
  OUTLINED_FUNCTION_8_28();
  v19 = MEMORY[0x277D84F90];
  v18 = v9;
  sub_25BAA51C8(v22, v17);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v19, a2, &v18, v17, &v20);
  sub_25BA9C2C8(v22);
  v22[0] = v20;
  log(_:)(v17, v22);

  static Tensor./ infix(_:_:)();
}

uint64_t log(onePlus:)()
{
  OUTLINED_FUNCTION_35_10();
  v2 = *(*(v1 + 16) + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v32[0]) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v38[0] = v0;
    v38[1] = v32;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28(v20, v21, v22, v23, v24, v25, 290);
  }

  OUTLINED_FUNCTION_8_28();
  v4 = OUTLINED_FUNCTION_37_8(v3, v26, v29);
  OUTLINED_FUNCTION_36_9(v4, &unk_286D45150, v5, v6, v7, v8, v9, v10, v27, v30, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v33, v34, v35, v36, v37);
  v11 = sub_25BA9C2C8(v38);
  OUTLINED_FUNCTION_28_13(v11, v12, v13, v14, v15, v16, v17, v18, v28, v31);
  static Tensor.+ infix(_:_:)();

  v32[0] = v38[0];
  log(_:)(v0, v32);
}

uint64_t log(oneMinusExp:)()
{
  OUTLINED_FUNCTION_35_10();
  v52[0] = v1;
  static Tensor.- prefix(_:)(v52);
  OUTLINED_FUNCTION_8_28();
  v3 = OUTLINED_FUNCTION_16_26(v2, v44);
  v10 = OUTLINED_FUNCTION_17_23(v3, &unk_286D45178, v4, v5, v6, v7, v8, v9, v45, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v50);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v10, v11, v12, v13, v14);
  sub_25BA9C2C8(v52);
  v52[0] = v51;
  log(_:)(v49, v52);

  static Tensor..< infix(_:_:)(v52, &v53, v49);

  v15 = v52[0];
  v49[0] = v1;

  v24 = OUTLINED_FUNCTION_28_13(v16, v17, v18, v19, v20, v21, v22, v23, v46, v49[0]);
  Tensor.init(onesLike:)(v24);
  v49[0] = v1;
  static Tensor.- prefix(_:)(v52);
  v51 = v15;
  Tensor.replacing(with:where:)(&v53, &v51, v52);

  v25 = exp(_:)(v52);
  v33 = OUTLINED_FUNCTION_28_13(v25, v26, v27, v28, v29, v30, v31, v32, v47, v49[0]);
  static Tensor.- prefix(_:)(v33);

  v49[0] = v52[0];
  log(onePlus:)();

  v52[0] = v1;
  v34 = expMinusOne(_:)();
  v42 = OUTLINED_FUNCTION_28_13(v34, v35, v36, v37, v38, v39, v40, v41, v48, v49[0]);
  static Tensor.- prefix(_:)(v42);

  v49[0] = v52[0];
  log(_:)(&v51, v49);

  v52[0] = v15;
  Tensor.replacing(with:where:)(&v51, v52, v0);
}

uint64_t sub_25BBB1834(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v11 = MEMORY[0x277D84F90];
      v10 = v4;
      sub_25BAA51C8(v12, v9);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, &unk_286D451A0, &v10, v9, &v8);
      sub_25BA9C2C8(v12);
      static Tensor.- prefix(_:)(&v8);

      *&v12[0] = v3;
      Tensor.squared()();
      static Tensor./ infix(_:_:)();

      v11 = v2;
      v8 = *&v12[0];

      static Tensor.* infix(_:_:)();

      v5 = v9[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *(v6 + 32) = v5;

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

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