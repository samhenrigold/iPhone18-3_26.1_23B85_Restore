uint64_t sub_1920B4294(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_192228240();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920B4348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v6 + 80);
  v13 = *(*(v5 - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v16 = ((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 27;
    v17 = (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) + 27) & 0xFFFFFFFB;
    v18 = (a2 - v11 + 0xFFFFFF) >> 24;
    v19 = v17 == 3 ? v18 + 1 : 2;
    v20 = v19 < 0x100 ? 1 : 2;
    v21 = v19 >= 2 ? v20 : 0;
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (*(a1 + v16))
        {
LABEL_25:
          v23 = (v22 << 24) - 0x1000000;
          if (v17 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = 0;
            v29 = *a1;
          }

          return v11 + (v29 | v23) + 1;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (*(a1 + v16))
        {
          goto LABEL_25;
        }
      }
    }
  }

  v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(v24, v7, v5);
  }

  v27 = (v24 + v13 + v14) & ~v14;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v30 = (*(v8 + 48))(v27);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v27 + v15) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_1920B4584(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = v9 - 1;
  if (!v9)
  {
    v13 = 0;
  }

  if (v13 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = (v11 + v12 + ((v10 + 16) & ~v10)) & ~v12;
  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = ((v15 + v16) & 0xFFFFFFFFFFFFFFF8) + 27;
  if (((v15 + v16) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v18 = ((a3 - v14 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v14 >= a2)
  {
    if (v21)
    {
      if (v21 != 2)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 56);

          v25(v24);
        }

        else
        {
          v26 = (v24 + v11 + v12) & ~v12;
          if (v13 == v14)
          {
            v27 = *(v8 + 56);
            v28 = a2 + 1;

            v27(v26, v28, v9);
          }

          else
          {
            v29 = (v26 + v16) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v29 + 26) = 0;
              *(v29 + 24) = 0;
              *(v29 + 8) = a2 & 0x7FFFFFFF;
              *(v29 + 16) = 0;
            }

            else
            {
              *(v29 + 16) = a2 - 1;
            }
          }
        }

        return;
      }

      *&a1[v17] = 0;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  v22 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 == 3)
  {
    v23 = HIBYTE(v22) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    if (!v21)
    {
      return;
    }
  }

  else
  {
    *a1 = v22;
    if (!v21)
    {
      return;
    }
  }

  if (v21 == 2)
  {
    *&a1[v17] = v23;
  }

  else
  {
    a1[v17] = v23;
  }
}

uint64_t sub_1920B488C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000192249370 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4964616F6C796170 && a2 == 0xE900000000000044 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697472656C417369 && a2 == 0xEA0000000000676ELL || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7974746168437369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1920B4AD4(unsigned __int8 a1)
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](a1);
  return sub_192228B30();
}

uint64_t sub_1920B4B1C(unsigned __int8 a1)
{
  v1 = 1952867692;
  v2 = 0x4964616F6C796170;
  v3 = 0x697472656C417369;
  if (a1 != 4)
  {
    v3 = 0x7974746168437369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x7468676972;
  if (a1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1920B4BF4()
{
  sub_192228AD0();
  sub_1920B4AAC(v2, *v0);
  return sub_192228B30();
}

uint64_t sub_1920B4C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920B488C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920B4C64@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1920B6160();
  *a2 = result;
  return result;
}

uint64_t sub_1920B4C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1920B4CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1920B4D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27[0] = a8;
  v27[1] = a10;
  v27[2] = a11;
  v27[3] = a12;
  v14 = type metadata accessor for CompositeViewStates.Metadata(0, v27);
  v15 = v14[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9 + v15, 1, 1, AssociatedTypeWitness);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = sub_192228240();
  result = (*(*(v18 - 8) + 40))(a9 + v15, a2, v18);
  *(a9 + v14[14]) = a3;
  v20 = (a9 + v14[15]);
  *v20 = a4;
  v20[1] = a5;
  *(a9 + v14[16]) = a6;
  *(a9 + v14[17]) = a7;
  return result;
}

uint64_t sub_1920B4EE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_192228240();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - v13;
  v50 = swift_getAssociatedTypeWitness();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v42 - v14;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  type metadata accessor for CompositeViewStates.Metadata.CodingKeys(255, &v59);
  swift_getWitnessTable();
  v53 = sub_192228810();
  v49 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v16 = &v42 - v15;
  v47 = a2;
  v48 = a4;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v17 = type metadata accessor for CompositeViewStates.Metadata(0, &v59);
  v43 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v52 = v21;
  v22 = *(v21 + 52);
  v23 = *(*(AssociatedTypeWitness - 8) + 56);
  v55 = v20;
  v56 = v22;
  v23(&v20[v22], 1, 1, AssociatedTypeWitness, v18);
  v24 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = v54;
  sub_192228B70();
  if (v25)
  {
    v28 = v58;
    v29 = v55;
    __swift_destroy_boxed_opaque_existential_1(v63);
    return (*(v57 + 8))(&v29[v56], v28);
  }

  else
  {
    v26 = v46;
    LOBYTE(v59) = 0;
    v27 = v50;
    swift_getAssociatedConformanceWitness();
    sub_1922287C0();
    v30 = v27;
    v31 = v55;
    (*(v26 + 32))(v55, v51, v30);
    LOBYTE(v59) = 1;
    swift_getAssociatedConformanceWitness();
    v32 = v45;
    v54 = v16;
    sub_192228750();
    (*(v57 + 40))(&v31[v56], v32, v58);
    LOBYTE(v59) = 2;
    v33 = sub_1922287A0();
    v34 = v52;
    *&v31[*(v52 + 56)] = v33;
    LOBYTE(v59) = 3;
    v35 = sub_192228760();
    v36 = &v31[*(v34 + 60)];
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v59) = 4;
    v38 = sub_192228740();
    v31[*(v34 + 64)] = (v38 == 2) | v38 & 1;
    LOBYTE(v59) = 5;
    v39 = v34;
    LOBYTE(v34) = sub_192228740();
    (*(v49 + 8))(v54, v53);
    v31[*(v39 + 68)] = v34 & 1;
    v40 = v43;
    (*(v43 + 16))(v44, v31, v39);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return (*(v40 + 8))(v31, v39);
  }
}

uint64_t sub_1920B5564(void *a1, int *a2)
{
  v3 = *(a2 + 2);
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  v13 = *(a2 + 3);
  v14 = a2;
  v16[0] = v3;
  v16[1] = v13;
  v16[2] = v5;
  v16[3] = v4;
  v12[1] = v4;
  type metadata accessor for CompositeViewStates.Metadata.CodingKeys(255, v16);
  swift_getWitnessTable();
  v6 = sub_1922288F0();
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192228B90();
  LOBYTE(v16[0]) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = v15;
  sub_1922288C0();
  if (v9)
  {
    return (*(v17 + 8))(v8, v6);
  }

  LOBYTE(v16[0]) = 1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_192228850();
  LOBYTE(v16[0]) = 2;
  sub_1922288A0();
  v11 = v17;
  LOBYTE(v16[0]) = 3;
  sub_192228860();
  LOBYTE(v16[0]) = 4;
  sub_192228870();
  LOBYTE(v16[0]) = 5;
  sub_192228870();
  return (*(v11 + 8))(v8, v6);
}

uint64_t sub_1920B58D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = *(a1 + 24);
  v31 = *(a1 + 40);
  v32 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_192228240();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  v11 = swift_getAssociatedTypeWitness();
  v29 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = v33;
  result = (*(v9 + 56))(v10, v9, v12);
  if (!v15)
  {
    v33 = 0;
    v26 = v11;
    v27 = AssociatedTypeWitness;
    v28 = v10;
    v17 = 1;
    if ((*(*(v32 - 8) + 48))(v2 + *(a1 + 60), 1))
    {
LABEL_3:
      (*(*(v27 - 8) + 56))(v8, v17, 1);
      v18 = *(v2 + 8);
      v19 = v2 + *(a1 + 68);
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 17);
      v23 = *(v19 + 18);

      return sub_1920B4D40(v14, v8, v18, v20, v21, v22, v23, v28, v30, v32, v9, v31);
    }

    v24 = v33;
    (*(v31 + 56))(v32);
    if (!v24)
    {
      v33 = 0;
      v17 = 0;
      goto LABEL_3;
    }

    return (*(v29 + 8))(v14, v26);
  }

  return result;
}

uint64_t sub_1920B5B98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(v3 + 8);
  *(v3 + *(a3 + 64)) = v5 > a1;
  if (v5 > a1)
  {
    return (*(*(a3 + 32) + 64))();
  }

  v7 = v4;
  v11 = *(a3 + 24);
  result = (*(*(v11 - 8) + 48))(v3 + *(a3 + 60), 1, v11);
  if (!result)
  {
    result = a1 - v5;
    if (__OFSUB__(a1, v5))
    {
      __break(1u);
    }

    else
    {
      return (*(*(a3 + 40) + 64))(result, a2, *(v7 + *MEMORY[0x1E697C498] + 8), *(v7 + *MEMORY[0x1E697C498] + 24), v11);
    }
  }

  return result;
}

id sub_1920B5CF8(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = sub_192228240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a2 + 64)) == 1)
  {
    return (*(*(a2 + 32) + 72))(a1, *(a2 + 16), v12);
  }

  (*(v7 + 16))(v9, v2 + *(a2 + 60), v6, v12);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return a1;
  }

  else
  {
    (*(v10 + 32))(v14, v9, v5);
    v16 = v18[1];
    v17 = (*(*(a2 + 40) + 72))(a1, v5);
    result = (*(v10 + 8))(v14, v5);
    if (!v16)
    {
      return v17;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlTemplateButton.Option.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlTemplateButton.Option.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1920B6180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1920B61C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1920B622C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v42) = a5;
  v43 = a1;
  v46 = a6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE90, &qword_19222BCE8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v42 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE98, &qword_19222BCF0);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v42 - v11;
  v13 = sub_1922261D0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = a2;
  }

  else
  {

    sub_192227FA0();
    v18 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v19 = sub_19209561C(a2, 0);
    (*(v14 + 8))(v16, v13, v19);
    v17 = v48;
  }

  v20 = [v17 _isUnitScale];

  if (v20)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEEA0, &qword_19222BCF8);
    (*(*(v21 - 8) + 16))(v12, v43, v21);
    swift_storeEnumTagMultiPayload();
    sub_1920B689C();
    sub_1920B6900();
    return sub_1922266E0();
  }

  if ((a3 & 1) == 0)
  {

    sub_192227FA0();
    v32 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v33 = sub_19209561C(a2, 0);
    (*(v14 + 8))(v16, v13, v33);
    v23 = v48;
    if ((v42 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v31 = a4;
    goto LABEL_11;
  }

  v23 = a2;
  if (v42)
  {
    goto LABEL_10;
  }

LABEL_8:

  sub_192227FA0();
  v24 = sub_192226D00();
  v42 = v13;
  v25 = a3;
  v26 = v14;
  v27 = *&a4;
  v28 = v24;
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();
  v29 = v27;
  v14 = v26;
  a3 = v25;
  v13 = v42;
  v30 = sub_192049898(v29, 0);
  (*(v14 + 8))(v16, v13, v30);
  v31 = *&v48;
LABEL_11:
  [v23 _rawSizePixelAlignedForDisplayScale_];

  sub_1922275F0();
  sub_192225AA0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEEA0, &qword_19222BCF8);
  (*(*(v34 - 8) + 16))(v10, v43, v34);
  v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEEA8, &qword_19222BD00) + 36)];
  v36 = v49;
  *v35 = v48;
  *(v35 + 1) = v36;
  *(v35 + 2) = v50;
  if (a3)
  {
    v37 = a2;
  }

  else
  {

    sub_192227FA0();
    v38 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v39 = sub_19209561C(a2, 0);
    (*(v14 + 8))(v16, v13, v39);
    v37 = v47;
  }

  [v37 scaleFactor];
  v41 = v40;

  *&v10[*(v45 + 36)] = v41;
  sub_1920B682C(v10, v12);
  swift_storeEnumTagMultiPayload();
  sub_1920B689C();
  sub_1920B6900();
  sub_1922266E0();
  return sub_1920B6A6C(v10);
}

uint64_t sub_1920B682C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE90, &qword_19222BCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920B689C()
{
  result = qword_1ED74AEA0;
  if (!qword_1ED74AEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEEA0, &qword_19222BCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEA0);
  }

  return result;
}

unint64_t sub_1920B6900()
{
  result = qword_1ED74AEC0;
  if (!qword_1ED74AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEE90, &qword_19222BCE8);
    sub_1920B698C();
    sub_1920B6A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEC0);
  }

  return result;
}

unint64_t sub_1920B698C()
{
  result = qword_1ED74AED0;
  if (!qword_1ED74AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEEA8, &qword_19222BD00);
    sub_1920B689C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AED0);
  }

  return result;
}

unint64_t sub_1920B6A18()
{
  result = qword_1ED749F60;
  if (!qword_1ED749F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F60);
  }

  return result;
}

uint64_t sub_1920B6A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE90, &qword_19222BCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1920B6AD4()
{
  result = qword_1ED74AEB8;
  if (!qword_1ED74AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEEB0, &qword_19222BD08);
    sub_1920B689C();
    sub_1920B6900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEB8);
  }

  return result;
}

id JindoArchivedViewCollection.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for JindoArchivedViewCollection(0) + 20));
  *a1 = v3;

  return v3;
}

uint64_t type metadata accessor for JindoArchivedViewCollection(uint64_t a1)
{
  result = qword_1EADED008;
  if (!qword_1EADED008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t JindoArchivedViewCollection.metadata(viewIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for JindoArchivedViewCollection(0);
  result = v4 - *v2;
  if (__OFSUB__(v4, *v2))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + *(v5 + 20) + 8);
    if (*(v7 + 16) && (result = sub_1920B71E4(result), (v8 & 1) != 0))
    {
      v9 = *(v7 + 56) + 88 * result;
      v10 = *(v9 + 48);
      *(a2 + 32) = *(v9 + 32);
      *(a2 + 48) = v10;
      *(a2 + 64) = *(v9 + 64);
      *(a2 + 79) = *(v9 + 79);
      v11 = *(v9 + 16);
      *a2 = *v9;
      *(a2 + 16) = v11;
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      *(a2 + 40) = 2;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 79) = 0;
    }
  }

  return result;
}

void JindoArchivedViewCollection.index(for:in:)(WidgetKit::JindoViewTag a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(v3 + *(type metadata accessor for JindoArchivedViewCollection(0) + 20));
  v7 = v10;
  v8 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, MEMORY[0x1E69E7CC0]);
  LOBYTE(a2) = v9;

  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {

    JindoArchivedViewCollection.index(for:environmentAtIndex:)(a1, v8);
  }
}

WidgetKit::JindoArchivedViewCollection::ViewIndex_optional __swiftcall JindoArchivedViewCollection.index(for:environmentAtIndex:)(WidgetKit::JindoViewTag a1, Swift::Int environmentAtIndex)
{
  v4 = v3;
  v7 = v2;
  v17 = *(v3 + *(type metadata accessor for JindoArchivedViewCollection(0) + 20));
  v8 = v17;
  v9 = WidgetEnvironment.enumeratedCount()();

  v12 = a1 * v9;
  if ((a1 * v9) >> 64 != v12 >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = __OFADD__(*v4, v12);
  v14 = *v4 + v12;
  if (v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14 + environmentAtIndex;
  if (__OFADD__(v14, environmentAtIndex))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1922266C0();
  sub_19205E134(&qword_1EADEDD88, MEMORY[0x1E697C620], MEMORY[0x1E697C628]);
  sub_192227E00();
  sub_192227E60();
  v10 = sub_192227E50();
  if (v15 < v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *v7 = v16;
  *(v7 + 8) = v15 >= v10;
LABEL_11:
  result.value.base = v10;
  result.is_nil = v11;
  return result;
}

uint64_t JindoArchivedViewCollection.view(for:in:)@<X0>(WidgetKit::JindoViewTag a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *(v3 + *(type metadata accessor for JindoArchivedViewCollection(0) + 20));
  v8 = v15;
  v9 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, MEMORY[0x1E69E7CC0]);
  LOBYTE(a2) = v10;

  if (a2 & 1) != 0 || (JindoArchivedViewCollection.index(for:environmentAtIndex:)(a1, v9), (v14))
  {
    v11 = 1;
LABEL_4:
    v12 = sub_192225B70();
    return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
  }

  result = sub_1922266B0();
  if (!v4)
  {
    v11 = 0;
    goto LABEL_4;
  }

  return result;
}

unint64_t sub_1920B70BC(uint64_t a1)
{
  sub_192228AD0();
  sub_192140210(v4, a1);
  v2 = sub_192228B30();

  return sub_1920B7620(a1, v2);
}

unint64_t sub_1920B7128(uint64_t a1)
{
  sub_192228AD0();
  sub_1921B0544(v4);
  v2 = sub_192228B30();

  return sub_1920B76D8(a1, v2);
}

unint64_t sub_1920B71E4(uint64_t a1)
{
  v2 = sub_192228AC0();

  return sub_1920B7834(a1, v2);
}

uint64_t sub_1920B7250(uint64_t a1)
{
  result = type metadata accessor for JindoViewStates.Metadata(319);
  if (v2 <= 0x3F)
  {
    result = sub_1922266C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JindoArchivedViewCollection.ViewIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JindoArchivedViewCollection.ViewIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1920B733C(uint64_t a1)
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](a1);
  v2 = sub_192228B30();

  return sub_1920B7834(a1, v2);
}

unint64_t sub_1920B73A8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v3);
  sub_1922281E0();
  v4 = sub_192228B30();

  return sub_1920B78A0(v3, a2, v4);
}

unint64_t sub_1920B7428(uint64_t a1)
{
  sub_192228AD0();
  sub_192225150();
  sub_19205E134(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  v2 = sub_192228B30();

  return sub_1920B799C(a1, v2);
}

unint64_t sub_1920B7548(uint64_t a1)
{
  sub_192228AD0();
  sub_1922279B0();

  v2 = sub_192228B30();

  return sub_1920B7C54(a1, v2);
}

unint64_t sub_1920B7620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_1920B7D48(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1920B76D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SymbolLookupKey(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1920B7F00(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SymbolLookupKey);
      v13 = MEMORY[0x193B09AD0](v8, a1);
      sub_1920B7F68(v8, type metadata accessor for SymbolLookupKey);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1920B7834(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1920B78A0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a1;
    v9 = ~v5;
    do
    {
      v10 = (*(v7 + 48) + 16 * v6);
      if (*v10 == v8)
      {
        v11 = *(v10 + 1);
        sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
        v12 = v11;
        v13 = sub_1922281D0();

        if (v13)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1920B799C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1920B7F00(*(v3 + 48) + v12 * v10, v8, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      if (sub_192225120())
      {
        v13 = *(v21 + 20);
        v14 = *&v8[v13];
        v15 = *(a1 + v13);
        sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
        v16 = v14;
        v17 = v15;
        v18 = sub_1922281D0();
        sub_1920B7F68(v8, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);

        if (v18)
        {
          return v10;
        }
      }

      else
      {
        sub_1920B7F68(v8, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1920B7B88(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_19202A7A8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1922281D0();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1920B7C54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 << 56;
    while (*(*(v2 + 48) + v4) << 56 != v6)
    {
      v7 = sub_1922289A0();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_1920B7D48(uint64_t result, uint64_t a2)
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
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_192228AD0();

    sub_1922279B0();
    v16 = sub_192228B30();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1922289A0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1920B7F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920B7F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1920B7FC8(unsigned __int8 a1, char a2, unsigned __int8 a3)
{
  if (a2 == 2)
  {
    if (a3 >= 3u)
    {
      if (a3 == 3)
      {
        if (a1 < 4u)
        {
          v3 += 160;
        }

        else if (a1 - 8 >= 3)
        {
          if (a1 == 4)
          {
            v3 += 184;
          }

          else
          {
            v3 += 208;
          }
        }

        else
        {
          v3 += 232;
        }
      }

      else if (a1 < 4u)
      {
        v3 += 256;
      }

      else if (a1 - 8 >= 3)
      {
        if (a1 == 4)
        {
          v3 += 280;
        }

        else
        {
          v3 += 304;
        }
      }

      else
      {
        v3 += 328;
      }
    }

    else if (a1 < 4u)
    {
      v3 += 64;
    }

    else if (a1 - 8 >= 3)
    {
      if (a1 == 4)
      {
        v3 += 88;
      }

      else
      {
        v3 += 112;
      }
    }

    else
    {
      v3 += 136;
    }
  }

  else if (a2)
  {
    if (a1 < 4u)
    {
      v3 += 32;
    }

    else if (a1 - 8 >= 3)
    {
      if (a1 == 4)
      {
        v3 += 40;
      }

      else
      {
        v3 += 48;
      }
    }

    else
    {
      v3 += 56;
    }
  }

  else if (a1 >= 4u)
  {
    if (a1 - 8 >= 3)
    {
      if (a1 == 4)
      {
        v3 += 8;
      }

      else
      {
        v3 += 16;
      }
    }

    else
    {
      v3 += 24;
    }
  }

  return *v3;
}

double sub_1920B81C0()
{
  xmmword_1EADEEEC8 = xmmword_19222BDC0;
  unk_1EADEEED8 = xmmword_19222BDD0;
  result = 22.0;
  xmmword_1EADEEEE8 = xmmword_19222BDE0;
  unk_1EADEEEF8 = xmmword_19222BDF0;
  qword_1EADEEF08 = 0x4036000000000000;
  unk_1EADEEF10 = 0x403A000000000000;
  byte_1EADEEF18 = 0;
  qword_1EADEEF20 = 0x402A000000000000;
  unk_1EADEEF28 = 0x4030000000000000;
  byte_1EADEEF30 = 0;
  qword_1EADEEF38 = 0x402A000000000000;
  unk_1EADEEF40 = 0x4030000000000000;
  byte_1EADEEF48 = 0;
  qword_1EADEEF50 = 0x4026000000000000;
  unk_1EADEEF58 = 0x402A000000000000;
  byte_1EADEEF60 = 0;
  qword_1EADEEF68 = 0x4036000000000000;
  unk_1EADEEF70 = 0x403A000000000000;
  byte_1EADEEF78 = 0;
  qword_1EADEEF80 = 0x402A000000000000;
  unk_1EADEEF88 = 0x4033000000000000;
  byte_1EADEEF90 = 0;
  qword_1EADEEF98 = 0x402A000000000000;
  unk_1EADEEFA0 = 0x4033000000000000;
  byte_1EADEEFA8 = 0;
  qword_1EADEEFB0 = 0x4024000000000000;
  unk_1EADEEFB8 = 0x402C000000000000;
  byte_1EADEEFC0 = 0;
  dword_1EADEEFC4 = *&v4[3];
  *algn_1EADEEFC1 = *v4;
  qword_1EADEEFC8 = 0x4036000000000000;
  unk_1EADEEFD0 = 0x403A000000000000;
  byte_1EADEEFD8 = 0;
  *(&dword_1EADEEFD9 + 3) = *&v3[3];
  dword_1EADEEFD9 = *v3;
  qword_1EADEEFE0 = 0x402A000000000000;
  unk_1EADEEFE8 = 0x4034000000000000;
  byte_1EADEEFF0 = 0;
  dword_1EADEEFF1 = *v2;
  *(&dword_1EADEEFF1 + 3) = *&v2[3];
  qword_1EADEEFF8 = 0x402A000000000000;
  unk_1EADEF000 = 0x4034000000000000;
  byte_1EADEF008 = 0;
  dword_1EADEF009 = *v1;
  *(&dword_1EADEF009 + 3) = *&v1[3];
  qword_1EADEF010 = 0x4024000000000000;
  unk_1EADEF018 = 0x402E000000000000;
  byte_1EADEF020 = 0;
  return result;
}

double sub_1920B8310()
{
  xmmword_1EADEF028 = xmmword_19222BE00;
  unk_1EADEF038 = xmmword_19222BDD0;
  result = 40.0;
  xmmword_1EADEF048 = xmmword_19222BE10;
  unk_1EADEF058 = xmmword_19222BDF0;
  qword_1EADEF068 = 0x4042000000000000;
  unk_1EADEF070 = 0x4040000000000000;
  byte_1EADEF078 = 0;
  qword_1EADEF080 = 0x402A000000000000;
  unk_1EADEF088 = 0x4030000000000000;
  byte_1EADEF090 = 0;
  qword_1EADEF098 = 0x402A000000000000;
  unk_1EADEF0A0 = 0x4030000000000000;
  byte_1EADEF0A8 = 0;
  qword_1EADEF0B0 = 0x4026000000000000;
  unk_1EADEF0B8 = 0x402A000000000000;
  byte_1EADEF0C0 = 0;
  qword_1EADEF0C8 = 0x4042000000000000;
  unk_1EADEF0D0 = 0x4043000000000000;
  byte_1EADEF0D8 = 0;
  qword_1EADEF0E0 = 0x402A000000000000;
  unk_1EADEF0E8 = 0x4033000000000000;
  byte_1EADEF0F0 = 0;
  qword_1EADEF0F8 = 0x402A000000000000;
  unk_1EADEF100 = 0x4033000000000000;
  byte_1EADEF108 = 0;
  qword_1EADEF110 = 0x4024000000000000;
  unk_1EADEF118 = 0x402C000000000000;
  byte_1EADEF120 = 0;
  dword_1EADEF124 = *&v4[3];
  *algn_1EADEF121 = *v4;
  qword_1EADEF128 = 0x4042000000000000;
  unk_1EADEF130 = 0x4043000000000000;
  byte_1EADEF138 = 0;
  *(&dword_1EADEF139 + 3) = *&v3[3];
  dword_1EADEF139 = *v3;
  qword_1EADEF140 = 0x402A000000000000;
  unk_1EADEF148 = 0x4034000000000000;
  byte_1EADEF150 = 0;
  dword_1EADEF151 = *v2;
  *(&dword_1EADEF151 + 3) = *&v2[3];
  qword_1EADEF158 = 0x402A000000000000;
  unk_1EADEF160 = 0x4034000000000000;
  byte_1EADEF168 = 0;
  dword_1EADEF169 = *v1;
  *(&dword_1EADEF169 + 3) = *&v1[3];
  qword_1EADEF170 = 0x4024000000000000;
  unk_1EADEF178 = 0x402E000000000000;
  byte_1EADEF180 = 0;
  return result;
}

double sub_1920B8464()
{
  xmmword_1ED748AD0 = xmmword_19222BE20;
  unk_1ED748AE0 = xmmword_19222BE30;
  result = 24.0;
  xmmword_1ED748AF0 = xmmword_19222BE40;
  unk_1ED748B00 = xmmword_19222BDD0;
  qword_1ED748B10 = 0x4038000000000000;
  unk_1ED748B18 = 0x403C000000000000;
  byte_1ED748B20 = 0;
  qword_1ED748B28 = 0x402E000000000000;
  unk_1ED748B30 = 0x4032000000000000;
  byte_1ED748B38 = 0;
  qword_1ED748B40 = 0x402E000000000000;
  unk_1ED748B48 = 0x4032000000000000;
  byte_1ED748B50 = 0;
  qword_1ED748B58 = 0x4026000000000000;
  unk_1ED748B60 = 0x402A000000000000;
  byte_1ED748B68 = 0;
  qword_1ED748B70 = 0x4038000000000000;
  unk_1ED748B78 = 0x403C000000000000;
  byte_1ED748B80 = 0;
  qword_1ED748B88 = 0x402C000000000000;
  unk_1ED748B90 = 0x4034000000000000;
  byte_1ED748B98 = 0;
  qword_1ED748BA0 = 0x402C000000000000;
  unk_1ED748BA8 = 0x4034000000000000;
  byte_1ED748BB0 = 0;
  qword_1ED748BB8 = 0x4024000000000000;
  unk_1ED748BC0 = 0x402C000000000000;
  byte_1ED748BC8 = 0;
  dword_1ED748BCC = *&v4[3];
  *algn_1ED748BC9 = *v4;
  qword_1ED748BD0 = 0x4038000000000000;
  unk_1ED748BD8 = 0x403C000000000000;
  byte_1ED748BE0 = 0;
  *(&dword_1ED748BE1 + 3) = *&v3[3];
  dword_1ED748BE1 = *v3;
  qword_1ED748BE8 = 0x402C000000000000;
  unk_1ED748BF0 = 0x4035000000000000;
  byte_1ED748BF8 = 0;
  dword_1ED748BF9 = *v2;
  *(&dword_1ED748BF9 + 3) = *&v2[3];
  qword_1ED748C00 = 0x402C000000000000;
  unk_1ED748C08 = 0x4035000000000000;
  byte_1ED748C10 = 0;
  dword_1ED748C11 = *v1;
  *(&dword_1ED748C11 + 3) = *&v1[3];
  qword_1ED748C18 = 0x4024000000000000;
  unk_1ED748C20 = 0x402E000000000000;
  byte_1ED748C28 = 0;
  return result;
}

double sub_1920B85B4()
{
  xmmword_1ED748DA8 = xmmword_19222BE50;
  unk_1ED748DB8 = xmmword_19222BE30;
  result = 42.0;
  xmmword_1ED748DC8 = xmmword_19222BE60;
  unk_1ED748DD8 = xmmword_19222BDD0;
  qword_1ED748DE8 = 0x4043000000000000;
  unk_1ED748DF0 = 0x4042000000000000;
  byte_1ED748DF8 = 0;
  qword_1ED748E00 = 0x402E000000000000;
  unk_1ED748E08 = 0x4032000000000000;
  byte_1ED748E10 = 0;
  qword_1ED748E18 = 0x402E000000000000;
  unk_1ED748E20 = 0x4032000000000000;
  byte_1ED748E28 = 0;
  qword_1ED748E30 = 0x4026000000000000;
  unk_1ED748E38 = 0x402A000000000000;
  byte_1ED748E40 = 0;
  qword_1ED748E48 = 0x4043000000000000;
  unk_1ED748E50 = 0x4044000000000000;
  byte_1ED748E58 = 0;
  qword_1ED748E60 = 0x402C000000000000;
  unk_1ED748E68 = 0x4034000000000000;
  byte_1ED748E70 = 0;
  qword_1ED748E78 = 0x402C000000000000;
  unk_1ED748E80 = 0x4034000000000000;
  byte_1ED748E88 = 0;
  qword_1ED748E90 = 0x4024000000000000;
  unk_1ED748E98 = 0x402C000000000000;
  byte_1ED748EA0 = 0;
  dword_1ED748EA4 = *&v4[3];
  *algn_1ED748EA1 = *v4;
  qword_1ED748EA8 = 0x4043000000000000;
  unk_1ED748EB0 = 0x4044000000000000;
  byte_1ED748EB8 = 0;
  *(&dword_1ED748EB9 + 3) = *&v3[3];
  dword_1ED748EB9 = *v3;
  qword_1ED748EC0 = 0x402C000000000000;
  unk_1ED748EC8 = 0x4035000000000000;
  byte_1ED748ED0 = 0;
  dword_1ED748ED1 = *v2;
  *(&dword_1ED748ED1 + 3) = *&v2[3];
  qword_1ED748ED8 = 0x402C000000000000;
  unk_1ED748EE0 = 0x4035000000000000;
  byte_1ED748EE8 = 0;
  dword_1ED748EE9 = *v1;
  *(&dword_1ED748EE9 + 3) = *&v1[3];
  qword_1ED748EF0 = 0x4024000000000000;
  unk_1ED748EF8 = 0x402E000000000000;
  byte_1ED748F00 = 0;
  return result;
}

double sub_1920B8708()
{
  xmmword_1ED749560 = xmmword_19222BE70;
  *algn_1ED749570 = xmmword_19222BE80;
  result = 26.0;
  xmmword_1ED749580 = xmmword_19222BE90;
  unk_1ED749590 = xmmword_19222BEA0;
  qword_1ED7495A0 = 0x403A000000000000;
  unk_1ED7495A8 = 0x403E000000000000;
  byte_1ED7495B0 = 0;
  qword_1ED7495B8 = 0x4031000000000000;
  unk_1ED7495C0 = 0x4034000000000000;
  byte_1ED7495C8 = 0;
  qword_1ED7495D0 = 0x4031000000000000;
  unk_1ED7495D8 = 0x4034000000000000;
  byte_1ED7495E0 = 0;
  qword_1ED7495E8 = 0x402A000000000000;
  unk_1ED7495F0 = 0x402E000000000000;
  byte_1ED7495F8 = 0;
  qword_1ED749600 = 0x403A000000000000;
  unk_1ED749608 = 0x403E000000000000;
  byte_1ED749610 = 0;
  qword_1ED749618 = 0x402E000000000000;
  unk_1ED749620 = 0x4035000000000000;
  byte_1ED749628 = 0;
  qword_1ED749630 = 0x402E000000000000;
  unk_1ED749638 = 0x4035000000000000;
  byte_1ED749640 = 0;
  qword_1ED749648 = 0x4026000000000000;
  unk_1ED749650 = 0x4030000000000000;
  byte_1ED749658 = 0;
  dword_1ED74965C = *&v4[3];
  *algn_1ED749659 = *v4;
  qword_1ED749660 = 0x403A000000000000;
  unk_1ED749668 = 0x403E000000000000;
  byte_1ED749670 = 0;
  *(&dword_1ED749671 + 3) = *&v3[3];
  dword_1ED749671 = *v3;
  qword_1ED749678 = 0x402E000000000000;
  unk_1ED749680 = 0x4036800000000000;
  byte_1ED749688 = 0;
  dword_1ED749689 = *v2;
  *(&dword_1ED749689 + 3) = *&v2[3];
  qword_1ED749690 = 0x402E000000000000;
  unk_1ED749698 = 0x4036800000000000;
  byte_1ED7496A0 = 0;
  dword_1ED7496A1 = *v1;
  *(&dword_1ED7496A1 + 3) = *&v1[3];
  qword_1ED7496A8 = 0x4026000000000000;
  unk_1ED7496B0 = 0x4031000000000000;
  byte_1ED7496B8 = 0;
  return result;
}

double sub_1920B885C()
{
  xmmword_1ED748F18 = xmmword_19222BEB0;
  unk_1ED748F28 = xmmword_19222BE80;
  result = 44.0;
  xmmword_1ED748F38 = xmmword_19222BEC0;
  unk_1ED748F48 = xmmword_19222BEA0;
  qword_1ED748F58 = 0x4044000000000000;
  unk_1ED748F60 = 0x4043000000000000;
  byte_1ED748F68 = 0;
  qword_1ED748F70 = 0x4031000000000000;
  unk_1ED748F78 = 0x4034000000000000;
  byte_1ED748F80 = 0;
  qword_1ED748F88 = 0x4031000000000000;
  unk_1ED748F90 = 0x4034000000000000;
  byte_1ED748F98 = 0;
  qword_1ED748FA0 = 0x402A000000000000;
  unk_1ED748FA8 = 0x402E000000000000;
  byte_1ED748FB0 = 0;
  qword_1ED748FB8 = 0x4044000000000000;
  unk_1ED748FC0 = 0x4045000000000000;
  byte_1ED748FC8 = 0;
  qword_1ED748FD0 = 0x402E000000000000;
  unk_1ED748FD8 = 0x4035000000000000;
  byte_1ED748FE0 = 0;
  qword_1ED748FE8 = 0x402E000000000000;
  unk_1ED748FF0 = 0x4035000000000000;
  byte_1ED748FF8 = 0;
  qword_1ED749000 = 0x4026000000000000;
  unk_1ED749008 = 0x4030000000000000;
  byte_1ED749010 = 0;
  dword_1ED749014 = *&v4[3];
  *algn_1ED749011 = *v4;
  qword_1ED749018 = 0x4044000000000000;
  unk_1ED749020 = 0x4045000000000000;
  byte_1ED749028 = 0;
  *(&dword_1ED749029 + 3) = *&v3[3];
  dword_1ED749029 = *v3;
  qword_1ED749030 = 0x402E000000000000;
  unk_1ED749038 = 0x4036800000000000;
  byte_1ED749040 = 0;
  dword_1ED749041 = *v2;
  *(&dword_1ED749041 + 3) = *&v2[3];
  qword_1ED749048 = 0x402E000000000000;
  unk_1ED749050 = 0x4036800000000000;
  byte_1ED749058 = 0;
  dword_1ED749059 = *v1;
  *(&dword_1ED749059 + 3) = *&v1[3];
  qword_1ED749060 = 0x4026000000000000;
  unk_1ED749068 = 0x4031000000000000;
  byte_1ED749070 = 0;
  return result;
}

double sub_1920B89DC(unsigned __int8 a1)
{
  (*(v1 + 200))(v10);
  if (qword_1ED74A010 != -1)
  {
    swift_once();
  }

  v3 = byte_1ED74C7A8;
  if (qword_1ED7499A8 != -1)
  {
    swift_once();
  }

  v4 = off_1ED7499B0;
  v5 = *(off_1ED7499B0 + 2);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = v4[24];
  if (v7 == 5)
  {
    v8 = sub_192225200();
    LOBYTE(v7) = sub_1921981B0(v8);

    v4[24] = v7;
  }

  os_unfair_lock_unlock(*(v5 + 16));

  return sub_1920B7FC8(a1, v3, v7);
}

double sub_1920B8B18(uint64_t a1)
{
  v3 = sub_192226F10();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6980EE8] || v8 == *MEMORY[0x1E6980F00] || v8 == *MEMORY[0x1E6980F08] || v8 == *MEMORY[0x1E6980F10])
  {
    (*(v1 + 208))();
  }

  else if (v8 == *MEMORY[0x1E6980F38])
  {
    sub_192226E40();
  }

  else if (v8 == *MEMORY[0x1E6980EF0] || v8 == *MEMORY[0x1E6980EF8] || v8 == *MEMORY[0x1E6980F18])
  {
    sub_192226E30();
  }

  else if (v8 == *MEMORY[0x1E6980F30] || v8 == *MEMORY[0x1E6980F20] || v8 == *MEMORY[0x1E6980F28])
  {
    sub_192226E20();
  }

  else
  {
    sub_192226E30();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    return v18;
  }

  return result;
}

unint64_t sub_1920B8D54(void **a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19222B480;
  v7 = *a1;
  *(inited + 32) = *a1;
  *(inited + 64) = a2;
  *(inited + 40) = a3;
  v8 = v7;
  v9 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192076558(inited + 32);
  return v9;
}

void *sub_1920B8E64@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1EADEE8A8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1EADEEEC8, 0x159uLL);
}

void *sub_1920B8F00@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1EADEE8B0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1EADEF028, 0x159uLL);
}

void *sub_1920B8F9C@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED748AC8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED748AD0, 0x159uLL);
}

void *sub_1920B9038@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED748DA0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED748DA8, 0x159uLL);
}

void *sub_1920B90D4@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED749558 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED749560, 0x159uLL);
}

void *sub_1920B9170@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED748F10 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED748F18, 0x159uLL);
}

uint64_t WidgetTexture.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t _s9WidgetKit11ControlSizeV7StorageO9hashValueSivg_0()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_1920B9414()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

unint64_t sub_1920B945C()
{
  result = qword_1EADEF198;
  if (!qword_1EADEF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF198);
  }

  return result;
}

unint64_t sub_1920B94D4()
{
  result = qword_1EADEF1A0;
  if (!qword_1EADEF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1A0);
  }

  return result;
}

unint64_t sub_1920B9528()
{
  result = qword_1EADEF1A8;
  if (!qword_1EADEF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1A8);
  }

  return result;
}

uint64_t type metadata accessor for ActivityViewCollection(uint64_t a1)
{
  result = qword_1EADED820;
  if (!qword_1EADED820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1920B95FC(uint64_t a1)
{
  sub_1920B96B8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityMetricsDefinition(319);
    if (v2 <= 0x3F)
    {
      sub_1920B9710();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1920B96B8(uint64_t a1)
{
  if (!qword_1EADED8B0)
  {
    type metadata accessor for JindoViewCollection(255);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADED8B0);
    }
  }
}

void sub_1920B9710()
{
  if (!qword_1ED74AF50)
  {
    v0 = sub_192227C40();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74AF50);
    }
  }
}

unint64_t sub_1920B9764()
{
  result = qword_1EADEF1B8;
  if (!qword_1EADEF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF1C0, &unk_192232A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1B8);
  }

  return result;
}

uint64_t sub_1920B97C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v108 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C8, &qword_19222C230);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = (&v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v96 = (&v92 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v107 = (&v92 - v17);
  v102 = type metadata accessor for JindoViewStates(0);
  v111 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v94 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v106);
  v20 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ActivityMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ActivityViewStates(0);
  MEMORY[0x1EEE9AC00](v24);
  v98 = (&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v93 = (&v92 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v92 - v29;
  v30 = type metadata accessor for ActivityViewCollection(0);
  v31 = v30[5];
  KeyPath = swift_getKeyPath();
  v33 = sub_19209A170(KeyPath);

  if (v33)
  {
    if (*(v33 + 16))
    {
      v34 = *(v33 + 32);
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 1;
  }

  v35 = v34 | ~sub_19206CB1C(v34, *(v2 + v30[8]));
  v36 = *(v2 + v30[6]);
  sub_1920BA32C(v2 + v30[7], v23, type metadata accessor for ActivityMetricsDefinition);
  v37 = *(v2 + v31);
  v38 = v24[8];
  v105 = v30;
  v39 = v112;
  v112[v38] = 0;
  *&v39[v24[9]] = MEMORY[0x1E69E7CC8];
  v109 = v2;
  v40 = v24[10];
  v41 = type metadata accessor for MetricsRequest(0);
  (*(*(v41 - 8) + 56))(&v39[v40], 1, 1, v41);
  v42 = v24[11];
  v43 = sub_1922261D0();
  (*(*(v43 - 8) + 56))(&v39[v42], 1, 1, v43);
  sub_1920BA32C(v23, &v39[v24[6]], type metadata accessor for ActivityMetricsDefinition);
  v39[v24[12]] = v35 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1D0, &qword_19222C260);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_19222B480;
  *(v44 + 32) = v36;
  v45 = v37;

  v46 = v109;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v20 = v45;
  sub_19209C05C(v20);
  v48 = v47;
  sub_19205BCCC(v20, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_19205BCCC(v23, type metadata accessor for ActivityMetricsDefinition);
  v49 = &v39[v24[7]];
  *v49 = v44;
  v49[1] = v48;
  *v39 = *(v48 + 16);
  *(v39 + 1) = v45;
  v50 = v108;
  sub_1920BA2BC(v46, v108);
  v51 = type metadata accessor for JindoViewCollection(0);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    sub_192033970(v50, &qword_1EADEF1B0, qword_19222C1D0);
    v52 = *(v111 + 56);
    v53 = v107;
    v54 = v102;
    v52(v107, 1, 1, v102);
    sub_192033970(v53, &qword_1EADEF1C8, &qword_19222C230);
    v55 = v46;
    v56 = v98;
    sub_1920BA32C(v39, v98, type metadata accessor for ActivityViewStates);
    v57 = v99;
    v52(v99, 1, 1, v54);
    v58 = v104;
    v59 = v55 + v105[9];
    v60 = *(v59 + 8);
    v109 = *v59;
    v105 = v60;
    LODWORD(v108) = *(v59 + 16);
    LODWORD(v107) = *(v59 + 17);
    LODWORD(v106) = *(v59 + 18);
    v61 = v103;
    v62 = *(v103 + 60);
    v52(&v104[v62], 1, 1, v54);
    v58[v61[16]] = 1;
    sub_1920BA32C(v56, &v58[v61[14]], type metadata accessor for ActivityViewStates);
    v63 = v105;

    sub_1920BA394(v57, &v58[v62]);
    v64 = *v56;
    sub_19205BCCC(v56, type metadata accessor for ActivityViewStates);
    *(v58 + 1) = v64;
    v65 = &v58[v61[17]];
    *v65 = v109;
    *(v65 + 1) = v63;
    v65[16] = v108;
    v65[17] = v107;
    v65[18] = v106;
    v66 = v100;
    sub_19204E300(v57, v100, &qword_1EADEF1C8, &qword_19222C230);
    if ((*(v111 + 48))(v66, 1, v54) == 1)
    {
      result = sub_192033970(v66, &qword_1EADEF1C8, &qword_19222C230);
      v68 = 0;
    }

    else
    {
      v68 = *v66;
      result = sub_19205BCCC(v66, type metadata accessor for JindoViewStates);
    }

    v73 = v64 + v68;
    v50 = v112;
    if (!__OFADD__(v64, v68))
    {
      v74 = v104;
LABEL_20:
      *v74 = v73;
      sub_19204E300(v74, v101, &qword_1EADEF1C0, &unk_192232A90);
      v72 = type metadata accessor for ActivityViewStates;
      return sub_19205BCCC(v50, v72);
    }

    __break(1u);
  }

  else
  {
    v69 = v105;
    v70 = v107;
    v71 = v110;
    sub_192191874(v107);
    if (v71)
    {
      sub_19205BCCC(v39, type metadata accessor for ActivityViewStates);
      v72 = type metadata accessor for JindoViewCollection;
      return sub_19205BCCC(v50, v72);
    }

    v110 = 0;
    sub_19205BCCC(v50, type metadata accessor for JindoViewCollection);
    v75 = *(v111 + 56);
    v76 = v102;
    v75(v70, 0, 1, v102);
    v77 = v70;
    v78 = v94;
    sub_1920BA404(v77, v94);
    v79 = v93;
    sub_1920BA32C(v39, v93, type metadata accessor for ActivityViewStates);
    v80 = v95;
    sub_1920BA404(v78, v95);
    v75(v80, 0, 1, v76);
    v81 = v109 + v69[9];
    v82 = *(v81 + 8);
    v109 = *v81;
    v105 = v82;
    LODWORD(v108) = *(v81 + 16);
    LODWORD(v107) = *(v81 + 17);
    LODWORD(v106) = *(v81 + 18);
    v83 = v103;
    v84 = *(v103 + 60);
    v85 = v97;
    v75(&v97[v84], 1, 1, v76);
    *(v85 + v83[16]) = 1;
    sub_1920BA32C(v79, v85 + v83[14], type metadata accessor for ActivityViewStates);
    v86 = v105;

    sub_1920BA394(v80, v85 + v84);
    v87 = *v79;
    sub_19205BCCC(v79, type metadata accessor for ActivityViewStates);
    v85[1] = v87;
    v88 = v85 + v83[17];
    *v88 = v109;
    *(v88 + 1) = v86;
    v88[16] = v108;
    v88[17] = v107;
    v88[18] = v106;
    v89 = v96;
    sub_19204E300(v80, v96, &qword_1EADEF1C8, &qword_19222C230);
    if ((*(v111 + 48))(v89, 1, v76) == 1)
    {
      result = sub_192033970(v89, &qword_1EADEF1C8, &qword_19222C230);
      v90 = 0;
    }

    else
    {
      v90 = *v89;
      result = sub_19205BCCC(v89, type metadata accessor for JindoViewStates);
    }

    v91 = __OFADD__(v87, v90);
    v73 = v87 + v90;
    v50 = v112;
    if (!v91)
    {
      v74 = v85;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1920BA2BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920BA32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920BA394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C8, &qword_19222C230);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920BA404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JindoViewStates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920BA468()
{
  dyld_get_active_platform();
  base_platform = dyld_get_base_platform();
  result = dyld_get_program_sdk_version();
  LODWORD(qword_1ED74BAA0) = base_platform;
  HIDWORD(qword_1ED74BAA0) = result;
  return result;
}

uint64_t (*static SystemVersion.currentProcessSDKVersion.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1920BA574()
{
  result = dyld_get_program_sdk_version();
  dword_1EADEF1D8 = -1;
  *algn_1EADEF1DC = result;
  return result;
}

double sub_1920BA5C0@<D0>(void *a1@<X0>, double *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a2;
  *a4 = *a2;
  return result;
}

uint64_t sub_1920BA644(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = v5;
  return result;
}

uint64_t (*static SystemVersion.currentProcessSDKVersionForAnyPlatforms.modify(uint64_t a1))(uint64_t)
{
  if (qword_1EADEE8C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1920BA734@<D0>(void *a1@<X3>, double *a2@<X4>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a2;
  *a4 = *a2;
  return result;
}

uint64_t sub_1920BA798(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v8;
  return result;
}

uint64_t sub_1920BA800()
{
  result = getWKSystemVersionSDK_AzulE();
  qword_1EADEF1E0 = result;
  return result;
}

uint64_t sub_1920BA848()
{
  result = getWKSystemVersionSDK_Sky();
  qword_1ED74C3B8 = result;
  return result;
}

uint64_t sub_1920BA890()
{
  result = getWKSystemVersionSDK_Sydney();
  qword_1ED74A640 = result;
  return result;
}

uint64_t sub_1920BA8D8()
{
  result = getWKSystemVersionSDK_SydneyC();
  qword_1EADEDA48 = result;
  return result;
}

uint64_t sub_1920BA944()
{
  result = getWKSystemVersionSDK_DawnC();
  qword_1ED749268 = result;
  return result;
}

uint64_t sub_1920BA98C()
{
  result = getWKSystemVersionSDK_Crystal();
  qword_1ED749D60 = result;
  return result;
}

uint64_t sub_1920BA9D4()
{
  result = getWKSystemVersionSDK_CrystalE();
  qword_1EADEDA38 = result;
  return result;
}

uint64_t sub_1920BAA40()
{
  result = getWKSystemVersionSDK_LuckB();
  qword_1EADEF1E8 = result;
  return result;
}

double sub_1920BAA88@<D0>(void *a1@<X0>, double *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

uint64_t SystemVersion.description.getter()
{
  sub_1920BAB98();
  v2 = sub_192227A40();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v0 = sub_192227A40();
  MEMORY[0x193B0A990](v0);

  return v2;
}

unint64_t sub_1920BAB98()
{
  result = qword_1EADEF1F0;
  if (!qword_1EADEF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1F0);
  }

  return result;
}

void SystemVersion.forAnyPlatform()(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = -1;
  a1[1] = v2;
}

uint64_t sub_1920BAC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7038067 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_1920BAD10(uint64_t a1)
{
  v2 = sub_19203D1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920BAD4C(uint64_t a1)
{
  v2 = sub_19203D1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1F8, &qword_19222C268);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203D1C8();
  sub_192228B90();
  v12 = 0;
  sub_1922288E0();
  if (!v2)
  {
    v11 = 1;
    sub_1922288E0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SystemVersion.hashValue.getter()
{
  sub_192228AD0();
  sub_192228B00();
  sub_192228B00();
  return sub_192228B30();
}

uint64_t sub_1920BAFC0()
{
  sub_192228AD0();
  sub_192228B00();
  sub_192228B00();
  return sub_192228B30();
}

uint64_t sub_1920BB058()
{
  sub_192228AD0();
  sub_192228B00();
  sub_192228B00();
  return sub_192228B30();
}

unint64_t sub_1920BB0B4()
{
  result = qword_1EADEF208;
  if (!qword_1EADEF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF208);
  }

  return result;
}

uint64_t sub_1920BB108()
{
  sub_1920BAB98();
  v2 = sub_192227A40();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v0 = sub_192227A40();
  MEMORY[0x193B0A990](v0);

  return v2;
}

unint64_t sub_1920BB1F8()
{
  result = qword_1EADEF210;
  if (!qword_1EADEF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF210);
  }

  return result;
}

uint64_t WidgetViewMetadata.cornerGaugeSegmented.setter(char a1)
{
  result = type metadata accessor for WidgetViewMetadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t WidgetViewMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetViewMetadata(0);
  v3 = v2[7];
  v4 = sub_192225020();
  v10 = *(*(v4 - 8) + 56);
  v10(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = sub_192226BA0();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v8 = v2[9];
  v7(a1 + v8, 1, 1, v6);
  v11 = v2[10];
  *a1 = 0;
  *(a1 + 2) = 0;
  sub_192033970(a1 + v3, &qword_1EADEEE10, &unk_19222B630);
  v10(a1 + v3, 1, 1, v4);
  sub_192033970(a1 + v5, &qword_1EADEF218, &qword_19223B3F0);
  v7(a1 + v5, 1, 1, v6);
  sub_192033970(a1 + v8, &qword_1EADEF218, &qword_19223B3F0);
  result = (v7)(a1 + v8, 1, 1, v6);
  *(a1 + v11) = 2;
  return result;
}

uint64_t sub_1920BB7C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920BBBF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920BB7FC(uint64_t a1)
{
  v2 = sub_19204D70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920BB838(uint64_t a1)
{
  v2 = sub_19204D70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetViewMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF220, &qword_19222C4B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204D70C();
  sub_192228B90();
  v15 = 0;
  sub_192228870();
  if (!v1)
  {
    v14 = 1;
    sub_192228870();
    v13 = 2;
    sub_192228840();
    type metadata accessor for WidgetViewMetadata(0);
    v12 = 3;
    sub_192225020();
    sub_19203D6B4(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_192228850();
    v11 = 4;
    sub_192226BA0();
    sub_19203D6B4(&qword_1ED74AE98, MEMORY[0x1E697CB40], MEMORY[0x1E697CB48]);
    sub_192228850();
    v10 = 5;
    sub_192228850();
    v9 = 6;
    sub_192228840();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1920BBB9C()
{
  result = qword_1EADEF230;
  if (!qword_1EADEF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF230);
  }

  return result;
}

uint64_t sub_1920BBBF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000192249630 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000192249650 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000192249670 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000192249690 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001922496B0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001922496D0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1922289A0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t WidgetEnvironment.matches(_:ignoring:)(char *a1, char *a2)
{
  v5 = *v2;
  v6 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (*(*(v5 + v6) + 16))
  {
    WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, a2);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1920BBEE4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_19207F348(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_19205BD2C(v10, type metadata accessor for WidgetDescriptor);
      }

      if (v14)
      {
        break;
      }

      sub_19205BD2C(v10, type metadata accessor for WidgetDescriptor);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1920C55EC(v10, v18, type metadata accessor for WidgetDescriptor);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1920BC09C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v55 = a3;
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v54 - v10;
  v11 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - v16;
  v18 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202CFFC(v66, v17, &qword_1EADEF258, &qword_19222C6C8);
  v58 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator;
  v22 = v14;
  v56 = v14;
  sub_1920C55EC(v17, v14, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v23 = *v14;
  v24 = *(v12 + 28);
  v25 = *(v19 + 28);
  v57 = v4;
  v26 = *(v4 + 16);
  v65 = v25;
  v66 = v3;
  v63 = v26;
  v64 = v4 + 16;
  v26(&v21[v25], v22 + v24, v3);
  v27 = v23;
  v29 = sub_192056208(MEMORY[0x1E69E7CC0], v28);
  v68 = v27;
  v30 = v27;

  sub_192056340(&v68, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *v21 = v32;
  *(v21 + 1) = v34;
  *(v21 + 2) = v36;
  sub_19205BD2C(v56, v58);
  if (v34 >> 62)
  {
LABEL_28:
    v37 = sub_192228340();
  }

  else
  {
    v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v66;
  if (v37 >= 1)
  {
    v39 = (v57 + 32);
    v58 = (v57 + 8);
    while (1)
    {

      if ((sub_19205F34C(v37 - 1, v40) & 1) == 0)
      {

        v41 = MEMORY[0x1E69E7CC0];
        *v21 = MEMORY[0x1E69E7CC0];

        *(v21 + 1) = v41;

        *(v21 + 2) = v41;
      }

      v63(v8, &v21[v65], v38);
      if (v34 >> 62)
      {
        v42 = sub_192228340();
        if (!v42)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v42 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
          goto LABEL_16;
        }
      }

      if (v42 < 1)
      {
        __break(1u);
        goto LABEL_28;
      }

      for (i = 0; i != v42; ++i)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x193B0B410](i, v34);
        }

        else
        {
          v44 = *(v34 + 8 * i + 32);
        }

        (*(**(v44 + 16) + 112))(v8);
      }

LABEL_16:

      v45 = *v39;
      v46 = v59;
      v38 = v66;
      (*v39)(v59, v8, v66);
      v47 = v60;
      v45(v60, v46, v38);
      v48 = v67;
      v49 = v61(v47);
      if (v48)
      {
        (*v58)(v47, v38);
        return sub_19205BD2C(v21, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
      }

      if (v49)
      {
        sub_19205BD2C(v21, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
        v53 = v55;
        v45(v55, v47, v38);
        v51 = v53;
        v50 = 0;
        return (*(v57 + 56))(v51, v50, 1, v38);
      }

      v67 = 0;
      (*v58)(v47, v38);
      v34 = *(v21 + 1);
      if (v34 >> 62)
      {
        v37 = sub_192228340();
        if (v37 <= 0)
        {
          break;
        }
      }

      else
      {
        v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37 <= 0)
        {
          break;
        }
      }
    }
  }

  sub_19205BD2C(v21, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  v50 = 1;
  v51 = v55;
  return (*(v57 + 56))(v51, v50, 1, v38);
}

uint64_t WidgetEnvironment.environmentValues(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v62 = a2;
  v67 = sub_1922261D0();
  v63 = *(v67 - 8);
  v69 = v63;
  MEMORY[0x1EEE9AC00](v67);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v58 - v6;
  v65 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v65);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF260, &qword_19222C6D0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v58 - v13);
  v15 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v21 = *v2;
  v22 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (!*(*&v21[v22] + 16))
  {
    return (v69[7])(v62, 1, 1, v67);
  }

  v60 = v20;
  v23 = v69;
  result = _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v14 = v21;
  if (v68 < 0)
  {
    goto LABEL_26;
  }

  *(v14 + *(v12 + 36)) = v68;
  v59 = v14;
  sub_19202CFFC(v14, v11, &qword_1EADEF258, &qword_19222C6C8);
  v61 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator;
  sub_1920C55EC(v11, v8, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v25 = *v8;
  v26 = *(v65 + 20);
  v27 = *(v15 + 20);
  v28 = v23 + 2;
  v64 = v23[2];
  v65 = v27;
  v29 = v67;
  v69 = v28;
  v64(&v17[v27], v8 + v26, v67);
  v30 = v21;
  v31 = v25;
  v33 = sub_192056208(MEMORY[0x1E69E7CC0], v32);
  v70 = v31;
  v34 = v31;

  sub_192056340(&v70, v33);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v29;

  *v17 = v36;
  *(v17 + 1) = v38;
  *(v17 + 2) = v40;
  sub_19205BD2C(v8, v61);
  if (!v68)
  {
LABEL_22:
    v54 = &unk_1EADEF260;
    v55 = &qword_19222C6D0;
    v56 = v59;
LABEL_23:
    sub_192033970(v56, v54, v55);
    v57 = v60;
    sub_1920C55EC(v17, v60, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
    WidgetEnvironment.EnvironmentValuesEnumerator.Iterator.next()(v62);
    return sub_19205BD2C(v57, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  }

  v42 = 0;
  v43 = (v63 + 4);
  v63 += 7;
  while (1)
  {
    v45 = *(v17 + 1);
    if (v45 >> 62)
    {
      v46 = sub_192228340();
      if (v46 <= 0)
      {
LABEL_21:
        sub_192033970(v59, &unk_1EADEF260, &qword_19222C6D0);
        v53 = v66;
        (*v63)(v66, 1, 1, v41);
        v54 = &qword_1EADEF250;
        v55 = &qword_19222C6C0;
        v56 = v53;
        goto LABEL_23;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46 <= 0)
      {
        goto LABEL_21;
      }
    }

    v47 = v46 - 1;

    if ((sub_19205F34C(v47, v48) & 1) == 0)
    {

      v49 = MEMORY[0x1E69E7CC0];
      *v17 = MEMORY[0x1E69E7CC0];

      *(v17 + 1) = v49;

      *(v17 + 2) = v49;
    }

    result = (v64)(v4, &v17[v65], v41);
    if (v45 >> 62)
    {
      break;
    }

    v50 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_14;
    }

LABEL_5:

    v44 = v66;
    v41 = v67;
    (*v43)(v66, v4, v67);
    (*v63)(v44, 0, 1, v41);
    sub_192033970(v44, &qword_1EADEF250, &qword_19222C6C0);
    if (++v42 == v68)
    {
      goto LABEL_22;
    }
  }

  result = sub_192228340();
  v50 = result;
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_14:
  if (v50 >= 1)
  {
    for (i = 0; i != v50; ++i)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x193B0B410](i, v45);
      }

      else
      {
        v52 = *(v45 + 8 * i + 32);
      }

      (*(**(v52 + 16) + 112))(v4);
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1920BCCB0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_192224EA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF500, &unk_19222D8E0);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_19202CFFC(v13, v10, &qword_1EADEECD0, &qword_1922363D0);
    sub_19202CFFC(v29, &v10[v16], &qword_1EADEECD0, &qword_1922363D0);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_19202CFFC(v10, v30, &qword_1EADEECD0, &qword_1922363D0);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1920C80A8(&qword_1EADECF18, 255, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
    v26 = sub_192227910();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_192033970(v10, &qword_1EADEECD0, &qword_1922363D0);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_192033970(v10, &qword_1EADEF500, &unk_19222D8E0);
    goto LABEL_5;
  }

  sub_192033970(v10, &qword_1EADEECD0, &qword_1922363D0);
  return 1;
}

uint64_t sub_1920BD078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_192033970(a1, &qword_1EADEED10, &unk_19222B0F0);
    sub_1921E0E14(a2, a3, v9);

    return sub_192033970(v9, &qword_1EADEED10, &unk_19222B0F0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_19213E56C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1920BD250@<X0>(uint64_t a1@<X0>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
  *a5 = a1;
  sub_192228430();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v7 = sub_192228910();
  MEMORY[0x193B0A990](v7);

  sub_192228480();
  v8 = *MEMORY[0x1E69E6AF8];
  v9 = sub_1922284A0();
  return (*(*(v9 - 8) + 104))(a5, v8, v9);
}

double sub_1920BD3C0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;

  sub_19207762C(v4, v3);

  return result;
}

uint64_t sub_1920BD420(void *a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (v6)
    {
      MEMORY[0x1EEE9AC00](v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECB0, &unk_19222B0A0);
      sub_192031E74(&qword_1ED748A58, &qword_1EADEECB0, &unk_19222B0A0, MEMORY[0x1E69E6328]);
      v8 = sub_192227A90();
    }

    else
    {

      return 0;
    }

    return v8;
  }

  else
  {
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
    sub_192228580();
    sub_192228970();
    result = sub_192228620();
    __break(1u);
  }

  return result;
}

double (*WidgetEnvironment.subscript.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = sub_1920BD420(a2);
  return sub_1920BD724;
}

double sub_1920BD724(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_19207762C(v3, v2);
  }

  else
  {

    sub_19207762C(v3, v2);
  }

  return result;
}

Swift::Void __swiftcall WidgetEnvironment.filterForExtensions()()
{
  KeyPath = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, KeyPath);

  v1 = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, v1);
}

double WidgetEnvironment.filteredForExtensions()@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  *a1 = v2;
  KeyPath = swift_getKeyPath();
  v4 = v2;
  sub_1920537A8();
  sub_19204C8C0(0, KeyPath);

  v5 = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, v5);

  return result;
}

Swift::Void __swiftcall WidgetEnvironment.filterForControlArchiving()()
{
  WidgetEnvironment.filterForArchiving()();
  KeyPath = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, KeyPath);

  v1 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920C5B1C(0, v1);

  v2 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920C5E74(0, v2);

  v3 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920C61CC(0, v3);

  v4 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920583A4(0, v4);

  v5 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920C65A4(0, v5);

  v6 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920C5654(0, v6);
}

Swift::Void __swiftcall WidgetEnvironment.filterForArchiving()()
{
  KeyPath = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, KeyPath);

  v1 = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, v1);

  v2 = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, v2);

  v3 = swift_getKeyPath();
  sub_1920537A8();
  sub_19204CC80(0, v3);

  v4 = swift_getKeyPath();
  sub_1920537A8();
  sub_19204C8C0(0, v4);

  v5 = swift_getKeyPath();
  sub_1920537A8();
  sub_1920C5654(0, v5);
}

void WidgetEnvironment.filteredForControlArchiving()(void **a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = v3;
  WidgetEnvironment.filterForControlArchiving()();
}

void *sub_1920BDBDC@<X0>(_BYTE *a1@<X8>)
{
  sub_1920C86F0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void WidgetEnvironment.filteredForArchiving()(void **a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = v3;
  WidgetEnvironment.filterForArchiving()();
}

uint64_t sub_1920BDCEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226000();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDD9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226010();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDDF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226070();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19202CFFC(a1, &v5 - v3, &qword_1EADEF290, &qword_19222CA80);
  return sub_192225F50();
}

uint64_t sub_1920BE058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192225FB0();
  *a1 = result & 1;
  return result;
}

void sub_1920BE0D8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v11 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = &property descriptor for StorageBackedControlArchive.state;
  v52 = v5 + 64;
  v53 = v5;
  v51 = v11;
  v56 = v10;
  v54 = v2;
  if (v9)
  {
    while (1)
    {
      v14 = v2;
LABEL_9:
      v16 = __clz(__rbit64(v9)) | (v12 << 6);
      v17 = (*(v5 + 48) + 24 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = objc_allocWithZone(MEMORY[0x1E695DFA0]);
      v57 = v18;

      v23 = v21;
      v59 = [v22 v13[372]];
      swift_beginAccess();
      v24 = *(v14 + v56);
      v58 = v19;
      if (*(v24 + 16) && (v25 = sub_19204437C(v19, v20), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        [v59 unionOrderedSet_];
      }

      else
      {
        swift_endAccess();
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E695DFB8]) v13[372]];
      v2 = v54;
      swift_beginAccess();
      if (v28)
      {
        break;
      }

      v42 = sub_19204437C(v58, v20);
      if (v43)
      {
        v44 = v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v54 + v56);
        *(v54 + v56) = 0x8000000000000000;
        v6 = v52;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_19207804C();
        }

        sub_1920781D4(v44, v46);

        *(v54 + v56) = v46;
        v5 = v53;
        goto LABEL_31;
      }

      v5 = v53;
LABEL_30:
      v6 = v52;
LABEL_31:
      v9 &= v9 - 1;
      swift_endAccess();

      v13 = &property descriptor for StorageBackedControlArchive.state;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v55 = v23;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v54 + v56);
    *(v54 + v56) = 0x8000000000000000;
    v31 = sub_19204437C(v58, v20);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_35;
    }

    v37 = v32;
    if (v30[3] >= v36)
    {
      if ((v29 & 1) == 0)
      {
        v50 = v31;
        sub_19207804C();
        v31 = v50;
      }

      v38 = v58;
      if (v37)
      {
LABEL_18:
        v40 = v30[7];
        v41 = *(v40 + 8 * v31);
        *(v40 + 8 * v31) = v28;

LABEL_28:
        v2 = v54;
        v23 = v55;
        *(v54 + v56) = v30;
        v5 = v53;
        v11 = v51;
        goto LABEL_30;
      }
    }

    else
    {
      sub_1920454D4(v36, v29);
      v38 = v58;
      v31 = sub_19204437C(v58, v20);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      if (v37)
      {
        goto LABEL_18;
      }
    }

    v30[(v31 >> 6) + 8] |= 1 << v31;
    v47 = (v30[6] + 24 * v31);
    *v47 = v57;
    v47[1] = v38;
    v47[2] = v20;
    *(v30[7] + 8 * v31) = v28;
    v48 = v30[2];
    v35 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v35)
    {
      goto LABEL_36;
    }

    v30[2] = v49;
    goto LABEL_28;
  }

LABEL_5:
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v14 = v2;
      v12 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_192228A40();
  __break(1u);
}

uint64_t WidgetEnvironment.DifferenceUsage.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_1920BE5A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8, __n128 a9)
{
  v51 = a3;
  v50 = &v51;
  result = sub_192071474(sub_192071BAC, a9, v49, a6);
  if ((result & 1) != 0 || !a4)
  {
    return result;
  }

  v16 = 0;
  v17 = a5 & 1;
  v18 = *(a4 + 16);
  v19 = (a4 + 32);
  while (v18 != v16)
  {
    v20 = v19[v16++];
    if (v20 == (a5 & 1))
    {
      return result;
    }
  }

  v48 = a1;
  if (v18)
  {
    v47 = a2;
    v54 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v18, 0);
    v21 = v54;
    do
    {
      v22 = *v19;
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v22;
      result = sub_1922285A0();
      v23 = v51;
      v24 = v52;
      v54 = v21;
      v26 = v21[2];
      v25 = v21[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        result = sub_192071C64((v25 > 1), v26 + 1, 1);
        v21 = v54;
      }

      v21[2] = v27;
      v28 = &v21[2 * v26];
      v28[4] = v23;
      v28[5] = v24;
      ++v19;
      --v18;
    }

    while (v18);
    v17 = a5 & 1;
    a2 = v47;
    if (v27 > 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v29 = a2;
    v34 = v21[4];
    v33 = v21[5];

    goto LABEL_17;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v27 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v27 <= 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v29 = a2;
  v51 = 91;
  v52 = 0xE100000000000000;
  v54 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v30 = sub_1922278A0();
  v32 = v31;

  MEMORY[0x193B0A990](v30, v32);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v34 = v51;
  v33 = v52;
LABEL_17:
  if (a7)
  {
    v35 = 0x64657269736564;
  }

  else
  {
    v35 = 7824750;
  }

  if (a7)
  {
    v36 = 0xE700000000000000;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  if (a7)
  {
    v37 = 0x6C62616C69617661;
  }

  else
  {
    v37 = 6581359;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  if (a7)
  {
    v38 = 0xE900000000000065;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  sub_192228400();

  v51 = v48;
  v52 = v29;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v37, v38);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v34, v33);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v35, v36);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v54) = v17;
  v39 = sub_192227990();
  MEMORY[0x193B0A990](v39);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v40 = v51;
  v41 = v52;
  swift_beginAccess();
  v42 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_192071CD0(0, *(v42 + 2) + 1, 1, v42);
    *(a8 + 16) = v42;
  }

  v45 = *(v42 + 2);
  v44 = *(v42 + 3);
  if (v45 >= v44 >> 1)
  {
    v42 = sub_192071CD0((v44 > 1), v45 + 1, 1, v42);
  }

  *(v42 + 2) = v45 + 1;
  v46 = &v42[16 * v45];
  *(v46 + 4) = v40;
  *(v46 + 5) = v41;
  *(a8 + 16) = v42;
  return swift_endAccess();
}

uint64_t sub_1920BEA14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v16 = *(v54 - 8);
  v17 = MEMORY[0x1EEE9AC00](v54);
  v55 = &v48 - v18;
  v57 = &v58;
  v58 = a3;
  result = sub_192071474(sub_192071BAC, v17, v56, a6);
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  result = sub_1920BCCB0(a5, a4);
  if (result)
  {
    return result;
  }

  v51 = a7;
  v52 = a1;
  v53 = a2;
  v20 = *(a4 + 16);
  if (v20)
  {
    v49 = a5;
    v50 = a8;
    v60 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v20, 0);
    v21 = v60;
    v22 = a4 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    do
    {
      v24 = v55;
      sub_19202CFFC(v22, v55, &qword_1EADEECD0, &qword_1922363D0);
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1922285A0();
      v26 = v58;
      v25 = v59;
      result = sub_192033970(v24, &qword_1EADEECD0, &qword_1922363D0);
      v60 = v21;
      v28 = v21[2];
      v27 = v21[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        result = sub_192071C64((v27 > 1), v28 + 1, 1);
        v21 = v60;
      }

      v21[2] = v29;
      v30 = &v21[2 * v28];
      v30[4] = v26;
      v30[5] = v25;
      v22 += v23;
      --v20;
    }

    while (v20);
    a5 = v49;
    a8 = v50;
    if (v29 > 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    if (!v29)
    {
      __break(1u);
      return result;
    }

    v34 = v21[4];
    v35 = v21[5];

    goto LABEL_14;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v29 <= 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v58 = 91;
  v59 = 0xE100000000000000;
  v60 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v31 = sub_1922278A0();
  v33 = v32;

  MEMORY[0x193B0A990](v31, v33);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v34 = v58;
  v35 = v59;
LABEL_14:
  if (v51)
  {
    v36 = 0x64657269736564;
  }

  else
  {
    v36 = 7824750;
  }

  if (v51)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  if (v51)
  {
    v38 = 0x6C62616C69617661;
  }

  else
  {
    v38 = 6581359;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  if (v51)
  {
    v39 = 0xE900000000000065;
  }

  else
  {
    v39 = 0xE300000000000000;
  }

  sub_192228400();

  v58 = v52;
  v59 = v53;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v38, v39);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v36, v37);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  sub_19202CFFC(a5, v55, &qword_1EADEECD0, &qword_1922363D0);
  v40 = sub_192227990();
  MEMORY[0x193B0A990](v40);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v41 = v58;
  v42 = v59;
  swift_beginAccess();
  v43 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_192071CD0(0, *(v43 + 2) + 1, 1, v43);
    *(a8 + 16) = v43;
  }

  v46 = *(v43 + 2);
  v45 = *(v43 + 3);
  if (v46 >= v45 >> 1)
  {
    v43 = sub_192071CD0((v45 > 1), v46 + 1, 1, v43);
  }

  *(v43 + 2) = v46 + 1;
  v47 = &v43[16 * v46];
  *(v47 + 4) = v41;
  *(v47 + 5) = v42;
  *(a8 + 16) = v43;
  return swift_endAccess();
}

uint64_t sub_1920BEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_1920BF19C(uint64_t a1)
{
  (*(**(*v1 + 16) + 80))();
  sub_1922279B0();

  return result;
}

uint64_t sub_1920BF21C()
{
  v1 = *v0;
  v2 = sub_192228AD0();
  (*(**(v1 + 16) + 80))(v2);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1920BF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(**(a2 + 16) + 120))(a4, *(*a1 + 24), a3);
  if (v4)
  {

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v7, 1, a3);
}

void sub_1920BF39C()
{
  v1 = sub_192224FC0();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v53 = v0;
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  v47 = v4;
  if (v6)
  {
    v7 = sub_19204C340(v6, 0);
    v8 = sub_1920C4A2C(&v60, v7 + 4, v6, v5);
    v9 = v60;
    swift_bridgeObjectRetain_n();
    sub_19204C3D0(v9);
    if (v8 != v6)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v4 = v47;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *&v60 = v7;
  sub_192058734(&v60);

  v10 = v60;
  v7 = *(v60 + 16);
  if (!v7)
  {
LABEL_29:

    return;
  }

  v11 = 0;
  v52 = v60 + 32;
  v44 = (v54 + 8);
  v51 = MEMORY[0x1E69E7CC8];
  v46 = v60;
  v45 = v7;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v12 = v53;
    v13 = (v52 + 24 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    swift_beginAccess();
    v17 = *(v12 + v4);
    v18 = *(v17 + 16);
    v54 = v15;
    v19 = v16;
    v20 = v14;

    if (v18)
    {
      v21 = sub_19204437C(v14, v19);
      if (v22)
      {
        break;
      }
    }

    swift_endAccess();
LABEL_8:

LABEL_9:
    if (++v11 == v7)
    {
      goto LABEL_29;
    }
  }

  v23 = *(*(v17 + 56) + 8 * v21);
  swift_endAccess();
  v24 = v23;
  if ([v24 count] <= 1)
  {

    goto LABEL_8;
  }

  v25 = [v24 count];
  v59 = MEMORY[0x1E69E7CC0];
  sub_192071C64(0, v25 & ~(v25 >> 63), 0);
  v7 = v59;
  sub_192227F60();
  if (v25 < 0)
  {
    goto LABEL_31;
  }

  v50 = v19;
  v49 = v20;
  v48 = v24;
  if (!v25)
  {
LABEL_23:
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    while (1)
    {
      sub_192228270();
      if (!v58)
      {
        break;
      }

      sub_19203BEDC(&v57, &v60);
      sub_19202A98C(&v60, &v57);
      swift_dynamicCast();
      v34 = *(v56 + 24);

      v36 = (*(**(v34 + 16) + 80))(v35);
      v38 = v37;

      __swift_destroy_boxed_opaque_existential_1(&v60);
      v59 = v7;
      v40 = v7[2];
      v39 = v7[3];
      if (v40 >= v39 >> 1)
      {
        sub_192071C64((v39 > 1), v40 + 1, 1);
        v7 = v59;
      }

      v7[2] = v40 + 1;
      v41 = &v7[2 * v40];
      v41[4] = v36;
      v41[5] = v38;
    }

    (*v44)(v3, v55);
    sub_192033970(&v57, &unk_1EADEF330, &unk_19222CD40);
    v42 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = v42;
    sub_19213DDE4(v7, v49, v50, isUniquelyReferenced_nonNull_native);

    swift_bridgeObjectRelease_n();
    v51 = v60;
    v4 = v47;
    v10 = v46;
    v7 = v45;
    goto LABEL_9;
  }

  sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  while (1)
  {
    sub_192228270();
    if (!v61)
    {
      break;
    }

    sub_19202A98C(&v60, &v57);
    swift_dynamicCast();
    v26 = *(v56 + 24);

    v28 = (*(**(v26 + 16) + 80))(v27);
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1(&v60);
    v59 = v7;
    v32 = v7[2];
    v31 = v7[3];
    if (v32 >= v31 >> 1)
    {
      sub_192071C64((v31 > 1), v32 + 1, 1);
      v7 = v59;
    }

    v7[2] = v32 + 1;
    v33 = &v7[2 * v32];
    v33[4] = v28;
    v33[5] = v30;
    if (!--v25)
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);

  __break(1u);
}

void sub_1920BF9DC()
{
  v1 = sub_192224FC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  v57 = v0;
  v50 = v5;
  if (v7)
  {
    v56 = v2;
    v8 = sub_19204C340(v7, 0);
    v58 = sub_1920C4A2C(&v63, v8 + 4, v7, v6);
    v9 = v63;
    swift_bridgeObjectRetain_n();
    sub_19204C3D0(v9);
    if (v58 != v7)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v2 = v56;
    v0 = v57;
    v5 = v50;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v63 = v8;
  sub_192058734(&v63);

  v8 = v63;
  v56 = *(v63 + 16);
  if (!v56)
  {
LABEL_31:

    return;
  }

  v10 = 0;
  v55 = v63 + 32;
  v48 = (v2 + 8);
  v54 = MEMORY[0x1E69E7CC0];
  v49 = v63;
  while (1)
  {
    if (v10 >= v8[2])
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = (v55 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    swift_beginAccess();
    v15 = *(v0 + v5);
    v16 = *(v15 + 16);
    v58 = v13;

    if (v16)
    {
      v17 = sub_19204437C(v12, v14);
      if (v18)
      {
        break;
      }
    }

    swift_endAccess();

LABEL_8:
    ++v10;
    v0 = v57;
    if (v10 == v56)
    {
      goto LABEL_31;
    }
  }

  *(&v53 + 1) = v14;
  v19 = *(*(v15 + 56) + 8 * v17);
  swift_endAccess();
  v20 = v19;
  v21 = [v20 count];
  v62 = MEMORY[0x1E69E7CC0];
  sub_192071C64(0, v21 & ~(v21 >> 63), 0);
  v22 = v62;
  sub_192227F60();
  if (v21 < 0)
  {
    goto LABEL_33;
  }

  *&v53 = v12;
  v51 = v20;
  v52 = v10;
  if (!v21)
  {
LABEL_19:
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    sub_192228270();
    if (v61)
    {
      v30 = v51;
      do
      {
        sub_19203BEDC(&v60, &v63);
        sub_19202A98C(&v63, &v60);
        swift_dynamicCast();
        v31 = *(v59 + 24);

        v33 = (*(**(v31 + 16) + 80))(v32);
        v35 = v34;

        __swift_destroy_boxed_opaque_existential_1(&v63);
        v62 = v22;
        v37 = *(v22 + 16);
        v36 = *(v22 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_192071C64((v36 > 1), v37 + 1, 1);
          v22 = v62;
        }

        *(v22 + 16) = v37 + 1;
        v38 = v22 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        sub_192228270();
      }

      while (v61);
    }

    else
    {
      v30 = v51;
    }

    (*v48)(v4, v1);
    sub_192033970(&v60, &unk_1EADEF330, &unk_19222CD40);
    *&v63 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
    v39 = sub_1922278A0();
    v41 = v40;

    v63 = v53;

    MEMORY[0x193B0A990](5972026, 0xE300000000000000);
    MEMORY[0x193B0A990](v39, v41);

    MEMORY[0x193B0A990](93, 0xE100000000000000);
    v42 = v63;
    v43 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_192071CD0(0, *(v43 + 2) + 1, 1, v43);
    }

    v10 = v52;
    v46 = *(v43 + 2);
    v45 = *(v43 + 3);
    v54 = v43;
    if (v46 >= v45 >> 1)
    {
      v54 = sub_192071CD0((v45 > 1), v46 + 1, 1, v54);
    }

    v47 = v54;
    *(v54 + 2) = v46 + 1;
    *&v47[16 * v46 + 32] = v42;
    v8 = v49;
    goto LABEL_8;
  }

  sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  while (1)
  {
    sub_192228270();
    if (!v64)
    {
      break;
    }

    sub_19202A98C(&v63, &v60);
    swift_dynamicCast();
    v23 = *(v59 + 24);

    v8 = (*(**(v23 + 16) + 80))(v24);
    v26 = v25;

    __swift_destroy_boxed_opaque_existential_1(&v63);
    v62 = v22;
    v28 = *(v22 + 16);
    v27 = *(v22 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_192071C64((v27 > 1), v28 + 1, 1);
      v22 = v62;
    }

    *(v22 + 16) = v28 + 1;
    v29 = v22 + 16 * v28;
    *(v29 + 32) = v8;
    *(v29 + 40) = v26;
    if (!--v21)
    {
      goto LABEL_19;
    }
  }

LABEL_35:
  __break(1u);

  __break(1u);
}

uint64_t WidgetEnvironment.Storage.description.getter()
{
  swift_getObjectType();
  sub_1920BF9DC();
  v4 = sub_192228BD0();
  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v0 = sub_1922278A0();
  v2 = v1;

  MEMORY[0x193B0A990](v0, v2);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v4;
}

id WidgetEnvironment.Storage.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  *&v1[v5] = sub_192043788(MEMORY[0x1E69E7CC0]);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v11 = sub_192228140();
    if (v11)
    {
      v12 = v11;
      sub_192224F30();
      swift_allocObject();
      sub_192224F20();
      v13 = v12;
      v14 = sub_192225080();
      v16 = v15;

      sub_1920C80A8(&qword_1ED74BE40, v17, type metadata accessor for WidgetEnvironment.Storage, &protocol conformance descriptor for WidgetEnvironment.Storage);
      sub_192224F00();

      sub_192039140(v14, v16);
      v8 = v20;
      goto LABEL_3;
    }

LABEL_8:

    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1920C80A8(&qword_1ED74BE40, v6, type metadata accessor for WidgetEnvironment.Storage, &protocol conformance descriptor for WidgetEnvironment.Storage);
  v7 = a1;
  sub_192228000();

  v8 = v20;
  if (!v20)
  {

    goto LABEL_8;
  }

LABEL_3:
  v9 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v10 = *&v8[v9];

  swift_beginAccess();
  *&v2[v5] = v10;

  v21.receiver = v2;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_init);

  return v18;
}

uint64_t sub_1920C0620(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = v10 | (v4 << 6);
        v15 = *(*(v3 + 48) + 8 * v14);
        v16 = (*(v3 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];

        sub_1920367C8(v18, v17);
        result = v15 == 0;
        if (!v15)
        {
          return result;
        }

        v88 = v11;
        v20 = sub_1920B70BC(v15);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          goto LABEL_152;
        }

        v23 = (*(v2 + 56) + 16 * v20);
        v24 = *v23;
        v25 = v23[1];
        v26 = v25 >> 62;
        v27 = v17 >> 62;
        if (v25 >> 62 == 3)
        {
          if (v24)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25 == 0xC000000000000000;
          }

          v29 = 0;
          v30 = v28 && v17 >> 62 == 3;
          if (v30 && !v18 && v17 == 0xC000000000000000)
          {
            v31 = 0;
            v32 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v27 <= 1)
          {
LABEL_37:
            if (!v27)
            {
              v36 = BYTE6(v17);
              goto LABEL_43;
            }

            LODWORD(v36) = HIDWORD(v18) - v18;
            if (!__OFSUB__(HIDWORD(v18), v18))
            {
              v36 = v36;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v26 > 1)
        {
          if (v26 == 2)
          {
            v38 = *(v24 + 16);
            v37 = *(v24 + 24);
            v35 = __OFSUB__(v37, v38);
            v29 = v37 - v38;
            if (!v35)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v29 = 0;
          if (v27 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v26)
        {
          LODWORD(v29) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_159;
          }

          v29 = v29;
          if (v27 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v29 = BYTE6(v25);
          if (v27 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v27 != 2)
        {
          if (v29)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v34 = *(v18 + 16);
        v33 = *(v18 + 24);
        v35 = __OFSUB__(v33, v34);
        v36 = v33 - v34;
        if (v35)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v29 != v36)
        {
LABEL_152:
          sub_192039140(v18, v17);
          return 0;
        }

        if (v29 >= 1)
        {
          break;
        }

LABEL_54:
        v31 = v18;
        v32 = v17;
LABEL_55:
        sub_192039140(v31, v32);
        v8 = v88;
      }

      if (v26 > 1)
      {
        break;
      }

      if (!v26)
      {
        __s1[0] = v24;
        LOWORD(__s1[1]) = v25;
        BYTE2(__s1[1]) = BYTE2(v25);
        BYTE3(__s1[1]) = BYTE3(v25);
        BYTE4(__s1[1]) = BYTE4(v25);
        BYTE5(__s1[1]) = BYTE5(v25);
        if (v27)
        {
          v86 = v24;
          if (v27 == 1)
          {
            v78 = ((v18 >> 32) - v18);
            if (v18 >> 32 < v18)
            {
              goto LABEL_164;
            }

            sub_1920367C8(v24, v25);
            v39 = sub_192224E30();
            if (!v39)
            {
              goto LABEL_183;
            }

            v40 = v39;
            v41 = sub_192224E50();
            if (__OFSUB__(v18, v41))
            {
              goto LABEL_168;
            }

            v42 = (v18 - v41 + v40);
            result = sub_192224E40();
            v8 = v88;
            if (!v42)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v65 = *(v18 + 16);
          v82 = *(v18 + 24);
          sub_1920367C8(v24, v25);
          v62 = sub_192224E30();
          v85 = v2;
          if (v62)
          {
            v66 = sub_192224E50();
            if (__OFSUB__(v65, v66))
            {
              goto LABEL_174;
            }

            v62 += v65 - v66;
          }

          v64 = v82 - v65;
          if (__OFSUB__(v82, v65))
          {
            goto LABEL_166;
          }

          result = sub_192224E40();
          v8 = v88;
          if (!v62)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v84 = v2;
      v47 = v24;
      if (v24 > v24 >> 32)
      {
        goto LABEL_160;
      }

      v86 = v24;
      sub_1920367C8(v24, v25);
      v48 = sub_192224E30();
      if (v48)
      {
        v49 = v48;
        v50 = sub_192224E50();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_162;
        }

        v80 = (v47 - v50 + v49);
      }

      else
      {
        v80 = 0;
      }

      sub_192224E40();
      v3 = a1;
      if (v27 == 2)
      {
        v74 = *(v18 + 16);
        v73 = *(v18 + 24);
        v42 = sub_192224E30();
        if (v42)
        {
          v75 = sub_192224E50();
          if (__OFSUB__(v74, v75))
          {
            goto LABEL_176;
          }

          v42 += v74 - v75;
        }

        v35 = __OFSUB__(v73, v74);
        v76 = v73 - v74;
        if (v35)
        {
          goto LABEL_172;
        }

        v77 = sub_192224E40();
        if (v77 >= v76)
        {
          v58 = v76;
        }

        else
        {
          v58 = v77;
        }

        v8 = v88;
        result = v80;
        if (!v80)
        {
          goto LABEL_194;
        }

        v2 = v84;
        if (!v42)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v27 != 1)
        {
          result = v80;
          v2 = v84;
          __s1[0] = v18;
          LOWORD(__s1[1]) = v17;
          BYTE2(__s1[1]) = BYTE2(v17);
          BYTE3(__s1[1]) = BYTE3(v17);
          BYTE4(__s1[1]) = BYTE4(v17);
          BYTE5(__s1[1]) = BYTE5(v17);
          v8 = v88;
          if (!v80)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_171;
        }

        v42 = sub_192224E30();
        if (v42)
        {
          v59 = sub_192224E50();
          if (__OFSUB__(v18, v59))
          {
            goto LABEL_178;
          }

          v42 += v18 - v59;
        }

        v2 = v84;
        v60 = sub_192224E40();
        if (v60 >= (v18 >> 32) - v18)
        {
          v58 = (v18 >> 32) - v18;
        }

        else
        {
          v58 = v60;
        }

        result = v80;
        if (!v80)
        {
          goto LABEL_182;
        }

        v8 = v88;
        if (!v42)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v42)
      {
        v54 = v58;
        goto LABEL_145;
      }

      sub_192039140(v86, v25);
      sub_192039140(v18, v17);
      v3 = a1;
    }

    if (v26 == 2)
    {
      v83 = v2;
      v86 = v24;
      v43 = *(v24 + 16);
      sub_1920367C8(v24, v25);
      v44 = sub_192224E30();
      if (v44)
      {
        v45 = v44;
        v46 = sub_192224E50();
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_161;
        }

        v79 = (v43 - v46 + v45);
      }

      else
      {
        v79 = 0;
      }

      sub_192224E40();
      v3 = a1;
      if (v27 == 2)
      {
        v69 = *(v18 + 16);
        v68 = *(v18 + 24);
        v42 = sub_192224E30();
        if (v42)
        {
          v70 = sub_192224E50();
          if (__OFSUB__(v69, v70))
          {
            goto LABEL_175;
          }

          v42 += v69 - v70;
        }

        v35 = __OFSUB__(v68, v69);
        v71 = v68 - v69;
        if (v35)
        {
          goto LABEL_170;
        }

        v72 = sub_192224E40();
        if (v72 >= v71)
        {
          v58 = v71;
        }

        else
        {
          v58 = v72;
        }

        v8 = v88;
        result = v79;
        if (!v79)
        {
          goto LABEL_187;
        }

        v2 = v83;
        if (!v42)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v27 != 1)
        {
          result = v79;
          v2 = v83;
          __s1[0] = v18;
          LOWORD(__s1[1]) = v17;
          BYTE2(__s1[1]) = BYTE2(v17);
          BYTE3(__s1[1]) = BYTE3(v17);
          BYTE4(__s1[1]) = BYTE4(v17);
          BYTE5(__s1[1]) = BYTE5(v17);
          v8 = v88;
          if (!v79)
          {
            goto LABEL_185;
          }

LABEL_148:
          v55 = memcmp(result, __s1, BYTE6(v17));
          sub_192039140(v86, v25);
          sub_192039140(v18, v17);
          goto LABEL_149;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_167;
        }

        v42 = sub_192224E30();
        if (v42)
        {
          v56 = sub_192224E50();
          if (__OFSUB__(v18, v56))
          {
            goto LABEL_177;
          }

          v42 += v18 - v56;
        }

        v2 = v83;
        v57 = sub_192224E40();
        if (v57 >= (v18 >> 32) - v18)
        {
          v58 = (v18 >> 32) - v18;
        }

        else
        {
          v58 = v57;
        }

        result = v79;
        if (!v79)
        {
          goto LABEL_189;
        }

        v8 = v88;
        if (!v42)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v27 == 2)
    {
      v61 = *(v18 + 16);
      v81 = *(v18 + 24);
      v86 = v24;
      sub_1920367C8(v24, v25);
      v62 = sub_192224E30();
      v85 = v2;
      if (v62)
      {
        v63 = sub_192224E50();
        if (__OFSUB__(v61, v63))
        {
          goto LABEL_173;
        }

        v62 += v61 - v63;
      }

      v64 = v81 - v61;
      if (__OFSUB__(v81, v61))
      {
        goto LABEL_165;
      }

      result = sub_192224E40();
      v8 = v88;
      if (!v62)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v64)
      {
        v67 = v64;
      }

      else
      {
        v67 = result;
      }

      v55 = memcmp(__s1, v62, v67);
      sub_192039140(v86, v25);
      sub_192039140(v18, v17);
      v2 = v85;
      goto LABEL_146;
    }

    if (v27 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v18;
    v90 = v17;
    v91 = BYTE2(v17);
    v92 = BYTE3(v17);
    v93 = BYTE4(v17);
    v94 = BYTE5(v17);
    v55 = memcmp(__s1, &__s2, BYTE6(v17));
    sub_192039140(v18, v17);
    v8 = v88;
LABEL_149:
    result = 0;
    if (v55)
    {
      return result;
    }
  }

  v78 = ((v18 >> 32) - v18);
  if (v18 >> 32 < v18)
  {
    goto LABEL_163;
  }

  v86 = v24;
  sub_1920367C8(v24, v25);
  v51 = sub_192224E30();
  if (v51)
  {
    v52 = v51;
    v53 = sub_192224E50();
    if (__OFSUB__(v18, v53))
    {
      goto LABEL_169;
    }

    v42 = (v18 - v53 + v52);
    result = sub_192224E40();
    v8 = v88;
    if (!v42)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v78)
    {
      v54 = v78;
    }

    else
    {
      v54 = result;
    }

    result = __s1;
LABEL_145:
    v55 = memcmp(result, v42, v54);
    sub_192039140(v86, v25);
    sub_192039140(v18, v17);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_192224E40();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_192224E40();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

id WidgetEnvironment.Storage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WidgetEnvironment.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
  *a1 = result;
  return result;
}

uint64_t WidgetEnvironment.hashValue.getter()
{
  sub_192228AD0();
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  return sub_192228B30();
}

uint64_t sub_1920C1128()
{
  sub_192228AD0();
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  return sub_192228B30();
}

uint64_t sub_1920C1170()
{
  sub_192228AD0();
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  return sub_192228B30();
}

unint64_t WidgetEnvironment.description.getter()
{
  v1 = [*v0 debugDescription];
  v2 = sub_192227960();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  return 0xD000000000000012;
}

unint64_t WidgetEnvironment.prettyPrintedDescription.getter()
{
  sub_1920BF9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v0 = sub_1922278A0();
  v2 = v1;

  MEMORY[0x193B0A990](v0, v2);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1920C1394()
{
  v1 = [*v0 debugDescription];
  v2 = sub_192227960();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  return 0xD000000000000012;
}

uint64_t WidgetEnvironment.environmentValues(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v3;
  v14 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (*(*&v13[v14] + 16))
  {
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    *v12 = v13;
    sub_1920C55EC(v12, v9, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    v15 = v13;
    sub_1920BC09C(a1, a2, a3);
    return sub_192033970(v9, &qword_1EADEF258, &qword_19222C6C8);
  }

  else
  {
    v17 = sub_1922261D0();
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

void WidgetEnvironment.EnvironmentValuesEnumerator.makeIterator()(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0) + 20);
  v5 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0) + 20);
  v6 = sub_1922261D0();
  (*(*(v6 - 8) + 16))(&a1[v5], v1 + v4, v6);
  v7 = v3;
  v9 = sub_192056208(MEMORY[0x1E69E7CC0], v8);
  v17 = v7;
  v10 = v7;

  sub_192056340(&v17, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *a1 = v12;
  *(a1 + 1) = v14;
  *(a1 + 2) = v16;
}

unint64_t sub_1920C16C0(__n128 a1)
{
  v2 = v1[1];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v3 - 1;
    if (v3 >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_192228340();
  v4 = v7 - 1;
  if (v7 < 1)
  {
    return 0;
  }

LABEL_3:

  if ((sub_19205F34C(v4, v5) & 1) == 0)
  {

    v6 = MEMORY[0x1E69E7CC0];
    *v1 = MEMORY[0x1E69E7CC0];

    v1[1] = v6;

    v1[2] = v6;
  }

  return v2;
}

uint64_t sub_1920C1764()
{
  sub_19209C05C(v0);
  v2 = v1;
  sub_19205BD2C(v0, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  return v2;
}

unint64_t sub_1920C17B0@<X0>(unint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1920C16C0(a2);
  *a1 = result;
  return result;
}

void sub_1920C17D8(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v12 = v3;
  v5 = v3;

  sub_192056340(&v12, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
}

uint64_t sub_1920C1854()
{
  v1 = *v0;
  sub_19209BE50(*v0, *(v0 + 8));
  v3 = v2;

  return v3;
}

void sub_1920C18A4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1920C18B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1922289A0();
  }
}

uint64_t sub_1920C18E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1922289A0() ^ 1) & 1;
  }
}

uint64_t sub_1920C1928(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return (sub_1922289A0() ^ 1) & 1;
  }
}

uint64_t sub_1920C197C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1922289A0();
  }
}

uint64_t sub_1920C19A0()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1920C19F4()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1920C1A3C(uint64_t a1)
{
  v2 = sub_1920446A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920C1A78(uint64_t a1)
{
  v2 = sub_1920446A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920C1AB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1922289A0();
  }
}

uint64_t sub_1920C1D90()
{
  (*(*(*v0 + 152) + 48))();
  sub_1922282D0();
  return sub_192227990();
}

uint64_t sub_1920C1E10()
{
  (*(*(*v0 + 152) + 72))();
  v2 = v1;

  return v2;
}

uint64_t sub_1920C1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WidgetEnvironment.AnyKey.Storage(0, a2, a3, a4);
  *(v4 + 16) = swift_allocObject();
  return v4;
}

uint64_t sub_1920C2038(uint64_t a1)
{
  v2 = sub_1920C8648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920C2074(uint64_t a1)
{
  v2 = sub_1920C8648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920C20B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF408, &unk_19222D810);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920C8648();
  sub_192228B90();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1920C22F0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 152), v2, v3);
  return sub_192227990();
}

uint64_t sub_1920C23D4(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 152), v2);

    v7 = sub_1922278B0();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1920C2A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x193B0A990](a1, 0xE100000000000000);
  v7 = (*(**(*(v3 + *(*v3 + 168)) + 16) + 96))(v6);
  MEMORY[0x193B0A990](v7);

  MEMORY[0x193B0A990](a2, 0xE200000000000000);
  sub_192228970();
  MEMORY[0x193B0A990](a3, 0xE100000000000000);
  return 0;
}

double sub_1920C2B10()
{
  v1 = *v0;

  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return result;
}

unint64_t sub_1920C2C54(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_1920C2C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF5F8, &unk_19222DA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1920C2D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4D8, &qword_19222D8B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1920C2EA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB90, &unk_19222AF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1920C301C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF3D8, &unk_19222D7E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C3150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF438, &qword_19222D838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C328C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1920C3400(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4B0, &unk_19222AFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C3584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF498, &qword_19222D888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C36C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1920C37E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1920C39E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1920C3AF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1920C3BA0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1920C3C14(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1920C4474(v8);
      v8 = result;
    }

    v88 = v8 + 16;
    v89 = *(v8 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v91 = &v8[16 * v89];
        v5 = *v91;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1920C4214((v90 + 24 * *v91), (v90 + 24 * *v92), v90 + 24 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v5)
        {
          goto LABEL_129;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_130;
        }

        *v91 = v5;
        *(v91 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_131;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        v5 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      result = *(v11 + 8);
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      if (result == *(v13 + 8) && v12 == *(v13 + 16))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1922289A0();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 64);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 4) && *v16 == *(v16 - 3))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1922289A0();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 3;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 0;
          v19 = 24 * v7;
          v20 = 24 * v9;
          v21 = v9;
          do
          {
            if (v21 != v7 + v18 - 1)
            {
              v27 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = v27 + v20;
              v23 = v27 + v19;
              v24 = *v22;
              v25 = *(v22 + 16);
              v26 = *(v23 - 8);
              *v22 = *(v23 - 24);
              *(v22 + 16) = v26;
              *(v23 - 24) = v24;
              *(v23 - 8) = v25;
            }

            ++v21;
            --v18;
            v19 -= 24;
            v20 += 24;
          }

          while (v21 < v7 + v18);
        }
      }
    }

    v28 = v5[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v28)
        {
          v29 = v5[1];
        }

        else
        {
          v29 = v9 + a4;
        }

        if (v29 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v29)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1920C2D78(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1920C2D78((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v97;
    if (!*v97)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_1920C4214((*v5 + 24 * v85), (*v5 + 24 * *&v8[16 * v46 + 32]), *v5 + 24 * v86, v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1920C4474(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_19202F018(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v30 = *v5;
  v31 = *v5 + 24 * v7;
  v95 = v9;
  v32 = v9 - v7;
LABEL_43:
  v33 = v30 + 24 * v7;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = v32;
  v37 = v31;
  while (1)
  {
    v38 = v34 == *(v37 - 2) && v35 == *(v37 - 1);
    if (v38 || (result = sub_1922289A0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v29)
      {
        goto LABEL_43;
      }

      v7 = v29;
      v5 = a3;
      v9 = v95;
      goto LABEL_54;
    }

    if (!v30)
    {
      break;
    }

    v39 = *v37;
    v34 = v37[1];
    v35 = v37[2];
    *v37 = *(v37 - 3);
    v37[2] = *(v37 - 1);
    *(v37 - 2) = v34;
    *(v37 - 1) = v35;
    *(v37 - 3) = v39;
    v37 -= 3;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1920C4214(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v15 && (sub_1922289A0() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v5 -= 24;
    do
    {
      v16 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v16 && (sub_1922289A0() & 1) != 0)
      {
        v19 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v17 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_1920C4488(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v23 = a4;

  v10 = a4;
  sub_192056340(&v23, a5);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v23 = v12;
  v24 = v14;
  v25 = v16;
  if (!a2 || !a3)
  {
LABEL_17:
    *a1 = v12;
    a1[1] = v14;
    a1[2] = v16;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = v24;
      if (v24 >> 62)
      {
        v22 = sub_192228340();
        v20 = v22 - 1;
        if (v22 < 1)
        {
LABEL_14:
          v12 = v23;
          v16 = v25;
          goto LABEL_17;
        }
      }

      else
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 - 1;
        if (v19 < 1)
        {
          goto LABEL_14;
        }
      }

      if ((sub_19205F34C(v20, v21) & 1) == 0)
      {

        v23 = v18;

        v24 = v18;

        v25 = v18;
      }

      *(a2 + 8 * v17) = v14;
      if (a3 - 1 == v17)
      {
        break;
      }

      if (__OFADD__(++v17, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v23;
    v14 = v24;
    v16 = v25;
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1920C4600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v7 = sub_1922261D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v49 - v14;
  v15 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v20 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0) + 20);
  v57 = *(v16 + 28);
  v58 = v8;
  v21 = *(v8 + 16);
  v59 = v7;
  v55 = v21;
  v56 = v8 + 16;
  v21(&v18[v57], (v4 + v20), v7);
  v22 = v19;
  v24 = sub_192056208(MEMORY[0x1E69E7CC0], v23);
  v60 = v22;

  v25 = v22;
  sub_192056340(&v60, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  *v18 = v27;
  *(v18 + 1) = v29;
  *(v18 + 2) = v31;
  result = sub_19205BD2C(v4, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  if (!a2)
  {
    v33 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_25:
    v33 = a3;
LABEL_27:
    sub_1920C55EC(v18, v50, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
    return v33;
  }

  if (a3 < 0)
  {
    goto LABEL_29;
  }

  v33 = 0;
  v51 = (v58 + 32);
  v52 = a3;
  v34 = 1;
  do
  {
    v35 = *(v18 + 1);
    if (v35 >> 62)
    {
      v48 = sub_192228340();
      v37 = v48 - 1;
      if (v48 < 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v36 - 1;
      if (v36 < 1)
      {
        goto LABEL_27;
      }
    }

    if ((sub_19205F34C(v37, v38) & 1) == 0)
    {

      v39 = MEMORY[0x1E69E7CC0];
      *v18 = MEMORY[0x1E69E7CC0];

      *(v18 + 1) = v39;

      *(v18 + 2) = v39;
    }

    result = v55(v10, &v18[v57], v59);
    if (v35 >> 62)
    {
      result = sub_192228340();
      v40 = result;
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_19;
      }
    }

    if (v40 < 1)
    {
      goto LABEL_28;
    }

    for (i = 0; i != v40; ++i)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x193B0B410](i, v35);
      }

      else
      {
        v42 = *(v35 + 8 * i + 32);
      }

      (*(**(v42 + 16) + 112))(v10);
    }

LABEL_19:

    v43 = *v51;
    v44 = v54;
    v45 = v59;
    (*v51)(v54, v10, v59);
    v46 = v53;
    v43(v53, v44, v45);
    result = (v43)(a2, v46, v45);
    a3 = v52;
    if (v34 == v52)
    {
      goto LABEL_25;
    }

    a2 += *(v58 + 72);
    v33 = v34;
  }

  while (!__OFADD__(v34++, 1));
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_1920C4A2C(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1920C4BAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F0, &qword_19222D8C8);
    v2 = sub_1922286B0();
    v19 = v2;
    sub_1922285E0();
    v3 = sub_192228610();
    if (v3)
    {
      v4 = v3;
      sub_1922282D0();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetEnvironment.AnyKey();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_19204F2A8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_192227880();
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
        v5 = sub_192228610();
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

uint64_t (*sub_1920C4DE4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193B0B410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1920C4E64;
  }

  __break(1u);
  return result;
}

void (*sub_1920C4E6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193B0B410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1920C4EEC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1920C4EF4(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_192228340();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_192228340();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_192031E74(&qword_1EADEF468, &qword_1EADEF460, &qword_19222D858, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF460, &qword_19222D858);
            v10 = sub_1920C4E6C(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_19202A7A8(0, &qword_1EADECA48, 0x1E6966CE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1920C50BC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1922289A0() & 1;
  }
}

uint64_t sub_1920C5114(uint64_t a1, uint64_t a2)
{
  sub_1922282D0();
  v4 = (*(**(a1 + 16) + 104))();
  v5 = (*(**(a2 + 16) + 104))();
  v6 = MEMORY[0x193B0B270](v4, v5);

  if (v6)
  {
    return (*(**(*(a1 + 24) + 16) + 96))(*(*(a2 + 24) + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1920C5214(unint64_t a1, char *a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v21 = 0;
LABEL_23:
      sub_192047008(v21, v10, v11, v12, v9);

      return;
    }

    v23 = v8;
    v24 = v7;
    v25 = v6;
    v29 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v13 = sub_192228340();
      if (!v13)
      {
LABEL_21:
        v26 = MEMORY[0x1E69E7CC0];
LABEL_22:

        v10 = v25;
        v12 = v23;
        v11 = v24;
        v21 = v26;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v22 = a2;
    v14 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193B0B410](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      a2 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v27 = v14 + 1;
      v28[3] = sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
      v28[0] = a2;
      v16 = *(**(v4 + 16) + 128);
      a2 = a2;
      v17 = v16(v28);
      __swift_destroy_boxed_opaque_existential_1(v28);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v18 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF610, &unk_19222DA18);
      v19 = swift_allocObject();
      v19[2] = v22;
      v19[3] = a2;
      v19[4] = v4;
      *(v18 + 16) = v19;
      *(v18 + 24) = v17;

      MEMORY[0x193B0AB00](v20);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v26 = v29;
      v14 = v27;
      if (v27 == v13)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECB8, &qword_19222DA10);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

uint64_t sub_1920C55EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1920C5654(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v12 = sub_192046E20(a2, off_1ED74BF08);
    v13 = swift_endAccess();
    if (!v12)
    {
      break;
    }

    v14 = (*(**(v12 + 16) + 80))(v13);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    if (!a1)
    {
      v28 = 0;
LABEL_14:
      sub_192047008(v28, v18, v19, v20, v17);

      return;
    }

    v34 = v16;
    v35 = v15;
    v36 = v14;
    v37 = v3;
    v42 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    if (!v21)
    {
      v38 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v18 = v36;
      v20 = v34;
      v19 = v35;
      v28 = v38;
      goto LABEL_14;
    }

    v32 = v8;
    v33 = a2;
    v22 = 0;
    v3 = 0;
    v39 = v21;
    v31 = (v21 - 1);
    v38 = MEMORY[0x1E69E7CC0];
    a2 = &qword_1922363D0;
    while (1)
    {
      v8 = v22;
      if (v22 >= *(a1 + 16))
      {
        break;
      }

      sub_19202CFFC(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22++, v11, &qword_1EADEECD0, &qword_1922363D0);
      v41[3] = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      sub_19202CFFC(v11, boxed_opaque_existential_1, &qword_1EADEECD0, &qword_1922363D0);
      v30 = (*(**(v12 + 16) + 128))(v41);
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_19202CFFC(v11, v32, &qword_1EADEECD0, &qword_1922363D0);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v38 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF590, &qword_19222D998);
      v24 = swift_allocObject();
      v24[2] = v33;
      sub_19204E300(v32, v24 + *(*v24 + 160), &qword_1EADEECD0, &qword_1922363D0);
      *(v24 + *(*v24 + 168)) = v12;
      v25 = v38;
      v26 = v30;
      *(v38 + 16) = v24;
      *(v25 + 24) = v26;

      v27 = sub_192033970(v11, &qword_1EADEECD0, &qword_1922363D0);
      MEMORY[0x193B0AB00](v27);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v38 = v42;
      if (v31 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD8, &qword_19222B0C0);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C5B1C(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v19 = 0;
LABEL_14:
      sub_192047008(v19, v10, v11, v12, v9);

      return;
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v24;
      v12 = v22;
      v11 = v23;
      v19 = v25;
      goto LABEL_14;
    }

    v14 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      v15 = *(a1 + 32 + v14++);
      v26[3] = &type metadata for WidgetBackgroundStyle;
      LOBYTE(v26[0]) = v15;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v16 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5E0, &qword_19222D9E8);
      v17 = swift_allocObject();
      *(v17 + 16) = v21;
      *(v17 + 24) = v15;
      *(v17 + 32) = v4;
      *(v16 + 16) = v17;
      *(v16 + 24) = v20;

      MEMORY[0x193B0AB00](v18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v13 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC18, &qword_19222D9E0);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C5E74(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v19 = 0;
LABEL_14:
      sub_192047008(v19, v10, v11, v12, v9);

      return;
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v24;
      v12 = v22;
      v11 = v23;
      v19 = v25;
      goto LABEL_14;
    }

    v14 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      v15 = *(a1 + 32 + v14++);
      v26[3] = &type metadata for InternalWidgetFamily;
      LOBYTE(v26[0]) = v15;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v16 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5D0, &qword_19222D9D8);
      v17 = swift_allocObject();
      *(v17 + 16) = v21;
      *(v17 + 24) = v15;
      *(v17 + 32) = v4;
      *(v16 + 16) = v17;
      *(v16 + 24) = v20;

      MEMORY[0x193B0AB00](v18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v13 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC30, &unk_19222B020);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C61CC(unint64_t a1, char *a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v21 = 0;
LABEL_23:
      sub_192047008(v21, v10, v11, v12, v9);

      return;
    }

    v23 = v8;
    v24 = v7;
    v25 = v6;
    v29 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v13 = sub_192228340();
      if (!v13)
      {
LABEL_21:
        v26 = MEMORY[0x1E69E7CC0];
LABEL_22:

        v10 = v25;
        v12 = v23;
        v11 = v24;
        v21 = v26;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v22 = a2;
    v14 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193B0B410](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      a2 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v27 = v14 + 1;
      v28[3] = sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
      v28[0] = a2;
      v16 = *(**(v4 + 16) + 128);
      a2 = a2;
      v17 = v16(v28);
      __swift_destroy_boxed_opaque_existential_1(v28);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v18 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5C0, &unk_19222D9C8);
      v19 = swift_allocObject();
      v19[2] = v22;
      v19[3] = a2;
      v19[4] = v4;
      *(v18 + 16) = v19;
      *(v18 + 24) = v17;

      MEMORY[0x193B0AB00](v20);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v26 = v29;
      v14 = v27;
      if (v27 == v13)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEED00, &qword_19222D9C0);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C65A4(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v19 = 0;
LABEL_14:
      sub_192047008(v19, v10, v11, v12, v9);

      return;
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v27 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v24;
      v12 = v22;
      v11 = v23;
      v19 = v25;
      goto LABEL_14;
    }

    v14 = 0;
    v21 = a2;
    while (1)
    {
      a2 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      ++v14;
      v15 = *(a1 + 32 + a2);
      v26[3] = &type metadata for LevelOfDetail;
      LOBYTE(v26[0]) = v15;
      v20 = (*(**(v4 + 16) + 128))(v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v16 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5A0, &unk_19222D9A8);
      v17 = swift_allocObject();
      *(v17 + 16) = v21;
      *(v17 + 24) = v15;
      *(v17 + 32) = v4;
      *(v16 + 16) = v17;
      *(v16 + 24) = v20;

      MEMORY[0x193B0AB00](v18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v25 = v27;
      if (v13 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC08, &qword_19222D9A0);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C68FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192226580();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = sub_192046E20(a2, off_1ED74BF08);
    v14 = swift_endAccess();
    if (!v13)
    {
      break;
    }

    v15 = (*(**(v13 + 16) + 80))(v14);
    v19 = v15;
    v20 = v16;
    v21 = v17;
    if (!a1)
    {
      v33 = 0;
LABEL_14:
      sub_192047008(v33, v19, v20, v21, v18);

      return;
    }

    v39 = v17;
    v40 = v16;
    v41 = v15;
    v42 = v3;
    v46 = v13;
    v48 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v43 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v41;
      v21 = v39;
      v20 = v40;
      v33 = v43;
      goto LABEL_14;
    }

    v37 = v9;
    v38 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v44 = v22;
    v45 = (v7 + 8);
    v35 = (v22 - 1);
    v36 = (v7 + 32);
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v12, v25, v6, v19, v20, v21);
      ++v23;
      v47[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      (v26)(boxed_opaque_existential_1, v12, v6);
      v34 = (*(**(v46 + 16) + 128))(v47);
      __swift_destroy_boxed_opaque_existential_1(v47);
      (v26)(v37, v12, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v43 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF578, &unk_19222D970);
      v28 = swift_allocObject();
      v29 = v37;
      *(v28 + 2) = v38;
      (*v36)(&v28[*(*v28 + 160)], v29, v6);
      *&v28[*(*v28 + 168)] = v46;
      v30 = v43;
      v31 = v34;
      *(v43 + 16) = v28;
      *(v30 + 24) = v31;
      v34 = *v45;

      v32 = v34(v12, v6);
      MEMORY[0x193B0AB00](v32);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v43 = v48;
      a1 = v24;
      if (v35 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF570, &qword_19222B088);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C6DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1922259F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = sub_192046E20(a2, off_1ED74BF08);
    v14 = swift_endAccess();
    if (!v13)
    {
      break;
    }

    v15 = (*(**(v13 + 16) + 80))(v14);
    v19 = v15;
    v20 = v16;
    v21 = v17;
    if (!a1)
    {
      v33 = 0;
LABEL_14:
      sub_192047008(v33, v19, v20, v21, v18);

      return;
    }

    v39 = v17;
    v40 = v16;
    v41 = v15;
    v42 = v3;
    v46 = v13;
    v48 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v43 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v41;
      v21 = v39;
      v20 = v40;
      v33 = v43;
      goto LABEL_14;
    }

    v37 = v9;
    v38 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v44 = v22;
    v45 = (v7 + 8);
    v35 = (v22 - 1);
    v36 = (v7 + 32);
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v12, v25, v6, v19, v20, v21);
      ++v23;
      v47[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      (v26)(boxed_opaque_existential_1, v12, v6);
      v34 = (*(**(v46 + 16) + 128))(v47);
      __swift_destroy_boxed_opaque_existential_1(v47);
      (v26)(v37, v12, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v43 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF568, &unk_19222D960);
      v28 = swift_allocObject();
      v29 = v37;
      *(v28 + 2) = v38;
      (*v36)(&v28[*(*v28 + 160)], v29, v6);
      *&v28[*(*v28 + 168)] = v46;
      v30 = v43;
      v31 = v34;
      *(v43 + 16) = v28;
      *(v30 + 24) = v31;
      v34 = *v45;

      v32 = v34(v12, v6);
      MEMORY[0x193B0AB00](v32);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v43 = v48;
      a1 = v24;
      if (v35 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF560, &qword_19222B098);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C72FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1922265A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = sub_192046E20(a2, off_1ED74BF08);
    v14 = swift_endAccess();
    if (!v13)
    {
      break;
    }

    v15 = (*(**(v13 + 16) + 80))(v14);
    v19 = v15;
    v20 = v16;
    v21 = v17;
    if (!a1)
    {
      v33 = 0;
LABEL_14:
      sub_192047008(v33, v19, v20, v21, v18);

      return;
    }

    v39 = v17;
    v40 = v16;
    v41 = v15;
    v42 = v3;
    v46 = v13;
    v48 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v43 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v41;
      v21 = v39;
      v20 = v40;
      v33 = v43;
      goto LABEL_14;
    }

    v37 = v9;
    v38 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v44 = v22;
    v45 = (v7 + 8);
    v35 = (v22 - 1);
    v36 = (v7 + 32);
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v12, v25, v6, v19, v20, v21);
      ++v23;
      v47[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      (v26)(boxed_opaque_existential_1, v12, v6);
      v34 = (*(**(v46 + 16) + 128))(v47);
      __swift_destroy_boxed_opaque_existential_1(v47);
      (v26)(v37, v12, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v43 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF548, &unk_19222D940);
      v28 = swift_allocObject();
      v29 = v37;
      *(v28 + 2) = v38;
      (*v36)(&v28[*(*v28 + 160)], v29, v6);
      *&v28[*(*v28 + 168)] = v46;
      v30 = v43;
      v31 = v34;
      *(v43 + 16) = v28;
      *(v30 + 24) = v31;
      v34 = *v45;

      v32 = v34(v12, v6);
      MEMORY[0x193B0AB00](v32);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v43 = v48;
      a1 = v24;
      if (v35 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF540, &qword_19222B048);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

void sub_1920C77FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192225D50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = sub_192046E20(a2, off_1ED74BF08);
    v14 = swift_endAccess();
    if (!v13)
    {
      break;
    }

    v15 = (*(**(v13 + 16) + 80))(v14);
    v19 = v15;
    v20 = v16;
    v21 = v17;
    if (!a1)
    {
      v33 = 0;
LABEL_14:
      sub_192047008(v33, v19, v20, v21, v18);

      return;
    }

    v39 = v17;
    v40 = v16;
    v41 = v15;
    v42 = v3;
    v46 = v13;
    v48 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    if (!v22)
    {
      v43 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v19 = v41;
      v21 = v39;
      v20 = v40;
      v33 = v43;
      goto LABEL_14;
    }

    v37 = v9;
    v38 = a2;
    v23 = 0;
    v3 = 0;
    a2 = v7 + 16;
    v44 = v22;
    v45 = (v7 + 8);
    v35 = (v22 - 1);
    v36 = (v7 + 32);
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v23;
      if (v23 >= *(a1 + 16))
      {
        break;
      }

      v24 = a1;
      v25 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      v26 = *(v7 + 16);
      v26(v12, v25, v6, v19, v20, v21);
      ++v23;
      v47[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      (v26)(boxed_opaque_existential_1, v12, v6);
      v34 = (*(**(v46 + 16) + 128))(v47);
      __swift_destroy_boxed_opaque_existential_1(v47);
      (v26)(v37, v12, v6);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v43 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF538, &unk_19222D930);
      v28 = swift_allocObject();
      v29 = v37;
      *(v28 + 2) = v38;
      (*v36)(&v28[*(*v28 + 160)], v29, v6);
      *&v28[*(*v28 + 168)] = v46;
      v30 = v43;
      v31 = v34;
      *(v43 + 16) = v28;
      *(v30 + 24) = v31;
      v34 = *v45;

      v32 = v34(v12, v6);
      MEMORY[0x193B0AB00](v32);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v43 = v48;
      a1 = v24;
      if (v35 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF530, &qword_19222B038);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}