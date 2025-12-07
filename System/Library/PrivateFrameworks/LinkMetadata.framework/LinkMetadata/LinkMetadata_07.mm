__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_18F024290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_18F0242D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18F024314(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093B5C();

  v4 = [v2 initWithTerm_];

  return v4;
}

id sub_18F024388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18F09324C();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_18F093B5C();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_18F093B5C();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  v12 = sub_18F0932BC();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

uint64_t sub_18F024498(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F0939AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18F09390C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EFB6E2C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92E8, &qword_18F0AA3C8);
  if (swift_dynamicCast())
  {
    sub_18F024924(v18, v21);
    v17[2] = v21[5];
    v17[3] = v21[4];
    v17[1] = v21[6];
    v12 = __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]);
    MEMORY[0x1EEE9AC00](v12);
    (*(v14 + 16))(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v7, a2, v4);
    sub_18F09391C();
    v15 = sub_18EFBA3B4();
    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_18F0248BC(v18);
    return 0;
  }

  return v15;
}

uint64_t sub_18F024760@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  *a5 = a2(v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

id sub_18F024850(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18F093B5C();

  v6 = [v3 initWithAmount:a1 currencyCode:v5];

  return v6;
}

uint64_t sub_18F0248BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92F0, &unk_18F0AA3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F024924(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_18F024944(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F0939FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_18F0289B0();
    v21 = sub_18F093AAC();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18F024B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (a1 + 64);
  while (2)
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v7 = *v4;
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    if (*(v4 - 4) != *(v3 - 4) || *(v4 - 3) != *(v3 - 3))
    {
      v12 = *(v3 - 1);
      v13 = *v3;
      v14 = sub_18F09444C();
      v10 = v13;
      v8 = v12;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 == 255)
    {
      if (v10 != 255)
      {
LABEL_36:
        v18 = v10;
        sub_18F025668(v6, v5, v7);
        sub_18F025668(v9, v8, v18);
        sub_18F0257F8(v6, v5, v7);
        v19 = v9;
        v20 = v8;
        v21 = v18;
        goto LABEL_40;
      }

      LOBYTE(v7) = -1;
      sub_18F025668(v6, v5, 255);
      sub_18F025668(v9, v8, 255);
      goto LABEL_33;
    }

    if (v10 == 255)
    {
      goto LABEL_36;
    }

    v24 = v10;
    switch(v7)
    {
      case 1:
        if (v10 != 1)
        {
          goto LABEL_38;
        }

        sub_18F025668(v6, v5, 1);

        sub_18F025668(v9, v8, 1);
        sub_18F025668(v6, v5, 1);
        sub_18F025668(v9, v8, 1);
        sub_18F025390(v6, v5, 1);
        sub_18F025390(v9, v8, 1);
        sub_18F0257F8(v6, v5, 1);
        v16 = v6 == v9;
        goto LABEL_28;
      case 2:
        if (v10 != 2)
        {
          goto LABEL_38;
        }

        sub_18F025668(v6, v5, 2);

        sub_18F025668(v9, v8, 2);
        sub_18F025668(v6, v5, 2);
        sub_18F025668(v9, v8, 2);
        sub_18F025390(v6, v5, 2);
        sub_18F025390(v9, v8, 2);
        sub_18F0257F8(v6, v5, 2);
        if (*&v6 == *&v9)
        {
          goto LABEL_32;
        }

        LOBYTE(v7) = 2;
        v22 = v24;
        goto LABEL_39;
      case 3:
        if (v10 != 3)
        {
          goto LABEL_38;
        }

        sub_18F025668(v6, v5, 3);

        sub_18F025668(v9, v8, 3);
        sub_18F025668(v6, v5, 3);
        sub_18F025668(v9, v8, 3);
        sub_18F025390(v6, v5, 3);
        sub_18F025390(v9, v8, 3);
        sub_18F0257F8(v6, v5, 3);
        v16 = v9 ^ v6 ^ 1;
LABEL_28:
        v23 = v16;
        goto LABEL_29;
      default:
        if (!v10)
        {
          if (v6 == v9 && v5 == v8)
          {
            sub_18F025668(v6, v5, 0);

            sub_18F025668(v6, v5, 0);

            sub_18F025668(v6, v5, 0);
            sub_18F025668(v6, v5, 0);
            sub_18F025668(v6, v5, 0);
            sub_18F025390(v6, v5, 0);
            sub_18F025390(v6, v5, 0);
LABEL_32:
            sub_18F0257F8(v6, v5, v7);

            sub_18F0257F8(v9, v8, v24);

LABEL_33:
            sub_18F0257F8(v6, v5, v7);
            goto LABEL_34;
          }

          v23 = sub_18F09444C();
          sub_18F025668(v6, v5, 0);

          sub_18F025668(v6, v5, 0);

          sub_18F025668(v9, v8, 0);
          sub_18F025668(v6, v5, 0);
          sub_18F025668(v9, v8, 0);
          sub_18F025390(v6, v5, 0);
          sub_18F025390(v9, v8, 0);
LABEL_29:
          sub_18F0257F8(v6, v5, v7);

          sub_18F0257F8(v9, v8, v24);

          sub_18F0257F8(v6, v5, v7);
          if ((v23 & 1) == 0)
          {
            return 0;
          }

LABEL_34:
          v4 += 5;
          v3 += 5;
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

        sub_18F025668(v6, v5, 0);

LABEL_38:

        sub_18F025668(v6, v5, v7);

        v22 = v24;
        sub_18F025668(v9, v8, v24);
        sub_18F025668(v6, v5, v7);
        sub_18F025668(v9, v8, v24);
        sub_18F025390(v6, v5, v7);
        sub_18F025390(v9, v8, v24);
        sub_18F0257F8(v6, v5, v7);
LABEL_39:
        sub_18F0257F8(v6, v5, v7);

        sub_18F0257F8(v9, v8, v22);

        v19 = v6;
        v20 = v5;
        v21 = v7;
LABEL_40:
        sub_18F0257F8(v19, v20, v21);
        return 0;
    }
  }
}

uint64_t sub_18F025158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t static SystemProtocolMetadata.DefaultValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_10;
      }

      v16 = OUTLINED_FUNCTION_244();
      sub_18F025390(v16, v17, 1);
      v18 = OUTLINED_FUNCTION_4_4();
      sub_18F025390(v18, v19, 1);
      v11 = *&v2 == *&v5;
      return v11 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_10;
      }

      v7 = OUTLINED_FUNCTION_244();
      sub_18F025390(v7, v8, 2);
      v9 = OUTLINED_FUNCTION_4_4();
      sub_18F025390(v9, v10, 2);
      v11 = v2 == v5;
      return v11 & 1;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_10;
      }

      v12 = OUTLINED_FUNCTION_244();
      sub_18F025390(v12, v13, 3);
      v14 = OUTLINED_FUNCTION_4_4();
      sub_18F025390(v14, v15, 3);
      v11 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v11 & 1;
    default:
      if (*(a2 + 16))
      {

LABEL_10:
        v20 = OUTLINED_FUNCTION_4_4();
        sub_18F02537C(v20, v21, v6);
        v22 = OUTLINED_FUNCTION_244();
        sub_18F025390(v22, v23, v4);
        v24 = OUTLINED_FUNCTION_4_4();
        sub_18F025390(v24, v25, v6);
        v11 = 0;
        return v11 & 1;
      }

      v27 = *a1;
      if (*&v2 == *&v5 && v3 == *(a2 + 8))
      {
        sub_18F02537C(*&v27, v3, 0);
        v40 = OUTLINED_FUNCTION_1_5();
        sub_18F02537C(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_1_5();
        sub_18F025390(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_1_5();
        sub_18F025390(v46, v47, v48);
        v11 = 1;
        return v11 & 1;
      }

      v29 = sub_18F09444C();
      v30 = OUTLINED_FUNCTION_4_4();
      sub_18F02537C(v30, v31, 0);
      v32 = OUTLINED_FUNCTION_1_5();
      sub_18F02537C(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_1_5();
      sub_18F025390(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_4_4();
      sub_18F025390(v38, v39, 0);
      return v29 & 1;
  }
}

uint64_t sub_18F02537C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_18F025390(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t SystemProtocolMetadata.DefaultValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      MEMORY[0x193AD9050](1);
      result = MEMORY[0x193AD9050](v2);
      break;
    case 2:
      MEMORY[0x193AD9050](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      result = MEMORY[0x193AD9070](v4);
      break;
    case 3:
      MEMORY[0x193AD9050](3);
      result = sub_18F09454C();
      break;
    default:
      MEMORY[0x193AD9050](0);

      result = sub_18F093C1C();
      break;
  }

  return result;
}

uint64_t SystemProtocolMetadata.DefaultValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_18F09452C();
  SystemProtocolMetadata.DefaultValue.hash(into:)(v3);
  return sub_18F09456C();
}

uint64_t sub_18F0254C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_18F09452C();
  SystemProtocolMetadata.DefaultValue.hash(into:)(v4);
  return sub_18F09456C();
}

uint64_t SystemProtocolMetadata.AppIntentFieldValue.hashValue.getter()
{
  sub_18F09452C();
  MEMORY[0x193AD9050](0);
  sub_18F09454C();
  return sub_18F09456C();
}

uint64_t sub_18F0255D0(uint64_t a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](0);
  sub_18F09454C();
  return sub_18F09456C();
}

uint64_t SystemProtocolMetadata.Parameter.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SystemProtocolMetadata.Parameter.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_18F025668(v2, v3, v4);
}

uint64_t sub_18F025668(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_18F02537C(a1, a2, a3);
  }

  return a1;
}

__n128 SystemProtocolMetadata.Parameter.init(label:defaultValue:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

BOOL static SystemProtocolMetadata.Parameter.== infix(_:_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = v2 == *v4 && v3 == *(v4 + 8);
  if (v11 || (v12 = sub_18F09444C(), result = 0, (v12 & 1) != 0))
  {
    if (v7 == 255)
    {
      sub_18F025668(v1, v6, 255);
      if (v10 == 255)
      {
        sub_18F025668(v9, v8, 255);
        sub_18F0257F8(v1, v6, 255);
        return 1;
      }

      v33 = OUTLINED_FUNCTION_3_2();
      sub_18F025668(v33, v34, v35);
    }

    else
    {
      v53[0] = v1;
      v53[1] = v6;
      v54 = v7;
      if (v10 != 255)
      {
        v51[0] = v9;
        v51[1] = v8;
        v52 = v10;
        v14 = OUTLINED_FUNCTION_0_4();
        sub_18F025668(v14, v15, v16);
        v17 = OUTLINED_FUNCTION_3_2();
        sub_18F025668(v17, v18, v19);
        v20 = OUTLINED_FUNCTION_0_4();
        sub_18F025668(v20, v21, v22);
        v23 = static SystemProtocolMetadata.DefaultValue.== infix(_:_:)(v53, v51);
        v24 = OUTLINED_FUNCTION_3_2();
        sub_18F025390(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_0_4();
        sub_18F025390(v27, v28, v29);
        v30 = OUTLINED_FUNCTION_0_4();
        sub_18F0257F8(v30, v31, v32);
        return (v23 & 1) != 0;
      }

      v36 = OUTLINED_FUNCTION_0_4();
      sub_18F025668(v36, v37, v38);
      sub_18F025668(v9, v8, 255);
      v39 = OUTLINED_FUNCTION_0_4();
      sub_18F025668(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_0_4();
      sub_18F025390(v42, v43, v44);
    }

    v45 = OUTLINED_FUNCTION_0_4();
    sub_18F0257F8(v45, v46, v47);
    v48 = OUTLINED_FUNCTION_3_2();
    sub_18F0257F8(v48, v49, v50);
    return 0;
  }

  return result;
}

uint64_t sub_18F0257F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_18F025390(a1, a2, a3);
  }

  return a1;
}

uint64_t SystemProtocolMetadata.Parameter.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_18F093C1C();
  if (v5 == 255)
  {
    return sub_18F09454C();
  }

  sub_18F09454C();
  sub_18F02537C(v3, v4, v5);
  SystemProtocolMetadata.DefaultValue.hash(into:)(a1);

  return sub_18F025390(v3, v4, v5);
}

uint64_t SystemProtocolMetadata.Parameter.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F09454C();
  if (v3 != 255)
  {
    sub_18F02537C(v1, v2, v3);
    SystemProtocolMetadata.DefaultValue.hash(into:)(v5);
    sub_18F025390(v1, v2, v3);
  }

  return sub_18F09456C();
}

uint64_t sub_18F025990(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_18F09452C();
  SystemProtocolMetadata.Parameter.hash(into:)(v5);
  return sub_18F09456C();
}

uint64_t SystemProtocolMetadata.init(protocolName:systemProtocol:requiredParameters:overrideAppIntentFieldValue:deprecated:singleLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 41) = a7;
  return result;
}

uint64_t SystemProtocolMetadata.protocolName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static SystemProtocolMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_5_2(a1);
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 41);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v12 = *(v3 + 41);
  v13 = v1 == *v3 && v2 == *(v3 + 8);
  if (!v13 && (sub_18F09444C() & 1) == 0)
  {
    return 0;
  }

  sub_18EF825F4(0, &qword_1EACB9308, 0x1E69E58C0);
  if ((sub_18F093F1C() & 1) == 0 || (sub_18F024B28(v6, v9) & 1) == 0)
  {
    return 0;
  }

  v14 = sub_18F025158(v5, v10);
  if ((v7 ^ v11))
  {
    v15 = 0;
  }

  else
  {
    v15 = v8 ^ v12 ^ 1;
  }

  if (v14)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t SystemProtocolMetadata.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_18F093C1C();
  sub_18F093F2C();
  v4 = OUTLINED_FUNCTION_244();
  sub_18F02828C(v4, v5);
  sub_18F028230(a1, v3);
  sub_18F09454C();
  return sub_18F09454C();
}

uint64_t SystemProtocolMetadata.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F093F2C();
  sub_18F02828C(v4, v1);
  sub_18F028230(v4, v2);
  sub_18F09454C();
  sub_18F09454C();
  return sub_18F09456C();
}

uint64_t sub_18F025C80(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 3);
  v9 = v2;
  v10 = v3;
  sub_18F09452C();
  SystemProtocolMetadata.hash(into:)(v5);
  return sub_18F09456C();
}

void *sub_18F025CEC()
{
  result = sub_18F025D0C();
  off_1EACB92F8 = result;
  return result;
}

void *sub_18F025D0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8638, &qword_18F0A1278);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18F0AA3E0;
  v1 = objc_opt_self();
  v2 = [v1 cancelProtocol];
  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x800000018F0AEE70;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v3;
  *(v0 + 72) = 0;
  v4 = [v1 changeBinarySettingSystemProtocol];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9338, &qword_18F0AA7D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18F0AA3F0;
  *(v5 + 32) = 0x704F65676E616863;
  *(v5 + 40) = 0xEF6E6F6974617265;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = -1;
  *(v5 + 72) = 0x676E6974746573;
  *(v5 + 80) = 0xE700000000000000;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = -1;
  *(v0 + 80) = 0xD000000000000024;
  *(v0 + 88) = 0x800000018F0AEE90;
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 112) = v3;
  *(v0 + 120) = 0;
  v6 = [v1 closeEntityProtocol];
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18F09BCC0;
  *(v7 + 32) = 0x746567726174;
  *(v7 + 40) = 0xE600000000000000;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = -1;
  *(v0 + 128) = 0xD000000000000016;
  *(v0 + 136) = 0x800000018F0AEEC0;
  *(v0 + 144) = v6;
  *(v0 + 152) = v7;
  *(v0 + 160) = v3;
  *(v0 + 168) = 0;
  v8 = [v1 closeEntityProtocol];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18F09BCC0;
  *(v9 + 32) = 0x746567726174;
  *(v9 + 40) = 0xE600000000000000;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = -1;
  *(v0 + 176) = 0xD00000000000001CLL;
  *(v0 + 184) = 0x800000018F0AEEE0;
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v3;
  *(v0 + 216) = 1;
  v10 = [v1 copySystemProtocol];
  *(v0 + 224) = 0xD000000000000015;
  *(v0 + 232) = 0x800000018F0AEF00;
  *(v0 + 240) = v10;
  *(v0 + 248) = v3;
  *(v0 + 256) = v3;
  *(v0 + 264) = 0;
  v11 = [v1 createEntitySystemProtocol];
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18F09BCC0;
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = -1;
  *(v0 + 272) = 0xD000000000000018;
  *(v0 + 280) = 0x800000018F0AEF20;
  *(v0 + 288) = v11;
  *(v0 + 296) = v12;
  *(v0 + 304) = v3;
  *(v0 + 312) = 0;
  v13 = [v1 &off_1E72B1AF8];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18F09BCC0;
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = -1;
  *(v0 + 320) = 0xD00000000000001DLL;
  *(v0 + 328) = 0x800000018F0AEF40;
  *(v0 + 336) = v13;
  *(v0 + 344) = v14;
  *(v0 + 352) = v3;
  *(v0 + 360) = 1;
  v15 = [v1 cutSystemProtocol];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18F09BCC0;
  *(v16 + 32) = 0x797469746E65;
  *(v16 + 40) = 0xE600000000000000;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = -1;
  *(v0 + 368) = 0xD000000000000014;
  *(v0 + 376) = 0x800000018F0AEF60;
  *(v0 + 384) = v15;
  *(v0 + 392) = v16;
  *(v0 + 400) = v3;
  *(v0 + 408) = 0;
  v17 = [v1 deleteEntitySystemProtocol];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18F09BCC0;
  *(v18 + 32) = 0x7365697469746E65;
  *(v18 + 40) = 0xE800000000000000;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = -1;
  *(v0 + 416) = 0xD000000000000017;
  *(v0 + 424) = 0x800000018F0AEF80;
  *(v0 + 432) = v17;
  *(v0 + 440) = v18;
  *(v0 + 448) = v3;
  *(v0 + 456) = 0;
  v19 = [v1 deleteEntitySystemProtocol];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18F09BCC0;
  *(v20 + 32) = 0x7365697469746E65;
  *(v20 + 40) = 0xE800000000000000;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 64) = -1;
  *(v0 + 464) = 0xD00000000000001FLL;
  *(v0 + 472) = 0x800000018F0AEFA0;
  *(v0 + 480) = v19;
  *(v0 + 488) = v20;
  *(v0 + 496) = v3;
  *(v0 + 504) = 1;
  v21 = [v1 duplicateEntitySystemProtocol];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18F09BCC0;
  *(v22 + 32) = 0x7365697469746E65;
  *(v22 + 40) = 0xE800000000000000;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = -1;
  *(v0 + 512) = 0xD00000000000001ALL;
  *(v0 + 520) = 0x800000018F0AEFC0;
  *(v0 + 528) = v21;
  *(v0 + 536) = v22;
  *(v0 + 544) = v3;
  *(v0 + 552) = 0;
  v23 = [v1 duplicateEntitySystemProtocol];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18F09BCC0;
  *(v24 + 32) = 0x7365697469746E65;
  *(v24 + 40) = 0xE800000000000000;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = -1;
  *(v0 + 560) = 0xD000000000000022;
  *(v0 + 568) = 0x800000018F0AEFE0;
  *(v0 + 576) = v23;
  *(v0 + 584) = v24;
  *(v0 + 592) = v3;
  *(v0 + 600) = 1;
  v25 = [v1 favoriteEntityProtocol];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18F0AA3F0;
  *(v26 + 32) = 0x6F6974617265706FLL;
  *(v26 + 40) = 0xE90000000000006ELL;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  *(v26 + 64) = -1;
  *(v26 + 72) = 0x7365697469746E65;
  *(v26 + 80) = 0xE800000000000000;
  *(v26 + 88) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = -1;
  *(v0 + 608) = 0xD000000000000019;
  *(v0 + 616) = 0x800000018F0AF010;
  *(v0 + 624) = v25;
  *(v0 + 632) = v26;
  *(v0 + 640) = v3;
  *(v0 + 648) = 0;
  v27 = [v1 favoriteEntityProtocol];
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18F0AA3F0;
  *(v28 + 32) = 0x6F6974617265706FLL;
  *(v28 + 40) = 0xE90000000000006ELL;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  *(v28 + 64) = -1;
  *(v28 + 72) = 0x7365697469746E65;
  *(v28 + 80) = 0xE800000000000000;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = -1;
  *(v0 + 656) = 0xD000000000000021;
  *(v0 + 664) = 0x800000018F0AF030;
  *(v0 + 672) = v27;
  *(v0 + 680) = v28;
  *(v0 + 688) = v3;
  *(v0 + 696) = 1;
  v29 = [v1 moveSpatialProtocol];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18F0AA400;
  *(v30 + 32) = 0x7365697469746E65;
  *(v30 + 40) = 0xE800000000000000;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 64) = -1;
  *(v30 + 72) = 0x6F69746365726964;
  *(v30 + 80) = 0xE90000000000006ELL;
  *(v30 + 88) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = -1;
  *(v30 + 112) = 0x647574696E67616DLL;
  *(v30 + 120) = 0xE900000000000065;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 144) = -1;
  *(v0 + 704) = 0xD00000000000001ELL;
  *(v0 + 712) = 0x800000018F0AF060;
  *(v0 + 720) = v29;
  *(v0 + 728) = v30;
  *(v0 + 736) = &unk_1F02E2780;
  *(v0 + 744) = 0;
  v31 = [v1 moveSpatialProtocol];
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_18F0AA400;
  *(v32 + 32) = 0x7365697469746E65;
  *(v32 + 40) = 0xE800000000000000;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  *(v32 + 64) = -1;
  *(v32 + 72) = 0x6F69746365726964;
  *(v32 + 80) = 0xE90000000000006ELL;
  *(v32 + 88) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = -1;
  *(v32 + 112) = 0x647574696E67616DLL;
  *(v32 + 120) = 0xE900000000000065;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 144) = -1;
  *(v0 + 752) = 0xD000000000000026;
  *(v0 + 760) = 0x800000018F0AF080;
  *(v0 + 768) = v31;
  *(v0 + 776) = v32;
  *(v0 + 784) = &unk_1F02E27A8;
  *(v0 + 792) = 1;
  v33 = [v1 navigateSequentiallyProtocol];
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_18F09BCC0;
  *(v34 + 32) = 0x6F69746365726964;
  *(v34 + 40) = 0xE90000000000006ELL;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0;
  *(v34 + 64) = -1;
  *(v0 + 800) = 0xD000000000000025;
  *(v0 + 808) = 0x800000018F0AF0B0;
  *(v0 + 816) = v33;
  *(v0 + 824) = v34;
  *(v0 + 832) = &unk_1F02E27D0;
  *(v0 + 840) = 0;
  v35 = [v1 openEntitySystemProtocol];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_18F09BCC0;
  *(v36 + 32) = 0x746567726174;
  *(v36 + 40) = 0xE600000000000000;
  *(v36 + 48) = 0;
  *(v36 + 56) = 0;
  *(v36 + 64) = -1;
  *(v0 + 848) = 0xD000000000000015;
  *(v0 + 856) = 0x800000018F0AF0E0;
  *(v0 + 864) = v35;
  *(v0 + 872) = v36;
  v37 = MEMORY[0x1E69E7CC0];
  *(v0 + 880) = MEMORY[0x1E69E7CC0];
  *(v0 + 888) = 0;
  v38 = [v1 openEntitySystemProtocol];
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_18F09BCC0;
  *(v39 + 32) = 0x746567726174;
  *(v39 + 40) = 0xE600000000000000;
  *(v39 + 48) = 0;
  *(v39 + 56) = 0;
  *(v39 + 64) = -1;
  *(v0 + 896) = 0xD00000000000001BLL;
  *(v0 + 904) = 0x800000018F0AF100;
  *(v0 + 912) = v38;
  *(v0 + 920) = v39;
  *(v0 + 928) = &unk_1F02E27F8;
  *(v0 + 936) = 1;
  *(v0 + 937) = 0;
  v40 = [v1 pasteSystemProtocol];
  *(v0 + 944) = 0xD000000000000016;
  *(v0 + 952) = 0x800000018F0AF120;
  *(v0 + 960) = v40;
  *(v0 + 968) = v37;
  *(v0 + 976) = v37;
  *(v0 + 984) = 0;
  v41 = [v1 previewEntityProtocol];
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18F09BCC0;
  *(v42 + 32) = 0x797469746E65;
  *(v42 + 40) = 0xE600000000000000;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  *(v42 + 64) = -1;
  *(v0 + 992) = 0xD00000000000001ELL;
  *(v0 + 1000) = 0x800000018F0AF140;
  *(v0 + 1008) = v41;
  *(v0 + 1016) = v42;
  *(v0 + 1024) = v37;
  *(v0 + 1032) = 0;
  v43 = [v1 enterMarkupProtocol];
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_18F0AA3F0;
  *(v44 + 32) = 0x4D676E6974696465;
  *(v44 + 40) = 0xEB0000000065646FLL;
  *(v44 + 48) = 0;
  *(v44 + 56) = 0;
  *(v44 + 64) = -1;
  *(v44 + 72) = 0x797469746E65;
  *(v44 + 80) = 0xE600000000000000;
  *(v44 + 88) = 0;
  *(v44 + 96) = 0;
  *(v44 + 104) = -1;
  *(v0 + 1040) = 0xD00000000000001FLL;
  *(v0 + 1048) = 0x800000018F0AF160;
  *(v0 + 1056) = v43;
  *(v0 + 1064) = v44;
  *(v0 + 1072) = v37;
  *(v0 + 1080) = 0;
  v45 = [v1 progressReportingProtocol];
  *(v0 + 1088) = 0xD000000000000022;
  *(v0 + 1096) = 0x800000018F0AF180;
  *(v0 + 1104) = v45;
  *(v0 + 1112) = v37;
  *(v0 + 1120) = v37;
  *(v0 + 1128) = 0;
  v46 = [v1 enterMarkupProtocol];
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_18F0AA3F0;
  *(v47 + 32) = 0x4D676E6974696465;
  *(v47 + 40) = 0xEB0000000065646FLL;
  *(v47 + 48) = 0;
  *(v47 + 56) = 0;
  *(v47 + 64) = -1;
  *(v47 + 72) = 0x797469746E65;
  *(v47 + 80) = 0xE600000000000000;
  *(v47 + 88) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = -1;
  *(v0 + 1136) = 0xD00000000000001DLL;
  *(v0 + 1144) = 0x800000018F0AF1B0;
  *(v0 + 1152) = v46;
  *(v0 + 1160) = v47;
  *(v0 + 1168) = v37;
  *(v0 + 1176) = 0;
  v48 = [v1 exitMarkupProtocol];
  *(v0 + 1184) = 0xD00000000000001BLL;
  *(v0 + 1192) = 0x800000018F0AF1D0;
  *(v0 + 1200) = v48;
  *(v0 + 1208) = v37;
  *(v0 + 1216) = v37;
  *(v0 + 1224) = 0;
  v49 = [v1 putEntityInContainerProtocol];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_18F0AA3F0;
  *(v50 + 32) = 0x7365697469746E65;
  *(v50 + 40) = 0xE800000000000000;
  *(v50 + 48) = 0;
  *(v50 + 56) = 0;
  *(v50 + 64) = -1;
  *(v50 + 72) = 0x656E6961746E6F63;
  *(v50 + 80) = 0xE900000000000072;
  *(v50 + 88) = 0;
  *(v50 + 96) = 0;
  *(v50 + 104) = -1;
  *(v0 + 1232) = 0xD00000000000001FLL;
  *(v0 + 1240) = 0x800000018F0AF1F0;
  *(v0 + 1248) = v49;
  *(v0 + 1256) = v50;
  v51 = MEMORY[0x1E69E7CC0];
  *(v0 + 1264) = MEMORY[0x1E69E7CC0];
  *(v0 + 1272) = 0;
  v52 = [v1 putEntityInContainerProtocol];
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_18F0AA3F0;
  *(v53 + 32) = 0x7365697469746E65;
  *(v53 + 40) = 0xE800000000000000;
  *(v53 + 48) = 0;
  *(v53 + 56) = 0;
  *(v53 + 64) = -1;
  *(v53 + 72) = 0x656E6961746E6F63;
  *(v53 + 80) = 0xE900000000000072;
  *(v53 + 88) = 0;
  *(v53 + 96) = 0;
  *(v53 + 104) = -1;
  *(v0 + 1280) = 0xD000000000000027;
  *(v0 + 1288) = 0x800000018F0AF210;
  *(v0 + 1296) = v52;
  *(v0 + 1304) = v53;
  *(v0 + 1312) = v51;
  *(v0 + 1320) = 1;
  *(v0 + 1321) = 0;
  v54 = [v1 resizeProtocol];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_18F09BCC0;
  *(v55 + 32) = 0x726F697661686562;
  *(v55 + 40) = 0xE800000000000000;
  *(v55 + 48) = 0;
  *(v55 + 56) = 0;
  *(v55 + 64) = -1;
  *(v0 + 1328) = 0xD000000000000017;
  *(v0 + 1336) = 0x800000018F0AF240;
  *(v0 + 1344) = v54;
  *(v0 + 1352) = v55;
  *(v0 + 1360) = &unk_1F02E2820;
  *(v0 + 1368) = 0;
  v56 = [v1 saveEntitySystemProtocol];
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_18F0AA3F0;
  *(v57 + 32) = 0x797469746E65;
  *(v57 + 40) = 0xE600000000000000;
  *(v57 + 48) = 0;
  *(v57 + 56) = 0;
  *(v57 + 64) = -1;
  *(v57 + 72) = 1701667182;
  *(v57 + 80) = 0xE400000000000000;
  *(v57 + 88) = 0;
  *(v57 + 96) = 0;
  *(v57 + 104) = -1;
  *(v0 + 1376) = 0xD000000000000015;
  *(v0 + 1384) = 0x800000018F0AF260;
  *(v0 + 1392) = v56;
  *(v0 + 1400) = v57;
  v58 = MEMORY[0x1E69E7CC0];
  *(v0 + 1408) = MEMORY[0x1E69E7CC0];
  *(v0 + 1416) = 0;
  v59 = [v1 saveEntitySystemProtocol];
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_18F0AA3F0;
  *(v60 + 32) = 0x797469746E65;
  *(v60 + 40) = 0xE600000000000000;
  *(v60 + 48) = 0;
  *(v60 + 56) = 0;
  *(v60 + 64) = -1;
  *(v60 + 72) = 1701667182;
  *(v60 + 80) = 0xE400000000000000;
  *(v60 + 88) = 0;
  *(v60 + 96) = 0;
  *(v60 + 104) = -1;
  *(v0 + 1424) = 0xD00000000000001BLL;
  *(v0 + 1432) = 0x800000018F0AF280;
  *(v0 + 1440) = v59;
  *(v0 + 1448) = v60;
  *(v0 + 1456) = v58;
  *(v0 + 1464) = 1;
  *(v0 + 1465) = 0;
  v61 = [v1 scrollProtocol];
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_18F0AA3F0;
  *(v62 + 32) = 0x6F69746365726964;
  *(v62 + 40) = 0xE90000000000006ELL;
  *(v62 + 48) = 0;
  *(v62 + 56) = 0;
  *(v62 + 64) = -1;
  *(v62 + 72) = 0x647574696E67616DLL;
  *(v62 + 80) = 0xE900000000000065;
  *(v62 + 88) = 0;
  *(v62 + 96) = 0;
  *(v62 + 104) = -1;
  *(v0 + 1472) = 0xD000000000000017;
  *(v0 + 1480) = 0x800000018F0AF2A0;
  *(v0 + 1488) = v61;
  *(v0 + 1496) = v62;
  *(v0 + 1504) = &unk_1F02E2848;
  *(v0 + 1512) = 0;
  v63 = [v1 searchSystemProtocol];
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_18F09BCC0;
  strcpy((v64 + 32), "searchPhrase");
  *(v64 + 45) = 0;
  *(v64 + 46) = -5120;
  *(v64 + 48) = 0;
  *(v64 + 56) = 0;
  *(v64 + 64) = -1;
  *(v0 + 1520) = 0xD000000000000017;
  *(v0 + 1528) = 0x800000018F0AF2C0;
  *(v0 + 1536) = v63;
  *(v0 + 1544) = v64;
  *(v0 + 1552) = &unk_1F02E2870;
  *(v0 + 1560) = 0;
  v65 = [v1 undoSystemProtocol];
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_18F09BCC0;
  *(v66 + 32) = 0x6F6974617265706FLL;
  *(v66 + 40) = 0xE90000000000006ELL;
  *(v66 + 48) = 0;
  *(v66 + 56) = 0;
  *(v66 + 64) = -1;
  *(v0 + 1568) = 0xD000000000000015;
  *(v0 + 1576) = 0x800000018F0AF2E0;
  *(v0 + 1584) = v65;
  *(v0 + 1592) = v66;
  *(v0 + 1600) = v58;
  *(v0 + 1608) = 0;
  v67 = [v1 zoomProtocol];
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_18F09BCC0;
  *(v68 + 32) = 0x726F697661686562;
  *(v68 + 40) = 0xE800000000000000;
  *(v68 + 48) = 0;
  *(v68 + 56) = 0;
  *(v68 + 64) = -1;
  *(v0 + 1616) = 0xD000000000000015;
  *(v0 + 1624) = 0x800000018F0AF300;
  *(v0 + 1632) = v67;
  *(v0 + 1640) = v68;
  *(v0 + 1648) = &unk_1F02E2898;
  *(v0 + 1656) = 0;
  v69 = [v1 focusConfigurationProtocol];
  *(v0 + 1664) = 0xD00000000000001FLL;
  *(v0 + 1672) = 0x800000018F0AF320;
  *(v0 + 1680) = v69;
  *(v0 + 1688) = v58;
  *(v0 + 1696) = &unk_1F02E28C0;
  *(v0 + 1704) = 0;
  *(v0 + 1705) = 1;
  v70 = [v1 copyEntityProtocol];
  *(v0 + 1712) = 0xD00000000000001CLL;
  *(v0 + 1720) = 0x800000018F0AF340;
  *(v0 + 1728) = v70;
  *(v0 + 1736) = v58;
  *(v0 + 1744) = v58;
  *(v0 + 1752) = 0;
  v71 = [v1 sessionStartingProtocol];
  *(v0 + 1760) = 0xD000000000000020;
  *(v0 + 1768) = 0x800000018F0AF360;
  *(v0 + 1776) = v71;
  *(v0 + 1784) = v58;
  *(v0 + 1792) = v58;
  *(v0 + 1800) = 1;
  v72 = [v1 sessionStartingProtocol];
  *(v0 + 1808) = 0xD000000000000025;
  *(v0 + 1816) = 0x800000018F0AF390;
  *(v0 + 1824) = v72;
  *(v0 + 1832) = v58;
  *(v0 + 1840) = v58;
  *(v0 + 1848) = 0;
  v73 = [v1 sessionStartingProtocol];
  *(v0 + 1856) = 0xD00000000000001DLL;
  *(v0 + 1864) = 0x800000018F0AF3C0;
  *(v0 + 1872) = v73;
  *(v0 + 1880) = v58;
  *(v0 + 1888) = v58;
  *(v0 + 1896) = 0;
  v74 = [v1 audioStartingProtocol];
  *(v0 + 1904) = 0xD00000000000001ELL;
  *(v0 + 1912) = 0x800000018F0AF3E0;
  *(v0 + 1920) = v74;
  *(v0 + 1928) = v58;
  *(v0 + 1936) = v58;
  *(v0 + 1944) = 1;
  v75 = [v1 audioStartingProtocol];
  *(v0 + 1952) = 0xD00000000000001ELL;
  *(v0 + 1960) = 0x800000018F0AF400;
  *(v0 + 1968) = v75;
  *(v0 + 1976) = v58;
  *(v0 + 1984) = v58;
  *(v0 + 1992) = 0;
  v76 = [v1 audioRecordingProtocol];
  *(v0 + 2000) = 0xD00000000000001FLL;
  *(v0 + 2008) = 0x800000018F0AF420;
  *(v0 + 2016) = v76;
  *(v0 + 2024) = v58;
  *(v0 + 2032) = v58;
  *(v0 + 2040) = 0;
  v77 = [v1 requiresMDMChecksProtocol];
  *(v0 + 2048) = 0xD000000000000023;
  *(v0 + 2056) = 0x800000018F0AF440;
  *(v0 + 2064) = v77;
  *(v0 + 2072) = v58;
  *(v0 + 2080) = v58;
  *(v0 + 2088) = 0;
  v78 = [v1 conditionallyEnabledProtocol];
  *(v0 + 2096) = 0xD000000000000025;
  *(v0 + 2104) = 0x800000018F0AF470;
  *(v0 + 2112) = v78;
  *(v0 + 2120) = v58;
  *(v0 + 2128) = v58;
  *(v0 + 2136) = 0;
  v79 = [v1 sendMailProtocol];
  *(v0 + 2144) = 0xD000000000000019;
  *(v0 + 2152) = 0x800000018F0AF4A0;
  *(v0 + 2160) = v79;
  *(v0 + 2168) = v58;
  *(v0 + 2176) = v58;
  *(v0 + 2184) = 0;
  v80 = [v1 setMailMessageIsReadProtocol];
  *(v0 + 2192) = 0xD000000000000025;
  *(v0 + 2200) = 0x800000018F0AF4C0;
  *(v0 + 2208) = v80;
  *(v0 + 2216) = v58;
  *(v0 + 2224) = v58;
  *(v0 + 2232) = 0;
  v81 = [v1 foregroundContinuableProtocol];
  *(v0 + 2240) = 0xD000000000000026;
  *(v0 + 2248) = 0x800000018F0AF4F0;
  *(v0 + 2256) = v81;
  *(v0 + 2264) = v58;
  *(v0 + 2272) = v58;
  *(v0 + 2280) = 0;
  v82 = [v1 playVideoProtocol];
  *(v0 + 2288) = 0xD00000000000001ALL;
  *(v0 + 2296) = 0x800000018F0AF520;
  *(v0 + 2304) = v82;
  *(v0 + 2312) = v58;
  *(v0 + 2320) = &unk_1F02E28E8;
  *(v0 + 2328) = 0;
  v83 = [v1 showInAppSearchResultsProtocol];
  *(v0 + 2336) = 0xD000000000000027;
  *(v0 + 2344) = 0x800000018F0AF540;
  *(v0 + 2352) = v83;
  *(v0 + 2360) = v58;
  *(v0 + 2368) = &unk_1F02E2910;
  *(v0 + 2376) = 0;
  v84 = [v1 undoableProtocol];
  *(v0 + 2384) = 0xD00000000000001ALL;
  *(v0 + 2392) = 0x800000018F0AF570;
  *(v0 + 2400) = v84;
  *(v0 + 2408) = v58;
  *(v0 + 2416) = v58;
  *(v0 + 2424) = 0;
  v85 = [v1 undoableProtocol];
  *(v0 + 2432) = 0xD000000000000019;
  *(v0 + 2440) = 0x800000018F0AF590;
  *(v0 + 2448) = v85;
  *(v0 + 2456) = v58;
  *(v0 + 2464) = v58;
  *(v0 + 2472) = 0;
  v86 = [v1 entityUpdatingProtocol];
  *(v0 + 2480) = 0xD000000000000020;
  *(v0 + 2488) = 0x800000018F0AF5B0;
  *(v0 + 2496) = v86;
  *(v0 + 2504) = v58;
  *(v0 + 2512) = v58;
  *(v0 + 2520) = 0;
  v87 = [v1 entityUpdatingProtocol];
  *(v0 + 2528) = 0xD00000000000001FLL;
  *(v0 + 2536) = 0x800000018F0AF5E0;
  *(v0 + 2544) = v87;
  *(v0 + 2552) = v58;
  *(v0 + 2560) = v58;
  *(v0 + 2568) = 0;
  v88 = [v1 propertyUpdaterProtocol];
  *(v0 + 2576) = 0xD000000000000028;
  *(v0 + 2584) = 0x800000018F0AF600;
  *(v0 + 2592) = v88;
  *(v0 + 2600) = v58;
  *(v0 + 2608) = v58;
  *(v0 + 2616) = 0;
  v89 = [v1 urlRepresentableProtocol];
  *(v0 + 2624) = 0xD000000000000021;
  *(v0 + 2632) = 0x800000018F0AF630;
  *(v0 + 2640) = v89;
  *(v0 + 2648) = v58;
  *(v0 + 2656) = v58;
  *(v0 + 2664) = 0;
  v90 = [v1 startWorkoutProtocol];
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_18F09BCC0;
  strcpy((v91 + 32), "workoutStyle");
  *(v91 + 45) = 0;
  *(v91 + 46) = -5120;
  *(v91 + 48) = 0;
  *(v91 + 56) = 0;
  *(v91 + 64) = -1;
  *(v0 + 2672) = 0xD00000000000001DLL;
  *(v0 + 2680) = 0x800000018F0AF660;
  *(v0 + 2688) = v90;
  *(v0 + 2696) = v91;
  *(v0 + 2704) = &unk_1F02E2938;
  *(v0 + 2712) = 0;
  v92 = [v1 pauseWorkoutProtocol];
  *(v0 + 2720) = 0xD00000000000001DLL;
  *(v0 + 2728) = 0x800000018F0AF680;
  *(v0 + 2736) = v92;
  *(v0 + 2744) = v58;
  *(v0 + 2752) = v58;
  *(v0 + 2760) = 0;
  v93 = [v1 resumeWorkoutProtocol];
  *(v0 + 2768) = 0xD00000000000001ELL;
  *(v0 + 2776) = 0x800000018F0AF6A0;
  *(v0 + 2784) = v93;
  *(v0 + 2792) = v58;
  *(v0 + 2800) = v58;
  *(v0 + 2808) = 0;
  v94 = [v1 startDiveProtocol];
  *(v0 + 2816) = 0xD00000000000001ALL;
  *(v0 + 2824) = 0x800000018F0AF6C0;
  *(v0 + 2832) = v94;
  *(v0 + 2840) = v58;
  *(v0 + 2848) = v58;
  *(v0 + 2856) = 0;
  v95 = [v1 stingProtocol];
  *(v0 + 2864) = 0xD000000000000016;
  *(v0 + 2872) = 0x800000018F0AF6E0;
  *(v0 + 2880) = v95;
  *(v0 + 2888) = v58;
  *(v0 + 2896) = v58;
  *(v0 + 2904) = 0;
  v96 = [v1 controlConfigurationProtocol];
  *(v0 + 2912) = 0xD000000000000025;
  *(v0 + 2920) = 0x800000018F0AF700;
  *(v0 + 2928) = v96;
  *(v0 + 2936) = v58;
  *(v0 + 2944) = v58;
  *(v0 + 2952) = 0;
  v97 = [v1 widgetConfigurationProtocol];
  *(v0 + 2960) = 0xD000000000000024;
  *(v0 + 2968) = 0x800000018F0AF730;
  *(v0 + 2976) = v97;
  *(v0 + 2984) = v58;
  *(v0 + 2992) = v58;
  *(v0 + 3000) = 0;
  v98 = [v1 pushToTalkTransmissionProtocol];
  *(v0 + 3008) = 0xD000000000000027;
  *(v0 + 3016) = 0x800000018F0AF760;
  *(v0 + 3024) = v98;
  *(v0 + 3032) = v58;
  *(v0 + 3040) = v58;
  *(v0 + 3048) = 0;
  v99 = [v1 staccatoLongPressProtocol];
  *(v0 + 3056) = 0xD000000000000022;
  *(v0 + 3064) = 0x800000018F0AF790;
  *(v0 + 3072) = v99;
  *(v0 + 3080) = v58;
  *(v0 + 3088) = v58;
  *(v0 + 3096) = 0;
  v100 = [v1 cameraCaptureProtocol];
  *(v0 + 3104) = 0xD00000000000001ELL;
  *(v0 + 3112) = 0x800000018F0AF7C0;
  *(v0 + 3120) = v100;
  *(v0 + 3128) = v58;
  *(v0 + 3136) = &unk_1F02E2960;
  *(v0 + 3144) = 0;
  *(v0 + 3145) = 1;
  v101 = [v1 assistantIntentProtocol];
  *(v0 + 3152) = 0xD00000000000001ELL;
  *(v0 + 3160) = 0x800000018F0AF7E0;
  *(v0 + 3168) = v101;
  *(v0 + 3176) = v58;
  *(v0 + 3184) = v58;
  *(v0 + 3192) = 0;
  v102 = [v1 assistantInvocableIntentProtocol];
  *(v0 + 3200) = 0xD000000000000024;
  *(v0 + 3208) = 0x800000018F0AF800;
  *(v0 + 3216) = v102;
  *(v0 + 3224) = v58;
  *(v0 + 3232) = v58;
  *(v0 + 3240) = 0;
  v103 = [v1 systemFrameworkProtocol];
  *(v0 + 3248) = 0xD000000000000020;
  *(v0 + 3256) = 0x800000018F0AF830;
  *(v0 + 3264) = v103;
  *(v0 + 3272) = v58;
  *(v0 + 3280) = v58;
  *(v0 + 3288) = 0;
  v104 = [v1 setValueProtocol];
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_18F09BCC0;
  *(v105 + 32) = 0x65756C6176;
  *(v105 + 40) = 0xE500000000000000;
  *(v105 + 48) = 0;
  *(v105 + 56) = 0;
  *(v105 + 64) = -1;
  *(v0 + 3296) = 0xD000000000000019;
  *(v0 + 3304) = 0x800000018F0AF860;
  *(v0 + 3312) = v104;
  *(v0 + 3320) = v105;
  *(v0 + 3328) = v58;
  *(v0 + 3336) = 0;
  v106 = [v1 assistantIntentProtocol];
  *(v0 + 3344) = 0xD00000000000001ALL;
  *(v0 + 3352) = 0x800000018F0AF880;
  *(v0 + 3360) = v106;
  *(v0 + 3368) = v58;
  *(v0 + 3376) = v58;
  *(v0 + 3384) = 0;
  v107 = [v1 xpcListenerProtocol];
  *(v0 + 3392) = 0xD00000000000001CLL;
  *(v0 + 3400) = 0x800000018F0AF8A0;
  *(v0 + 3408) = v107;
  *(v0 + 3416) = v58;
  *(v0 + 3424) = v58;
  *(v0 + 3432) = 0;
  v108 = [v1 snippetProtocol];
  *(v0 + 3440) = 0xD000000000000018;
  *(v0 + 3448) = 0x800000018F0AF8C0;
  *(v0 + 3456) = v108;
  *(v0 + 3464) = v58;
  *(v0 + 3472) = v58;
  *(v0 + 3480) = 0;
  v109 = [v1 createEntitySystemProtocol];
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_18F09BCC0;
  *(v110 + 32) = 1701667182;
  *(v110 + 40) = 0xE400000000000000;
  *(v110 + 48) = 0;
  *(v110 + 56) = 0;
  *(v110 + 64) = -1;
  *(v0 + 3488) = 0xD000000000000017;
  *(v0 + 3496) = 0x800000018F0AF8E0;
  *(v0 + 3504) = v109;
  *(v0 + 3512) = v110;
  *(v0 + 3520) = v58;
  *(v0 + 3528) = 1;
  *(v0 + 3529) = 0;
  v111 = [v1 setValueProtocol];
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_18F09BCC0;
  *(v112 + 32) = 0x65756C6176;
  *(v112 + 40) = 0xE500000000000000;
  *(v112 + 48) = 0;
  *(v112 + 56) = 0;
  *(v112 + 64) = -1;
  *(v0 + 3536) = 0xD00000000000001ALL;
  *(v0 + 3544) = 0x800000018F0AF900;
  *(v0 + 3552) = v111;
  *(v0 + 3560) = v112;
  *(v0 + 3568) = v58;
  *(v0 + 3576) = 1;
  *(v0 + 3577) = 0;
  v113 = [v1 urlRepresentableProtocol];
  *(v0 + 3584) = 0xD000000000000022;
  *(v0 + 3592) = 0x800000018F0AF920;
  *(v0 + 3600) = v113;
  *(v0 + 3608) = v58;
  *(v0 + 3616) = v58;
  *(v0 + 3624) = 1;
  sub_18EF825F4(0, &unk_1EACB6AD8, off_1E72B01D8);
  sub_18F028094(0xD000000000000034, 0x800000018F0AF950);
  if (v114)
  {
    v115 = v114;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F09BCC0;
    *(inited + 32) = 0xD000000000000027;
    *(inited + 40) = 0x800000018F0AF990;
    *(inited + 48) = v115;
    *(inited + 56) = v58;
    *(inited + 64) = &unk_1F02E2988;
    *(inited + 72) = 1;
    sub_18F00D7D4(inited);
  }

  v117 = 0;
  v141 = *(v0 + 16);
  v118 = (v0 + 73);
  v119 = MEMORY[0x1E69E7CC8];
  for (i = v0; ; v0 = i)
  {
    if (v141 == v117)
    {

      return v119;
    }

    if (v117 >= *(v0 + 16))
    {
      break;
    }

    v142 = v117;
    v120 = *(v118 - 41);
    v121 = *(v118 - 33);
    v122 = *(v118 - 25);
    v123 = *(v118 - 17);
    v124 = *(v118 - 9);
    v144 = *(v118 - 1);
    v145 = *v118;
    swift_bridgeObjectRetain_n();
    v125 = v122;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v143 = v125;
    swift_isUniquelyReferenced_nonNull_native();
    v126 = sub_18EFAF54C();
    if (__OFADD__(v119[2], (v127 & 1) == 0))
    {
      goto LABEL_17;
    }

    v128 = v126;
    v129 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9340, &qword_18F0AA7D8);
    if (sub_18F09417C())
    {
      v130 = sub_18EFAF54C();
      if ((v129 & 1) != (v131 & 1))
      {
        goto LABEL_19;
      }

      v128 = v130;
    }

    if (v129)
    {
      v132 = v119[7] + 48 * v128;
      v133 = *(v132 + 16);
      *v132 = v120;
      *(v132 + 8) = v121;
      *(v132 + 16) = v143;
      *(v132 + 24) = v123;
      *(v132 + 32) = v124;
      *(v132 + 40) = v144;
      *(v132 + 41) = v145;
    }

    else
    {
      v119[(v128 >> 6) + 8] |= 1 << v128;
      v134 = (v119[6] + 16 * v128);
      *v134 = v120;
      v134[1] = v121;
      v135 = v119[7] + 48 * v128;
      *v135 = v120;
      *(v135 + 8) = v121;
      *(v135 + 16) = v143;
      *(v135 + 24) = v123;
      *(v135 + 32) = v124;
      *(v135 + 40) = v144;
      *(v135 + 41) = v145;

      v136 = v119[2];
      v137 = __OFADD__(v136, 1);
      v138 = v136 + 1;
      if (v137)
      {
        goto LABEL_18;
      }

      v119[2] = v138;
    }

    v118 += 48;
    v117 = v142 + 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F027E48()
{
  result = sub_18F027E68();
  qword_1EACB9300 = result;
  return result;
}

uint64_t sub_18F027E68()
{
  if (qword_1EACB7260 != -1)
  {
LABEL_14:
    swift_once();
  }

  v0 = off_1EACB92F8;
  v15 = MEMORY[0x1E69E7CD0];
  v1 = off_1EACB92F8 + 64;
  v2 = 1 << *(off_1EACB92F8 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_1EACB92F8 + 8);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_10:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    if (*(v0[7] + 48 * v9 + 41) == 1)
    {
      v10 = (v0[6] + 16 * v9);
      v12 = *v10;
      v11 = v10[1];

      sub_18F02B860(v14, v12, v11);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v7];
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  sub_18F02B860(v14, 0xD00000000000001CLL, 0x800000018F0AEE30);

  sub_18F02B860(v14, 0xD00000000000001FLL, 0x800000018F0AEE50);

  return v15;
}

uint64_t sub_18F028048(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

void sub_18F028094(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() allProtocols];
  sub_18EF825F4(0, &unk_1EACB6AD8, off_1E72B01D8);
  v5 = sub_18F093DCC();

  v6 = sub_18EFA0A74(v5);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      goto LABEL_16;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AD8BA0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 identifier];
    v11 = sub_18F093B8C();
    v13 = v12;

    if (v11 == a1 && v13 == a2)
    {

LABEL_16:

      return;
    }

    v15 = sub_18F09444C();

    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_18F028230(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193AD9050](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      MEMORY[0x193AD9050](0);
      result = sub_18F09454C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18F02828C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193AD9050](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_18F025668(v6, v7, v8);
      sub_18F093C1C();
      if (v8 == 255)
      {
        sub_18F09454C();
        v9 = -1;
      }

      else
      {
        sub_18F09454C();
        switch(v8)
        {
          case 1:
            v9 = 1;
            MEMORY[0x193AD9050](1);
            MEMORY[0x193AD9050](v6);
            break;
          case 2:
            v9 = 2;
            MEMORY[0x193AD9050](2);
            if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v10 = v6;
            }

            else
            {
              v10 = 0;
            }

            MEMORY[0x193AD9070](v10);
            break;
          case 3:
            v9 = 3;
            MEMORY[0x193AD9050](3);
            sub_18F09454C();
            break;
          default:
            MEMORY[0x193AD9050](0);
            sub_18F093C1C();
            v9 = 0;
            break;
        }
      }

      v5 += 40;

      result = sub_18F0257F8(v6, v7, v9);
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_18F0283E4()
{
  result = qword_1EACB9310;
  if (!qword_1EACB9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9310);
  }

  return result;
}

unint64_t sub_18F02843C()
{
  result = qword_1EACB9318;
  if (!qword_1EACB9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9318);
  }

  return result;
}

unint64_t sub_18F028494()
{
  result = qword_1EACB9320;
  if (!qword_1EACB9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9320);
  }

  return result;
}

unint64_t sub_18F0284EC()
{
  result = qword_1EACB9328;
  if (!qword_1EACB9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9328);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18F028554(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_18F028594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F0285FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_18F02863C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTagSinglePayload for SystemProtocolMetadata.AppIntentFieldValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemProtocolMetadata.AppIntentFieldValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_12LinkMetadata014SystemProtocolB0V12DefaultValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F028820(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_18F028860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemProtocolSupport(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SystemProtocolSupport(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F0289B0()
{
  result = qword_1EACB9330;
  if (!qword_1EACB9330)
  {
    sub_18F0939FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9330);
  }

  return result;
}

uint64_t sub_18F028A08()
{
  v1 = [v0 extensionPointRecord];
  v2 = [v1 name];

  v3 = sub_18F093B8C();
  v5 = v4;

  if (v3 == 0xD000000000000012 && 0x800000018F0AF9C0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_18F09444C();
  }

  return v7 & 1;
}

uint64_t sub_18F028ACC(uint64_t a1, char a2)
{
  v3 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a2;
  type metadata accessor for LNPlatformName(0, v6, v7, v8);
  sub_18F029EA0(&qword_1ED5FFA38, type metadata accessor for LNPlatformName, &unk_18F0A0B24);
  v9 = sub_18F093A5C();
  v11[8] = 0;
  v12 = v9;
  v13 = 0;
  LNEntityMetadata.wrapper(encodingContext:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9360, &qword_18F0AA800);
  sub_18F029E58(&unk_1EACB9390, &qword_1EACB9360, &qword_18F0AA800, MEMORY[0x1E69E6F60]);
  sub_18F029EA0(&qword_1EACB7DC8, type metadata accessor for LNEntityMetadata.CodableWrapper, &protocol conformance descriptor for LNEntityMetadata.CodableWrapper);
  sub_18F09446C();
  return sub_18F029DFC(v5);
}

char *sub_18F028C98(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  HIBYTE(v21) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9348, &qword_18F0AA7F0);
  sub_18F029E58(&qword_1EACB6B80, &qword_1EACB9348, &qword_18F0AA7F0, MEMORY[0x1E69E6F50]);
  sub_18F029EA0(&unk_1ED5FF450, type metadata accessor for LNEntityMetadata.CodableWrapper, &protocol conformance descriptor for LNEntityMetadata.CodableWrapper);
  sub_18F09445C();
  if (!v1)
  {
    sub_18F029EE8();
    sub_18F029F2C(v11, v9);
    v12 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
    LNEntityMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v9, v5, 0, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
    v5 = v18;
    sub_18F029DFC(v11);
  }

  return v5;
}

uint64_t AssistantPrebuiltEntity.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 AssistantPrebuiltEntity.identifier.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[3].n128_u64[0];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v7 = a1[2];
  v1[1] = result;
  v1[2] = v7;
  v1[3].n128_u64[0] = v5;
  return result;
}

uint64_t AssistantPrebuiltEntity.requiredEntitlements.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

__n128 AssistantPrebuiltEntity.init(identifier:metadata:conformanceType:visibility:requiredEntitlements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 48);
  v8 = *a3;
  v9 = *a4;
  *a6 = *a1;
  *(a6 + 8) = v6;
  result = *(a1 + 16);
  v11 = *(a1 + 32);
  *(a6 + 16) = result;
  *(a6 + 32) = v11;
  *(a6 + 48) = v7;
  *(a6 + 56) = a2;
  *(a6 + 64) = v8;
  *(a6 + 65) = v9;
  *(a6 + 72) = a5;
  return result;
}

__n128 AssistantPrebuiltEntity.init(identifier:metadata:conformanceType:visibility:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X8>)
{
  v5 = a1->n128_u64[0];
  v6 = a1->n128_u64[1];
  v7 = a1[3].n128_u64[0];
  v8 = *a3;
  v9 = *a4;
  a5[4].n128_u64[1] = 0;
  a5->n128_u64[0] = v5;
  a5->n128_u64[1] = v6;
  result = a1[1];
  v11 = a1[2];
  a5[1] = result;
  a5[2] = v11;
  a5[3].n128_u64[0] = v7;
  a5[3].n128_u64[1] = a2;
  a5[4].n128_u8[0] = v8;
  a5[4].n128_u8[1] = v9;
  return result;
}

void AssistantPrebuiltEntity.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9348, &qword_18F0AA7F0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F02946C();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_18F0294C0();
    OUTLINED_FUNCTION_0_6();
    sub_18F0942CC();
    v16 = a2;
    v17 = v22;
    v20 = v23;
    v18 = v24;
    v19 = v28;
    v14 = v27;
    v12 = v26;
    v13 = v25;
    v15 = sub_18F028C98(2);
    sub_18F029514();
    OUTLINED_FUNCTION_0_6();
    sub_18F09426C();
    v6 = v22;
    v7 = v22 == 2;
    LOBYTE(__src[0]) = 4;
    sub_18F029568();
    OUTLINED_FUNCTION_0_6();
    sub_18F09426C();
    v11 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    v33 = 5;
    sub_18F02997C(&qword_1EACB9358, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_18F09426C();
    v8 = OUTLINED_FUNCTION_2_3();
    v9(v8);
    v10 = v34;
    __src[0] = v17;
    __src[1] = v20;
    __src[2] = v18;
    __src[3] = v13;
    __src[4] = v12;
    __src[5] = v14;
    __src[6] = v19;
    __src[7] = v15;
    LOBYTE(__src[8]) = (v7 | v6) & 1;
    BYTE1(__src[8]) = v11;
    __src[9] = v34;
    memcpy(v16, __src, 0x50uLL);
    sub_18EFB62B4(__src, &v22);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v22 = v17;
    v23 = v20;
    v24 = v18;
    v25 = v13;
    v26 = v12;
    v27 = v14;
    v28 = v19;
    v29 = v15;
    v30 = (v7 | v6) & 1;
    v31 = v11;
    v32 = v10;
    sub_18EFB677C(&v22);
  }
}

unint64_t sub_18F02946C()
{
  result = qword_1EACB6DA8;
  if (!qword_1EACB6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DA8);
  }

  return result;
}

unint64_t sub_18F0294C0()
{
  result = qword_1EACB6CF8;
  if (!qword_1EACB6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CF8);
  }

  return result;
}

unint64_t sub_18F029514()
{
  result = qword_1EACB6CA8;
  if (!qword_1EACB6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CA8);
  }

  return result;
}

unint64_t sub_18F029568()
{
  result = qword_1EACB6CE8;
  if (!qword_1EACB6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CE8);
  }

  return result;
}

uint64_t AssistantPrebuiltEntity.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9360, &qword_18F0AA800);
  OUTLINED_FUNCTION_7();
  v25 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[6];
  v23 = v2[7];
  v31 = *(v2 + 64);
  v22 = *(v2 + 65);
  v21 = v2[9];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F02946C();

  sub_18F0945BC();
  v26 = v9;
  v27 = v10;
  v12 = *(v2 + 1);
  v29 = *(v2 + 2);
  v28 = v12;
  v30 = v11;
  v32 = 0;
  sub_18F029880();
  OUTLINED_FUNCTION_1();
  v13 = v24;
  sub_18F0943CC();
  if (v13)
  {

    return (*(v25 + 8))(v8, v4);
  }

  else
  {
    v15 = v31;
    v16 = v22;
    v17 = v21;
    v18 = v25;

    OUTLINED_FUNCTION_4();
    sub_18F028ACC(v19, v20);
    LOBYTE(v26) = v15;
    v32 = 3;
    sub_18F0298D4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F0943CC();
    LOBYTE(v26) = v16;
    v32 = 4;
    sub_18F029928();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F09436C();
    v26 = v17;
    v32 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    sub_18F02997C(&qword_1EACB9380, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F09436C();
    return (*(v18 + 8))(v8, v4);
  }
}

unint64_t sub_18F029880()
{
  result = qword_1EACB9368;
  if (!qword_1EACB9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9368);
  }

  return result;
}

unint64_t sub_18F0298D4()
{
  result = qword_1EACB9370;
  if (!qword_1EACB9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9370);
  }

  return result;
}

unint64_t sub_18F029928()
{
  result = qword_1EACB9378;
  if (!qword_1EACB9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9378);
  }

  return result;
}

uint64_t sub_18F02997C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9350, &qword_18F0AA7F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F0299E8()
{
  v0 = sub_18F09420C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18F029A5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F0299E8();
  *a1 = result;
  return result;
}

unint64_t sub_18F029A8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18EFCF9B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F029AC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F029A34();
  *a1 = result;
  return result;
}

uint64_t sub_18F029AE8(uint64_t a1)
{
  v2 = sub_18F02946C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F029B24(uint64_t a1)
{
  v2 = sub_18F02946C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t getEnumTagSinglePayload for AssistantPrebuiltEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F029CF8()
{
  result = qword_1EACB9388;
  if (!qword_1EACB9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9388);
  }

  return result;
}

unint64_t sub_18F029D50()
{
  result = qword_1EACB6D98;
  if (!qword_1EACB6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D98);
  }

  return result;
}

unint64_t sub_18F029DA8()
{
  result = qword_1EACB6DA0;
  if (!qword_1EACB6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DA0);
  }

  return result;
}

uint64_t sub_18F029DFC(uint64_t a1)
{
  v2 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F029E58(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_18F029EA0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18F029EE8()
{
  result = qword_1ED5FF428;
  if (!qword_1ED5FF428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF428);
  }

  return result;
}

uint64_t sub_18F029F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F029F94@<X0>(uint64_t *a1@<X8>)
{
  sub_18F0214AC(a1);
  v2 = sub_18F09343C();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_18F02A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_0();
  v37 = *v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB94B0, &unk_18F0AAAA0);
  v38 = OUTLINED_FUNCTION_37_0(v37);
  if (!v37[2])
  {
LABEL_27:

    *v35 = v38;
    OUTLINED_FUNCTION_35_0();
    return;
  }

  v61 = v37;
  v39 = 0;
  v40 = v37;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_25_0();
  if (!v41)
  {
LABEL_4:
    v43 = v39;
    while (1)
    {
      v39 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v39 >= v35)
      {
        break;
      }

      ++v43;
      if (*(v40 + 8 * v39))
      {
        OUTLINED_FUNCTION_229();
        a14 = v45 & v44;
        goto LABEL_9;
      }
    }

    if (a13)
    {
      OUTLINED_FUNCTION_9_1();
      if (v57 != v58)
      {
        OUTLINED_FUNCTION_11_1(v56);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_8_1();
        sub_18EFAF4AC(v59, v60, v40);
      }

      v37[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_0();
LABEL_9:
    v46 = v42 | (v39 << 6);
    v47 = v37[7];
    v48 = *(v37[6] + 8 * v46);
    v49 = *(v47 + 8 * v46);
    if ((a13 & 1) == 0)
    {

      v50 = v48;
    }

    sub_18F093B8C();
    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();

    OUTLINED_FUNCTION_16_0();
    if (v51)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_19:
    OUTLINED_FUNCTION_2_4();
    *(v38 + v53 + 64) |= v54;
    *(v38[6] + 8 * v55) = v48;
    *(v38[7] + 8 * v55) = v49;
    ++v38[2];
    v37 = v61;
    if (!a14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v51)
    {
      if (v52)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_0();
    if (!v51)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_18F02A248()
{
  OUTLINED_FUNCTION_10_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22_0();
  v31 = v2;
  v5 = sub_18F0941DC();
  if (!*(v1 + 16))
  {
LABEL_29:

    *v0 = v5;
    return;
  }

  v30 = v1;
  v6 = 0;
  v7 = v1;
  OUTLINED_FUNCTION_0_7();
  v10 = v9 & v8;
  OUTLINED_FUNCTION_25_0();
  if (!v10)
  {
LABEL_4:
    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v11;
      if (*(v7 + 8 * v6))
      {
        OUTLINED_FUNCTION_229();
        v10 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      OUTLINED_FUNCTION_9_1();
      if (v26 != v27)
      {
        OUTLINED_FUNCTION_11_1(v25);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_8_1();
        sub_18EFAF4AC(v28, v29, v7);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_30_0();
LABEL_9:
    OUTLINED_FUNCTION_23_0();
    v16 = *(v15 + 8 * v14);
    if ((v31 & 1) == 0)
    {

      v17 = v16;
    }

    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_17_0();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_21:
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_24_0(v22);
    *(v24 + 8 * v23) = v16;
    OUTLINED_FUNCTION_13_1();
    v1 = v30;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    if (*(v5 + 64 + 8 * v19) != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t PrebuiltType.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1ED5FF9D0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED5FF9D0);
  }

  v6 = qword_1ED5FF9D8;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = MEMORY[0x1E69E7CC0];
  a3[3] = v6;
}

uint64_t PrebuiltType.init(typeName:genericTypeNames:allowedRoles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t PrebuiltType.init(typeName:genericTypeNames:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_1ED5FF9D0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED5FF9D0);
  }

  v8 = qword_1ED5FF9D8;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v8;
}

uint64_t PrebuiltType.Role.hashValue.getter()
{
  v1 = *v0;
  sub_18F09452C();
  MEMORY[0x193AD9050](v1);
  return sub_18F09456C();
}

uint64_t sub_18F02A618(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
LABEL_7:
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
LABEL_14:
    v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
    sub_18F09452C();
    MEMORY[0x193AD9050](v12);
    result = sub_18F09456C();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void PrebuiltType.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_18F093C1C();
  sub_18EFAD10C(a1, v3);
  v4 = OUTLINED_FUNCTION_108();

  sub_18EFACFFC(v4, v5);
}

uint64_t PrebuiltType.hashValue.getter()
{
  OUTLINED_FUNCTION_3_4();
  v2 = sub_18F09452C();
  OUTLINED_FUNCTION_6_3(v2);
  sub_18EFAD10C(__src, v1);
  sub_18EFACFFC(__src, v0);
  return sub_18F09456C();
}

uint64_t sub_18F02A82C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_18F02B810(0);
  if (qword_1ED5FF9D0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED5FF9D0);
  }

  v6 = qword_1ED5FF9D8;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t static PrebuiltEnumCase.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_18F09444C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_108();

      return sub_18F09444C();
    }
  }

  return result;
}

uint64_t PrebuiltEnumCase.hash(into:)(uint64_t a1)
{
  sub_18F093C1C();

  return sub_18F093C1C();
}

uint64_t PrebuiltEnumCase.hashValue.getter()
{
  OUTLINED_FUNCTION_3_4();
  v0 = sub_18F09452C();
  OUTLINED_FUNCTION_6_3(v0);
  sub_18F093C1C();
  return sub_18F09456C();
}

uint64_t sub_18F02AA20(uint64_t a1)
{
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F093C1C();
  return sub_18F09456C();
}

uint64_t sub_18F02AAB8()
{
  result = sub_18F02AAD8();
  qword_1EACB94C0 = result;
  return result;
}

uint64_t sub_18F02AAD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9500, &qword_18F0AAE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AAAB0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED5FF9D8;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x800000018F0AFB70;
  v2 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v1;
  v3 = v2;
  sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);
  swift_bridgeObjectRetain_n();
  v4 = sub_18EFBB130(0x704F65676E616843, 0xEF6E6F6974617265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9508, &qword_18F0AAE78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18F0AA400;
  *(v5 + 32) = 0x656C6261736964;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = 0x656C6261736944;
  *(v5 + 56) = 0xE700000000000000;
  *(v5 + 64) = 0x656C62616E65;
  *(v5 + 72) = 0xE600000000000000;
  *(v5 + 80) = 0x656C62616E45;
  *(v5 + 88) = 0xE600000000000000;
  *(v5 + 96) = 0x656C67676F74;
  *(v5 + 104) = 0xE600000000000000;
  *(v5 + 112) = 0x656C67676F54;
  *(v5 + 120) = 0xE600000000000000;
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x800000018F0AFB90;
  *(inited + 96) = v3;
  *(inited + 104) = v1;

  v6 = sub_18EFBB130(0xD000000000000011, 0x800000018F0AFBB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18F0AA3F0;
  *(v7 + 32) = 6579297;
  *(v7 + 40) = 0xE300000000000000;
  *(v7 + 48) = 6579265;
  *(v7 + 56) = 0xE300000000000000;
  *(v7 + 64) = 0x65766F6D6572;
  *(v7 + 72) = 0xE600000000000000;
  *(v7 + 80) = 0x65766F6D6552;
  *(v7 + 88) = 0xE600000000000000;
  *(inited + 112) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000018F0AFBD0;
  *(inited + 144) = v3;
  *(inited + 152) = v1;

  v8 = sub_18EFBB130(0xD000000000000011, 0x800000018F0AFBF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18F0AAAC0;
  *(v9 + 32) = 28789;
  *(v9 + 40) = 0xE200000000000000;
  *(v9 + 48) = 28757;
  *(v9 + 56) = 0xE200000000000000;
  *(v9 + 64) = 1853321060;
  *(v9 + 72) = 0xE400000000000000;
  *(v9 + 80) = 1853321028;
  *(v9 + 88) = 0xE400000000000000;
  *(v9 + 96) = 1952867692;
  *(v9 + 104) = 0xE400000000000000;
  *(v9 + 112) = 1952867660;
  *(v9 + 120) = 0xE400000000000000;
  *(v9 + 128) = 0x7468676972;
  *(v9 + 136) = 0xE500000000000000;
  *(v9 + 144) = 0x7468676952;
  *(v9 + 152) = 0xE500000000000000;
  *(v9 + 160) = 0x64726177726F66;
  *(v9 + 168) = 0xE700000000000000;
  *(v9 + 176) = 0x64726177726F46;
  *(v9 + 184) = 0xE700000000000000;
  *(v9 + 192) = 0x647261776B636162;
  *(v9 + 200) = 0xE800000000000000;
  *(v9 + 208) = 0x647261776B636142;
  *(v9 + 216) = 0xE800000000000000;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x800000018F0AFC10;
  *(inited + 192) = MEMORY[0x1E69E7CC0];
  *(inited + 200) = v1;

  v10 = sub_18EFBB130(0xD000000000000011, 0x800000018F0AFC30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18F0AAAD0;
  *(v11 + 32) = 0x6C6C616D73;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = 0x6C6C616D53;
  *(v11 + 56) = 0xE500000000000000;
  *(v11 + 64) = 0x746C7561666564;
  *(v11 + 72) = 0xE700000000000000;
  *(v11 + 80) = 0x746C7561666544;
  *(v11 + 88) = 0xE700000000000000;
  *(v11 + 96) = 0x656772616CLL;
  *(v11 + 104) = 0xE500000000000000;
  *(v11 + 112) = 0x656772614CLL;
  *(v11 + 120) = 0xE500000000000000;
  *(v11 + 128) = 0x6D756D6978616DLL;
  *(v11 + 136) = 0xE700000000000000;
  *(v11 + 144) = 0x6D756D6978614DLL;
  *(v11 + 152) = 0xE700000000000000;
  *(inited + 208) = v10;
  *(inited + 216) = v11;
  *(inited + 224) = 0xD000000000000028;
  *(inited + 232) = 0x800000018F0AFC50;
  v12 = MEMORY[0x1E69E7CC0];
  *(inited + 240) = MEMORY[0x1E69E7CC0];
  *(inited + 248) = v1;

  v13 = sub_18EFBB130(0xD00000000000001DLL, 0x800000018F0AFC80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18F0AA3F0;
  *(v14 + 32) = 1954047342;
  *(v14 + 40) = 0xE400000000000000;
  *(v14 + 48) = 1954047310;
  *(v14 + 56) = 0xE400000000000000;
  *(v14 + 64) = 0x73756F6976657270;
  *(v14 + 72) = 0xE800000000000000;
  *(v14 + 80) = 0x73756F6976657250;
  *(v14 + 88) = 0xE800000000000000;
  *(inited + 256) = v13;
  *(inited + 264) = v14;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x800000018F0AFCA0;
  *(inited + 288) = v12;
  *(inited + 296) = v1;

  v15 = sub_18EFBB130(0x7265704F6F646E55, 0xED00006E6F697461);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18F0AA3F0;
  *(v16 + 32) = 1868852853;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 48) = 1868852821;
  *(v16 + 56) = 0xE400000000000000;
  *(v16 + 64) = 1868850546;
  *(v16 + 72) = 0xE400000000000000;
  *(v16 + 80) = 1868850514;
  *(v16 + 88) = 0xE400000000000000;
  *(inited + 304) = v15;
  *(inited + 312) = v16;
  *(inited + 320) = 0xD000000000000019;
  *(inited + 328) = 0x800000018F0AFCC0;
  *(inited + 336) = v12;
  *(inited + 344) = v1;

  v17 = sub_18EFBB130(0x6542657A69736552, 0xEE00726F69766168);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18F0AA3F0;
  *(v18 + 32) = 0x72656772616CLL;
  *(v18 + 40) = 0xE600000000000000;
  *(v18 + 48) = 0x72656772614CLL;
  *(v18 + 56) = 0xE600000000000000;
  *(v18 + 64) = 0x72656C6C616D73;
  *(v18 + 72) = 0xE700000000000000;
  *(v18 + 80) = 0x72656C6C616D53;
  *(v18 + 88) = 0xE700000000000000;
  *(inited + 352) = v17;
  *(inited + 360) = v18;
  *(inited + 368) = 0xD000000000000017;
  *(inited + 376) = 0x800000018F0AFCE0;
  *(inited + 384) = v12;
  *(inited + 392) = v1;
  v19 = sub_18EFBB130(0x616865426D6F6F5ALL, 0xEC000000726F6976);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18F0AA400;
  *(v20 + 32) = 28265;
  *(v20 + 40) = 0xE200000000000000;
  *(v20 + 48) = 28233;
  *(v20 + 56) = 0xE200000000000000;
  *(v20 + 64) = 7632239;
  *(v20 + 72) = 0xE300000000000000;
  *(v20 + 80) = 7632207;
  *(v20 + 88) = 0xE300000000000000;
  *(v20 + 96) = 28532;
  *(v20 + 104) = 0xE200000000000000;
  *(v20 + 112) = 28500;
  *(v20 + 120) = 0xE200000000000000;
  *(inited + 400) = v19;
  *(inited + 408) = v20;
  *(inited + 416) = 0xD00000000000001FLL;
  *(inited + 424) = 0x800000018F0AFD00;
  *(inited + 432) = v12;
  *(inited + 440) = v1;
  v21 = sub_18EFBB130(0xD000000000000014, 0x800000018F0AFD20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18F0AAAD0;
  *(v22 + 32) = 0x646574656C6564;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 48) = 0x646574656C6544;
  *(v22 + 56) = 0xE700000000000000;
  *(v22 + 64) = 0x6564726177726F66;
  *(v22 + 72) = 0xE900000000000064;
  *(v22 + 80) = 0x6564726177726F46;
  *(v22 + 88) = 0xE900000000000064;
  *(v22 + 96) = 0x6465696C706572;
  *(v22 + 104) = 0xE700000000000000;
  *(v22 + 112) = 0x6465696C706552;
  *(v22 + 120) = 0xE700000000000000;
  *(v22 + 128) = 0x7463657269646572;
  *(v22 + 136) = 0xEA00000000006465;
  *(v22 + 144) = 0x7463657269646552;
  *(v22 + 152) = 0xEA00000000006465;
  *(inited + 448) = v21;
  *(inited + 456) = v22;
  sub_18EFACEF8();
  return sub_18F093A5C();
}

uint64_t sub_18F02B278(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9490, &qword_18F0AAE60);
    v1 = sub_18F0941EC();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_18EFAE1E8(v2, 1, &v4, sub_18F02A220, &qword_1EACB94F8, &qword_18F0AAE68);

  return v4;
}

uint64_t sub_18F02B350(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9488, &qword_18F0AAA80);
    v1 = sub_18F0941EC();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_18EFAE1E8(v2, 1, &v4, sub_18F02A234, &qword_1EACB94F0, &unk_18F0AAE50);

  return v4;
}

uint64_t sub_18F02B428(void *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(BOOL, unint64_t, uint64_t, uint64_t))
{
  if (qword_1ED5FFA28 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_2_5(&qword_1ED5FFA28);
  }

  v3 = off_1ED5FF9E0;
  v4 = off_1ED5FF9E0 + 64;
  OUTLINED_FUNCTION_65();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (v3[6] + 32 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v3[7] + 8 * v13);
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = OUTLINED_FUNCTION_4_6();
        v30 = (a3)(v25);
      }

      v22 = *(v30 + 16);
      v21 = *(v30 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v26 = a3(v21 > 1, v22 + 1, 1, v30);
        v23 = v22 + 1;
        v30 = v26;
      }

      *(v30 + 16) = v23;
      v24 = (v30 + 24 * v22);
      v24[4] = v15;
      v24[5] = v16;
      v24[6] = v19;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v11 >= v9)
    {
      break;
    }

    v7 = *&v4[8 * v11];
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  return a2(v30);
}

uint64_t static LNSystemEntityValueType.supportedValueTypesByEntityIdentifier.getter()
{
  if (qword_1ED5FFA28 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_2_5(&qword_1ED5FFA28);
  }

  v0 = off_1ED5FF9E0;
  v1 = off_1ED5FF9E0 + 64;
  OUTLINED_FUNCTION_65();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v7 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_8:
    OUTLINED_FUNCTION_7_2();
    v10 = *(v0[7] + 8 * (v9 | (v7 << 6)));
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;

      v27 = v13;
      v14 = [v12 identifier];
      v15 = sub_18F093B8C();
      v28 = v16;
      v29 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_4_6();
        sub_18EFB0450(v20, v21, v22, v23);
        v30 = v24;
      }

      v18 = v30[2];
      v17 = v30[3];
      if (v18 >= v17 >> 1)
      {
        sub_18EFB0450(v17 > 1, v18 + 1, 1, v30);
        v30 = v25;
      }

      v30[2] = v18 + 1;
      v19 = &v30[3 * v18];
      v19[4] = v29;
      v19[5] = v28;
      v19[6] = v12;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v8 >= v6)
    {
      break;
    }

    v4 = *&v1[8 * v8];
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_8;
    }
  }

  return sub_18F02B350(v30);
}

uint64_t sub_18F02B810(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_18F093E1C();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

BOOL sub_18F02B860(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_18F09452C();
  sub_18F093C1C();
  v8 = sub_18F09456C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_18F09444C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_18F02BE54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_18F02B9AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9528, &qword_18F0AAEB0);
  result = sub_18F09402C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_18EFAF4AC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_18F09452C();
    sub_18F093C1C();
    result = sub_18F09456C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18F02BC08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9520, &qword_18F0AAEA8);
  result = sub_18F09402C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_18EFAF4AC(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_18F09452C();
    MEMORY[0x193AD9050](v16);
    result = sub_18F09456C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_18F02BE54(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_18F02B9AC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_18F02C254(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_18F09452C();
      sub_18F093C1C();
      result = sub_18F09456C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_18F09444C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_18F02BFBC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_18F09449C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_18F02BFBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9528, &qword_18F0AAEB0);
  v2 = *v0;
  v3 = sub_18F09401C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F02C114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9520, &qword_18F0AAEA8);
  v2 = *v0;
  v3 = sub_18F09401C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_18F02C254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9528, &qword_18F0AAEB0);
  result = sub_18F09402C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_18F09452C();

        sub_18F093C1C();
        result = sub_18F09456C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18F02C488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9520, &qword_18F0AAEA8);
  result = sub_18F09402C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_18F09452C();
        MEMORY[0x193AD9050](v15);
        result = sub_18F09456C();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_18F02C6A8()
{
  result = qword_1EACB94C8;
  if (!qword_1EACB94C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB94D0, &qword_18F0AAB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB94C8);
  }

  return result;
}

unint64_t sub_18F02C710()
{
  result = qword_1EACB94D8;
  if (!qword_1EACB94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB94D8);
  }

  return result;
}

unint64_t sub_18F02C774()
{
  result = qword_1EACB94E0;
  if (!qword_1EACB94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB94E0);
  }

  return result;
}

unint64_t sub_18F02C7E4()
{
  result = qword_1EACB94E8;
  if (!qword_1EACB94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB94E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrebuiltType.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrebuiltType.Role(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F02C99C(uint64_t a1, int a2)
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

uint64_t sub_18F02C9DC(uint64_t result, int a2, int a3)
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

uint64_t sub_18F02CA2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18F02CA6C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PrebuiltTypeSupport(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F02CB74()
{
  v1 = v0;
  v2 = sub_18F09386C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x1E698ACB8])
  {
    if (v6 == *MEMORY[0x1E698ACC8])
    {
      return 1;
    }

    else if (v6 == *MEMORY[0x1E698ACC0])
    {
      return 2;
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_18F09406C();
      MEMORY[0x193AD8780](0xD00000000000001DLL, 0x800000018F0B02B0);
      sub_18F09414C();
      result = sub_18F0941AC();
      __break(1u);
    }
  }

  return result;
}

id sub_18F02CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v32 = sub_18F093B5C();

  v17 = sub_18F093B5C();

  v18 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
  v33 = sub_18F093DBC();

  if (a10)
  {
    v22 = sub_18F093B5C();
  }

  else
  {
    v22 = 0;
  }

  if (a11)
  {
    type metadata accessor for LNPlatformName(0, v19, v20, v21);
    v23 = sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EFABC68(v23, v24, v25, v26);
    v27 = sub_18F093A3C();
  }

  else
  {
    v27 = 0;
  }

  if (a14)
  {
    v28 = sub_18F093B5C();
  }

  else
  {
    v28 = 0;
  }

  if (a15)
  {
    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    v29 = sub_18F093DBC();
  }

  else
  {
    v29 = 0;
  }

  if (a17)
  {
    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    v30 = sub_18F093DBC();
  }

  else
  {
    v30 = 0;
  }

  v35 = [v34 initWithIdentifier:v32 mangledTypeName:v17 mangledTypeNameByBundleIdentifier:v18 effectiveBundleIdentifiers:a6 displayRepresentation:a7 cases:v33 customIntentEnumTypeName:v22 availabilityAnnotations:v27 system:a12 fullyQualifiedTypeName:v28 assistantDefinedSchemas:v29 visibilityMetadata:a16 allowedTargets:v30];

  return v35;
}

BOOL sub_18F02CFFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a4 < a1;
  v7 = a6 < a3;
  if (a5 != a2)
  {
    v7 = a5 < a2;
  }

  if (a4 == a1)
  {
    v6 = v7;
  }

  return !v6;
}

uint64_t AssistantSchemaIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = v0[5];

  MEMORY[0x193AD8780](45, 0xE100000000000000);
  MEMORY[0x193AD8780](v1, v2);
  MEMORY[0x193AD8780](45, 0xE100000000000000);
  v3 = AssistantSchemaVersion.description.getter();
  MEMORY[0x193AD8780](v3);

  return v5;
}

__n128 AssistantSchemaIdentifier.init(kind:version:domain:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a3[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[2].n128_u64[1] = a4;
  a6[3].n128_u64[0] = a5;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = v6;
  return result;
}

LinkMetadata::AssistantPrebuiltConformanceType_optional __swiftcall AssistantPrebuiltConformanceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F09420C();

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

uint64_t AssistantPrebuiltConformanceType.rawValue.getter()
{
  if (*v0)
  {
    return 0x766972446C6F6F74;
  }

  else
  {
    return 0x6C6F636F746F7270;
  }
}

uint64_t sub_18F02D1E8@<X0>(uint64_t *a1@<X8>)
{
  result = AssistantPrebuiltConformanceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

LinkMetadata::AssistantPrebuiltVisibility_optional __swiftcall AssistantPrebuiltVisibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F09420C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssistantPrebuiltVisibility.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6D706F6C65766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63696C627570;
  }
}

uint64_t sub_18F02D3AC@<X0>(uint64_t *a1@<X8>)
{
  result = AssistantPrebuiltVisibility.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_18F02D484()
{
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v85 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    v10 = (*(v1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    memcpy(__dst, (*(v1 + 56) + 96 * v9), sizeof(__dst));
    v91 = v12;
    v92 = v11;
    memcpy(v93, __dst, sizeof(v93));

    sub_18F03226C(&v91, v89, &qword_1EACB9150, &qword_18F0AB890);
    AssistantSchemaIdentifier.init(_:)(v12, v11, &v102);
    v13 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {
      goto LABEL_9;
    }

    v79 = v102;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;
    sub_18F03226C(&v91, v89, &qword_1EACB9150, &qword_18F0AB890);

    v14 = v85;
    swift_isUniquelyReferenced_nonNull_native();
    *&v102 = v85;
    v77 = sub_18F010478(&v94);
    v86 = v15;
    if (__OFADD__(v14[2], (v15 & 1) == 0))
    {
      goto LABEL_59;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9618, &qword_18F0AB898);
    if (sub_18F09417C())
    {
      v16 = sub_18F010478(&v94);
      if ((v86 & 1) != (v17 & 1))
      {
        goto LABEL_65;
      }

      v18 = v16;
      if (v86)
      {
        goto LABEL_17;
      }

LABEL_14:
      v19 = v102;
      *(v102 + 8 * (v18 >> 6) + 64) |= 1 << v18;
      v20 = v19[6] + 56 * v18;
      v21 = v95;
      *v20 = v94;
      *(v20 + 16) = v21;
      *(v20 + 32) = v96;
      *(v20 + 48) = v97;
      memcpy((v19[7] + 96 * v18), __dst, 0x60uLL);
      sub_18EF82E14(&v91, &qword_1EACB9150, &qword_18F0AB890);
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_62;
      }

      v85 = v19;
      v19[2] = v24;
    }

    else
    {
      v18 = v77;
      if ((v86 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_17:
      sub_18F032228(v79, v13);
      v85 = v102;
      v25 = (*(v102 + 56) + 96 * v18);
      memcpy(v89, v25, 0x60uLL);
      memcpy(v25, __dst, 0x60uLL);
      sub_18EFB5C3C(v89);
LABEL_9:
      sub_18EF82E14(&v91, &qword_1EACB9150, &qword_18F0AB890);
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v6);
    ++v7;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v26 = *(v83 + 24);
  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  v32 = MEMORY[0x1E69E7CC8];
LABEL_21:
  v81 = v32;
  while (1)
  {
    v33 = v31;
    if (!v29)
    {
      break;
    }

LABEL_26:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = v34 | (v31 << 6);
    v36 = (*(v26 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    memcpy(__dst, (*(v26 + 56) + 80 * v35), 0x50uLL);
    v91 = v38;
    v92 = v37;
    memcpy(v93, __dst, 0x50uLL);

    sub_18F03226C(&v91, v89, &qword_1EACB9140, &qword_18F0AB8A0);
    AssistantSchemaIdentifier.init(_:)(v38, v37, &v102);
    v39 = *(&v102 + 1);
    if (*(&v102 + 1))
    {
      v78 = v102;
      v98 = v102;
      v99 = v103;
      v100 = v104;
      v101 = v105;
      sub_18F03226C(&v91, v89, &qword_1EACB9140, &qword_18F0AB8A0);

      v40 = v81;
      swift_isUniquelyReferenced_nonNull_native();
      *&v102 = v81;
      v76 = sub_18F010478(&v98);
      v82 = v41;
      if (__OFADD__(v40[2], (v41 & 1) == 0))
      {
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9620, &qword_18F0AB8A8);
      if ((sub_18F09417C() & 1) == 0)
      {
        v44 = v76;
        if ((v82 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_35:
        sub_18F032228(v78, v39);
        v32 = v102;
        v49 = (*(v102 + 56) + 80 * v44);
        memcpy(v89, v49, 0x50uLL);
        memcpy(v49, __dst, 0x50uLL);
        sub_18EFB677C(v89);
        sub_18EF82E14(&v91, &qword_1EACB9140, &qword_18F0AB8A0);
        goto LABEL_21;
      }

      v42 = sub_18F010478(&v98);
      if ((v82 & 1) != (v43 & 1))
      {
        goto LABEL_65;
      }

      v44 = v42;
      if (v82)
      {
        goto LABEL_35;
      }

LABEL_32:
      v32 = v102;
      *(v102 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v45 = v32[6] + 56 * v44;
      v46 = v99;
      *v45 = v98;
      *(v45 + 16) = v46;
      *(v45 + 32) = v100;
      *(v45 + 48) = v101;
      memcpy((v32[7] + 80 * v44), __dst, 0x50uLL);
      sub_18EF82E14(&v91, &qword_1EACB9140, &qword_18F0AB8A0);
      v47 = v32[2];
      v23 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v23)
      {
        goto LABEL_63;
      }

      v32[2] = v48;
      goto LABEL_21;
    }

    sub_18EF82E14(&v91, &qword_1EACB9140, &qword_18F0AB8A0);
  }

  while (1)
  {
    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_57;
    }

    if (v31 >= v30)
    {
      break;
    }

    v29 = *(v26 + 64 + 8 * v31);
    ++v33;
    if (v29)
    {
      goto LABEL_26;
    }
  }

  v50 = *(v83 + 32);
  v51 = 1 << *(v50 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v50 + 64);
  v54 = (v51 + 63) >> 6;

  v55 = 0;
  v56 = MEMORY[0x1E69E7CC8];
  v57 = v85;
LABEL_39:
  v58 = v55;
  if (!v53)
  {
    goto LABEL_41;
  }

  do
  {
    v55 = v58;
LABEL_44:
    v59 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v60 = v59 | (v55 << 6);
    v61 = (*(v50 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    memcpy(__dst, (*(v50 + 56) + 80 * v60), 0x50uLL);
    v91 = v63;
    v92 = v62;
    memcpy(v93, __dst, 0x50uLL);

    sub_18F03226C(&v91, v89, &qword_1EACB9130, &qword_18F0AB8B0);
    AssistantSchemaIdentifier.init(_:)(v63, v62, v87);
    v64 = *(&v87[0] + 1);
    if (*(&v87[0] + 1))
    {
      v80 = *&v87[0];
      v102 = v87[0];
      v103 = v87[1];
      v104 = v87[2];
      v105 = v88;
      sub_18F03226C(&v91, v89, &qword_1EACB9130, &qword_18F0AB8B0);

      swift_isUniquelyReferenced_nonNull_native();
      *&v87[0] = v56;
      v65 = sub_18F010478(&v102);
      v84 = v66;
      if (__OFADD__(v56[2], (v66 & 1) == 0))
      {
        goto LABEL_61;
      }

      v67 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9628, &unk_18F0AB8B8);
      if (sub_18F09417C())
      {
        v68 = sub_18F010478(&v102);
        v57 = v85;
        if ((v84 & 1) != (v69 & 1))
        {
          goto LABEL_65;
        }

        v67 = v68;
        if (v84)
        {
LABEL_54:
          sub_18F032228(v80, v64);
          v56 = *&v87[0];
          v74 = (*(*&v87[0] + 56) + 80 * v67);
          memcpy(v89, v74, 0x50uLL);
          memcpy(v74, __dst, 0x50uLL);
          sub_18EFB6C54(v89);
          sub_18EF82E14(&v91, &qword_1EACB9130, &qword_18F0AB8B0);
          goto LABEL_39;
        }
      }

      else
      {
        v57 = v85;
        if (v84)
        {
          goto LABEL_54;
        }
      }

      v56 = *&v87[0];
      *(*&v87[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v70 = v56[6] + 56 * v67;
      v71 = v103;
      *v70 = v102;
      *(v70 + 16) = v71;
      *(v70 + 32) = v104;
      *(v70 + 48) = v105;
      memcpy((v56[7] + 80 * v67), __dst, 0x50uLL);
      sub_18EF82E14(&v91, &qword_1EACB9130, &qword_18F0AB8B0);
      v72 = v56[2];
      v23 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v23)
      {
        goto LABEL_64;
      }

      v56[2] = v73;
      goto LABEL_39;
    }

    sub_18EF82E14(&v91, &qword_1EACB9130, &qword_18F0AB8B0);
    v58 = v55;
    v57 = v85;
  }

  while (v53);
LABEL_41:
  while (1)
  {
    v55 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v55 >= v54)
    {

      type metadata accessor for AssistantSchemaLibrary();
      result = swift_allocObject();
      result[2] = v57;
      result[3] = v81;
      result[4] = v56;
      return result;
    }

    v53 = *(v50 + 64 + 8 * v55);
    ++v58;
    if (v53)
    {
      goto LABEL_44;
    }
  }

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
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

void *AssistantSchemaIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v31 = 45;
  *(&v31 + 1) = 0xE100000000000000;
  v30[2] = &v31;
  v4 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18EFA5C94, v30, a1, a2);
  v5 = v4;
  if (v4[2] != 3)
  {
    goto LABEL_6;
  }

  v6 = v4[8];
  v7 = v4[9];
  v8 = v4[10];
  v9 = v4[11];

  v10 = MEMORY[0x193AD8710](v6, v7, v8, v9);
  v12 = v11;

  if (!v5[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v5[4];
  v15 = v5[5];
  v16 = v5[6];
  v17 = v5[7];

  v18 = MEMORY[0x193AD8710](v14, v15, v16, v17);
  v20 = v19;

  if (v5[2] < 3uLL)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v21 = v5[12];
  v22 = v5[13];
  v23 = v5[14];
  v24 = v5[15];

  v25 = MEMORY[0x193AD8710](v21, v22, v23, v24);
  v27 = v26;

  result = AssistantSchemaVersion.init(_:)(v25, v27, &v31);
  if (v33)
  {

LABEL_6:

    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v28 = v32;
  v29 = v31;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v29;
  *(a3 + 32) = v28;
  *(a3 + 40) = v18;
  *(a3 + 48) = v20;
  return result;
}

void *AssistantSchemaLibrary.__allocating_init(intents:entities:enums:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19_1();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_18F02DFF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E65746E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D756E65 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

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

uint64_t sub_18F02E104(char a1)
{
  if (!a1)
  {
    return 0x73746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x7365697469746E65;
  }

  return 0x736D756E65;
}

uint64_t sub_18F02E160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F02DFF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F02E188(uint64_t a1)
{
  v2 = sub_18F030DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F02E1C4(uint64_t a1)
{
  v2 = sub_18F030DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantPrebuiltLibrary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9568, &qword_18F0AAEC0);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F030DC0();
  sub_18F0945BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9570, &qword_18F0AAEC8);
  v8 = sub_18F030E14();
  OUTLINED_FUNCTION_1_6(v8);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9588, &qword_18F0AAED0);
    v9 = sub_18F030EF4();
    OUTLINED_FUNCTION_1_6(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95A0, &qword_18F0AAED8);
    v10 = sub_18F030FD4();
    OUTLINED_FUNCTION_1_6(v10);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t AssistantPrebuiltLibrary.__allocating_init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19_1();
  v2 = swift_allocObject();
  AssistantPrebuiltLibrary.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void AssistantPrebuiltLibrary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95B8, &qword_18F0AAEE0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_162();
  __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
  sub_18F030DC0();
  sub_18F09459C();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9570, &qword_18F0AAEC8);
    sub_18F0310B4();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_8_2();
    sub_18F0942CC();
    v10[2] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9588, &qword_18F0AAED0);
    sub_18F031194();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_8_2();
    sub_18F0942CC();
    v10[3] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95A0, &qword_18F0AAED8);
    sub_18F031274();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_8_2();
    sub_18F0942CC();
    v15 = OUTLINED_FUNCTION_13_2();
    v16(v15);
    v10[4] = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F02E648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AssistantPrebuiltLibrary.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *static AssistantSchemaLibrary.loadLibrary()()
{
  type metadata accessor for AssistantPrebuiltLibrary();
  result = static AssistantPrebuiltLibrary.loadLibrary()();
  if (!v0)
  {
    v2 = sub_18F02D484();

    return v2;
  }

  return result;
}

void sub_18F02E6F0()
{
  qword_1EACB9538 = 0;
  unk_1EACB9540 = 0;
  qword_1EACB9548 = 0;
}

uint64_t AssistantSchemaVersion.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_18F02E730()
{
  qword_1EACB9558 = -1;
  qword_1EACB9560 = -1;
  qword_1EACB9550 = -1;
}

__n128 sub_18F02E768@<Q0>(void *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X2>, __n128 *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  result = *a3;
  *a5 = *a3;
  a5[1].n128_u64[0] = v8;
  return result;
}

uint64_t AssistantSchemaVersion.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = 46;
  v32 = 0xE100000000000000;
  v28[2] = &v31;
  v4 = sub_18F030044(2, 1, sub_18F0322E0, v28, a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_18F00F728(0, v5, 0);
    v6 = v30;
    v7 = (v4 + 56);
    do
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      if ((v8 ^ v9) < 0x4000)
      {
        v14 = 0;
        v16 = 1;
      }

      else
      {
        v11 = *(v7 - 1);
        v10 = *v7;
        if ((*v7 & 0x1000000000000000) != 0)
        {

          v14 = sub_18F03082C(v9, v8, v11, v10, 10);
          v16 = v20;
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v13 = HIBYTE(v10) & 0xF;
            v31 = *(v7 - 1);
            v32 = v10 & 0xFFFFFFFFFFFFFFLL;
            v12 = &v31;
          }

          else if ((v11 & 0x1000000000000000) != 0)
          {
            v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v13 = v11 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = sub_18F0940EC();
          }

          v14 = sub_18F031354(v12, v13, v9, v8, v11, v10, 10);
          v29 = v15 & 1;
          v16 = v15 & 1;
        }

        if (v16)
        {
          v14 = 0;
        }
      }

      v30 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_18F00F728((v17 > 1), v18 + 1, 1);
        v6 = v30;
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16 & 1;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v6 + 16);
  if (!v21 || (*(v6 + 40) & 1) != 0)
  {

LABEL_23:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    return result;
  }

  v23 = *(v6 + 32);
  if (v21 == 1)
  {
    v24 = 0;
    v25 = 1;
LABEL_30:

LABEL_31:
    v26 = 0;
    if (v25)
    {
      v24 = 0;
    }

    goto LABEL_33;
  }

  v24 = *(v6 + 48);
  v25 = *(v6 + 56);
  if (v21 < 3)
  {
    goto LABEL_30;
  }

  v26 = *(v6 + 64);
  v27 = *(v6 + 72);

  if (v27)
  {
    goto LABEL_31;
  }

  if (v25)
  {
    goto LABEL_23;
  }

LABEL_33:
  *a3 = v23;
  *(a3 + 8) = v24;
  *(a3 + 16) = v26;
  *(a3 + 24) = 0;
  return result;
}

BOOL static AssistantSchemaVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a1[2] < a2[2];
  }

  else
  {
    v4 = v2 < v3;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_18F02EB04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

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

uint64_t sub_18F02EC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F02EB04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F02EC54(uint64_t a1)
{
  v2 = sub_18F031790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F02EC90(uint64_t a1)
{
  v2 = sub_18F031790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssistantSchemaVersion.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95C0, &qword_18F0AAEE8);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_18F031790();
  sub_18F0945BC();
  OUTLINED_FUNCTION_159();
  sub_18F0943DC();
  if (!v0)
  {
    OUTLINED_FUNCTION_159();
    sub_18F0943DC();
    OUTLINED_FUNCTION_159();
    sub_18F0943DC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_177();
}

uint64_t AssistantSchemaVersion.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x193AD9070](*v0);
  MEMORY[0x193AD9070](v1);
  return MEMORY[0x193AD9070](v2);
}

uint64_t AssistantSchemaVersion.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_18F09452C();
  v3 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x193AD9070](v3);
  MEMORY[0x193AD9070](v1);
  MEMORY[0x193AD9070](v2);
  return sub_18F09456C();
}

void AssistantSchemaVersion.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95C8, &qword_18F0AAEF0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_162();
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_18F031790();
  sub_18F09459C();
  if (!v0)
  {
    OUTLINED_FUNCTION_15_1();
    v6 = sub_18F0942DC();
    OUTLINED_FUNCTION_15_1();
    v7 = sub_18F0942DC();
    OUTLINED_FUNCTION_15_1();
    v8 = sub_18F0942DC();
    v9 = OUTLINED_FUNCTION_118();
    v10(v9);
    *v4 = v6;
    v4[1] = v7;
    v4[2] = v8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F02F0A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_18F09452C();
  MEMORY[0x193AD9070](v2);
  MEMORY[0x193AD9070](v3);
  MEMORY[0x193AD9070](v4);
  return sub_18F09456C();
}

BOOL sub_18F02F140(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a1 < a4;
  v7 = a3 < a6;
  if (a2 != a5)
  {
    v7 = a2 < a5;
  }

  if (a1 == a4)
  {
    v6 = v7;
  }

  return !v6;
}

BOOL sub_18F02F1C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a6 < a3;
  if (a5 != a2)
  {
    v6 = a5 < a2;
  }

  if (a4 == a1)
  {
    return v6;
  }

  else
  {
    return a4 < a1;
  }
}

uint64_t AssistantSchemaVersionRange.contains(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *v1;
  v5 = *a1;
  v6 = v2;
  return v3(&v5) & 1;
}

__n128 static AssistantSchemaVersionRange.exactly(_:)@<Q0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = swift_allocObject();
  result = v6;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  *a2 = sub_18F0317E4;
  a2[1] = v4;
  return result;
}

void static AssistantSchemaVersionRange.atLeast(_:)()
{
  OUTLINED_FUNCTION_12_1();
  if (qword_1EACB7280 != -1)
  {
    swift_once();
  }

  v4 = qword_1EACB9550;
  v5 = qword_1EACB9558;
  v6 = qword_1EACB9560;
  v7 = qword_1EACB9550 >= v1;
  if (qword_1EACB9550 == v1)
  {
    v7 = qword_1EACB9558 >= v2;
    if (qword_1EACB9558 == v2)
    {
      v7 = qword_1EACB9560 >= v3;
    }
  }

  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 2) = v1;
    *(v8 + 3) = v2;
    *(v8 + 4) = v3;
    *(v8 + 5) = v4;
    *(v8 + 6) = v5;
    *(v8 + 7) = v6;
    *v0 = sub_18F031814;
    v0[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

void static AssistantSchemaVersionRange.between(_:and:)()
{
  OUTLINED_FUNCTION_12_1();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = *v4 >= v1;
  if (*v4 == v1)
  {
    v8 = v6 >= v2;
    if (v6 == v2)
    {
      v8 = v7 >= v3;
    }
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 2) = v1;
    *(v9 + 3) = v2;
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
    *(v9 + 6) = v6;
    *(v9 + 7) = v7;
    *v0 = sub_18F0322D8;
    v0[1] = v9;
  }

  else
  {
    __break(1u);
  }
}

void static AssistantSchemaVersionRange.upTo(_:)()
{
  OUTLINED_FUNCTION_12_1();
  if (qword_1EACB7278 != -1)
  {
    swift_once();
  }

  v4 = qword_1EACB9538;
  v5 = unk_1EACB9540;
  v6 = qword_1EACB9548;
  v7 = v1 >= qword_1EACB9538;
  if (v1 == qword_1EACB9538)
  {
    v7 = v2 >= unk_1EACB9540;
    if (v2 == unk_1EACB9540)
    {
      v7 = v3 >= qword_1EACB9548;
    }
  }

  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 2) = v4;
    *(v8 + 3) = v5;
    *(v8 + 4) = v6;
    *(v8 + 5) = v1;
    *(v8 + 6) = v2;
    *(v8 + 7) = v3;
    *v0 = sub_18F0322D8;
    v0[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_18F02F4F0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1 >= *a2;
  if (*a1 == *a2)
  {
    v6 = a2[1];
    v5 = v3 >= v6;
    if (v3 == v6)
    {
      v5 = v4 >= a2[2];
    }
  }

  if (!v5)
  {
    return 0;
  }

  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5] < v4;
  v11 = v9 == v3;
  v12 = v9 < v3;
  if (v11)
  {
    v12 = v10;
  }

  v11 = v8 == v2;
  v13 = v8 < v2;
  if (v11)
  {
    v13 = v12;
  }

  return !v13;
}

__n128 AssistantSchemaIdentifier.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

BOOL static AssistantSchemaIdentifier.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  if ((sub_18F09444C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v4 == v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_108();
  if ((sub_18F09444C() & 1) == 0)
  {
    return 0;
  }

  v14 = v7 < v12;
  if (v6 != v11)
  {
    v14 = v6 < v11;
  }

  if (v5 == v10)
  {
    return v14;
  }

  else
  {
    return v5 < v10;
  }
}

uint64_t static AssistantSchemaIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v13 = sub_18F09444C();
  result = 0;
  if (v13)
  {
    v15 = v2 == v8 && v4 == v7;
    if (v15 && v3 == v10)
    {
LABEL_22:
      if (v5 == v9 && v6 == v11)
      {
        return 1;
      }

      else
      {
        OUTLINED_FUNCTION_108();

        return sub_18F09444C();
      }
    }
  }

  return result;
}

uint64_t sub_18F02F740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

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

uint64_t sub_18F02F84C(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6E69616D6F64;
}

uint64_t sub_18F02F898(uint64_t a1)
{
  sub_18F09452C();
  v1 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x193AD9050](v1);
  return sub_18F09456C();
}

uint64_t sub_18F02F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F02F740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F02F908(uint64_t a1)
{
  v2 = sub_18F03181C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F02F944(uint64_t a1)
{
  v2 = sub_18F03181C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssistantSchemaIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95D0, &qword_18F0AAEF8);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_18F03181C();
  sub_18F0945BC();
  sub_18F09437C();
  if (!v0)
  {
    sub_18F031870();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
    OUTLINED_FUNCTION_159();
    sub_18F09437C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_177();
}

uint64_t AssistantSchemaIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_18F093C1C();
  MEMORY[0x193AD9070](v2);
  MEMORY[0x193AD9070](v3);
  MEMORY[0x193AD9070](v4);

  return sub_18F093C1C();
}

uint64_t AssistantSchemaIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_16_1();
  sub_18F09452C();
  sub_18F093C1C();
  MEMORY[0x193AD9070](v0);
  MEMORY[0x193AD9070](v1);
  MEMORY[0x193AD9070](v2);
  sub_18F093C1C();
  return sub_18F09456C();
}

void AssistantSchemaIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95E0, &qword_18F0AAF00);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_162();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_18F03181C();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_15_1();
    v10 = sub_18F09427C();
    v12 = v11;
    sub_18F0318C4();
    sub_18F0942CC();
    OUTLINED_FUNCTION_15_1();
    v13 = sub_18F09427C();
    v15 = v14;
    v16 = v13;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
    v5[2] = v17;
    v5[3] = v18;
    v5[4] = v19;
    v5[5] = v16;
    v5[6] = v15;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F02FE94()
{
  OUTLINED_FUNCTION_16_1();
  sub_18F09452C();
  sub_18F093C1C();
  MEMORY[0x193AD9070](v0);
  MEMORY[0x193AD9070](v1);
  MEMORY[0x193AD9070](v2);
  sub_18F093C1C();
  return sub_18F09456C();
}

BOOL sub_18F02FF28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18F02D028(v5, v7);
}

BOOL sub_18F02FF84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18F02F16C(v5, v7);
}

BOOL sub_18F02FFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18F02F1F0(v5, v7);
}

uint64_t sub_18F030044(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_18F093D2C();
    OUTLINED_FUNCTION_20_0();
    sub_18F00EBEC();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_18F00EBEC();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_9_2();
      v17 = sub_18F093D0C();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_9_2();
      v16 = sub_18F093C3C();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_18F093D2C();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F00EBEC();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_18F00EBEC();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_9_2();
    v16 = sub_18F093C3C();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_18F093D2C();
        OUTLINED_FUNCTION_20_0();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_18F00EBEC();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F0303A0(uint64_t a1, unint64_t a2)
{
  v2 = sub_18F03040C(sub_18F030408, 0, a1, a2);
  v6 = sub_18F030440(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_18F030440(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_18F093F5C();
    if (!v9 || (v10 = v9, v11 = sub_18F0466B8(v9, 0), v12 = sub_18F0305A0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_18F093C0C();

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
      return sub_18F093C0C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_18F0940EC();
LABEL_4:

  return sub_18F093C0C();
}

unint64_t sub_18F0305A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_18F0307B0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18F093CCC();
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
          result = sub_18F0940EC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_18F0307B0(v12, a6, a7);
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

    result = sub_18F093C9C();
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

unint64_t sub_18F0307B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_18F093CDC();
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
    v5 = MEMORY[0x193AD87C0](15, a1 >> 16);
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

unsigned __int8 *sub_18F03082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_18EFBBCD0();

  result = sub_18F093D1C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_18F0303A0(result, v7);
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_18F0940EC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
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

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
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

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_18F030DC0()
{
  result = qword_1EACB6D68;
  if (!qword_1EACB6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D68);
  }

  return result;
}

unint64_t sub_18F030E14()
{
  result = qword_1EACB9578;
  if (!qword_1EACB9578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9570, &qword_18F0AAEC8);
    sub_18F030EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9578);
  }

  return result;
}

unint64_t sub_18F030EA0()
{
  result = qword_1EACB9580;
  if (!qword_1EACB9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9580);
  }

  return result;
}

unint64_t sub_18F030EF4()
{
  result = qword_1EACB9590;
  if (!qword_1EACB9590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9588, &qword_18F0AAED0);
    sub_18F030F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9590);
  }

  return result;
}

unint64_t sub_18F030F80()
{
  result = qword_1EACB9598;
  if (!qword_1EACB9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9598);
  }

  return result;
}

unint64_t sub_18F030FD4()
{
  result = qword_1EACB95A8;
  if (!qword_1EACB95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB95A0, &qword_18F0AAED8);
    sub_18F031060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95A8);
  }

  return result;
}

unint64_t sub_18F031060()
{
  result = qword_1EACB95B0;
  if (!qword_1EACB95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95B0);
  }

  return result;
}

unint64_t sub_18F0310B4()
{
  result = qword_1EACB6C68;
  if (!qword_1EACB6C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9570, &qword_18F0AAEC8);
    sub_18F031140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C68);
  }

  return result;
}

unint64_t sub_18F031140()
{
  result = qword_1EACB6D70;
  if (!qword_1EACB6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D70);
  }

  return result;
}

unint64_t sub_18F031194()
{
  result = qword_1EACB6C70;
  if (!qword_1EACB6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9588, &qword_18F0AAED0);
    sub_18F031220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C70);
  }

  return result;
}

unint64_t sub_18F031220()
{
  result = qword_1EACB6D90;
  if (!qword_1EACB6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D90);
  }

  return result;
}

unint64_t sub_18F031274()
{
  result = qword_1EACB6C78;
  if (!qword_1EACB6C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB95A0, &qword_18F0AAED8);
    sub_18F031300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C78);
  }

  return result;
}

unint64_t sub_18F031300()
{
  result = qword_1EACB6DD0;
  if (!qword_1EACB6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DD0);
  }

  return result;
}

uint64_t sub_18F031354(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
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
    result = sub_18F0307B0(a3, a5, a6);
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
      goto LABEL_97;
    }

    result = sub_18F093CBC();
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
    result = sub_18F0307B0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_18F0307B0(v21, a5, a6);
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
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_18F093CBC();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
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
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
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

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
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

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
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
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
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

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_18F031790()
{
  result = qword_1EACB6DC8;
  if (!qword_1EACB6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DC8);
  }

  return result;
}

unint64_t sub_18F03181C()
{
  result = qword_1EACB6D10;
  if (!qword_1EACB6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D10);
  }

  return result;
}

unint64_t sub_18F031870()
{
  result = qword_1EACB95D8;
  if (!qword_1EACB95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95D8);
  }

  return result;
}

unint64_t sub_18F0318C4()
{
  result = qword_1EACB6DB0;
  if (!qword_1EACB6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DB0);
  }

  return result;
}

unint64_t sub_18F03191C()
{
  result = qword_1EACB95E8;
  if (!qword_1EACB95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95E8);
  }

  return result;
}

unint64_t sub_18F031974()
{
  result = qword_1EACB95F0;
  if (!qword_1EACB95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95F0);
  }

  return result;
}

unint64_t sub_18F0319C8()
{
  result = qword_1EACB95F8;
  if (!qword_1EACB95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95F8);
  }

  return result;
}

unint64_t sub_18F031A1C()
{
  result = qword_1EACB6B10;
  if (!qword_1EACB6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssistantPrebuiltConformanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltConformanceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AssistantSchemaVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssistantSchemaVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BundleMetadataExtractionError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_18F031D8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F031E6C()
{
  result = qword_1EACB9600;
  if (!qword_1EACB9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9600);
  }

  return result;
}

unint64_t sub_18F031EC4()
{
  result = qword_1EACB9608;
  if (!qword_1EACB9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9608);
  }

  return result;
}

unint64_t sub_18F031F1C()
{
  result = qword_1EACB9610;
  if (!qword_1EACB9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9610);
  }

  return result;
}

unint64_t sub_18F031F74()
{
  result = qword_1EACB6D00;
  if (!qword_1EACB6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D00);
  }

  return result;
}

unint64_t sub_18F031FCC()
{
  result = qword_1EACB6D08;
  if (!qword_1EACB6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D08);
  }

  return result;
}

unint64_t sub_18F032024()
{
  result = qword_1EACB6DB8;
  if (!qword_1EACB6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DB8);
  }

  return result;
}

unint64_t sub_18F03207C()
{
  result = qword_1EACB6DC0;
  if (!qword_1EACB6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DC0);
  }

  return result;
}

unint64_t sub_18F0320D4()
{
  result = qword_1EACB6D58;
  if (!qword_1EACB6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D58);
  }

  return result;
}

unint64_t sub_18F03212C()
{
  result = qword_1EACB6D60;
  if (!qword_1EACB6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D60);
  }

  return result;
}

unint64_t sub_18F032180()
{
  result = qword_1EACB6CF0;
  if (!qword_1EACB6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CF0);
  }

  return result;
}

unint64_t sub_18F0321D4()
{
  result = qword_1EACB6CB0;
  if (!qword_1EACB6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CB0);
  }

  return result;
}

uint64_t sub_18F032228(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18F03226C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_108();
  v6(v5);
  return a2;
}

id sub_18F03230C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v41 = sub_18F093B5C();

  v39 = sub_18F093B5C();

  v38 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  v37 = sub_18F093DBC();

  if (a11)
  {
    v36 = sub_18F093B5C();
  }

  else
  {
    v36 = 0;
  }

  if (a12)
  {
    type metadata accessor for LNPlatformName(0, v24, v25, v26);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EFB6910(&qword_1ED5FFA38, type metadata accessor for LNPlatformName, &unk_18F0A0B24);
    v35 = sub_18F093A3C();
  }

  else
  {
    v35 = 0;
  }

  if (a13)
  {
    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    v27 = sub_18F093DBC();
  }

  else
  {
    v27 = 0;
  }

  type metadata accessor for LNSystemEntityProtocolIdentifier(0, v24, v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EFB6910(&qword_1ED5FE770, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_18F0A0B68);
  v28 = sub_18F093A3C();

  if (a16)
  {
    v29 = sub_18F093B5C();
  }

  else
  {
    v29 = 0;
  }

  if (a18)
  {
    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    v30 = sub_18F093DBC();
  }

  else
  {
    v30 = 0;
  }

  if (a20)
  {
    v31 = sub_18F093B5C();
  }

  else
  {
    v31 = 0;
  }

  if (a23)
  {
    v32 = sub_18F093B5C();
  }

  else
  {
    v32 = 0;
  }

  if (a24)
  {
    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    v33 = sub_18F093DBC();
  }

  else
  {
    v33 = 0;
  }

  v43 = [v42 initWithIdentifier:v41 transient:a3 & 1 mangledTypeName:v39 mangledTypeNameByBundleIdentifier:v38 effectiveBundleIdentifiers:a7 displayRepresentation:a8 properties:v37 customIntentTypeClassName:v36 availabilityAnnotations:v35 requiredCapabilities:v27 systemProtocolMetadata:v28 attributionBundleIdentifier:v29 transferableContentTypes:a17 assistantDefinedSchemas:v30 fullyQualifiedTypeName:v31 visibilityMetadata:a21 defaultQueryIdentifier:v32 allowedTargets:v33];

  return v43;
}

id sub_18F032750@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFB9100(&v5, *a1, *(a1 + 8));
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t DaemonRecord.bundleIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___swift_DaemonRecord_bundleIdentifier);
  OUTLINED_FUNCTION_2_7(a1);
  v3 = *v2;

  return v3;
}

uint64_t DaemonRecord.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___swift_DaemonRecord_bundleIdentifier);
  OUTLINED_FUNCTION_3_6(a1);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t DaemonRecord.attributionBundleIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier);
  OUTLINED_FUNCTION_2_7(a1);
  v3 = *v2;

  return v3;
}

uint64_t DaemonRecord.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier);
  OUTLINED_FUNCTION_3_6(a1);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t DaemonRecord.metadataURLs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___swift_DaemonRecord_metadataURLs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DaemonRecord.effectiveBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-v2 - 8];
  v4 = (v0 + OBJC_IVAR___swift_DaemonRecord_bundleIdentifier);
  OUTLINED_FUNCTION_4_7(v4, v10);
  v6 = *v4;
  v5 = v4[1];
  v7 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  objc_allocWithZone(LNEffectiveBundleIdentifier);

  return sub_18EF7FCF0(2, v6, v5, v3);
}

id sub_18F032C4C()
{
  result = sub_18F032C6C();
  qword_1ED5FDAE0 = result;
  return result;
}

id sub_18F032C6C()
{
  v50[1] = *MEMORY[0x1E69E9840];
  v0 = sub_18F0932BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v41 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = [objc_opt_self() defaultManager];
  sub_18F09323C();
  v13 = sub_18F09324C();
  v15 = v1 + 8;
  v14 = *(v1 + 8);
  v14(v11, v0);
  v50[0] = 0;
  v16 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:0 error:v50];

  v17 = v50[0];
  if (!v16)
  {
    v39 = v50[0];
    v40 = sub_18F09318C();

    swift_willThrow();
    return MEMORY[0x1E69E7CC0];
  }

  v47 = v14;
  v43 = v6;
  v18 = sub_18F093DCC();
  v19 = v17;

  v20 = 0;
  v48 = *(v18 + 16);
  v49 = v1 + 16;
  v44 = (v1 + 32);
  v46 = MEMORY[0x1E69E7CC0];
  while (v48 != v20)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v21 = v15;
    v22 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v23 = *(v1 + 72);
    (*(v1 + 16))(v9, v18 + v22 + v23 * v20, v0);
    if (sub_18F0931EC())
    {
      if (sub_18F09320C() == 0x7473696C70 && v24 == 0xE500000000000000)
      {
      }

      else
      {
        v26 = sub_18F09444C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v42 = *v44;
      v42(v45, v9, v0);
      v27 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F00F748();
        v27 = v50[0];
      }

      v29 = v27[2];
      v30 = (v29 + 1);
      if (v29 >= v27[3] >> 1)
      {
        v46 = (v29 + 1);
        sub_18F00F748();
        v30 = v46;
        v27 = v50[0];
      }

      ++v20;
      v27[2] = v30;
      v46 = v27;
      v42(v27 + v22 + v29 * v23, v45, v0);
      v15 = v21;
    }

    else
    {
LABEL_11:
      v15 = v21;
      v47(v9, v0);
      ++v20;
    }
  }

  v31 = 0;
  v50[0] = MEMORY[0x1E69E7CC0];
  v33 = v46;
  v32 = v47;
  v34 = v46[2];
  v35 = v43;
  while (v34 != v31)
  {
    if (v31 >= v33[2])
    {
      goto LABEL_25;
    }

    v36 = (*(v1 + 16))(v35, v33 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v31, v0);
    v37 = MEMORY[0x193AD91F0](v36);
    sub_18F033130(v35, v50);
    ++v31;
    objc_autoreleasePoolPop(v37);
    v32(v35, v0);
  }

  return v50[0];
}