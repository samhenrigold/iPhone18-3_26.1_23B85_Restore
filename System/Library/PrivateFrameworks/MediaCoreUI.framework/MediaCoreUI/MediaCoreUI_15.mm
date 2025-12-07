unint64_t sub_1C5AB84E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C5BCAF94();
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
    v5 = MEMORY[0x1C694F1A0](15, a1 >> 16);
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

uint64_t sub_1C5AB8564(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1C5BCBB04();
  }

  result = sub_1C5AB8760(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1C5AB862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MarkupParser.Element(0, *(*v4 + 80), *(*v4 + 88), a4);
  *(v4 + 64) = sub_1C5BCAC94();
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 5;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = MEMORY[0x1E69E7CC8];
  *(v4 + 48) = a2;
  sub_1C5BCB424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196A78, &qword_1C5BE4650);
  sub_1C5AB9670();
  sub_1C5BCB454();
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  sub_1C5BCB3D4();
  *(v4 + 56) = v7;
  *(v4 + 128) = v7;
  return v4;
}

uint64_t sub_1C5AB8760(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C5AB84E8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C5BCAF74();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C5AB84E8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C5AB84E8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1C5BCAF74();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
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

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
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

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1C5AB8BCC(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 - 37) < 0xFFFFFFFFFFFFFFDDLL)
  {
    __break(1u);
    return sub_1C5BCAEF4();
  }

  if ((a2 ^ result) < 0x4000)
  {
    return 0;
  }

  v10 = sub_1C5AB8564(result, a2, a3, a4, a5);
  if ((v10 & 0x10000000000) != 0)
  {

    sub_1C5AB7B68(result, a2, a3, a4, a5);
    v13 = v12;

    v10 = v13;
    if ((v13 & 0x100000000) != 0)
    {
      return 0;
    }
  }

  else if ((v10 & 0x100000000) != 0)
  {
    return 0;
  }

  v11 = 0;
  if (WORD1(v10) > 0x10u || (v10 & 0xFFFFF800) == 0xD800)
  {
    return v11;
  }

  if ((v10 & 0x1FFF80) != 0 || v10 <= 0xFF)
  {
    return sub_1C5BCAEF4();
  }

  __break(1u);
  return v10;
}

uint64_t sub_1C5AB8D6C()
{
  if (v0[3])
  {
    return *v0;
  }

  __break(1u);
  return result;
}

void sub_1C5AB8D9C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C5AB9114();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5AB8E24(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1C5AB8F60(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1C5AB9114()
{
  if (!qword_1EC1969C0[0])
  {
    v0 = sub_1C5BCACD4();
    if (!v1)
    {
      atomic_store(v0, qword_1EC1969C0);
    }
  }
}

uint64_t sub_1C5AB9174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5AB9240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI12MarkupParserV0E033_3BBDFA502C694AC784ABDA11AF7B3480LLC5StateOyx__G(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C5AB9298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5AB92E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5AB9334(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

double sub_1C5AB9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {

LABEL_4:

    return result;
  }

  if (a7 == 2)
  {

    goto LABEL_4;
  }

  if (a7 == 4)
  {
  }

  return result;
}

unint64_t sub_1C5AB9400()
{
  result = qword_1EC196A50;
  if (!qword_1EC196A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC196A50);
  }

  return result;
}

uint64_t sub_1C5AB944C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1C5AB9494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {

LABEL_4:

    return result;
  }

  if (a7 == 2)
  {

    goto LABEL_4;
  }

  if (a7 == 4)
  {
  }

  return result;
}

uint64_t sub_1C5AB95B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196A68, &qword_1C5BE4648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5AB961C()
{
  result = qword_1EC196A70;
  if (!qword_1EC196A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196A70);
  }

  return result;
}

unint64_t sub_1C5AB9670()
{
  result = qword_1EDA45D10;
  if (!qword_1EDA45D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196A78, &qword_1C5BE4650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D10);
  }

  return result;
}

uint64_t sub_1C5AB96D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AB973C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5AB979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double NowPlayingFooterConfiguration.init<A, B>(_:_:compact:regular:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v42 = a3;
  v43 = a4;
  v38 = a2;
  v44 = a1;
  v41 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v35 - v14;
  v15 = sub_1C5AB9BD8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v45 = &type metadata for NowPlayingButtonID;
  *(&v45 + 1) = AssociatedTypeWitness;
  v46 = v15;
  v47 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ContentLookupItem(0, &v45);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = &v35 - v17;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = swift_getAssociatedConformanceWitness();
  *&v45 = &type metadata for NowPlayingButtonID;
  *(&v45 + 1) = v18;
  v46 = v15;
  v47 = v21;
  v22 = type metadata accessor for ContentLookupItem(0, &v45);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v35 - v24;
  (*(a7 + 24))(&v45, a5, a7, v23);
  v50 = v45;
  v51 = v46;
  (*(a7 + 32))(a5, a7);
  sub_1C5A1CAA0(&v50, v20, &type metadata for NowPlayingButtonID, v18, v15, v21, v25);
  v26 = v38;
  (*(a8 + 24))(&v45, a6, a8);
  v50 = v45;
  v51 = v46;
  v27 = v37;
  (*(a8 + 32))(a6, a8);
  (*(*(a6 - 8) + 8))(v26, a6);
  (*(*(a5 - 8) + 8))(v44, a5);
  v28 = v36;
  v30 = AssociatedConformanceWitness;
  v29 = v40;
  sub_1C5A1CAA0(&v50, v27, &type metadata for NowPlayingButtonID, v40, v15, AssociatedConformanceWitness, v36);
  ContentLookup.init<A, B>(_:_:)(v25, v28, &type metadata for NowPlayingButtonID, v18, v29, v15, v21, v30, &v45);
  v31 = v45;
  *&v45 = &type metadata for NowPlayingButtonID;
  *(&v45 + 1) = v18;
  v46 = v29;
  v47 = v15;
  v48 = v21;
  v49 = v30;
  type metadata accessor for ContentLookup2(0, &v45);
  swift_getWitnessTable();
  v32 = v41;
  *v41 = v42;
  v32[1] = v31;
  v33 = v43;
  v32[2] = *(&v31 + 1);
  v32[3] = v33;
  *(v32 + 2) = v31;

  return result;
}

unint64_t sub_1C5AB9BD8()
{
  result = qword_1EC196B08;
  if (!qword_1EC196B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196B08);
  }

  return result;
}

double NowPlayingFooterConfiguration.init<A, B, C>(_:_:_:compact:regular:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a4;
  v70 = a5;
  v65 = a3;
  v62 = a2;
  v72 = a1;
  v68 = a9;
  v60 = a12;
  v61 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v53 - v16;
  v17 = sub_1C5AB9BD8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v73 = &type metadata for NowPlayingButtonID;
  *(&v73 + 1) = AssociatedTypeWitness;
  v74 = v17;
  v75 = AssociatedConformanceWitness;
  v18 = type metadata accessor for ContentLookupItem(0, &v73);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = &v53 - v19;
  v57 = a7;
  v20 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v53 - v21;
  v59 = swift_getAssociatedConformanceWitness();
  *&v73 = &type metadata for NowPlayingButtonID;
  *(&v73 + 1) = v20;
  v74 = v17;
  v75 = v59;
  v22 = type metadata accessor for ContentLookupItem(0, &v73);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v71 = &v53 - v23;
  v24 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = swift_getAssociatedConformanceWitness();
  *&v73 = &type metadata for NowPlayingButtonID;
  *(&v73 + 1) = v24;
  v74 = v17;
  v75 = v27;
  v28 = v27;
  v55 = v27;
  v29 = type metadata accessor for ContentLookupItem(0, &v73);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v53 - v31;
  v56 = &v53 - v31;
  v33 = *(a10 + 24);
  v54 = a6;
  v33(&v73, a6, a10, v30);
  v80 = v73;
  v81 = v74;
  (*(a10 + 32))(a6, a10);
  sub_1C5A1CAA0(&v80, v26, &type metadata for NowPlayingButtonID, v24, v17, v28, v32);
  v34 = v62;
  v35 = v57;
  (*(a11 + 24))(&v73, v57, a11);
  v80 = v73;
  v81 = v74;
  v36 = v58;
  v37 = v34;
  (*(a11 + 32))(v35, a11);
  v38 = v59;
  sub_1C5A1CAA0(&v80, v36, &type metadata for NowPlayingButtonID, v20, v17, v59, v71);
  v39 = v60;
  v40 = v65;
  v41 = v61;
  (*(v60 + 24))(&v73, v61, v60);
  v80 = v73;
  v81 = v74;
  v42 = v39;
  v43 = *(v39 + 32);
  v44 = v63;
  v43(v41, v42);
  (*(*(v41 - 8) + 8))(v40, v41);
  (*(*(v35 - 8) + 8))(v37, v35);
  (*(*(v54 - 8) + 8))(v72);
  v45 = v64;
  v47 = AssociatedConformanceWitness;
  v46 = v67;
  sub_1C5A1CAA0(&v80, v44, &type metadata for NowPlayingButtonID, v67, v17, AssociatedConformanceWitness, v64);
  v48 = v55;
  ContentLookup.init<A, B, C>(_:_:_:)(v56, v71, v45, &type metadata for NowPlayingButtonID, v24, v20, v46, v17, &v73, v55, v38, v47);
  v49 = v73;
  *&v73 = &type metadata for NowPlayingButtonID;
  *(&v73 + 1) = v24;
  v74 = v20;
  v75 = v46;
  v76 = v17;
  v77 = v48;
  v78 = v38;
  v79 = v47;
  type metadata accessor for ContentLookup3(0, &v73);
  swift_getWitnessTable();
  v50 = v68;
  *v68 = v69;
  v50[1] = v49;
  v51 = v70;
  v50[2] = *(&v49 + 1);
  v50[3] = v51;
  *(v50 + 2) = v49;

  return result;
}

uint64_t sub_1C5ABA234@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v13 = *(v12 + 16);
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = sub_1C5BC92D4();
  v34 = *(v20 - 8);
  v35 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  if (*a1)
  {
    v23 = *(a2 + 40);
    sub_1C593EDC0(v33 + *(a2 + 52), v5, v23);
    sub_1C593EDC0(v11, v5, v23);
    v24 = v6;
    v25 = *(a2 + 32);
    sub_1C5941738(v8, v13, v5, v25, v23);
    v26 = *(v24 + 8);
    v26(v8, v5);
    v26(v11, v5);
  }

  else
  {
    v25 = *(a2 + 32);
    sub_1C593EDC0(v33, v13, v25);
    sub_1C593EDC0(v19, v13, v25);
    v23 = *(a2 + 40);
    sub_1C5950E54(v16, v13, v5, v25, v23);
    v27 = *(v32 + 8);
    v27(v16, v13);
    v27(v19, v13);
  }

  v37 = v25;
  v38 = v23;
  v28 = v35;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v22, v28, WitnessTable);
  return (*(v34 + 8))(v22, v28);
}

uint64_t NowPlayingFooterContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196B10, &unk_1C5BE46C0);
  v5 = *(a1 + 16);
  v25 = sub_1C5BC8AB4();
  v6 = sub_1C5BC92D4();
  v27 = sub_1C5ABA85C();
  v26 = sub_1C5AB9BD8();
  v35 = v28;
  v36 = &type metadata for NowPlayingButtonID;
  v37 = v6;
  v38 = v27;
  v39 = v26;
  v7 = sub_1C5BCA8C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v3 + 2);
  v23 = *v3;
  v35 = v23;
  KeyPath = swift_getKeyPath(byte_1C5BE46D0);
  v15 = swift_allocObject();
  v16 = *(a1 + 24);
  *(v15 + 16) = v5;
  *(v15 + 24) = v16;
  *(v15 + 32) = v23;
  *(v15 + 48) = v14;
  v17 = sub_1C59E7CE0();
  v33 = v16;
  v34 = v17;
  swift_bridgeObjectRetain_n();

  WitnessTable = swift_getWitnessTable();
  v31 = MEMORY[0x1E6981838];
  v32 = WitnessTable;
  v22 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v30 = v22;
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, v19);
  v20 = *(v8 + 8);
  v20(v10, v7);
  sub_1C593EDC0(v13, v7, v19);
  return (v20)(v13, v7);
}

unint64_t sub_1C5ABA85C()
{
  result = qword_1EC196B18[0];
  if (!qword_1EC196B18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196B10, &unk_1C5BE46C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC196B18);
  }

  return result;
}

uint64_t sub_1C5ABA8C0@<X0>(uint64_t *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v50 = a5;
  v44 = a2;
  v51 = a6;
  v43 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = sub_1C5BC92D4();
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v42 - v18;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 16);
  if ((v21 & 1) == 0)
  {
    if (v19 == 0x726563617073 && v20 == 0xE600000000000000)
    {
      sub_1C5951550(0x726563617073, 0xE600000000000000);
      sub_1C5950CE4(0x726563617073, 0xE600000000000000);
      sub_1C5950CE4(0x726563617073, 0xE600000000000000);
    }

    else
    {
      v34 = sub_1C5BCBDE4();
      sub_1C5951550(v19, v20);
      sub_1C5950CE4(v19, v20);
      sub_1C5950CE4(0x726563617073, 0xE600000000000000);
      if ((v34 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v60 = 0;
    LOBYTE(v61) = 1;
    v35 = sub_1C59E7CE0();
    v25 = v50;
    v52 = v50;
    v53 = v35;
    WitnessTable = swift_getWitnessTable();
    v33 = v47;
    sub_1C5950E54(&v60, MEMORY[0x1E6981840], v11, MEMORY[0x1E6981838], WitnessTable);
    goto LABEL_9;
  }

  sub_1C5950CE4(v19, v20);
  sub_1C5950CE4(0x726563617073, 0xE600000000000000);
LABEL_3:
  v67 = v44;
  v68 = a3;
  v64 = v19;
  v65 = v20;
  v66 = v21;
  v22 = sub_1C5AB9BD8();

  v60 = &type metadata for NowPlayingButtonID;
  v61 = v10;
  v44 = v16;
  v23 = v43;
  v24 = v12;
  v25 = v50;
  v62 = v22;
  v63 = v50;
  v26 = type metadata accessor for ContentLookup(0, &v60);
  v27 = v45;
  sub_1C5A1EAEC(&v64, v26);

  v60 = v19;
  v61 = v20;
  LOBYTE(v62) = v21;
  NowPlayingButtonID.geometryID.getter(&v64);
  v67 = v64;
  v68 = v65;
  v28 = v46;
  sub_1C5B0A7BC(&v67, v10, v25);

  (*(v23 + 8))(v27, v10);
  v29 = sub_1C59E7CE0();
  v58 = v25;
  v59 = v29;
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_1C593EDC0(v28, v11, v30);
  v32 = *(v24 + 8);
  v32(v28, v11);
  sub_1C593EDC0(v31, v11, v30);
  v33 = v47;
  sub_1C5941738(v28, MEMORY[0x1E6981840], v11, MEMORY[0x1E6981838], v30);
  v32(v28, v11);
  v32(v31, v11);
LABEL_9:
  v37 = sub_1C59E7CE0();
  v56 = v25;
  v57 = v37;
  v38 = swift_getWitnessTable();
  v54 = MEMORY[0x1E6981838];
  v55 = v38;
  v39 = v49;
  v40 = swift_getWitnessTable();
  sub_1C593EDC0(v33, v39, v40);
  return (*(v48 + 8))(v33, v39);
}

uint64_t sub_1C5ABAEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C5ABAEF4()
{
  v0 = sub_1C5BC81D4();
  MEMORY[0x1EEE9AC00](v0);
  if (qword_1EDA469C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  __swift_project_value_buffer(v1, qword_1EDA469C8);

  v9 = sub_1C5BC7D44();
  v2 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    swift_getKeyPath(byte_1C5BE4940);
    swift_getKeyPath(aX_11);
    sub_1C5BC8034();

    v5 = sub_1C5BCAEA4();
    v7 = sub_1C592ADA8(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1C5922000, v9, v2, "Updated scenePhase to %{public}s.", v3, 0xCu);
    v8 = __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1C69510F0](v4, -1, -1, v8);
    MEMORY[0x1C69510F0](v3, -1, -1);
  }

  else
  {
  }
}

double sub_1C5ABB118()
{
  swift_getKeyPath(byte_1C5BE4940);
  swift_getKeyPath(aX_11);
  sub_1C5BC8034();

  return result;
}

void sub_1C5ABB190(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_notificationObservers;
  v4 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_notificationObservers);
  v5 = objc_opt_self();

  v6 = [v5 defaultCenter];
  v7 = *(v4 + 16);
  v8 = v6;
  if (v7)
  {
    v9 = 0;
    v10 = v4 + 32;
    while (v9 < *(v4 + 16))
    {
      sub_1C592B32C(v10, v11);
      ++v9;
      __swift_project_boxed_opaque_existential_0(v11, v11[3]);
      [v8 removeObserver_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v11);
      v10 += 32;
      if (v7 == v9)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v3) = a1;
  }
}

uint64_t sub_1C5ABB2B4()
{
  result = sub_1C5BCAE44();
  qword_1EC196C20 = result;
  return result;
}

void sub_1C5ABB2EC()
{
  v117 = sub_1C5BC81D4();
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v103 = &v95[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v104 = &v95[-v3];
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v95[-v5];
  v114 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v95[-v8];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C40, &qword_1C5BE49A0);
  v109 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v113 = &v95[-v9];
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 connectedScenes];

  v12 = sub_1C593F170();
  sub_1C593F1BC(&qword_1EDA45D88, sub_1C593F170, MEMORY[0x1E69E81B8]);
  v13 = sub_1C5BCB364();

  v116 = v0;
  v111 = v13;
  v112 = v12;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C5BCB944();
    sub_1C5BCB384();
    v13 = v129;
    v14 = v130;
    v15 = v131;
    v16 = v132;
    v17 = v133;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v14 = (v13 + 56);
    v19 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & *(v13 + 56);

    v15 = v19;
    v16 = 0;
  }

  v110 = v15;
  v22 = (v15 + 64) >> 6;
  v23 = *MEMORY[0x1E69DE808];
  v121 = v14;
  KeyPath = v23;
  if (v13 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v24 = v16;
  v25 = v17;
  v26 = v16;
  if (v17)
  {
LABEL_12:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v13 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v28)
    {
      while (1)
      {
        v120 = v28;
        v30 = [v28 session];
        v31 = [v30 role];

        v32 = sub_1C5BCAE74();
        v34 = v33;
        if (v32 == sub_1C5BCAE74() && v34 == v35)
        {
          break;
        }

        v37 = sub_1C5BCBDE4();

        if (v37)
        {
          goto LABEL_30;
        }

        v38 = [v120 session];
        v31 = [v38 role];

        if (qword_1EC1907C8 != -1)
        {
          swift_once();
        }

        v39 = sub_1C5BCAE74();
        v41 = v40;
        if (v39 == sub_1C5BCAE74() && v41 == v42)
        {
          break;
        }

        v43 = sub_1C5BCBDE4();

        if (v43)
        {
          goto LABEL_30;
        }

        v16 = v26;
        v17 = v27;
        v14 = v121;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v29 = sub_1C5BCB9C4();
        if (v29)
        {
          v128 = v29;
          swift_dynamicCast();
          v28 = aBlock;
          v26 = v16;
          v27 = v17;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

LABEL_30:
      sub_1C593F204(v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C48, &unk_1C5BE49A8);
      v44 = v109[9];
      v45 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v100 = swift_allocObject();
      v46 = (v100 + v45);
      v47 = v118;
      v48 = v119;
      v49 = *(v118 + 48);
      KeyPath = *MEMORY[0x1E69DE338];
      *v46 = KeyPath;
      v50 = *(v48 + 104);
      v48 += 104;
      v97 = *MEMORY[0x1E697BE38];
      v51 = v117;
      v50(v46 + v49);
      v52 = *(v47 + 48);
      v53 = *MEMORY[0x1E69DE358];
      *(v46 + v44) = *MEMORY[0x1E69DE358];
      v54 = *MEMORY[0x1E697BE40];
      (v50)(v46 + v44 + v52, v54, v51);
      v55 = (v46 + 2 * v44);
      v56 = *(v47 + 48);
      v57 = *MEMORY[0x1E69DE360];
      *v55 = *MEMORY[0x1E69DE360];
      v96 = v54;
      (v50)(v55 + v56, v54, v51);
      v110 = v44;
      v58 = v46 + 3 * v44;
      v59 = *(v47 + 48);
      v60 = *MEMORY[0x1E69DE348];
      *v58 = *MEMORY[0x1E69DE348];
      v98 = *MEMORY[0x1E697BE30];
      v101 = v50;
      v50(&v58[v59]);
      v128 = MEMORY[0x1E69E7CC0];
      v61 = KeyPath;
      v62 = v53;
      v63 = v57;
      v64 = v60;
      v65 = 4;
      sub_1C593F20C(0, 4, 0);
      v66 = v128;
      v109 = objc_opt_self();
      v108 = objc_opt_self();
      v111 = v48 - 88;
      v102 = v48;
      v112 = v48 - 72;
      v107 = &v124;
      v99 = v46;
      v67 = v46;
      do
      {
        KeyPath = v65;
        v68 = v113;
        sub_1C5ABC69C(v67, v113);
        v69 = *v68;
        v70 = *(v118 + 48);
        v121 = [v109 defaultCenter];
        v71 = [v108 mainQueue];
        v72 = swift_allocObject();
        swift_weakInit();
        v73 = v119;
        v74 = v115;
        v106 = *(v119 + 16);
        v106(v115, v68 + v70, v51);
        v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = v69;
        *(v76 + 24) = v72;
        v77 = *(v73 + 32);
        v78 = v76 + v75;
        v51 = v117;
        v77(v78, v74, v117);
        v126 = sub_1C5ABC70C;
        v127 = v76;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v124 = sub_1C5975B64;
        ObjectType = &block_descriptor_13;
        v79 = _Block_copy(&aBlock);
        v80 = v69;

        v81 = v121;
        v82 = [v121 addObserverForName:v80 object:v120 queue:v71 usingBlock:v79];
        _Block_release(v79);

        ObjectType = swift_getObjectType();
        *&aBlock = v82;
        sub_1C5924EF4(v68, &qword_1EC196C40, &qword_1C5BE49A0);
        v128 = v66;
        v84 = *(v66 + 16);
        v83 = *(v66 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_1C593F20C((v83 > 1), v84 + 1, 1);
          v66 = v128;
        }

        *(v66 + 16) = v84 + 1;
        sub_1C593F33C(&aBlock, (v66 + 32 * v84 + 32));
        v67 += v110;
        v65 = (KeyPath - 1);
      }

      while (KeyPath != 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1C5ABB190(v66);
      v85 = v120;
      v86 = [v120 activationState];
      if (v86 == 1)
      {
        v89 = v96;
        v87 = v104;
        v88 = v101;
      }

      else
      {
        v87 = v104;
        v88 = v101;
        v89 = v98;
        if (!v86)
        {
          v89 = v97;
        }
      }

      (v88)(v87, v89, v51);
      v90 = v105;
      v77(v105, v87, v51);
      swift_getKeyPath(byte_1C5BE4940);
      swift_getKeyPath(aX_11);
      v91 = v115;
      sub_1C5BC8034();

      sub_1C593F1BC(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
      v92 = sub_1C5BCADB4();
      v93 = *(v119 + 8);
      v93(v91, v51);
      if (v92)
      {
        v93(v90, v51);
      }

      else
      {
        v94 = v106;
        v106(v91, v90, v51);
        KeyPath = swift_getKeyPath(byte_1C5BE4940);
        swift_getKeyPath(aX_11);
        v94(v103, v91, v51);

        sub_1C5BC8044();
        sub_1C5ABAEF4();

        v93(v91, v51);
        v93(v90, v51);
      }
    }

    else
    {
LABEL_28:
      sub_1C593F204(v13);
    }
  }

  else
  {
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        goto LABEL_28;
      }

      v25 = *(v14 + v26);
      ++v24;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1C5ABBF74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C5BC81D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  if (qword_1EDA469C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C5BC7D64();
  __swift_project_value_buffer(v13, qword_1EDA469C8);
  v14 = a2;
  v15 = sub_1C5BC7D44();
  v16 = sub_1C5BCB4F4();

  v17 = os_log_type_enabled(v15, v16);
  v33 = a4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v7;
    v20 = v9;
    v21 = v19;
    v34[0] = v19;
    *v18 = 136446210;
    v22 = sub_1C5BCAE74();
    v24 = sub_1C592ADA8(v22, v23, v34);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1C5922000, v15, v16, "Received scene notification %{public}s.", v18, 0xCu);
    v25 = __swift_destroy_boxed_opaque_existential_0(v21);
    v26 = v21;
    v9 = v20;
    v7 = v32;
    MEMORY[0x1C69510F0](v26, -1, -1, v25);
    MEMORY[0x1C69510F0](v18, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath(byte_1C5BE4940);
    swift_getKeyPath(aX_11);
    sub_1C5BC8034();

    sub_1C593F1BC(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
    v27 = v33;
    v28 = sub_1C5BCADB4();
    v29 = *(v7 + 8);
    v29(v12, v6);
    if (v28)
    {
    }

    else
    {
      v30 = *(v7 + 16);
      v30(v12, v27, v6);
      swift_getKeyPath(byte_1C5BE4940);
      swift_getKeyPath(aX_11);
      v30(v9, v12, v6);

      sub_1C5BC8044();
      sub_1C5ABAEF4();

      v29(v12, v6);
    }
  }
}

uint64_t sub_1C5ABC308()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_notificationObservers) = MEMORY[0x1E69E7CC0];

  memset(v5, 0, sizeof(v5));
  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_sceneConnectionObserver;
  swift_beginAccess();
  sub_1C59AB3E0(v5, v0 + v1);
  swift_endAccess();
  v2 = OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel__scenePhase;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C50, &qword_1C5BE49B8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1C5924EF4(v0 + v1, &qword_1EC191700, &unk_1C5BD5040);
  return swift_deallocClassInstance();
}

uint64_t sub_1C5ABC430()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA469C8);
  __swift_project_value_buffer(v0, qword_1EDA469C8);
  return sub_1C5BC7D54();
}

double sub_1C5ABC4AC()
{
  swift_getKeyPath(byte_1C5BE4940);
  swift_getKeyPath(aX_11);
  sub_1C5BC8034();

  return result;
}

uint64_t sub_1C5ABC528(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C5BC81D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath(byte_1C5BE4940);
  swift_getKeyPath(aX_11);
  (v11)(v6, v10, v3);

  sub_1C5BC8044();
  sub_1C5ABAEF4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1C5ABC69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C40, &qword_1C5BE49A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5ABC70C(uint64_t a1)
{
  v3 = *(sub_1C5BC81D4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1C5ABBF74(a1, v4, v5, v6);
}

double sub_1C5ABC780(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v15 = sub_1C5942458(a2, 0);
    (*(v11 + 8))(v13, v10, v15);
    LOBYTE(a2) = v19[15];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isBlurEnabled) = a2 & 1;
  sub_1C5ABC9A4();
  if ((a5 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v17 = sub_1C5942458(a4, 0);
    (*(v11 + 8))(v13, v10, v17);
    LOBYTE(a4) = v19[14];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isColorAdjustmentEnabled) = a4 & 1;
  sub_1C5ABC9A4();
  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot) = 0;
  return sub_1C5ABC9A4();
}

double sub_1C5ABC9A4()
{
  KeyPath = swift_getKeyPath(a8_8);
  sub_1C5B8677C(KeyPath, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isBlurEnabled));

  v2 = swift_getKeyPath(byte_1C5BE4CE0);
  v3 = OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isColorAdjustmentEnabled;
  if (*(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isColorAdjustmentEnabled) == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1C5B86794(v2, v4 & 1);

  v5 = swift_getKeyPath(byte_1C5BE4D08);
  if (*(v0 + v3) == 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot);
  }

  else
  {
    v6 = 0;
  }

  sub_1C5B867AC(v5, v6);

  return result;
}

void *sub_1C5ABCA88()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C5ABCAB8()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer);
  v2 = v1;
  return v1;
}

void *sub_1C5ABCAE8()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer);
  v2 = v1;
  return v1;
}

id sub_1C5ABCB18()
{
  v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isBlurEnabled] = 1;
  v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isColorAdjustmentEnabled] = 1;
  v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot] = 0;
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer] = 0;
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer] = 0;
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NowPlayingArtworkBackgroundEffect.EffectLayer();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  sub_1C5ABC9A4();

  return v1;
}

void *sub_1C5ABCBE0(void *a1)
{
  v1[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isBlurEnabled] = 1;
  v1[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isColorAdjustmentEnabled] = 1;
  v1[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot] = 0;
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer] = 0;
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer] = 0;
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_1C5BCBDD4();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for NowPlayingArtworkBackgroundEffect.EffectLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id sub_1C5ABCCFC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NowPlayingArtworkBackgroundEffect.EffectLayer();
  objc_msgSendSuper2(&v9, sel_layoutSublayers);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer];
  if (v2)
  {
    v3 = v2;
    [v3 setFrame_];
  }

  v4 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame_];
  }

  v6 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame_];
  }

  return [v1 commit];
}

double sub_1C5ABCEA4()
{
  [v0 bounds];
  if (CGRectGetWidth(v2) > 0.0)
  {
    [v0 bounds];
    CGRectGetHeight(v3);
    [v0 bounds];
    CGRectGetWidth(v4);
    if (qword_1EDA472D0 != -1)
    {
      swift_once();
    }

    if (byte_1EC196C58)
    {
      [v0 bounds];
      CGRectGetHeight(v5);
      [v0 bounds];
      CGRectGetHeight(v6);
    }

    [v0 bounds];
    CGRectGetWidth(v7);
    [v0 bounds];
    CGRectGetHeight(v8);
    [v0 bounds];
    CGRectGetWidth(v9);
  }

  return 0.0;
}

id sub_1C5ABD04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingArtworkBackgroundEffect.EffectLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5ABD0E0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  [v1 setAllowsInPlaceFiltering_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BCFF00;
  v3 = sub_1C5ABEE20();
  *(v2 + 56) = sub_1C592535C(0, &qword_1EDA45D80, 0x1E6979378);
  *(v2 + 32) = v3;
  v4 = sub_1C5BCB044();

  [v1 setFilters_];

  return v1;
}

void sub_1C5ABD264()
{
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDA5DD00;
  v1 = sub_1C5BCAE44();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 withConfiguration:0];

  if (v2)
  {
    v3 = [v2 CGImage];

    if (v3)
    {
      qword_1EDA4E2E0 = v3;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_1C5ABD35C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_dimmingMatrix];
  *v2 = xmmword_1C5BE49F0;
  *(v2 + 1) = xmmword_1C5BE4A00;
  *(v2 + 2) = xmmword_1C5BE4A10;
  *(v2 + 3) = xmmword_1C5BE4A20;
  *(v2 + 4) = xmmword_1C5BDA780;
  v3 = &v0[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix];
  CAColorMatrixMakeSaturation();
  v4 = v39;
  *(v3 + 2) = v38;
  *(v3 + 3) = v4;
  *(v3 + 4) = v40;
  v5 = v37;
  *v3 = v36;
  *(v3 + 1) = v5;
  v35.receiver = v0;
  v35.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v35, sel_init);
  v7 = *MEMORY[0x1E6979DA0];
  v8 = v6;
  [v8 setType_];
  if (qword_1EDA472E0 != -1)
  {
    swift_once();
  }

  sub_1C5ABD7F8(qword_1EDA472E8);
  v9 = sub_1C5BCB044();

  [v8 setColors_];

  if (qword_1EDA472B8 != -1)
  {
    swift_once();
  }

  sub_1C592535C(0, &qword_1EDA4E048, 0x1E696AD98);
  v10 = sub_1C5BCB044();
  [v8 setLocations_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C5BD31C0;
  v12 = *MEMORY[0x1E6979ED0];
  v13 = objc_opt_self();
  v14 = v8;
  *(v11 + 32) = [v13 functionWithName_];
  if (qword_1EDA472D0 != -1)
  {
    swift_once();
  }

  *(v11 + 40) = [v13 functionWithName_];
  sub_1C592535C(0, &unk_1EDA45E00, 0x1E69793D0);
  v15 = sub_1C5BCB044();

  [v14 setInterpolations_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C5BCFF00;
  v17 = *&v14[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix + 48];
  v43 = *&v14[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix + 32];
  v44 = v17;
  v45 = *&v14[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix + 64];
  v18 = *&v14[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix + 16];
  v41 = *&v14[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29125LiveColorAdjustmentsLayer_saturationMatrix];
  v42 = v18;
  v30 = v29;
  v31 = v28;
  v32 = v27;
  v33 = v26;
  v34 = v25;
  CAColorMatrixConcat();
  v19 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v20 = objc_opt_self();
  v32 = v48;
  v33 = v49;
  v34 = v50;
  v30 = v46;
  v31 = v47;
  v21 = [v20 valueWithCAColorMatrix_];
  v22 = sub_1C5BCAE44();
  [v19 setValue:v21 forKey:v22];

  *(v16 + 56) = sub_1C592535C(0, &qword_1EDA45D80, 0x1E6979378);
  *(v16 + 32) = v19;
  v23 = sub_1C5BCB044();

  [v14 setFilters_];

  return v14;
}

char *sub_1C5ABD7F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C5BCB984();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C593F20C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1C694FD20](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C593F20C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1C593F33C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1C593F20C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1C593F33C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5ABD9C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C5B8F048(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_1C5B8F048((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_1C5ABDCA4()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v11, sel_init);
  v2 = *MEMORY[0x1E6979DA0];
  v3 = v1;
  [v3 setType_];
  if (qword_1EDA472E0 != -1)
  {
    swift_once();
  }

  sub_1C5ABD7F8(qword_1EDA472E8);
  v4 = sub_1C5BCB044();

  [v3 setColors_];

  if (qword_1EDA472B8 != -1)
  {
    swift_once();
  }

  sub_1C592535C(0, &qword_1EDA4E048, 0x1E696AD98);
  v5 = sub_1C5BCB044();
  [v3 setLocations_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C5BD31C0;
  v7 = *MEMORY[0x1E6979ED0];
  v8 = objc_opt_self();
  *(v6 + 32) = [v8 functionWithName_];
  if (qword_1EDA472D0 != -1)
  {
    swift_once();
  }

  *(v6 + 40) = [v8 functionWithName_];
  sub_1C592535C(0, &unk_1EDA45E00, 0x1E69793D0);
  v9 = sub_1C5BCB044();

  [v3 setInterpolations_];

  return v3;
}

void sub_1C5ABDF90()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  [v0 bounds];
  Height = CGRectGetHeight(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD31C0;
  v3 = *MEMORY[0x1E6979ED0];
  v4 = objc_opt_self();
  *(v2 + 32) = [v4 functionWithName_];
  if (qword_1EDA472D0 != -1)
  {
    swift_once();
  }

  if (byte_1EC196C58 == 1 && Height > 0.0)
  {
    v5 = 0.0;
    if (Height > 550.0)
    {
      v5 = 1.0;
      if (Height < 700.0)
      {
        v5 = (Height + -550.0) / 150.0;
      }
    }

    v6 = 1.0 - v5;
    v7 = (v6 * -0.1) + 0.42;
    v8 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v9) = 1.0;
    LODWORD(v10) = 1.0;
    *&v11 = v7;
    v12 = [v8 initWithControlPoints__:v11 :{0.0, v9, v10}];
  }

  else
  {
    v12 = [v4 functionWithName_];
  }

  *(v2 + 40) = v12;
  v13 = [v0 interpolations];
  if (v13 && (v14 = v13, sub_1C592535C(0, &unk_1EDA45E00, 0x1E69793D0), v15 = sub_1C5BCB054(), v14, v16 = , LOBYTE(v14) = sub_1C5A4A388(v16, v15), , , (v14 & 1) != 0))
  {
  }

  else
  {
    sub_1C592535C(0, &unk_1EDA45E00, 0x1E69793D0);
    v17 = sub_1C5BCB044();

    [v0 setInterpolations_];
  }
}

id sub_1C5ABE240()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v13, sel_init);
  v2 = objc_allocWithZone(type metadata accessor for NowPlayingArtworkBackgroundEffect.SnapshotColorAdjustmentsLayer.Mask());
  v3 = v1;
  v4 = [v2 init];
  [v3 setMask_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C5BD4D40;
  v6 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v7 = sub_1C5BC7BD4();
  v8 = sub_1C5BCAE44();
  [v6 setValue:v7 forKey:v8];

  v9 = sub_1C592535C(0, &qword_1EDA45D80, 0x1E6979378);
  *(v5 + 56) = v9;
  *(v5 + 32) = v6;
  v10 = sub_1C5ABEFE0();
  *(v5 + 88) = v9;
  *(v5 + 64) = v10;
  v11 = sub_1C5BCB044();

  [v3 setFilters_];

  return v3;
}

id sub_1C5ABE420(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v5 = sub_1C5BCBDD4();
  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1C5ABE5B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  type metadata accessor for NowPlayingArtworkBackgroundEffect.EffectLayer();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_1C5950E48(v1, v2);
  sub_1C5950E48(v3, v4);

  return sub_1C5BC85C4();
}

void sub_1C5ABE678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5BD31B0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent_];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_1EDA472E8 = v0;
}

uint64_t sub_1C5ABE7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5BD31B0;
  sub_1C592535C(0, &qword_1EDA4E048, 0x1E696AD98);
  *(v0 + 32) = sub_1C5BCB714();
  *(v0 + 40) = sub_1C5BCB714();
  result = sub_1C5BCB714();
  *(v0 + 48) = result;
  qword_1EDA472C0 = v0;
  return result;
}

void sub_1C5ABE894()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1EC196C58 = v1 != 0;
}

unint64_t sub_1C5ABE918()
{
  result = qword_1EDA47428;
  if (!qword_1EDA47428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47428);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.isNowPlayingBackgroundBlurEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C5ABE918();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C5ABEA34;
}

uint64_t sub_1C5ABEA60(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

unint64_t sub_1C5ABEAA8()
{
  result = qword_1EDA472F0;
  if (!qword_1EDA472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA472F0);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.isNowPlayingBackgroundColorAdjustmentEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C5ABEAA8();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C5ABEC5C;
}

void sub_1C5ABED78()
{
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isBlurEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isColorAdjustmentEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer) = 0;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer) = 0;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

id sub_1C5ABEE20()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  if (qword_1EDA4E2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA4E2E0;
  v2 = sub_1C5BCAE44();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_1C5BCB184();
  v4 = sub_1C5BCAE44();
  [v0 setValue:v3 forKey:v4];

  v5 = sub_1C5BCB184();
  v6 = sub_1C5BCAE44();
  [v0 setValue:v5 forKey:v6];

  v7 = sub_1C5BC7BD4();
  v8 = sub_1C5BCAE44();
  [v0 setValue:v7 forKey:v8];

  return v0;
}

id sub_1C5ABEFE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v1 = sub_1C5BCB044();
  v2 = sub_1C5BCAE44();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_1C5BC7BD4();
  v4 = sub_1C5BCAE44();
  [v0 setValue:v3 forKey:v4];

  return v0;
}

uint64_t sub_1C5ABF0E0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 56) = sub_1C5BCB1E4();
  *(v5 + 64) = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();
  *(v5 + 72) = v7;
  *(v5 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5ABF184, v7, v6);
}

uint64_t sub_1C5ABF184()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0 + 2);
  v6 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *(v0 + 11) = v6;
  [v6 setBounds_];
  [v6 setOpaque_];
  [v6 setAnchorPoint_];
  [v6 setDrawsAsynchronously_];
  v7 = [objc_allocWithZone(type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer()) init];
  *(v0 + 12) = v7;
  v8 = v5;
  sub_1C5BB9BA0(v5);
  v9 = v7;
  [v9 setOpaque_];
  [v6 bounds];
  [v9 setBounds_];
  [v9 setAnchorPoint_];
  [v9 setDrawsAsynchronously_];

  [v6 addSublayer_];
  v10 = [objc_allocWithZone(type metadata accessor for NowPlayingArtworkBackgroundEffect.EffectLayer()) init];
  *(v0 + 13) = v10;
  v10[OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_isConfiguredForSnapshot] = 1;
  sub_1C5ABC9A4();
  v11 = v10;
  [v6 bounds];
  [v11 setBounds_];
  [v11 setAnchorPoint_];
  [v11 setDrawsAsynchronously_];

  [v6 addSublayer_];
  v6;
  *(v0 + 14) = sub_1C5BCB1D4();
  v12 = swift_task_alloc();
  *(v0 + 15) = v12;
  *v12 = v0;
  v12[1] = sub_1C5ABF404;

  return sub_1C5BC3E6C();
}

uint64_t sub_1C5ABF404(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1C5BCB194();
    v7 = v6;
    v8 = sub_1C5ABF680;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1C5BCB194();
    v7 = v9;
    v8 = sub_1C5ABF594;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1C5ABF594()
{
  v1 = v0[11];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x1EEE6DFA0](sub_1C5ABF600, v2, v3);
}

uint64_t sub_1C5ABF600()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1C5ABF680()
{
  v1 = v0[11];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x1EEE6DFA0](sub_1C5ABF6EC, v2, v3);
}

uint64_t sub_1C5ABF6EC()
{

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(0);
}

unint64_t sub_1C5ABF768()
{
  result = qword_1EDA466C8;
  if (!qword_1EDA466C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196CA0, &qword_1C5BE4D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA466C8);
  }

  return result;
}

uint64_t sub_1C5ABF7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v93 = a1;
  v86 = a3;
  v89 = sub_1C5BC8F34();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v94 = a2;
  v7 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C593A9AC();
  v100 = v7;
  v101 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v102 = WitnessTable;
  v103 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v98 = v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D40, &qword_1C5BE4FC8);
  v90 = v7;
  v100 = v7;
  v101 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v92 = WitnessTable;
  v102 = WitnessTable;
  v103 = v9;
  v91 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1C5AC0EF0();
  v100 = OpaqueTypeMetadata2;
  v101 = v12;
  v102 = OpaqueTypeConformance2;
  v103 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v84 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196CA8, &qword_1C5BE4D88);
  v18 = sub_1C5924F54(&qword_1EC196D50, &qword_1EC196CA8, &qword_1C5BE4D88, MEMORY[0x1E695BF88]);
  v75 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeMetadata2;
  v101 = v12;
  v73[3] = v12;
  v73[2] = OpaqueTypeConformance2;
  v102 = OpaqueTypeConformance2;
  v103 = v14;
  v73[1] = v14;
  v19 = swift_getOpaqueTypeConformance2();
  v80 = v17;
  v100 = v17;
  v101 = v15;
  v85 = v15;
  v78 = v18;
  v102 = v18;
  v103 = v19;
  v76 = v19;
  v82 = sub_1C5BC8BB4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v21 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v73 - v23;
  v25 = *(v4 + 24);
  if (!v25)
  {
    goto LABEL_21;
  }

  LOBYTE(v106) = *(v25 + 16);
  v26 = swift_allocObject();
  v27 = v94;
  v28 = *(v94 + 24);
  v73[0] = *(v94 + 16);
  *(v26 + 16) = v73[0];
  *(v26 + 24) = v28;
  v97 = v28;
  v29 = *(v4 + 48);
  *(v26 + 64) = *(v4 + 32);
  *(v26 + 80) = v29;
  *(v26 + 96) = *(v4 + 64);
  v30 = *(v4 + 16);
  *(v26 + 32) = *v4;
  *(v26 + 48) = v30;
  v31 = *(v27 - 8);
  v32 = *(v31 + 16);
  v95 = v31 + 16;
  v96 = v32;
  v32(&v100, v4, v27);
  swift_checkMetadataState();
  sub_1C5BCA334();

  v33 = *(v4 + 40);
  v106 = v33;
  v107 = *(v4 + 48);
  v34 = v107;

  if ((v34 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v36 = v87;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v106, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v88 + 8))(v36, v89);
    v33 = v100;
  }

  swift_getKeyPath(a8_9);
  v100 = v33;
  sub_1C5939F8C(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v37 = *(v33 + 16);

  v79 = v24;
  v77 = v21;
  if (v37 >> 62)
  {
    v38 = sub_1C5BCB984();
    if (v38)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
LABEL_6:
      v100 = MEMORY[0x1E69E7CC0];
      sub_1C5B8F088(0, v38 & ~(v38 >> 63), 0);
      if ((v38 & 0x8000000000000000) == 0)
      {
        v93 = v4;
        v39 = 0;
        v40 = v100;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x1C694FD20](v39, v37);
          }

          else
          {
            v41 = *(v37 + 8 * v39 + 32);
          }

          v42 = v41[2];
          v43 = v41[3];
          v44 = v41[4];
          v45 = v41[5];

          v100 = v40;
          v47 = *(v40 + 16);
          v46 = *(v40 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1C5B8F088((v46 > 1), v47 + 1, 1);
            v40 = v100;
          }

          ++v39;
          *(v40 + 16) = v47 + 1;
          v48 = (v40 + 32 * v47);
          v48[4] = v42;
          v48[5] = v43;
          v48[6] = v44;
          v48[7] = v45;
        }

        while (v38 != v39);

        v4 = v93;
        v27 = v94;
        goto LABEL_17;
      }

      __break(1u);
LABEL_21:
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5939F8C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
      result = sub_1C5BC8C74();
      __break(1u);
      return result;
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v49 = v98;
  v104 = v40;
  v50 = swift_allocObject();
  v51 = v73[0];
  v52 = v97;
  *(v50 + 16) = v73[0];
  *(v50 + 24) = v52;
  v53 = *(v4 + 48);
  *(v50 + 64) = *(v4 + 32);
  *(v50 + 80) = v53;
  *(v50 + 96) = *(v4 + 64);
  v54 = *(v4 + 16);
  *(v50 + 32) = *v4;
  *(v50 + 48) = v54;
  v96(&v100, v4, v27);
  v55 = v83;
  v56 = v75;
  sub_1C5BCA344();

  (*(v74 + 8))(v49, v56);
  v57 = *(v4 + 56);
  v104 = v57;
  v105 = *(v4 + 64);
  v58 = v105;

  if ((v58 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v59 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v60 = v87;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v104, &qword_1EC195628, &unk_1C5BE0240);
    (*(v88 + 8))(v60, v89);
    v57 = v100;
  }

  v61 = *(v57 + 16);

  v99 = v61;
  v62 = swift_allocObject();
  v63 = v97;
  *(v62 + 16) = v51;
  *(v62 + 24) = v63;
  v64 = *(v4 + 48);
  *(v62 + 64) = *(v4 + 32);
  *(v62 + 80) = v64;
  *(v62 + 96) = *(v4 + 64);
  v65 = *(v4 + 16);
  *(v62 + 32) = *v4;
  *(v62 + 48) = v65;
  v96(&v100, v4, v27);
  v66 = v77;
  v67 = v85;
  sub_1C5BCA3D4();

  (*(v84 + 8))(v55, v67);
  v68 = v82;
  v69 = swift_getWitnessTable();
  v70 = v79;
  sub_1C593EDC0(v66, v68, v69);
  v71 = *(v81 + 8);
  v71(v66, v68);
  sub_1C593EDC0(v70, v68, v69);
  return (v71)(v70, v68);
}

void sub_1C5AC031C(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 > 2u || *a1)
  {
    v3 = sub_1C5BCBDE4();

    if ((v3 & 1) == 0)
    {
      return;
    }

    if (v2 > 2)
    {
LABEL_8:
      v4 = sub_1C5BCBDE4();

      if ((v4 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {

    if (v2 > 2)
    {
      goto LABEL_8;
    }
  }

  if (v2 <= 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C5BC7D64();
  __swift_project_value_buffer(v5, qword_1EDA5DA78);
  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C5922000, v6, v7, "TimeControlView displaying time control segments because player expanded", v8, 2u);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }

  v10.value = 0.1;
  v10.is_nil = 0;
  ScrubberProxy.showSectionDelimiters(forDuration:delay:)(v10, v9);
}

void sub_1C5AC05E8(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 48);
  v6 = *(a1 + 40);
  v21 = v6;
  v7 = v22;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v21, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v3 + 8))(v5, v2);
    v6 = v20;
  }

  swift_getKeyPath(a8_9);
  v20 = v6;
  sub_1C5939F8C(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v9 = *(v6 + 16);

  if (v9 >> 62)
  {
    v10 = sub_1C5BCB984();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = *(a1 + 24);
    if (!v11)
    {
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5939F8C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
      sub_1C5BC8C74();
      __break(1u);
      return;
    }

    v12 = *(v11 + 16);
    if (v12 <= 2 && v12 > 1)
    {
    }

    else
    {
      v13 = sub_1C5BCBDE4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C5BC7D64();
    __swift_project_value_buffer(v14, qword_1EDA5DA78);
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5922000, v15, v16, "TimeControlView displaying track sections because sections changed", v17, 2u);
      MEMORY[0x1C69510F0](v17, -1, -1);
    }

    v23.value = 0.0;
    v23.is_nil = 0;
    ScrubberProxy.showSectionDelimiters(forDuration:delay:)(v23, v18);
  }
}

void sub_1C5AC0A18()
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5BC7D64();
  __swift_project_value_buffer(v0, qword_1EDA5DA78);
  v1 = sub_1C5BC7D44();
  v2 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5922000, v1, v2, "TimeControlView displaying track sections because transport button tapped", v3, 2u);
    MEMORY[0x1C69510F0](v3, -1, -1);
  }

  v5.value = 0.0;
  v5.is_nil = 0;
  ScrubberProxy.showSectionDelimiters(forDuration:delay:)(v5, v4);
}

uint64_t sub_1C5AC0B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s11TimeControlCMa();
  sub_1C5939F8C(&qword_1EDA4B070, _s11TimeControlCMa, &unk_1C5BEC094);
  v4 = sub_1C5BC8C84();
  v6 = v5;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C5939F8C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
  v7 = sub_1C5BC8C84();
  v9 = v8;
  _s13TrackSectionsCMa(0);
  sub_1C5939F8C(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  v10 = sub_1C5BC8324();
  v12 = v11;
  _s27TransportInteractionMonitorCMa(0);
  sub_1C5939F8C(&qword_1EDA4A348, _s27TransportInteractionMonitorCMa, &unk_1C5BE4D6C);
  result = sub_1C5BC8324();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12 & 1;
  *(a2 + 56) = result;
  *(a2 + 64) = v14 & 1;
  return result;
}

uint64_t sub_1C5AC0D10()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel27TransportInteractionMonitor___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5AC0DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5AC0DF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1C5AC0E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5AC0EF0()
{
  result = qword_1EC196D48;
  if (!qword_1EC196D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D40, &qword_1C5BE4FC8);
    sub_1C5A58F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196D48);
  }

  return result;
}

uint64_t sub_1C5AC0F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5AC0FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5AC106C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1C5AC11B8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = ((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 8) = 0u;
          v20 = a2 & 0x7FFFFFFF;
          *(v19 + 24) = 0u;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1C5AC1394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20[1] = a5;
  v20[2] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28, &unk_1C5BD67E0);
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  sub_1C5BCA474();
  v15 = sub_1C5BCA4B4();

  v16 = *a2;
  v21[0] = v15;
  *&v21[1] = a6;
  v21[2] = v16;
  v17 = *(a2 + 3);
  v22 = *(a2 + 1);
  v23 = v17;

  MEMORY[0x1C694E550](v21, a3, v10, a4);

  swift_getKeyPath(byte_1C5BE5420);
  v18 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28, &unk_1C5BD67E0, &unk_1C5BE52F0);
  v20[3] = a4;
  v20[4] = v18;
  swift_getWitnessTable();
  sub_1C5BC9DF4();

  return (*(v12 + 8))(v14, v11);
}

double sub_1C5AC1590(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath(byte_1C5BE57B8);
  v6 = 0;
  MEMORY[0x1C694E550](&KeyPath, a1, &type metadata for VideoPlayerStyleModifier, a2);
  return sub_1C5942458(KeyPath, v6);
}

void sub_1C5AC1604(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a0_9);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
}

void sub_1C5AC16D4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE5870);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  *a2 = *(v3 + 18);
}

double sub_1C5AC17A4(uint64_t a1)
{
  qword_1EC1A6BE0 = sub_1C5BCA474();
  unk_1EC1A6BE8 = xmmword_1C5BE5000;
  result = 0.0;
  *&qword_1EC1A6BF8 = xmmword_1C5BE5010;
  return result;
}

double sub_1C5AC17E0(uint64_t a1)
{
  qword_1EC1A6C08 = sub_1C5BCA474();
  *algn_1EC1A6C10 = xmmword_1C5BE5020;
  result = 0.0;
  *&qword_1EC1A6C20 = xmmword_1C5BE5030;
  return result;
}

double sub_1C5AC181C(uint64_t a1)
{
  qword_1EC1A6C30 = sub_1C5BCA474();
  unk_1EC1A6C38 = xmmword_1C5BE5040;
  result = 0.0;
  *&qword_1EC1A6C48 = xmmword_1C5BE5050;
  return result;
}

double sub_1C5AC1858(uint64_t a1)
{
  qword_1EC1A6C58 = sub_1C5BCA474();
  unk_1EC1A6C60 = xmmword_1C5BE5060;
  result = 0.0;
  *&qword_1EC1A6C70 = xmmword_1C5BE5070;
  return result;
}

double sub_1C5AC1894(uint64_t a1)
{
  qword_1EC1A6C80 = sub_1C5BCA474();
  unk_1EC1A6C88 = xmmword_1C5BE5080;
  result = 0.0;
  *&qword_1EC1A6C98 = xmmword_1C5BE5090;
  return result;
}

double sub_1C5AC18D0(uint64_t a1)
{
  qword_1EC1A6CA8 = sub_1C5BCA474();
  *algn_1EC1A6CB0 = xmmword_1C5BE50A0;
  result = 0.0;
  *&qword_1EC1A6CC0 = xmmword_1C5BE5050;
  return result;
}

BOOL sub_1C5AC190C(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_1C5BCA454();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1C5AC1988()
{
  v0 = type metadata accessor for ArtworkCornerStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6CD0);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6CD0);
  v2 = [objc_opt_self() currentTraitCollection];
  [v2 displayCornerRadius];
  v4 = v3;

  v5 = *(v0 + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1C5BC9044();
  result = (*(*(v7 - 8) + 104))(&v1[v5], v6, v7);
  *v1 = v4;
  return result;
}

uint64_t sub_1C5AC1A68()
{
  v0 = type metadata accessor for ArtworkCornerStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6CE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6CE8);
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x1E697F480];
  v4 = sub_1C5BC9044();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0;
  return result;
}

void *sub_1C5AC1B08()
{
  sub_1C595820C();

  return sub_1C5BC8F44();
}

void sub_1C5AC1B50(uint64_t *a1)
{
  v2 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (*a1 != 1)
    {
      return;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v11 = sub_1C5942458(v9, 0);
    (*(v6 + 8))(v8, v5, v11);
    if (v14[15] != 1)
    {
      return;
    }
  }

  v12 = a1[12];
  if (v12)
  {
    if (*(v12 + 16) - 1 < 3)
    {
      if (qword_1EC190818 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v2, qword_1EC1A6CE8);
      type metadata accessor for ArtworkCornerModifier(0);
      sub_1C5945830(v13, v4, type metadata accessor for ArtworkCornerStyle);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
      sub_1C5BCA6A4();
    }
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C5AC3CD8(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
    sub_1C5BC8C74();
    __break(1u);
  }
}

uint64_t sub_1C5AC1E14(unsigned __int8 *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C5BCAC14();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_1C5BCAC44();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = type metadata accessor for ArtworkCornerModifier(0);
  v49 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = v9;
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46[-v17];
  v19 = sub_1C5BC8F34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  v24 = *a2;
  v25 = *(v3 + 64);
  if (*(v3 + 72) == 1)
  {
    v26 = *(v3 + 64);
    if (v26 != 3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v27 = *(v3 + 64);
    v33 = *(v3 + 72);
    LOBYTE(aBlock[0]) = v24;
    if ((v33 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v47 = v23;

  sub_1C5BCB4E4();
  v48 = v22;
  v31 = sub_1C5BC9844();
  v22 = v48;
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  v32 = sub_1C5942458(v25, 0);
  (*(v20 + 8))(v22, v19, v32);
  LOBYTE(v23) = v47;
  v26 = LOBYTE(aBlock[0]);
  if (LOBYTE(aBlock[0]) == 3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v27 = *(v3 + 64);
  v28 = *(v3 + 72);
  if (v26)
  {
    LOBYTE(aBlock[0]) = v24;
    if (!v28)
    {
LABEL_5:

      sub_1C5BCB4E4();
      v29 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v30 = sub_1C5942458(v27, 0);
      (*(v20 + 8))(v22, v19, v30);
      LOBYTE(v27) = v61;
LABEL_9:
      v60 = v27;
      sub_1C5972A60(aBlock, &v60, v12);
      sub_1C5945830(v12, v15, type metadata accessor for ArtworkCornerStyle);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
      sub_1C5BCA6A4();
      return sub_1C5945898(v12, type metadata accessor for ArtworkCornerStyle);
    }

LABEL_8:
    v61 = v27;
    goto LABEL_9;
  }

  LOBYTE(aBlock[0]) = v23;
  if (v28)
  {
    v61 = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v36 = sub_1C5942458(v27, 0);
    (*(v20 + 8))(v22, v19, v36);
    LOBYTE(v27) = v61;
  }

  v60 = v27;
  sub_1C5972A60(aBlock, &v60, v18);
  sub_1C5945830(v18, v15, type metadata accessor for ArtworkCornerStyle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
  sub_1C5BCA6A4();
  sub_1C5945898(v18, type metadata accessor for ArtworkCornerStyle);
  sub_1C5929CA0();
  v37 = sub_1C5BCB5A4();
  v38 = v51;
  sub_1C5945830(v3, v51, type metadata accessor for ArtworkCornerModifier);
  v39 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v40 = v39 + v50;
  v41 = swift_allocObject();
  sub_1C5958174(v38, v41 + v39);
  *(v41 + v40) = v24;
  aBlock[4] = sub_1C5AC4748;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_14;
  v42 = _Block_copy(aBlock);

  v43 = v52;
  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5AC3CD8(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  v44 = v54;
  v45 = v57;
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v43, v44, v42);
  _Block_release(v42);

  (*(v56 + 8))(v44, v45);
  return (*(v53 + 8))(v43, v55);
}

double sub_1C5AC2620(uint64_t *a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59400B0((a1 + 2), v14, &qword_1EC192E48, &unk_1C5BD7180);
  if (v15 == 1)
  {
    sub_1C596A0A8(v14, v16);
  }

  else
  {
    sub_1C5BCB4E4();
    v6 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_0(v16, v17);
  LOBYTE(v7) = sub_1C596CB78(v7);
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  if (v7)
  {
    v10 = *a1;
    if (*(a1 + 8) == 1)
    {
      if (*a1)
      {
        return result;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v11 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v12 = sub_1C5942458(v10, 0);
      v8 = (*(v3 + 8))(v5, v2, v12);
      if (LOBYTE(v14[0]))
      {
        return result;
      }
    }

    MEMORY[0x1EEE9AC00](v8);
    *(&v13 - 2) = a1;
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }

  return result;
}

uint64_t sub_1C5AC28D4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *(a1 + 80);
  if (v8)
  {
    swift_beginAccess();
    if (*(v8 + 16))
    {
      if (qword_1EC190818 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v2, qword_1EC1A6CE8);
      sub_1C5945830(v9, v7, type metadata accessor for ArtworkCornerStyle);
    }

    else
    {
      v10 = *(v2 + 20);
      v11 = *MEMORY[0x1E697F480];
      v12 = sub_1C5BC9044();
      (*(*(v12 - 8) + 104))(&v7[v10], v11, v12);
      *v7 = 0x4024000000000000;
    }

    type metadata accessor for ArtworkCornerModifier(0);
    sub_1C5945830(v7, v4, type metadata accessor for ArtworkCornerStyle);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
    sub_1C5BCA6A4();
    return sub_1C5945898(v7, type metadata accessor for ArtworkCornerStyle);
  }

  else
  {
    _s14DefaultArtworkCMa();
    sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AC2B20(uint64_t a1, int a2)
{
  v30 = a2;
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E28, &qword_1C5BE5A08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = sub_1C5BC9704();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ArtworkCornerModifier(0);
  v28 = *(v14 - 8);
  v15 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 defaultSheetMetrics];

  v18 = [v17 transitionSpringParametersHighSpeed_];
  [v18 _response];
  v20 = v19 * 0.8;
  v21 = [v18 _dampingRatio];
  MEMORY[0x1C694ED40](v21, v20, v22, 0.0);

  v31 = v29;
  LOBYTE(v18) = v30;
  v32 = v30;
  sub_1C5945830(v29, &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkCornerModifier);
  v23 = (*(v28 + 80) + 17) & ~*(v28 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  sub_1C5958174(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_1C5BC96F4();
  (*(v9 + 16))(v7, v13, v8);
  (*(v9 + 56))(v7, 0, 1, v8);

  v34 = sub_1C5BC8424();
  if (qword_1EDA48E80 != -1)
  {
    swift_once();
  }

  MEMORY[0x1C694C640](qword_1EDA48E88, 0);
  v33 = 0;
  MEMORY[0x1C694C620](2686978);
  sub_1C59400B0(v7, v4, &qword_1EC196E28, &qword_1C5BE5A08);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1C5924EF4(v7, &qword_1EC196E28, &qword_1C5BE5A08);
  }

  else
  {
    v25 = v27;
    (*(v9 + 32))(v27, v4, v8);

    sub_1C5BC83F4();

    (*(v9 + 8))(v25, v8);
    v4 = v7;
  }

  sub_1C5924EF4(v4, &qword_1EC196E28, &qword_1C5BE5A08);
  sub_1C5BC8B14();

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_1C5AC3008(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v18 - v12);
  v22 = a2;
  v14 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    v21 = *(a1 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v19 = v4;
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v16 = sub_1C5942458(v14, 0);
    (*(v5 + 8))(v7, v19, v16);
    LOBYTE(v14) = v21;
  }

  v20 = v14;
  sub_1C5972A60(&v22, &v20, v13);
  type metadata accessor for ArtworkCornerModifier(0);
  sub_1C5945830(v13, v10, type metadata accessor for ArtworkCornerStyle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
  sub_1C5BCA6A4();
  return sub_1C5945898(v13, type metadata accessor for ArtworkCornerStyle);
}

void sub_1C5AC3268(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 1)
  {
    v8 = *(a2 + 96);
    if (v8)
    {
      if (*(v8 + 16) - 1 < 3)
      {
        if (qword_1EC190818 != -1)
        {
          v10 = v5;
          swift_once();
          v5 = v10;
        }

        v9 = __swift_project_value_buffer(v5, qword_1EC1A6CE8);
        type metadata accessor for ArtworkCornerModifier(0);
        sub_1C5945830(v9, v7, type metadata accessor for ArtworkCornerStyle);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
        sub_1C5BCA6A4();
      }
    }

    else
    {
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5AC3CD8(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
      sub_1C5BC8C74();
      __break(1u);
    }
  }
}

uint64_t sub_1C5AC33F8()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  if ((v8 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v16;
  }

  swift_getKeyPath(a0_9);
  v16 = v7;
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  v10 = *(v7 + 17);

  if (v10 == 1)
  {

    if ((v6 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v11 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v5 = v16;
    }

    swift_getKeyPath(asc_1C5BE53C0);
    v16 = v5;
    sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
    sub_1C5BC7B74();

    v12 = *(v5 + 17);

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1C5AC36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v44 = a2;
  v3 = sub_1C5BC8F34();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E30, &qword_1C5BE5AF0);
  MEMORY[0x1EEE9AC00](v43);
  v7 = (&v40 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E38, &qword_1C5BE5AF8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  v14 = sub_1C5BC8324();
  v16 = v15;
  _s12PresentationCMa(0);
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  v17 = sub_1C5BC8324();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E40, &qword_1C5BE5B00);
  (*(*(v20 - 8) + 16))(v11, v40, v20);
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E48, &qword_1C5BE5B08) + 36)];
  *v21 = v14;
  v21[8] = v16 & 1;
  *(v21 + 2) = v17;
  v21[24] = v19 & 1;
  v22 = *(v9 + 44);
  *&v11[v22] = swift_getKeyPath(byte_1C5BE5420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10, &unk_1C5BD72B0);
  swift_storeEnumTagMultiPayload();
  sub_1C5BCA474();
  if (v13 == 1)
  {
    v24 = v41;
    v23 = v42;
  }

  else
  {

    sub_1C5BCB4E4();
    v25 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v26 = sub_1C5942458(v12, 0);
    v24 = v41;
    v23 = v42;
    (*(v41 + 8))(v5, v42, v26);
  }

  v27 = sub_1C5BCA4B4();

  if (v13)
  {
    v45 = v12;
  }

  else
  {

    sub_1C5BCB4E4();
    v28 = v24;
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v30 = sub_1C5942458(v12, 0);
    (*(v28 + 8))(v5, v23, v30);
    LOBYTE(v12) = v45;
  }

  v31 = 0.0;
  if (v12 <= 1u)
  {
    if (!v12)
    {
      v32 = [objc_opt_self() currentTraitCollection];
      [v32 displayScale];
      v34 = v33;

      v35 = 1.0;
      if (v34 >= 1.0)
      {
        v35 = v34;
        if ((~*&v34 & 0x7FF0000000000000) == 0)
        {
          v35 = 1.0;
          if ((*&v34 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v35 = v34;
          }
        }
      }

      v31 = 1.0 / v35;
    }
  }

  else if (v12 != 3)
  {
    v31 = 0.5;
  }

  *v7 = v27;
  v7[1] = v31;
  v36 = *(v43 + 40);
  *(v7 + v36) = swift_getKeyPath(byte_1C5BE5420, v40);
  swift_storeEnumTagMultiPayload();
  v37 = v44;
  sub_1C59E7D34(v11, v44, &qword_1EC196E38, &qword_1C5BE5AF8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E50, &qword_1C5BE5B10);
  return sub_1C59E7D34(v7, v37 + *(v38 + 36), &qword_1EC196E30, &qword_1C5BE5AF0);
}

uint64_t sub_1C5AC3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5AC3CD8(&qword_1EC196DE0, type metadata accessor for ArtworkCornerStyle, &unk_1C5BE5390);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5AC3CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ArtworkStyleModifier.StrokeStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ArtworkStyleModifier.StrokeStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C5AC3EB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1C5BC9044() - 8);
  v9 = *(v8 + 80);
  v10 = v9 + 8;
  v11 = (v10 & ~v9) + *(v8 + 64);
  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  if (v7 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v7;
  }

  v14 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v9 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v16 = v12 + ((v10 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8)) & v15) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v25 = *(((v10 + ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) & v15) + v12);
        if (v25 >= 2)
        {
          return (v25 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(v6 + 48);

        return v24(a1, v7, v5);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_1C5AC4128(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1C5BC9044() - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8;
  v13 = (v12 & ~v11) + *(v10 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v9 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v8 + 64);
  v16 = v11 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = v13 + 1;
  v18 = ((v12 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & v16) + v13 + 1;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_57:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v18] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v19)
  {
    goto LABEL_32;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v26 = ((v12 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & v16);
    if (a2 > 0xFE)
    {
      if (v17 <= 3)
      {
        v27 = ~(-1 << (8 * v17));
      }

      else
      {
        v27 = -1;
      }

      if (v17)
      {
        v28 = v27 & (a2 - 255);
        if (v17 <= 3)
        {
          v29 = v17;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v17);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v26 = v28;
            v26[2] = BYTE2(v28);
          }

          else
          {
            *v26 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v26 = v28;
        }

        else
        {
          *v26 = v28;
        }
      }
    }

    else
    {
      v26[v13] = -a2;
    }
  }

  else
  {
    v25 = *(v30 + 56);

    v25(a1, a2, v9, v7);
  }
}

unint64_t sub_1C5AC44E4()
{
  result = qword_1EDA464D8;
  if (!qword_1EDA464D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196DF0, &qword_1C5BE5938);
    sub_1C5960664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464D8);
  }

  return result;
}

unint64_t sub_1C5AC4570()
{
  result = qword_1EDA464E0;
  if (!qword_1EDA464E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196DF8, &qword_1C5BE59D0);
    sub_1C5945BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464E0);
  }

  return result;
}

uint64_t sub_1C5AC4614(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ArtworkCornerModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1C5AC4688(unsigned __int8 *a1, char *a2)
{
  type metadata accessor for ArtworkCornerModifier(0);
  v4 = *a2;
  v7 = *a1;
  v6 = v4;
  return sub_1C5AC1E14(&v7, &v6);
}

uint64_t sub_1C5AC4748()
{
  v1 = *(type metadata accessor for ArtworkCornerModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1C5AC2B20(v2, v3);
}

void sub_1C5AC47E8()
{
  v1 = *(type metadata accessor for ArtworkCornerModifier(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  sub_1C5AC3268(v2, v3);
}

unint64_t sub_1C5AC4868()
{
  result = qword_1EC196E58;
  if (!qword_1EC196E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E50, &qword_1C5BE5B10);
    sub_1C5AC4920();
    sub_1C5924F54(&qword_1EC196E78, &qword_1EC196E30, &qword_1C5BE5AF0, &unk_1C5BE56C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196E58);
  }

  return result;
}

unint64_t sub_1C5AC4920()
{
  result = qword_1EC196E60;
  if (!qword_1EC196E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E38, &qword_1C5BE5AF8);
    sub_1C5AC49DC();
    sub_1C5AC3CD8(&qword_1EDA4BBF0, type metadata accessor for ArtworkClipShape, &unk_1C5BE5718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196E60);
  }

  return result;
}

unint64_t sub_1C5AC49DC()
{
  result = qword_1EC196E68;
  if (!qword_1EC196E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E48, &qword_1C5BE5B08);
    sub_1C5924F54(&qword_1EC196E70, &qword_1EC196E40, &qword_1C5BE5B00, MEMORY[0x1E697FDF8]);
    sub_1C5960238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196E68);
  }

  return result;
}

void sub_1C5AC4A94(void *a1, uint64_t a2)
{
  v4 = sub_1C5BC77C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v45 = a1;
  v46 = a2;
  sub_1C5BC7774();
  sub_1C5BC77B4();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_1C594A23C();
  v12 = sub_1C5BCB8A4();
  v11(v7, v4);
  v13 = 0;
  v14 = *(v12 + 16);
  v15 = v12 + 40;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v18 = (v15 + 16 * v13);
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    ++v13;
    v20 = *(v18 - 1);
    v19 = *v18;
    v18 += 2;
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v17;
      v43 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C594A39C(0, v17[2] + 1, 1);
        v17 = v45;
      }

      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        sub_1C594A39C((v23 > 1), v24 + 1, 1);
        v17 = v45;
      }

      v17[2] = v24 + 1;
      v25 = &v17[2 * v24];
      v25[4] = v20;
      v25[5] = v19;
      v15 = v43;
      goto LABEL_2;
    }
  }

  if (!v17[2])
  {

    return;
  }

  v26 = sub_1C5BCAEB4();
  v28 = v27;
  v29 = v17[2];
  v30 = v29 != 0;
  if (v29 > 1)
  {
    v44 = v16;
    sub_1C594A39C(0, (v29 - v30) & ~((v29 - v30) >> 63), 0);
    if (((v29 - v30) & 0x8000000000000000) == 0)
    {
      v42 = v28;
      v43 = v26;
      v31 = v44;
      v32 = &v17[2 * v30 + 5];
      while (v30 < v29)
      {
        v33 = *v32;
        v45 = *(v32 - 1);
        v46 = v33;
        v34 = sub_1C5BCB8B4();
        v44 = v31;
        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        if (v37 >= v36 >> 1)
        {
          v41 = v34;
          v39 = v35;
          sub_1C594A39C((v36 > 1), v37 + 1, 1);
          v35 = v39;
          v34 = v41;
          v31 = v44;
        }

        *(v31 + 16) = v37 + 1;
        v38 = v31 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        ++v30;
        v32 += 2;
        if (v29 == v30)
        {

          v28 = v42;
          v26 = v43;
          goto LABEL_24;
        }
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
    return;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8, &unk_1C5BDB380);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C5BCFF00;
  *(v40 + 32) = v26;
  *(v40 + 40) = v28;
  v45 = v40;
  sub_1C59621F0(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192888, &qword_1C5BDE420);
  sub_1C594A440();
  sub_1C5BCAD74();
}

uint64_t sub_1C5AC4E80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5AC4EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C5AC4F78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  *&result = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v9 - v5;
  if (!qword_1EC196EB8)
  {
    v7 = sub_1C5BCB214();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    v8[5] = v1;
    swift_unknownObjectRetain();
    qword_1EC196EB8 = sub_1C5AD0FB8(0, 0, v6, &unk_1C5BE5C58, v8);
  }

  return result;
}

uint64_t sub_1C5AC50A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  v3[4] = swift_task_alloc();
  sub_1C5BCB1E4();
  v3[5] = sub_1C5BCB1D4();
  v5 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5AC5174, v5, v4);
}

uint64_t sub_1C5AC5174()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = sub_1C5BCB214();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  sub_1C5AC5588(v1, &unk_1C5BE5C10, v5);
  sub_1C5924EF4(v1, &qword_1EC1930A0, &qword_1C5BD7440);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  sub_1C5AC5588(v1, &unk_1C5BE5C20, v6);
  sub_1C5924EF4(v1, &qword_1EC1930A0, &qword_1C5BD7440);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  sub_1C5AC5588(v1, &unk_1C5BE5C30, v7);
  sub_1C5924EF4(v1, &qword_1EC1930A0, &qword_1C5BD7440);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1C5AC5384()
{
  v1 = qword_1EC196E98;
  v0[2] = qword_1EC196E98;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1C5AC5470;
    v3 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v2, v1, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1C5AC5470()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5AC93F0, 0, 0);
}

double sub_1C5AC5588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1C5929BC8(a1, v20 - v9);
  v11 = sub_1C5BCB214();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C5924EF4(v10, &qword_1EC1930A0, &qword_1C5BD7440);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1C5BCB194();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C5BCB204();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();

  return result;
}

uint64_t sub_1C5AC57AC()
{
  v1 = qword_1EC196EA8;
  v0[2] = qword_1EC196EA8;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1C5AC5898;
    v3 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v2, v1, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1C5AC5898()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5AC59B0, 0, 0);
}

uint64_t sub_1C5AC59E0()
{
  v1 = qword_1EC196EB8;
  v0[2] = qword_1EC196EB8;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1C5AC5470;
    v3 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v2, v1, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

void sub_1C5AC5AEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v0[3] = v1;
  v2 = sub_1C5BCAE44();
  [v1 setLabel_];

  v3 = [v1 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript_];

  if (v4)
  {
    v5 = v0[2];
    [v4 setPixelFormat_];

    v6 = v5[4];
    swift_unknownObjectRetain();
    v7 = sub_1C5BCAE44();
    v8 = [v6 newFunctionWithName_];
    swift_unknownObjectRelease();

    [v1 setVertexFunction_];
    swift_unknownObjectRelease();
    v9 = v5[4];
    swift_unknownObjectRetain();
    v10 = sub_1C5BCAE44();
    v11 = [v9 newFunctionWithName_];
    swift_unknownObjectRelease();

    [v1 setFragmentFunction_];
    swift_unknownObjectRelease();
    v12 = v5[2];
    v0[4] = v12;
    swift_unknownObjectRetain();
    v13 = swift_task_alloc();
    v0[5] = v13;
    *v13 = v0;
    v13[1] = sub_1C5AC5D44;

    sub_1C5AC84F0(v1, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5AC5D44(uint64_t a1)
{
  *(*v1 + 48) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C5AC5E64, 0, 0);
}

uint64_t sub_1C5AC5E64()
{
  v1 = v0[3];
  qword_1EC196E90 = v0[6];

  swift_unknownObjectRelease();
  v2 = v0[1];

  return v2();
}

void sub_1C5AC5EFC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v0[3] = v1;
  v2 = sub_1C5BCAE44();
  [v1 setLabel_];

  v3 = [v1 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript_];

  if (v4)
  {
    v5 = v0[2];
    [v4 setPixelFormat_];

    v6 = v5[4];
    swift_unknownObjectRetain();
    v7 = sub_1C5BCAE44();
    v8 = [v6 newFunctionWithName_];
    swift_unknownObjectRelease();

    [v1 setVertexFunction_];
    swift_unknownObjectRelease();
    v9 = v5[4];
    swift_unknownObjectRetain();
    v10 = sub_1C5BCAE44();
    v11 = [v9 newFunctionWithName_];
    swift_unknownObjectRelease();

    [v1 setFragmentFunction_];
    swift_unknownObjectRelease();
    v12 = v5[2];
    v0[4] = v12;
    swift_unknownObjectRetain();
    v13 = swift_task_alloc();
    v0[5] = v13;
    *v13 = v0;
    v13[1] = sub_1C5AC6148;

    sub_1C5AC84F0(v1, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5AC6148(uint64_t a1)
{
  *(*v1 + 48) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C5AC6268, 0, 0);
}

uint64_t sub_1C5AC6268()
{
  v1 = v0[3];
  qword_1EC196EA0 = v0[6];

  swift_unknownObjectRelease();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1C5AC62E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1C5AC6424(void *a1)
{
  v2 = v1;
  v128[1] = *MEMORY[0x1E69E9840];
  [a1 bounds];
  if (v5 <= 0.0 || v4 <= 0.0)
  {
    return;
  }

  v119 = [a1 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 isDrawableAvailable];

    if (!v7)
    {
      return;
    }

    v8 = v1 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_textureProvider;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(v8 + 8);
      v12 = [*(*(v2 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_context) + 24) commandBuffer];
      if (v12)
      {
        v13 = v12;
        v14 = qword_1EC196E90;
        if (qword_1EC196E90)
        {
          v15 = qword_1EC196EA0;
          if (qword_1EC196EA0)
          {
            ObjectType = swift_getObjectType();
            v17 = *(v11 + 8);
            v120 = v15;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v18 = v17(ObjectType, v11);
            if (v18)
            {
              v19 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_resizeTexture);
              if (v19)
              {
                v20 = v18;
                swift_unknownObjectRetain();
                v21 = [a1 currentRenderPassDescriptor];
                if (v21)
                {
                  v22 = v21;
                  v117 = v20;
                  v118 = v19;
                  v23 = [v21 colorAttachments];
                  v24 = [v23 objectAtIndexedSubscript_];

                  if (v24)
                  {
                    swift_unknownObjectRetain();
                    [v24 setTexture_];

                    v25 = [v22 colorAttachments];
                    v26 = [v25 objectAtIndexedSubscript_];

                    if (v26)
                    {
                      [v26 setLoadAction_];

                      v27 = [v22 colorAttachments];
                      v28 = [v27 objectAtIndexedSubscript_];

                      if (v28)
                      {
                        [v28 setStoreAction_];

                        v29 = [v22 depthAttachment];
                        if (v29)
                        {
                          v30 = v29;
                          [v29 setLoadAction_];

                          v31 = [v22 depthAttachment];
                          if (v31)
                          {
                            v32 = v31;
                            [v31 setStoreAction_];

                            v33 = [v22 stencilAttachment];
                            if (v33)
                            {
                              v34 = v33;
                              [v33 setLoadAction_];

                              v35 = [v22 stencilAttachment];
                              if (v35)
                              {
                                v36 = v35;
                                [v35 setStoreAction_];

                                __asm { FMOV            V0.2S, #1.0 }

                                *v128 = -_D0;
                                v42 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_contentMode);
                                if (v42 != 2)
                                {
                                  v43 = [v19 width];
                                  v44 = v43 / [v117 width];
                                  v45 = [v19 height];
                                  v46 = v45 / [v117 height];
                                  if (((v44 < v46) ^ v42))
                                  {
                                    v47 = v44 * [v117 height];
                                    *(v128 + 1) = 1.0 / (v47 / [v19 height]);
                                  }

                                  else
                                  {
                                    v74 = v46 * [v117 width];
                                    *v128 = 1.0 / (v74 / [v19 width]);
                                  }
                                }

                                v75 = [v13 renderCommandEncoderWithDescriptor_];
                                if (v75)
                                {
                                  v76 = v75;
                                  v77 = sub_1C5BCAE44();
                                  [v76 setLabel_];

                                  [v76 setRenderPipelineState_];
                                  [v76 setVertexBytes:&unk_1F4518930 length:32 atIndex:0];
                                  [v76 setVertexBytes:v128 length:8 atIndex:1];
                                  [v76 setFragmentTexture:v117 atIndex:0];
                                  [v76 drawPrimitives:4 vertexStart:0 vertexCount:4];
                                  [v76 endEncoding];
                                  v78 = swift_slowAlloc();
                                  v79 = swift_allocObject();
                                  *(v79 + 16) = v78;
                                  v126 = sub_1C5AC7EB4;
                                  v127 = v79;
                                  aBlock = MEMORY[0x1E69E9820];
                                  v123 = 1107296256;
                                  v124 = sub_1C5AC79C8;
                                  v125 = &block_descriptor_15;
                                  v80 = _Block_copy(&aBlock);

                                  [v13 addCompletedHandler_];
                                  _Block_release(v80);
                                  *v78 = v19;
                                  if (sub_1C5AC7CD8())
                                  {
                                    swift_unknownObjectRetain();
                                    goto LABEL_63;
                                  }

                                  v85 = qword_1EC196EB0;
                                  if (qword_1EC196EB0)
                                  {
                                    v86 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_textureFallbackCopyAllocator + 8);
                                    v126 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_textureFallbackCopyAllocator);
                                    v127 = v86;
                                    aBlock = MEMORY[0x1E69E9820];
                                    v123 = 1107296256;
                                    v124 = sub_1C5AC7A28;
                                    v125 = &block_descriptor_16;
                                    v87 = _Block_copy(&aBlock);
                                    swift_unknownObjectRetain();
                                    v88 = v85;

                                    [v88 encodeToCommandBuffer:v13 inPlaceTexture:v78 fallbackCopyAllocator:v87];
                                    _Block_release(v87);

                                    v19 = v118;
LABEL_63:
                                    v89 = [a1 currentRenderPassDescriptor];
                                    if (!v89)
                                    {
                                      swift_unknownObjectRelease();
                                      swift_unknownObjectRelease();
                                      swift_unknownObjectRelease();
                                      swift_unknownObjectRelease();
                                      swift_unknownObjectRelease();

                                      swift_unknownObjectRelease();
                                      swift_unknownObjectRelease_n();
                                      return;
                                    }

                                    v90 = [v89 depthAttachment];
                                    if (v90)
                                    {
                                      v91 = v90;
                                      [v90 setLoadAction_];

                                      v92 = [v89 depthAttachment];
                                      if (v92)
                                      {
                                        v93 = v92;
                                        [v92 setStoreAction_];

                                        v94 = [v89 stencilAttachment];
                                        if (v94)
                                        {
                                          v95 = v94;
                                          [v94 setLoadAction_];

                                          v96 = [v89 stencilAttachment];
                                          if (v96)
                                          {
                                            v97 = v96;
                                            [v96 setStoreAction_];

                                            v116 = v89;
                                            v98 = [v13 renderCommandEncoderWithDescriptor_];
                                            if (v98)
                                            {
                                              v99 = v98;
                                              v100 = sub_1C5BCAE44();
                                              [v99 setLabel_];

                                              [v99 setRenderPipelineState_];
                                              [v99 setVertexBytes:&unk_1F4518930 length:32 atIndex:0];
                                              sub_1C5AC8BBC([a1 colorPixelFormat]);
                                              aBlock = __PAIR64__(v102, v101);
                                              v123 = v103;
                                              [v99 setFragmentBytes:&aBlock length:16 atIndex:0];
                                              [v99 setFragmentTexture:v19 atIndex:0];
                                              swift_unknownObjectRelease();
                                              [v99 drawPrimitives:4 vertexStart:0 vertexCount:4];
                                              [v99 endEncoding];
                                              v104 = [a1 currentDrawable];
                                              if (v104)
                                              {
                                                [v13 presentDrawable_];
                                                [v13 commit];
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();

                                                swift_unknownObjectRelease();
                                                goto LABEL_84;
                                              }

                                              if (qword_1EC190828 != -1)
                                              {
                                                swift_once();
                                              }

                                              v112 = sub_1C5BC7D64();
                                              __swift_project_value_buffer(v112, qword_1EC196EC0);
                                              v113 = sub_1C5BC7D44();
                                              v114 = sub_1C5BCB4D4();
                                              if (os_log_type_enabled(v113, v114))
                                              {
                                                v115 = swift_slowAlloc();
                                                *v115 = 0;
                                                _os_log_impl(&dword_1C5922000, v113, v114, "Nil current drawable", v115, 2u);
                                                MEMORY[0x1C69510F0](v115, -1, -1);
                                              }

                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                            }

                                            else
                                            {
                                              swift_unknownObjectRelease();
                                              if (qword_1EC190828 != -1)
                                              {
                                                swift_once();
                                              }

                                              v105 = sub_1C5BC7D64();
                                              __swift_project_value_buffer(v105, qword_1EC196EC0);
                                              v106 = sub_1C5BC7D44();
                                              v107 = sub_1C5BCB4D4();
                                              if (os_log_type_enabled(v106, v107))
                                              {
                                                v108 = swift_slowAlloc();
                                                *v108 = 0;
                                                _os_log_impl(&dword_1C5922000, v106, v107, "Couldn't make treatment render encoder", v108, 2u);
                                                MEMORY[0x1C69510F0](v108, -1, -1);
                                              }

                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                              swift_unknownObjectRelease();
                                            }

LABEL_83:
                                            swift_unknownObjectRelease();

                                            goto LABEL_84;
                                          }

LABEL_101:
                                          __break(1u);
                                          return;
                                        }

LABEL_100:
                                        __break(1u);
                                        goto LABEL_101;
                                      }

LABEL_99:
                                      __break(1u);
                                      goto LABEL_100;
                                    }

LABEL_98:
                                    __break(1u);
                                    goto LABEL_99;
                                  }

                                  if (qword_1EC190828 != -1)
                                  {
                                    swift_once();
                                  }

                                  v109 = sub_1C5BC7D64();
                                  __swift_project_value_buffer(v109, qword_1EC196EC0);
                                  v82 = sub_1C5BC7D44();
                                  v110 = sub_1C5BCB4D4();
                                  if (os_log_type_enabled(v82, v110))
                                  {
                                    v111 = swift_slowAlloc();
                                    *v111 = 0;
                                    _os_log_impl(&dword_1C5922000, v82, v110, "Skipped frame because gaussian blur wasn't ready", v111, 2u);
                                    MEMORY[0x1C69510F0](v111, -1, -1);
                                  }

                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                }

                                else
                                {
                                  swift_unknownObjectRelease();
                                  if (qword_1EC190828 != -1)
                                  {
                                    swift_once();
                                  }

                                  v81 = sub_1C5BC7D64();
                                  __swift_project_value_buffer(v81, qword_1EC196EC0);
                                  v82 = sub_1C5BC7D44();
                                  v83 = sub_1C5BCB4D4();
                                  if (os_log_type_enabled(v82, v83))
                                  {
                                    v84 = swift_slowAlloc();
                                    *v84 = 0;
                                    _os_log_impl(&dword_1C5922000, v82, v83, "Couldn't make resize render encoder", v84, 2u);
                                    MEMORY[0x1C69510F0](v84, -1, -1);
                                  }

                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                }

                                swift_unknownObjectRelease();

                                goto LABEL_83;
                              }

LABEL_97:
                              __break(1u);
                              goto LABEL_98;
                            }

LABEL_96:
                            __break(1u);
                            goto LABEL_97;
                          }

LABEL_95:
                          __break(1u);
                          goto LABEL_96;
                        }

LABEL_94:
                        __break(1u);
                        goto LABEL_95;
                      }

LABEL_93:
                      __break(1u);
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_93;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_49;
              }

              swift_unknownObjectRelease();
            }

            if (qword_1EC190828 != -1)
            {
              swift_once();
            }

            v65 = sub_1C5BC7D64();
            __swift_project_value_buffer(v65, qword_1EC196EC0);
            swift_unknownObjectRetain();
            v66 = sub_1C5BC7D44();
            v67 = sub_1C5BCB4D4();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v128[0] = v69;
              *v68 = 136446210;
              aBlock = v10;
              v123 = v11;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196F18, &unk_1C5BE5BB0);
              v70 = sub_1C5BCAEA4();
              v72 = sub_1C592ADA8(v70, v71, v128);

              *(v68 + 4) = v72;
              _os_log_impl(&dword_1C5922000, v66, v67, "Skipping frame, draw was called without necessary textures, textureProvider=%{public}s", v68, 0xCu);
              v73 = __swift_destroy_boxed_opaque_existential_0(v69);
              MEMORY[0x1C69510F0](v69, -1, -1, v73);
              MEMORY[0x1C69510F0](v68, -1, -1);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
LABEL_84:
              swift_unknownObjectRelease();
              return;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
LABEL_49:

            swift_unknownObjectRelease();
            return;
          }
        }

        if (qword_1EC190828 != -1)
        {
          swift_once();
        }

        v52 = sub_1C5BC7D64();
        __swift_project_value_buffer(v52, qword_1EC196EC0);
        v121 = sub_1C5BC7D44();
        v53 = sub_1C5BCB4D4();
        if (os_log_type_enabled(v121, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          aBlock = v55;
          *v54 = 136446466;
          v128[0] = qword_1EC196E90;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196F10, &qword_1C5BE5BA8);
          v56 = sub_1C5BCAEA4();
          v58 = sub_1C592ADA8(v56, v57, &aBlock);

          *(v54 + 4) = v58;
          *(v54 + 12) = 2082;
          v128[0] = qword_1EC196EA0;
          swift_unknownObjectRetain();
          v59 = sub_1C5BCAEA4();
          v61 = sub_1C592ADA8(v59, v60, &aBlock);

          *(v54 + 14) = v61;
          _os_log_impl(&dword_1C5922000, v121, v53, "Pipeline states weren't ready - resize: %{public}s, treatment: %{public}s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v55, -1, -1);
          MEMORY[0x1C69510F0](v54, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EC190828 != -1)
        {
          swift_once();
        }

        v62 = sub_1C5BC7D64();
        __swift_project_value_buffer(v62, qword_1EC196EC0);
        v121 = sub_1C5BC7D44();
        v63 = sub_1C5BCB4D4();
        if (os_log_type_enabled(v121, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_1C5922000, v121, v63, "Couldn't make command buffer", v64, 2u);
          MEMORY[0x1C69510F0](v64, -1, -1);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EC190828 != -1)
      {
        swift_once();
      }

      v49 = sub_1C5BC7D64();
      __swift_project_value_buffer(v49, qword_1EC196EC0);
      v121 = sub_1C5BC7D44();
      v50 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v121, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C5922000, v121, v50, "No texture provider", v51, 2u);
        MEMORY[0x1C69510F0](v51, -1, -1);
      }
    }

    v48 = v121;
  }

  else
  {
    v48 = v119;
  }
}

double sub_1C5AC779C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1C5BCB214();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C5BCB1E4();
  v7 = sub_1C5BCB1D4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1C5AD0FB8(0, 0, v5, &unk_1C5BE5BC8, v8);

  return result;
}

uint64_t sub_1C5AC78B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C5BCB1E4();
  *(v4 + 24) = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5AC7950, v6, v5);
}

uint64_t sub_1C5AC7950()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  MEMORY[0x1C69510F0](v1, -1, -1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C5AC79C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5AC7A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v7(v8, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id sub_1C5AC7B28(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:objc_msgSend(a3 width:sel_pixelFormat) height:objc_msgSend(a3 mipmapped:sel_width), objc_msgSend(a3, sel_height), 0];
  result = [objc_msgSend(a2 device)];
  if (result)
  {
    v6 = result;

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AC7C38()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(MEMORY[0x1E69745C0]);
  LODWORD(v3) = 30.0;
  v4 = [v2 initWithDevice:v1 sigma:v3];
  [v4 setEdgeMode_];
  v5 = qword_1EC196EB0;
  qword_1EC196EB0 = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C5AC7CD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer____lazy_storage___isBlurDisabled);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer____lazy_storage___isBlurDisabled) = 0;
  }

  return v1 & 1;
}

id sub_1C5AC7D2C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MaterialRenderer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5AC7DF4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MaterialRenderer();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C5AC7E30()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC196EC0);
  __swift_project_value_buffer(v0, qword_1EC196EC0);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5AC7EBC(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = sub_1C5BCB1E4();
  *(v3 + 72) = sub_1C5BCB1D4();
  v5 = sub_1C5BCB194();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5AC7FA0, v5, v4);
}

uint64_t sub_1C5AC7FA0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v3 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_textureProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_resizeTexture) = 0;
  v4 = (v3 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_textureFallbackCopyAllocator);
  *v4 = sub_1C5AC7B28;
  v4[1] = 0;
  *(v3 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer____lazy_storage___isBlurDisabled) = 2;
  *(v3 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_context) = v2;
  *(v3 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_contentMode) = v1;
  v5 = type metadata accessor for MaterialRenderer();
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;

  v6 = objc_msgSendSuper2((v0 + 16), sel_init);
  v7 = v6;
  *(v0 + 96) = v6;
  if (qword_1EC196E98)
  {
    v8 = v6;
  }

  else
  {
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = sub_1C5BCB214();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;

    v14 = v7;
    v15 = sub_1C5A0BB28(0, 0, v9, &unk_1C5BE5BE0, v13);
    sub_1C5924EF4(v9, &qword_1EC1930A0, &qword_1C5BD7440);
    qword_1EC196E98 = v15;
  }

  if (!qword_1EC196EA8)
  {
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = sub_1C5BCB214();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v17;
    v20[5] = v18;

    v21 = sub_1C5A0BB28(0, 0, v16, &unk_1C5BE5BF0, v20);
    sub_1C5924EF4(v16, &qword_1EC1930A0, &qword_1C5BD7440);
    qword_1EC196EA8 = v21;
  }

  v22 = *(v0 + 48);
  v23 = swift_unknownObjectRetain();
  sub_1C5AC4F78(v23);
  swift_unknownObjectRelease();
  *(v0 + 104) = sub_1C5BCB1D4();
  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *(v24 + 16) = v22;
  v25 = swift_task_alloc();
  *(v0 + 120) = v25;
  *v25 = v0;
  v25[1] = sub_1C5AC8314;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C5AC8314()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1C5AC8474, v3, v2);
}

uint64_t sub_1C5AC8474()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1C5AC84F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5AC8510, 0, 0);
}

uint64_t sub_1C5AC8510()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C5AC8638;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196F28, &unk_1C5BE5C68);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C5AC62E0;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v1 newRenderPipelineStateWithDescriptor:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C5AC8638()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1C5AC8760;
  }

  else
  {
    v2 = sub_1C5AC8748;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5AC8760()
{
  v24 = v0;
  v1 = *(v0 + 168);
  swift_willThrow();
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
  sub_1C5AC93A0();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v0 + 144);
    if (qword_1EC190828 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 152);
    v5 = sub_1C5BC7D64();
    __swift_project_value_buffer(v5, qword_1EC196EC0);
    v6 = v4;
    v7 = v3;
    v8 = sub_1C5BC7D44();
    v9 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 152);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v11 = 136315394;
      v14 = [v10 label];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1C5BCAE74();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_1C592ADA8(v16, v18, &v23);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2114;
      *(v11 + 14) = v7;
      *v12 = v7;
      v20 = v7;
      _os_log_impl(&dword_1C5922000, v8, v9, "Failed to create render pipeline state (%s, privacy: .public). error=%{public}@", v11, 0x16u);
      sub_1C5924EF4(v12, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v12, -1, -1);
      v21 = __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1C69510F0](v13, -1, -1, v21);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 8);

    return v22(0);
  }

  return result;
}

id sub_1C5AC8A20(void *a1)
{
  [a1 bounds];
  v4 = 0;
  if (v2 > 0.0)
  {
    v5 = v3;
    if (v3 > 0.0)
    {
      v6 = v2;
      result = objc_opt_self();
      if (v6 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v6 < 9.22337204e18)
      {
        if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v5 > -9.22337204e18)
          {
            if (v5 < 9.22337204e18)
            {
              v8 = [result texture2DDescriptorWithPixelFormat:*(*(v1 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_context) + 48) width:v6 / 4 height:v5 / 4 mipmapped:0];
              [v8 setUsage_];
              result = [swift_unknownObjectRetain() newTextureWithDescriptor_];
              if (result)
              {
                v4 = result;
                swift_unknownObjectRelease();

                goto LABEL_11;
              }

LABEL_19:
              __break(1u);
              return result;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_11:
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_resizeTexture) = v4;

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5AC8BBC(uint64_t result)
{
  if (result != 552 && result != 80)
  {
    sub_1C5BCBA94();

    v1 = sub_1C5BCBD64();
    MEMORY[0x1C694F170](v1);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AC8CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5AC78B8(a1, v4, v5, v6);
}

uint64_t sub_1C5AC8D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5AC5ACC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5AC8E84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5AC5EDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5AC8F44(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C592A748;

  return sub_1C5AC50A4(a1, a2, v6);
}

uint64_t sub_1C5AC8FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5AC5368();
}

uint64_t sub_1C5AC90A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5AC5790();
}

uint64_t sub_1C5AC915C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5AC59C4();
}

uint64_t sub_1C5AC9210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592ABD4;

  return sub_1C592A1E8(a1, v4);
}

uint64_t sub_1C5AC92C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5AC7C18(a1, v4, v5, v6);
}

unint64_t sub_1C5AC93A0()
{
  result = qword_1EC195458;
  if (!qword_1EC195458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC195458);
  }

  return result;
}

void sub_1C5AC93F8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x1C6951320);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_1C5AC9440(uint64_t a1, uint64_t a2, char **a3, __n128 a4)
{
  v7 = *a3;
  v8 = *(*a3 + 2);
  if (*(a1 + 16) != v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 16) != v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = a3;
  v6 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v7 = sub_1C5BAA6F8(v7);
  }

  result = MEMORY[0x1C6951320](v6 + 32, 1, v5 + 32, 1, v7 + 32, 1, v8);
  *v4 = v7;
  return result;
}

uint64_t sub_1C5AC94E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return sub_1C5AC95A8(v6, *(a1 + 16), *(a1 + 24), a2);
}

uint64_t sub_1C5AC95A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WaveformBinnedFFT(0, v11, v12, v13);
  v15 = *(a1 + *(v14 + 40));
  v17 = type metadata accessor for WaveformBinnedFFT.Iterator(0, a2, a3, v16);
  v18 = (a4 + v17[9]);
  *v18 = v15;
  v18[1] = 0;
  (*(v8 + 16))(v10, a1, a2);

  sub_1C5BCAFE4();
  v19 = *(a1 + *(v14 + 36));
  v20 = sub_1C5BCB3E4();
  *(a4 + v17[10]) = v19 / (v20 + v20);
  v26 = v15;
  type metadata accessor for WaveformBinnedFFT.Band(255, a2, a3, v21);
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB444();
  if (v25)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = *&v24[2];
  }

  result = (*(*(v14 - 8) + 8))(a1, v14);
  *(a4 + v17[11]) = v22;
  return result;
}

unint64_t sub_1C5AC97A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + *(a1 + 36));
  v7 = *v6;
  type metadata accessor for WaveformBinnedFFT.Band(0, *(a1 + 16), *(a1 + 24), a4);
  v8 = sub_1C5BCB0F4();
  result = 0;
  v10 = v6[1];
  if (v10 == v8)
  {
    return result;
  }

  v11 = sub_1C5BCB0D4();
  result = sub_1C5BCB084();
  if ((v11 & 1) == 0)
  {
    v7 = sub_1C5BCBAD4();
    result = swift_unknownObjectRelease();
    v13 = *(&v7 + 1);
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_4;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  v12 = v7 + 8 * v10;
  LODWORD(v7) = *(v12 + 32);
  v13 = *(v12 + 36);
  v14 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_12;
  }

LABEL_4:
  v6[1] = v14;
  v15 = *(a1 + 44);
  v16 = *(v4 + v15);
  v17 = 0.0;
  if (v16 < v13)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    do
    {
      sub_1C5BCB894();
      if (v19)
      {
        break;
      }

      v17 = v17 + v18;
      v16 = v16 + *(v4 + *(a1 + 40));
      *(v4 + v15) = v16;
    }

    while (v16 < v13);
  }

  return v7 | (LODWORD(v13) << 32);
}

unint64_t sub_1C5AC9970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1C5AC97A8(a1, a3, a4, a5);
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8 & 1;
  return result;
}

uint64_t sub_1C5AC99A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C5AC94E0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C5AC9A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5AC9C30(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_1C5AC9AAC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1C5BCB0C4();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1C5AC9BAC(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (*(a1 + 16) != v4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v5 = a4;
  __B = a3;
  if (!*a2)
  {
    goto LABEL_5;
  }

  vDSP_vclip((a1 + 32), 1, &__B, &v5, *a2, 1, v4);
}

void sub_1C5AC9C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(MEMORY[0x1E69E7CC0] + 16);
  v4 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
    goto LABEL_25;
  }

  v6 = *(a2 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && (v9 = v7, v4 <= *(v7 + 3) >> 1))
  {
    if (*(v7 + 2))
    {
LABEL_6:
      v10 = *(v9 + 2);
      if ((*(v9 + 3) >> 1) - v10 >= v3)
      {
        memcpy(&v9[8 * v10 + 32], v7 + 32, 8 * v3);

        if (!v3)
        {
          goto LABEL_15;
        }

        v11 = *(v9 + 2);
        v12 = __OFADD__(v11, v3);
        v13 = v11 + v3;
        if (!v12)
        {
          *(v9 + 2) = v13;
          goto LABEL_15;
        }

LABEL_26:
        __break(1u);
LABEL_27:

        goto LABEL_28;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (v3 <= v4)
    {
      v14 = 2 * v3;
    }

    else
    {
      v14 = v3;
    }

    v9 = sub_1C5B7662C(isUniquelyReferenced_nonNull_native, v14, 1, MEMORY[0x1E69E7CC0]);
    if (*(v7 + 2))
    {
      goto LABEL_6;
    }
  }

  if (v3)
  {
LABEL_28:
    __break(1u);
    return;
  }

LABEL_15:
  v15 = v2 - 1;
  if (v2 != 1)
  {
    for (i = (a2 + 36); ; ++i)
    {
      v17 = v6;
      v6 = *i;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC196F40, &unk_1C5BE5C90);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C5BCFF00;
      *(v18 + 32) = v17;
      *(v18 + 36) = v6;
      v19 = *(v9 + 2);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      if (!v20 || v19 >= *(v9 + 3) >> 1)
      {
        v9 = sub_1C5B7662C(v20, v19 + 1, 1, v9);
      }

      if (!*(v18 + 16))
      {
        break;
      }

      v21 = *(v9 + 2);
      if (v21 >= *(v9 + 3) >> 1)
      {
        goto LABEL_24;
      }

      *&v9[8 * v21 + 32] = *(v18 + 32);

      ++*(v9 + 2);
      if (!--v15)
      {
        return;
      }
    }

    goto LABEL_27;
  }
}

void sub_1C5AC9E40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), float a4)
{
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F048(0, 0, 0);
  v25 = *(a2 + 16);
  if (v25)
  {
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 16);

  if (v25)
  {
    v10 = 0;
    v11 = 0;
    v12 = a4 / (v8 + v8);
    v13 = a2 + 32;
    v14 = a1 + 32;
    while (1)
    {
      v15 = v13 + 8 * v10;
      v9.n128_u32[0] = *v15;
      v16 = *(v15 + 4);
      v17 = 0.0;
      if (v7 < v16 && v11 != v8)
      {
        break;
      }

LABEL_18:
      a3(v10, v9);
      v22 = *(v26 + 16);
      v21 = *(v26 + 24);
      if (v22 >= v21 >> 1)
      {
        v23 = v9.n128_u32[0];
        sub_1C5B8F048((v21 > 1), v22 + 1, 1);
        v9.n128_u32[0] = v23;
      }

      ++v10;
      *(v26 + 16) = v22 + 1;
      *(v26 + 4 * v22 + 32) = v9.n128_u32[0];
      if (v10 == v25)
      {
        goto LABEL_21;
      }
    }

    while (v11 < v8)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }

      v17 = v17 + *(v14 + 4 * v11);
      v7 = v12 + v7;
      ++v11;
      if (v7 >= v16 || v19 == v8)
      {
        v11 = v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:
  }
}

uint64_t sub_1C5AC9FF4(uint64_t a1, char a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2)
  {
    v2 = &unk_1F4513750;
  }

  else
  {
    v2 = &unk_1F4513718;
  }

  sub_1C5AC9C34(v3, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  MEMORY[0x1EEE9AC00](v10);
  sub_1C5AC9E40(v5, v9, sub_1C5ACA47C, v7);
  v12 = v11;

  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C5B8F048(0, v13, 0);
    v15 = 0;
    v16 = v43;
    do
    {
      if (v15 >= *(v12 + 16))
      {
        __break(1u);
      }

      v17 = *(v12 + 32 + 4 * v15);
      __C = v14;
      sub_1C5B8F048(0, 5, 0);
      v18 = __C;
      v20 = *(__C + 16);
      v19 = *(__C + 24);
      v21 = v19 >> 1;
      v22 = v20 + 1;
      v23 = v14;
      if (v19 >> 1 <= v20)
      {
        sub_1C5B8F048((v19 > 1), v20 + 1, 1);
        v18 = __C;
        v19 = *(__C + 24);
        v21 = v19 >> 1;
      }

      *(v18 + 16) = v22;
      *(v18 + 4 * v20 + 32) = 0;
      v24 = v20 + 2;
      if (v21 < (v20 + 2))
      {
        sub_1C5B8F048((v19 > 1), v20 + 2, 1);
        v18 = __C;
      }

      *(v18 + 16) = v24;
      *(v18 + 4 * v22 + 32) = v17 * 3.8408;
      v25 = *(v18 + 24);
      v26 = v20 + 3;
      if ((v20 + 3) > (v25 >> 1))
      {
        sub_1C5B8F048((v25 > 1), v20 + 3, 1);
      }

      v27 = __C;
      *(__C + 16) = v26;
      *(v27 + 4 * v24 + 32) = (v17 * v17) * -8.1824;
      v28 = *(v27 + 24);
      v29 = v20 + 4;
      if ((v20 + 4) > (v28 >> 1))
      {
        sub_1C5B8F048((v28 > 1), v20 + 4, 1);
        v27 = __C;
      }

      v30 = powf(v17, 3.0);
      *(v27 + 16) = v29;
      *(v27 + 4 * v26 + 32) = v30 * 7.7723;
      v31 = *(v27 + 24);
      v14 = v23;
      if ((v20 + 5) > (v31 >> 1))
      {
        sub_1C5B8F048((v31 > 1), v20 + 5, 1);
        v27 = __C;
      }

      v32 = powf(v17, 4.0);
      *(v27 + 16) = v20 + 5;
      *(v27 + 32 + 4 * v29) = v32 * -2.4307;
      LODWORD(__C) = 2143289344;
      vDSP_sve((v27 + 32), 1, &__C, v20 + 5);
      v33 = __C;

      v43 = v16;
      v35 = *(v16 + 16);
      v34 = *(v16 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1C5B8F048((v34 > 1), v35 + 1, 1);
        v16 = v43;
      }

      ++v15;
      *(v16 + 16) = v35 + 1;
      *(v16 + 4 * v35 + 32) = v33;
    }

    while (v13 != v15);
    v36 = *(v12 + 16);
  }

  else
  {
    v36 = 0;
    v16 = MEMORY[0x1E69E7CC0];
  }

  __C = v16;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v36);
  v39 = sub_1C5AC9AAC(v38, sub_1C5ACA4F4);

  v43 = v39;
  MEMORY[0x1EEE9AC00](*(v39 + 16));
  v37 = sub_1C5AC9AAC(v40, sub_1C5ACA544);

  return v37;
}

float sub_1C5ACA47C(uint64_t a1, double a2, double a3, float a4)
{
  v6 = *(v4 + 16);
  v7 = powf(a4 * 0.6, 0.4);
  v8 = -0.15;
  if (v6)
  {
    v8 = -0.05;
  }

  return v7 * ((v8 * a1) + 1.0);
}

void sub_1C5ACA544(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 28);
  v6 = **(v2 + 16);
  sub_1C5AC9BAC(v6, a1, v4, v5);
  *a2 = *(v6 + 16);
}

uint64_t sub_1C5ACA594(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for WaveformBinnedFFT.Band(255, result, *(a1 + 24), v3);
    result = sub_1C5BCB144();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5ACA638(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1C5ACA784(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1C5ACA984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5ACA9F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    type metadata accessor for WaveformBinnedFFT.Band(255, v2, v1, v4);
    sub_1C5BCB144();
    swift_getWitnessTable();
    result = sub_1C5BCBBB4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5ACAAF0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1C5ACAC8C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_1C5ACAE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1C5ACAF28@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE5E00);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

double sub_1C5ACAFDC()
{
  swift_getKeyPath(byte_1C5BE5E00);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  swift_beginAccess();
  return *(v0 + 16);
}

unint64_t sub_1C5ACB060()
{
  result = qword_1EC194160;
  if (!qword_1EC194160)
  {
    type metadata accessor for ParallaxContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194160);
  }

  return result;
}

uint64_t type metadata accessor for ParallaxContext(uint64_t a1)
{
  result = qword_1EDA4BEF0;
  if (!qword_1EDA4BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5ACB104(double a1)
{
  swift_beginAccess();
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE5E00);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5ACB060();
    sub_1C5BC7B64();
  }
}

void sub_1C5ACB254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t (*sub_1C5ACB2A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_1C5BE5E00);
  v4[5] = OBJC_IVAR____TtC11MediaCoreUI15ParallaxContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C5ACB060();
  sub_1C5BC7B74();

  *v4 = v1;
  swift_getKeyPath(byte_1C5BE5E00);
  sub_1C5BC7B94();

  v4[7] = sub_1C5ACAED8(v4);
  return sub_1C5ACB3B0;
}

double sub_1C5ACB40C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE5E28);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1C5ACB4C0()
{
  swift_getKeyPath(byte_1C5BE5E28);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  swift_beginAccess();
  return *(v0 + 24);
}

void sub_1C5ACB544(double a1)
{
  swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE5E28);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5ACB060();
    sub_1C5BC7B64();
  }
}

void sub_1C5ACB694()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t (*sub_1C5ACB6E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_1C5BE5E28);
  v4[5] = OBJC_IVAR____TtC11MediaCoreUI15ParallaxContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C5ACB060();
  sub_1C5BC7B74();

  *v4 = v1;
  swift_getKeyPath(byte_1C5BE5E28);
  sub_1C5BC7B94();

  v4[7] = sub_1C5ACB3BC(v4);
  return sub_1C5ACB7F0;
}

void sub_1C5ACB7FC(void *a1, uint64_t a2, const char *a3)
{
  v4 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v4 = v4[4];
  swift_getKeyPath(a3);
  sub_1C5BC7B84();

  free(v4);
}

double sub_1C5ACB890()
{
  swift_getKeyPath(asc_1C5BE5F40);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  return result;
}

double sub_1C5ACB904(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(asc_1C5BE5F40);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5ACB060();
    sub_1C5BC7B64();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_1C5BCA454();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;

  return result;
}

uint64_t sub_1C5ACBA3C()
{
  swift_getKeyPath(byte_1C5BE5F18);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  return *(v0 + 40);
}

void sub_1C5ACBAAC(char a1)
{
  if (*(v1 + 40) == (a1 & 1))
  {
    *(v1 + 40) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE5F18);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5ACB060();
    sub_1C5BC7B64();
  }
}

double sub_1C5ACBB94()
{
  swift_getKeyPath(byte_1C5BE5EF0);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  return *(v0 + 48);
}

void sub_1C5ACBC04(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE5EF0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5ACB060();
    sub_1C5BC7B64();
  }
}

uint64_t ParallaxContext.deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI15ParallaxContext___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ParallaxContext.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI15ParallaxContext___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5ACBE08(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

double sub_1C5ACBFB0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

void sub_1C5ACBFD0()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1C5ACC018()
{

  return swift_deallocClassInstance();
}

double sub_1C5ACC074(uint64_t a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, unsigned int a4, const AudioStreamPacketDescription *a5)
{
  v10 = sub_1C5BC7D64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a4;

    if (a4)
    {
      mAudioData = a3->mAudioData;
      v16 = sub_1C5BCB0C4();
      *(v16 + 16) = v14;
      memcpy((v16 + 32), mAudioData, 4 * v14);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *(v16 + 16) = v14;
    (*(a1 + 16))(v16);

    AudioQueueEnqueueBuffer(a2, a3, 0, a5);
  }

  else
  {
    if (qword_1EDA46940 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_1EDA5DA48);
    (*(v11 + 16))(v13, v17, v10);
    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C5922000, v18, v19, "AudioTapCallbackWrapper's wrappedCallback object is nil. Did not forward the call to callback wrapper", v20, 2u);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WaveformData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for WaveformData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WaveformData(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C5ACC3CC()
{
  result = qword_1EC1970C8;
  if (!qword_1EC1970C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1970D0, qword_1C5BE5FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1970C8);
  }

  return result;
}

uint64_t sub_1C5ACC430()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (v0[6])
  {
    v6 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1970D8, &unk_1C5BE7C00);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C5BDA7A0;
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = v4;
    *(result + 56) = v3;
    *(result + 64) = v5;
    *(result + 72) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1970D8, &unk_1C5BE7C00);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C5BDEE30;
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = v4;
    *(result + 56) = v3;
    *(result + 64) = v5;
  }

  return result;
}

unint64_t sub_1C5ACC4FC()
{
  result = qword_1EDA4DAE8;
  if (!qword_1EDA4DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DAE8);
  }

  return result;
}

void sub_1C5ACC720()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_innerReplicator;
  v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_innerReplicator];
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent];
  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E6979430]);
    v12 = v3;
    v5 = [v4 init];
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;

    if (v7)
    {
      [v7 setInstanceCount_];
    }

    v8 = *&v0[v1];
    if (v8 && ([v8 addSublayer_], (v9 = *&v0[v1]) != 0))
    {
      v10 = v9;
      [v0 addSublayer_];
      [v0 setNeedsLayout];

      v11 = v10;
    }

    else
    {
      v11 = v12;
    }
  }
}

void sub_1C5ACC850()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for LockScreenMotionReplicatorLayer();
  objc_msgSendSuper2(&v21, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    [v2 begin];
    [v2 setDisableActions_];
    [v0 bounds];
    [v3 setFrame_];
    v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_innerReplicator];
    if (v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirroringBehavior] > 1u)
    {
      if (v4)
      {
        v12 = -*&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor];
        v13 = v4;
        v14 = *(MEMORY[0x1E69792E8] + 80);
        *&v20.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v20.m33 = v14;
        v15 = *(MEMORY[0x1E69792E8] + 112);
        *&v20.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v20.m43 = v15;
        v16 = *(MEMORY[0x1E69792E8] + 16);
        *&v20.m11 = *MEMORY[0x1E69792E8];
        *&v20.m13 = v16;
        v17 = *(MEMORY[0x1E69792E8] + 48);
        *&v20.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v20.m23 = v17;
        CATransform3DScale(&v19, &v20, v12, 1.0, 1.0);
        [v13 setInstanceTransform_];
      }

      [v0 bounds];
      Width = CGRectGetWidth(v23);
      CATransform3DMakeTranslation(&v20, Width * (*&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor] + 1.0), 0.0, 0.0);
      [v0 setInstanceTransform_];
    }

    else
    {
      if (v4)
      {
        v5 = -*&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor];
        v6 = v4;
        v7 = *(MEMORY[0x1E69792E8] + 80);
        *&v20.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v20.m33 = v7;
        v8 = *(MEMORY[0x1E69792E8] + 112);
        *&v20.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v20.m43 = v8;
        v9 = *(MEMORY[0x1E69792E8] + 16);
        *&v20.m11 = *MEMORY[0x1E69792E8];
        *&v20.m13 = v9;
        v10 = *(MEMORY[0x1E69792E8] + 48);
        *&v20.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v20.m23 = v10;
        CATransform3DScale(&v19, &v20, 1.0, v5, 1.0);
        [v6 setInstanceTransform_];
      }

      [v0 bounds];
      Height = CGRectGetHeight(v22);
      CATransform3DMakeTranslation(&v20, 0.0, Height * (*&v0[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor] + 1.0), 0.0);
      [v0 setInstanceTransform_];
    }

    [v2 commit];
  }
}

id sub_1C5ACCB04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenMotionReplicatorLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5ACCBBC()
{
  result = qword_1EC197100;
  if (!qword_1EC197100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197100);
  }

  return result;
}

void sub_1C5ACCC10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = a1;
  v8 = *a4;
  v7 = a4[1];
  log = sub_1C5BC7D44();
  if (os_log_type_enabled(log, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    if (v7)
    {

      MEMORY[0x1C694F170](v8, v7);
      MEMORY[0x1C694F170](8254, 0xE200000000000000);

      v11 = 60;
      v12 = 0xE100000000000000;
    }

    else
    {

      v11 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = sub_1C592ADA8(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1C592ADA8(a2, a3, &v15);
    _os_log_impl(&dword_1C5922000, log, v6, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v10, -1, -1);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }
}

uint64_t sub_1C5ACCE08()
{
  swift_getKeyPath(byte_1C5BE6170);
  swift_getKeyPath(byte_1C5BE6198);
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5ACCE7C()
{
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel5Debug__showRedBackdrop;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5ACCF2C@<X0>(uint64_t *a2@<X8>)
{
  _s5DebugCMa(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

void sub_1C5ACCF6C(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_1C5BE6170);
  swift_getKeyPath(byte_1C5BE6198);
  sub_1C5BC8034();

  *a2 = v3;
}

uint64_t sub_1C5ACCFEC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1C5BE6170);
  swift_getKeyPath(byte_1C5BE6198);

  return sub_1C5BC8044();
}

uint64_t sub_1C5ACD060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  _s18PlayerControlsViewVMa(255, v5, v6, a4);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s17VolumeControlViewVMa(255, v5, v6, v7);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v8 = sub_1C5BCA7D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13];
  v15 = *(v4 + 80);
  v25[4] = *(v4 + 64);
  v25[5] = v15;
  v25[6] = *(v4 + 96);
  v26 = *(v4 + 112);
  v16 = *(v4 + 16);
  v25[0] = *v4;
  v25[1] = v16;
  v17 = *(v4 + 48);
  v25[2] = *(v4 + 32);
  v25[3] = v17;
  v22 = v5;
  v23 = v6;
  v24 = v25;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, WitnessTable);
  v19 = *(v9 + 8);
  v19(v11, v8);
  sub_1C593EDC0(v14, v8, WitnessTable);
  return (v19)(v14, v8);
}

uint64_t sub_1C5ACD2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a5;
  v8 = _s17VolumeControlViewVMa(0, a2, a3, a4);
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v58 - v9;
  v73 = v10;
  v11 = sub_1C5BC8AB4();
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v58 - v12;
  v75 = v13;
  v79 = sub_1C5BC8AB4();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v58 - v18;
  v19 = sub_1C5BC8F34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59498C4(*(a1 + 80), *(a1 + 88), a2, *(a3 + 8));
  v23 = *(a3 + 224);
  swift_unknownObjectRetain();
  v24 = v23(a2, a3);
  swift_unknownObjectRelease();
  v25 = *(v24 + 104);

  v81 = a2;
  v112 = sub_1C5A0ABC4(v25, a2, a3);
  v113 = v26;
  v66 = v27;
  v114 = v27;
  v115 = v28;
  LODWORD(v65) = sub_1C5BC98B4();
  v29 = *(a1 + 16);
  v125[0] = *a1;
  v125[1] = v29;
  v30 = *(a1 + 48);
  v125[2] = *(a1 + 32);
  v126[0] = v30;
  *(v126 + 10) = *(a1 + 58);
  v31 = *(a1 + 24);
  v32 = *(a1 + 56);
  v129 = *(a1 + 40);
  v130 = v32;
  v131 = *(a1 + 72);
  v127 = *(a1 + 8);
  v128 = v31;
  v67 = BYTE9(v126[1]);
  v60 = v20;
  v61 = v19;
  v59 = v22;
  v68 = *&v125[0];
  if (BYTE9(v126[1]))
  {
    *(&v111[1] + 8) = *(a1 + 24);
    *(&v111[2] + 8) = *(a1 + 40);
    *(&v111[3] + 8) = *(a1 + 56);
    BYTE8(v111[4]) = *(a1 + 72);
    *(v111 + 8) = *(a1 + 8);
    *&v111[0] = *&v125[0];
  }

  else
  {
    sub_1C59B737C(v125, &v120);
    sub_1C5BCB4E4();
    v33 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5ACE654(v125);
    (*(v20 + 8))(v22, v19);
  }

  v122 = v111[2];
  v123[0] = v111[3];
  *(v123 + 9) = *(&v111[3] + 9);
  v121 = v111[1];
  v120 = v111[0];
  sub_1C5ACDCFC();
  _s18PlayerControlsViewVMa(0, v81, a3, v34);
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();

  swift_unknownObjectRelease();
  v109 = v118;
  v110[0] = v119[0];
  *(v110 + 9) = *(v119 + 9);
  v107 = v116;
  v108 = v117;
  v63 = *(a1 + 112);
  v36 = sub_1C5BC8AB4();
  v37 = MEMORY[0x1E697E5D8];
  v102 = WitnessTable;
  v103 = MEMORY[0x1E697E5D8];
  v38 = swift_getWitnessTable();
  sub_1C5BCA264();
  v104[2] = v109;
  v105[0] = v110[0];
  *(v105 + 9) = *(v110 + 9);
  v104[0] = v107;
  v104[1] = v108;
  (*(*(v36 - 8) + 8))(v104, v36);
  v99 = v119[4];
  v100[0] = v119[5];
  v100[1] = v119[6];
  v101 = v119[7];
  v97 = v119[2];
  v98 = v119[3];
  v39 = sub_1C5BC8AB4();
  v95 = v38;
  v40 = MEMORY[0x1E697E270];
  v96 = MEMORY[0x1E697E270];
  v64 = swift_getWitnessTable();
  sub_1C593EDC0(&v97, v39, v64);
  v106[2] = v99;
  v106[3] = v100[0];
  v106[4] = v100[1];
  v106[5] = v101;
  v106[0] = v97;
  v106[1] = v98;
  v62 = *(v39 - 8);
  v65 = *(v62 + 8);
  v66 = v62 + 8;
  v65(v106, v39);
  v41 = v69;
  sub_1C5A1860C(v81, a3, v69);
  sub_1C5BC98B4();
  if (v67)
  {
    *(&v94[1] + 8) = v128;
    *(&v94[2] + 8) = v129;
    *(&v94[3] + 8) = v130;
    BYTE8(v94[4]) = v131;
    *(v94 + 8) = v127;
    *&v94[0] = v68;
  }

  else
  {
    sub_1C59B737C(v125, &v97);
    sub_1C5BCB4E4();
    v42 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v43 = v59;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5ACE654(v125);
    (*(v60 + 8))(v43, v61);
  }

  v99 = v94[2];
  v100[0] = v94[3];
  *(v100 + 9) = *(&v94[3] + 9);
  v97 = v94[0];
  v98 = v94[1];
  sub_1C5ACE0E4();
  v44 = v73;
  v45 = swift_getWitnessTable();
  v46 = v71;
  sub_1C5BCA2F4();
  (*(v72 + 8))(v41, v44);
  v91[4] = v45;
  v91[5] = v37;
  v47 = v75;
  v48 = swift_getWitnessTable();
  v49 = v70;
  sub_1C5BCA264();
  (*(v74 + 8))(v46, v47);
  v91[2] = v48;
  v91[3] = v40;
  v50 = v79;
  v51 = swift_getWitnessTable();
  v52 = v77;
  sub_1C593EDC0(v49, v50, v51);
  v53 = v76;
  v54 = *(v76 + 8);
  v54(v49, v50);
  v92[2] = v122;
  v92[3] = v123[0];
  v92[4] = v123[1];
  v92[5] = v124;
  v92[0] = v120;
  v92[1] = v121;
  v87 = v122;
  v88 = v123[0];
  v89 = v123[1];
  v90 = v124;
  v85 = v120;
  v86 = v121;
  v91[0] = &v85;
  v55 = v78;
  (*(v53 + 16))(v78, v52, v50);
  v91[1] = v55;
  (*(v62 + 16))(&v97, v92, v39);
  v84[0] = v39;
  v84[1] = v50;
  v82 = v64;
  v83 = v51;
  sub_1C594226C(v91, 2uLL, v84);
  v54(v52, v50);
  v93[2] = v122;
  v93[3] = v123[0];
  v93[4] = v123[1];
  v93[5] = v124;
  v93[0] = v120;
  v93[1] = v121;
  v56 = v65;
  v65(v93, v39);
  v54(v55, v50);
  v99 = v87;
  v100[0] = v88;
  v100[1] = v89;
  v101 = v90;
  v97 = v85;
  v98 = v86;
  return v56(&v97, v39);
}

void sub_1C5ACDCFC()
{
  v1 = *(v0 + 17);
  if (*(v0 + 18) > 1u)
  {
    if (*(v0 + 18) == 2)
    {
      v2 = !*(v0 + 17) || v1 == 5;
      if (!v2 && v1 == 6)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (!*(v0 + 18))
    {
      if (*(v0 + 17) > 2u || !*(v0 + 17) || v1 != 1)
      {
        return;
      }

LABEL_28:
      v3 = [objc_opt_self() currentTraitCollection];
      [v3 displayScale];

      return;
    }

    if (*(v0 + 17) > 2u)
    {
      if (v1 == 3 || v1 == 4 || v1 == 5)
      {
        goto LABEL_28;
      }
    }

    else if (*(v0 + 17) && v1 == 1)
    {
      goto LABEL_28;
    }
  }
}

void sub_1C5ACE0E4()
{
  v1 = *(v0 + 17);
  if (*(v0 + 18) > 1u)
  {
    if (*(v0 + 18) != 2 || v1 == 2 || v1 == 6 || v1 == 4)
    {
      return;
    }

LABEL_14:
    v2 = [objc_opt_self() currentTraitCollection];
    [v2 displayScale];

    return;
  }

  if (!*(v0 + 18))
  {
    if (v1 == 3)
    {
      return;
    }

    goto LABEL_14;
  }

  if (*(v0 + 17))
  {
    goto LABEL_14;
  }
}

uint64_t sub_1C5ACE348@<X0>(uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath(byte_1C5BE61B8);
  *(a3 + 73) = 0;
  *(a3 + 80) = sub_1C5BC8C84();
  *(a3 + 88) = v4;
  _s17TransportControlsCMa();
  sub_1C5ACE458();
  result = sub_1C5BC8C84();
  *(a3 + 96) = result;
  *(a3 + 104) = v6;
  *(a3 + 112) = 1;
  return result;
}

uint64_t sub_1C5ACE3D0@<X0>(char a1@<W0>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath(byte_1C5BE61B8);
  *(a4 + 73) = 0;
  *(a4 + 80) = sub_1C5BC8C84();
  *(a4 + 88) = v6;
  _s17TransportControlsCMa();
  sub_1C5ACE458();
  result = sub_1C5BC8C84();
  *(a4 + 96) = result;
  *(a4 + 104) = v8;
  *(a4 + 112) = a1;
  return result;
}

unint64_t sub_1C5ACE458()
{
  result = qword_1EDA4A620;
  if (!qword_1EDA4A620)
  {
    _s17TransportControlsCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A620);
  }

  return result;
}

uint64_t sub_1C5ACE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C5ACE518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5ACE574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5ACE654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B58, &qword_1C5BE53F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5ACE6BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5ACE718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingContrastSensitiveBackdrop(uint64_t a1)
{
  result = qword_1EC197108;
  if (!qword_1EC197108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5ACE808(uint64_t a1)
{
  sub_1C594F100(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5ACE890@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v99 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971A8, &qword_1C5BE6648);
  MEMORY[0x1EEE9AC00](v87);
  v88 = (&v87 - v3);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971B0, &qword_1C5BE6650);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v87 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971B8, &qword_1C5BE6658);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v87 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971C0, &qword_1C5BE6660);
  MEMORY[0x1EEE9AC00](v94);
  v7 = &v87 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971C8, &unk_1C5BE6668);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v87 - v8;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC86B4();
  v14 = v13;
  v15 = *(a1 + 16);
  v109[0] = *a1;
  v109[1] = v15;
  v16 = *(a1 + 48);
  v109[2] = *(a1 + 32);
  v110[0] = v16;
  *(v110 + 10) = *(a1 + 58);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v115 = *(a1 + 72);
  v113 = v19;
  v114 = v20;
  v111 = v17;
  v112 = v18;
  v100 = BYTE9(v110[1]);
  v98 = v7;
  v89 = v10;
  v101 = *&v109[0];
  if (BYTE9(v110[1]))
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 56);
    *(&v108[2] + 8) = *(a1 + 40);
    *(&v108[3] + 8) = v22;
    BYTE8(v108[4]) = *(a1 + 72);
    *(v108 + 8) = *(a1 + 8);
    *(&v108[1] + 8) = v21;
    *&v108[0] = *&v109[0];
  }

  else
  {
    sub_1C59B737C(v109, v107);
    sub_1C5BCB4E4();
    v23 = v10;
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v109, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v23 + 8))(v12, v9);
  }

  v90 = v9;
  *&v107[16] = v108[1];
  *&v107[32] = v108[2];
  *&v107[48] = v108[3];
  *&v107[57] = *(&v108[3] + 9);
  *v107 = v108[0];
  v25 = sub_1C5B4B500(v107);
  KeyPath = swift_getKeyPath(byte_1C5BE6480);
  v27 = v88;
  *v88 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v28 = sub_1C5BCAA54();
  v30 = *(a1 + 80);
  if (!v30)
  {
    _s5DebugCMa(0);
    v84 = &qword_1EDA4A208;
    v85 = _s5DebugCMa;
    v86 = &unk_1C5BE6138;
LABEL_20:
    sub_1C5AD0694(v84, v85, v86);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v31 = v28;
  v32 = v29;
  v33 = v14 + v25 + 4.0 + 16.0 + -16.0;
  swift_beginAccess();
  v34 = 0;
  if (*(v30 + 17))
  {
    v34 = sub_1C5BCA464();
  }

  v35 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197130, &qword_1C5BE64B8) + 36));
  *v35 = v34;
  v35[1] = v31;
  v35[2] = v32;
  sub_1C5BCAA34();
  sub_1C5BC85D4();
  v36 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971D0, &qword_1C5BE6678) + 36));
  v37 = v108[6];
  *v36 = v108[5];
  v36[1] = v37;
  v36[2] = v108[7];
  v38 = sub_1C5BCAA34();
  v40 = v39;
  sub_1C5BCABB4();
  v42 = v41;
  v44 = v43;
  sub_1C5BCABC4();
  v45 = v27 + *(v87 + 36);
  *v45 = v38;
  *(v45 + 8) = v40;
  *(v45 + 16) = v33;
  *(v45 + 24) = 0x4030000000000000;
  *(v45 + 32) = v42;
  *(v45 + 40) = v44;
  *(v45 + 48) = v46;
  *(v45 + 56) = v47;
  v48 = sub_1C5BC98C4();
  v49 = v93;
  if (v100)
  {
    *(&v106[1] + 8) = v112;
    *(&v106[2] + 8) = v113;
    *(&v106[3] + 8) = v114;
    BYTE8(v106[4]) = v115;
    *(v106 + 8) = v111;
    *&v106[0] = v101;
    v50 = v90;
  }

  else
  {
    sub_1C59B737C(v109, v107);
    sub_1C5BCB4E4();
    v51 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v109, &qword_1EC191B58, &qword_1C5BE53F0);
    v50 = v90;
    (*(v89 + 8))(v12, v90);
  }

  *&v107[16] = v106[1];
  *&v107[32] = v106[2];
  *&v107[48] = v106[3];
  *&v107[57] = *(&v106[3] + 9);
  *v107 = v106[0];
  sub_1C5ACF210();
  sub_1C5BC8174();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_1C59E7D34(v27, v49, &qword_1EC1971A8, &qword_1C5BE6648);
  v60 = v49 + *(v91 + 36);
  *v60 = v48;
  *(v60 + 8) = v53;
  *(v60 + 16) = v55;
  *(v60 + 24) = v57;
  *(v60 + 32) = v59;
  *(v60 + 40) = 0;
  v61 = sub_1C5BC98E4();
  if (v100)
  {
    *&v107[40] = v113;
    *&v107[56] = v114;
    v107[72] = v115;
    *&v107[8] = v111;
    *&v107[24] = v112;
    *v107 = v101;
  }

  else
  {
    sub_1C59B737C(v109, v107);
    sub_1C5BCB4E4();
    v62 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v109, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v89 + 8))(v12, v50);
  }

  v104 = *&v107[32];
  v105[0] = *&v107[48];
  *(v105 + 9) = *&v107[57];
  *&v102[24] = *v107;
  v103 = *&v107[16];
  DeviceMetrics.padding.getter(v102);
  sub_1C5BC8174();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v95;
  sub_1C59E7D34(v49, v95, &qword_1EC1971B0, &qword_1C5BE6650);
  v72 = v71 + *(v92 + 36);
  *v72 = v61;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  v73 = sub_1C5BC8AC4();
  v74 = sub_1C5BC9894();
  v75 = v98;
  sub_1C59E7D34(v71, v98, &qword_1EC1971B8, &qword_1C5BE6658);
  v76 = v75 + *(v94 + 36);
  *v76 = v73;
  *(v76 + 8) = v74;
  v77 = *(a1 + 96);
  if (!v77)
  {
    _s5QueueCMa();
    v84 = qword_1EDA4A0C0;
    v85 = _s5QueueCMa;
    v86 = &unk_1C5BE4338;
    goto LABEL_20;
  }

  swift_beginAccess();
  if (*(v77 + 16))
  {
    v78 = 1.0;
  }

  else
  {
    v78 = 0.0;
  }

  v79 = v96;
  sub_1C59E7D34(v75, v96, &qword_1EC1971C0, &qword_1C5BE6660);
  *(v79 + *(v97 + 36)) = v78;
  v80 = v79;
  v81 = v99;
  sub_1C59E7D34(v80, v99, &qword_1EC1971C8, &unk_1C5BE6668);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1971D8, &unk_1C5BE6680);
  v83 = (v81 + *(result + 36));
  *v83 = sub_1C592899C;
  v83[1] = 0;
  return result;
}