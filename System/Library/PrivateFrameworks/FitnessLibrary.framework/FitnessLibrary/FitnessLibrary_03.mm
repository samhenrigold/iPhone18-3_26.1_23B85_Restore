uint64_t sub_1E5B32E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5AF15BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5B32E84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1E5B455C0, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B32ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1E5B455C0, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DynamicSizeClassState.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[5];
  v14 = a2[4];
  v15 = v3;
  v13 = v5;
  v16 = v4;
  v17 = v3;
  v18 = v14;
  v19 = v5;
  v6 = type metadata accessor for DynamicSizeClassState.CodingKeys(255, &v16);
  swift_getWitnessTable(byte_1E5B455C0, v6);
  v7 = sub_1E5B3DD84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B3DE14();
  v16 = v4;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v11 = sub_1E5B3CBF4();
  swift_getWitnessTable(MEMORY[0x1E699D8F0], v11);
  sub_1E5B3DD74();
  return (*(v8 + 8))(v10, v7);
}

uint64_t DynamicSizeClassState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v11 = sub_1E5B3CBF4();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v28 - v12;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v13 = type metadata accessor for DynamicSizeClassState.CodingKeys(255, &v36);
  WitnessTable = swift_getWitnessTable(byte_1E5B455C0, v13);
  v14 = sub_1E5B3DD14();
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v17 = type metadata accessor for DynamicSizeClassState(0, &v36);
  v28 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v16;
  v21 = v40;
  sub_1E5B3DE04();
  if (!v21)
  {
    WitnessTable = v19;
    v40 = v17;
    v22 = v30;
    v24 = v32;
    v23 = v33;
    swift_getWitnessTable(MEMORY[0x1E699D900], v33);
    v25 = v31;
    sub_1E5B3DCF4();
    (*(v22 + 8))(v20, v25);
    v26 = WitnessTable;
    (*(v24 + 32))(WitnessTable, v34, v23);
    (*(v28 + 32))(v29, v26, v40);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5B33484(uint64_t a1)
{
  result = sub_1E5B3CBF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LibraryDispatcherView.init(store:compactViewBuilder:standardViewBuilder:tvViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a5)(uint64_t)@<X4>, void (*a7)(uint64_t)@<X6>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *a9 = sub_1E5AEFB94;
  *(a9 + 8) = v18;
  *(a9 + 16) = 0;
  v24[0] = a10;
  v24[1] = a11;
  v25 = a12;
  v26 = a13;
  type metadata accessor for LibraryDispatcherView(0, v24);

  v20 = a3(v19);
  v21 = a5(v20);
  a7(v21);
}

uint64_t LibraryDispatcherView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = *(a1 - 1);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v4 + 16);
  v5 = sub_1E5B3D164();
  *&v40 = a1[4];
  v6 = sub_1E5B3D164();
  v38 = v6;
  v7 = sub_1E5B3D774();
  v49 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = a1[6];
  v64[0] = a1[5];
  v11 = v64[0];
  v64[1] = v10;
  v12 = v10;
  *&v37 = v10;
  v13 = MEMORY[0x1E697F968];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F968], v5, v64, v8);
  v15 = a1[7];
  v63[0] = WitnessTable;
  v63[1] = v15;
  *(&v37 + 1) = v15;
  v16 = swift_getWitnessTable(v13, v6, v63);
  v62[0] = MEMORY[0x1E6981E60];
  v62[1] = v16;
  v62[2] = MEMORY[0x1E6981E60];
  v17 = swift_getWitnessTable(MEMORY[0x1E697D6F0], v7, v62);
  v42 = v17;
  v41 = sub_1E5AF0494();
  v58 = v7;
  v59 = &type metadata for LibraryLayout;
  v60 = v17;
  v61 = v41;
  v44 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  *&v24 = v40;
  *(&v24 + 1) = v11;
  v40 = v24;
  v53 = v24;
  v52 = v51;
  v54 = v12;
  v55 = v15;
  v25 = v43;
  v56 = v43;
  v26 = v39;
  sub_1E5B3D764();
  sub_1E5AF8168();
  swift_getKeyPath();
  sub_1E5B3D904();

  v57 = v58;
  v27 = v47;
  v28 = v46;
  (*(v47 + 16))(v46, v25, a1);
  v29 = v27;
  v30 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v31 = swift_allocObject();
  *(v31 + 3) = v37;
  v32 = v40;
  *(v31 + 1) = v51;
  *(v31 + 2) = v32;
  (*(v29 + 32))(&v31[v30], v28, a1);
  v33 = v42;
  v34 = v41;
  sub_1E5B3D564();

  (*(v49 + 8))(v26, v7);
  v58 = v7;
  v59 = &type metadata for LibraryLayout;
  v60 = v33;
  v61 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1E5AF144C();
  v35 = *(v45 + 8);
  v35(v20, OpaqueTypeMetadata2);
  sub_1E5AF144C();
  return (v35)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B33C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a8;
  v59 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v53 - v16;
  v58 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v53 - v21;
  v22 = sub_1E5B3D164();
  v62 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v53 - v23;
  v54 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  v30 = sub_1E5B3D164();
  v65 = *(v30 - 8);
  v66 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v64 = &v53 - v31;
  v75[0] = a2;
  v75[1] = a3;
  v75[2] = a4;
  v75[3] = a5;
  v63 = a5;
  v67 = a6;
  v68 = a7;
  v75[4] = a6;
  v75[5] = a7;
  type metadata accessor for LibraryDispatcherView(0, v75);
  sub_1E5AF8168();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (LOBYTE(v75[0]))
  {
    if (LOBYTE(v75[0]) == 1)
    {
      v32 = v67;
      sub_1E5AF144C();
      v33 = v55;
      sub_1E5AF144C();
      v34 = v61;
      v35 = v63;
      sub_1E5AF7150(v33, a2, a3, v63, v32);
      v71[0] = v35;
      v71[1] = v32;
      WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F968], v22, v71);
      v37 = v64;
      v38 = v68;
      sub_1E5AF7058(v34, v22, a4, WitnessTable, v68);
      (*(v62 + 8))(v34, v22);
      v39 = *(v58 + 8);
      v39(v33, a3);
      v40 = a3;
      v41 = v37;
      v39(v60, v40);
    }

    else
    {
      v45 = v56;
      v38 = v68;
      sub_1E5AF144C();
      v46 = v57;
      sub_1E5AF144C();
      v35 = v63;
      v32 = v67;
      v74[0] = v63;
      v74[1] = v67;
      v47 = swift_getWitnessTable(MEMORY[0x1E697F968], v22, v74);
      v41 = v64;
      sub_1E5AF7150(v46, v22, a4, v47, v38);
      v48 = *(v59 + 8);
      v48(v46, a4);
      v48(v45, a4);
    }
  }

  else
  {
    v35 = v63;
    sub_1E5AF144C();
    sub_1E5AF144C();
    v42 = v61;
    v32 = v67;
    sub_1E5AF7058(v26, a2, a3, v35, v67);
    v70[0] = v35;
    v70[1] = v32;
    v43 = swift_getWitnessTable(MEMORY[0x1E697F968], v22, v70);
    v41 = v64;
    v38 = v68;
    sub_1E5AF7058(v42, v22, a4, v43, v68);
    (*(v62 + 8))(v42, v22);
    v44 = *(v54 + 8);
    v44(v26, a2);
    v44(v29, a2);
  }

  v50 = v65;
  v49 = v66;
  v73[0] = v35;
  v73[1] = v32;
  v51 = MEMORY[0x1E697F968];
  v72[0] = swift_getWitnessTable(MEMORY[0x1E697F968], v22, v73);
  v72[1] = v38;
  swift_getWitnessTable(v51, v49, v72);
  sub_1E5AF144C();
  return (*(v50 + 8))(v41, v49);
}

uint64_t sub_1E5B3432C(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a2;
  v11[0] = a4;
  v11[1] = a5;
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a9;
  type metadata accessor for LibraryDispatcherView(0, v11);
  sub_1E5AF8168();
  LOWORD(v11[0]) = v9;
  BYTE2(v11[0]) = 1;
  sub_1E5B3D914();
}

uint64_t sub_1E5B34398(uint64_t a1, __int16 *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for LibraryDispatcherView(0, v13) - 8);
  return sub_1E5B3432C(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_1E5B344B0(void *a1)
{
  sub_1E5AF9EA8(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5B34570(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v5 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v15;
  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v20 = ((v18 + ((v13 + v14 + ((v12 + 17) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v16 > 0xFE)
      {
        v29 = (a1 + v12 + 17) & ~v12;
        if (v6 == v17)
        {
          v30 = *(v5 + 48);

          return v30(v29);
        }

        else
        {
          v31 = (v29 + v13 + v14) & ~v14;
          if (v9 == v17)
          {
            v32 = *(v8 + 48);
            v33 = *(v8 + 84);
            v34 = a3[3];
          }

          else
          {
            v32 = *(v11 + 48);
            v31 = (v18 + v31) & ~v15;
            v33 = *(v11 + 84);
            v34 = a3[4];
          }

          return v32(v31, v33, v34);
        }
      }

      else
      {
        v28 = *(a1 + 16);
        if (v28 > 1)
        {
          return (v28 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = ((v18 + ((v13 + v14 + ((v12 + 17) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v17 + (v27 | v25) + 1;
}

void sub_1E5B34880(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  if (v7 <= v11)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v10 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v13 <= *(v12 + 84))
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v13;
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(*(v8 - 8) + 64) + v18;
  v23 = ((v22 + ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17)) & ~v18) + v19;
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v29 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v31 = v27 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&a1[v23] = v28;
              }

              else
              {
                *&a1[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      a1[v23] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v26)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v20 <= 0xFE)
  {
    if (a2 > 0xFE)
    {
      a1[16] = 0;
      *a1 = a2 - 255;
      *(a1 + 1) = 0;
    }

    else
    {
      a1[16] = -a2;
    }

    return;
  }

  v32 = &a1[v15 + 17] & ~v15;
  if (v7 == v21)
  {
    v33 = *(v6 + 56);

LABEL_63:
    v33(v32);
    return;
  }

  v34 = (v32 + v16 + v17) & ~v17;
  if (v11 != v21)
  {
    v33 = *(v14 + 56);
    v32 = (v22 + v34) & ~v18;

    goto LABEL_63;
  }

  v35 = *(v10 + 56);

  v35(v34);
}

__n128 LibraryCanvasContentFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_1E5B34C64(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x1E6936540](0);
    goto LABEL_5;
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x1E6936540](3);
LABEL_5:
    sub_1E5B3DA14();
  }

  if (a2 <= 0x81u)
  {
    if (a2 == 128)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else if (a2 == 130)
  {
    v3 = 4;
  }

  else if (a2 == 131)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  return MEMORY[0x1E6936540](v3);
}

uint64_t sub_1E5B34E54()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B34C64(v3, v1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B34EA4(uint64_t a1)
{
  v2 = *v1;
  sub_1E5B3DDC4();
  sub_1E5B34C64(v4, v2);
  return sub_1E5B3DDF4();
}

void LibraryCanvasContentFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v185 = a3;
  v183 = a1;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A10, &unk_1E5B456D0);
  v187 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v8 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v164 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v182 = &v164 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v181 = &v164 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v164 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v164 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v164 - v21;
  State = type metadata accessor for LibraryCanvasContentLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v24 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E5B3CB44();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v164 - v30;
  v32 = *a4;
  v33 = v4[5];
  v194 = v4[4];
  v195 = v33;
  v34 = v4[7];
  v196 = v4[6];
  v197 = v34;
  v35 = v4[1];
  v190 = *v4;
  v191 = v35;
  v36 = v4[3];
  v192 = v4[2];
  v193 = v36;
  v186 = a2;
  v37 = *(a2 + 10);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      if (*(v186 + 8) == 2)
      {
        return;
      }

      LOBYTE(v189[0]) = v37 | 0x40;
      sub_1E5B35FE0();
      sub_1E5B3DBC4();
      v141 = v184;
      (*(v187 + 104))(v8, *MEMORY[0x1E6999AE8], v184);
      v126 = *v185;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = sub_1E5AF6808(0, v126[2] + 1, 1, v126);
      }

      v143 = v126[2];
      v142 = v126[3];
      if (v143 >= v142 >> 1)
      {
        v126 = sub_1E5AF6808((v142 > 1), v143 + 1, 1, v126);
      }

      v126[2] = v143 + 1;
      (*(v187 + 32))(v126 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v143, v8, v141);
    }

    else
    {
      if (v32 != 3)
      {
        goto LABEL_24;
      }

      v181 = v29;
      v182 = v27;
      v183 = v28;
      v101 = v186 + *(type metadata accessor for LibraryCanvasContentState(0) + 28);
      sub_1E5B0E5E0(v101, v24);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          return;
        }

        sub_1E5B20FBC(v101);
        swift_storeEnumTagMultiPayload();
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v145 = v144[16];
        v146 = v144[20];
        v147 = v178;
        v148 = &v178[v144[24]];
        LOBYTE(v189[0]) = v37;
        sub_1E5B35FE0();
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v149 = *MEMORY[0x1E6999B60];
        v150 = sub_1E5B3D8E4();
        (*(*(v150 - 8) + 104))(&v147[v145], v149, v150);
        v151 = swift_allocObject();
        v152 = v195;
        v151[5] = v194;
        v151[6] = v152;
        v153 = v197;
        v151[7] = v196;
        v151[8] = v153;
        v154 = v191;
        v151[1] = v190;
        v151[2] = v154;
        v155 = v193;
        v151[3] = v192;
        v151[4] = v155;
        *v148 = &unk_1E5B45740;
        *(v148 + 1) = v151;
        v156 = *MEMORY[0x1E6999B48];
        v157 = sub_1E5B3D8D4();
        (*(*(v157 - 8) + 104))(&v147[v146], v156, v157);
        v158 = v187;
        v159 = v184;
        (*(v187 + 104))(v147, *MEMORY[0x1E6999AD8], v184);
        v126 = *v185;
        sub_1E5B387B8(&v190, v189);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_1E5AF6808(0, v126[2] + 1, 1, v126);
        }

        v161 = v126[2];
        v160 = v126[3];
        if (v161 >= v160 >> 1)
        {
          v126 = sub_1E5AF6808((v160 > 1), v161 + 1, 1, v126);
        }

        v126[2] = v161 + 1;
        (*(v158 + 32))(v126 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v161, v147, v159);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {

          v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
          (v195)();
          (*(v183 + 8))(&v24[v162], v182);
          return;
        }

        v186 = *v24;
        v103 = *(v24 + 4);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
        v105 = v183;
        v106 = &v24[*(v104 + 64)];
        v108 = v181;
        v107 = v182;
        (*(v183 + 32))(v181, v106, v182);
        sub_1E5B20FBC(v101);
        v109 = *(v104 + 64);
        *v101 = v186;
        *(v101 + 8) = v103;
        v110 = v184;
        (*(v105 + 16))(v101 + v109, v108, v107);
        swift_storeEnumTagMultiPayload();
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v112 = v111[16];
        v113 = v111[20];
        v114 = v179;
        v115 = &v179[v111[24]];
        LOBYTE(v189[0]) = v37;
        sub_1E5B35FE0();
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v116 = *MEMORY[0x1E6999B60];
        v117 = sub_1E5B3D8E4();
        (*(*(v117 - 8) + 104))(&v114[v112], v116, v117);
        v118 = swift_allocObject();
        v119 = v195;
        v118[5] = v194;
        v118[6] = v119;
        v120 = v197;
        v118[7] = v196;
        v118[8] = v120;
        v121 = v191;
        v118[1] = v190;
        v118[2] = v121;
        v122 = v193;
        v118[3] = v192;
        v118[4] = v122;
        *v115 = &unk_1E5B45730;
        *(v115 + 1) = v118;
        v123 = *MEMORY[0x1E6999B48];
        v124 = sub_1E5B3D8D4();
        (*(*(v124 - 8) + 104))(&v114[v113], v123, v124);
        v125 = v187;
        (*(v187 + 104))(v114, *MEMORY[0x1E6999AD8], v110);
        v126 = *v185;
        sub_1E5B387B8(&v190, v189);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_1E5AF6808(0, v126[2] + 1, 1, v126);
        }

        v128 = v126[2];
        v127 = v126[3];
        v129 = v183;
        if (v128 >= v127 >> 1)
        {
          v163 = sub_1E5AF6808((v127 > 1), v128 + 1, 1, v126);
          v129 = v183;
          v126 = v163;
        }

        (*(v129 + 8))();
        v126[2] = v128 + 1;
        (*(v125 + 32))(v126 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v128, v114, v110);
      }
    }

    *v185 = v126;
    return;
  }

  if (!v32)
  {
    *&v189[0] = 3;
    LibraryCanvasContentFeature.reduce(localState:sharedState:sideEffects:action:)(v183, v186, v185, v189);
    return;
  }

  if (v32 == 1)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
    v39 = v38[16];
    v40 = v38[20];
    v41 = &v17[v38[24]];
    LOBYTE(v189[0]) = -127;
    v179 = sub_1E5B35FE0();
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v42 = *MEMORY[0x1E6999B60];
    v43 = sub_1E5B3D8E4();
    v44 = *(v43 - 8);
    v45 = *(v44 + 104);
    v165 = v42;
    v177 = v45;
    v178 = v43;
    v176 = v44 + 104;
    (v45)(&v17[v39], v42);
    v46 = *MEMORY[0x1E6999B40];
    v47 = sub_1E5B3D8D4();
    v48 = *(v47 - 8);
    v49 = *(v48 + 104);
    v175 = v46;
    v173 = v49;
    v174 = v47;
    v172 = v48 + 104;
    (v49)(&v17[v40], v46);
    v50 = swift_allocObject();
    v51 = v195;
    v50[5] = v194;
    v50[6] = v51;
    v52 = v197;
    v50[7] = v196;
    v50[8] = v52;
    v53 = v191;
    v50[1] = v190;
    v50[2] = v53;
    v54 = v193;
    v50[3] = v192;
    v50[4] = v54;
    *v41 = &unk_1E5B456E8;
    *(v41 + 1) = v50;
    v55 = v187;
    v56 = *(v187 + 104);
    v170 = *MEMORY[0x1E6999AD8];
    v171 = v187 + 104;
    v169 = v56;
    v56(v17);
    v57 = *v185;
    sub_1E5B387B8(&v190, v189);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1E5AF6808(0, *(v57 + 2) + 1, 1, v57);
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    v164 = v37;
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1E5AF6808((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v61 = *(v55 + 32);
    v60 = v55 + 32;
    v167 = (*(v60 + 48) + 32) & ~*(v60 + 48);
    v168 = v61;
    v166 = *(v60 + 40);
    v62 = v184;
    v187 = v60;
    v61(&v57[v167 + v166 * v59], v17, v184);
    v63 = v38[16];
    v64 = v38[20];
    v65 = v181;
    v66 = &v181[v38[24]];
    LOBYTE(v189[0]) = -125;
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v177(&v65[v63], v165, v178);
    v173(&v65[v64], v175, v174);
    v67 = swift_allocObject();
    v68 = v195;
    v67[5] = v194;
    v67[6] = v68;
    v69 = v197;
    v67[7] = v196;
    v67[8] = v69;
    v70 = v191;
    v67[1] = v190;
    v67[2] = v70;
    v71 = v193;
    v67[3] = v192;
    v67[4] = v71;
    *v66 = &unk_1E5B456F8;
    *(v66 + 1) = v67;
    v169(v65, v170, v62);
    sub_1E5B387B8(&v190, v189);
    v73 = *(v57 + 2);
    v72 = *(v57 + 3);
    v74 = v164;
    if (v73 >= v72 >> 1)
    {
      v57 = sub_1E5AF6808((v72 > 1), v73 + 1, 1, v57);
    }

    *(v57 + 2) = v73 + 1;
    v168(&v57[v167 + v73 * v166], v181, v184);
    v75 = v38[16];
    v76 = v38[20];
    v77 = v182;
    v78 = &v182[v38[24]];
    LOBYTE(v189[0]) = v74 | 0x40;
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v177(&v77[v75], v165, v178);
    v173(&v77[v76], v175, v174);
    v79 = swift_allocObject();
    v80 = v195;
    *(v79 + 80) = v194;
    *(v79 + 96) = v80;
    v81 = v197;
    *(v79 + 112) = v196;
    *(v79 + 128) = v81;
    v82 = v191;
    *(v79 + 16) = v190;
    *(v79 + 32) = v82;
    v83 = v193;
    *(v79 + 48) = v192;
    *(v79 + 64) = v83;
    *(v79 + 144) = v74;
    *v78 = &unk_1E5B45708;
    *(v78 + 1) = v79;
    v84 = v77;
    v85 = v184;
    v169(v84, v170, v184);
    sub_1E5B387B8(&v190, v189);
    v87 = *(v57 + 2);
    v86 = *(v57 + 3);
    if (v87 >= v86 >> 1)
    {
      v57 = sub_1E5AF6808((v86 > 1), v87 + 1, 1, v57);
    }

    *(v57 + 2) = v87 + 1;
    v168(&v57[v167 + v87 * v166], v182, v85);
    v88 = v38[16];
    v89 = v38[20];
    v90 = v38[24];
    v91 = v180;
    v92 = &v180[v90];
    LOBYTE(v189[0]) = -124;
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v177(&v91[v88], *MEMORY[0x1E6999B50], v178);
    v173(&v91[v89], v175, v174);
    v93 = swift_allocObject();
    v94 = v195;
    v93[5] = v194;
    v93[6] = v94;
    v95 = v197;
    v93[7] = v196;
    v93[8] = v95;
    v96 = v191;
    v93[1] = v190;
    v93[2] = v96;
    v97 = v193;
    v93[3] = v192;
    v93[4] = v97;
    *v92 = &unk_1E5B45718;
    *(v92 + 1) = v93;
    v169(v91, v170, v85);
    sub_1E5B387B8(&v190, v189);
    v99 = *(v57 + 2);
    v98 = *(v57 + 3);
    if (v99 >= v98 >> 1)
    {
      v57 = sub_1E5AF6808((v98 > 1), v99 + 1, 1, v57);
    }

    *(v57 + 2) = v99 + 1;
    v168(&v57[v167 + v99 * v166], v91, v85);
    v100 = v185;
    *v185 = v57;
    v189[4] = v194;
    v189[5] = v195;
    v189[6] = v196;
    v189[7] = v197;
    v189[0] = v190;
    v189[1] = v191;
    v189[2] = v192;
    v189[3] = v193;
    v188 = 3;
    LibraryCanvasContentFeature.reduce(localState:sharedState:sideEffects:action:)(v183, v186, v100, &v188);
    return;
  }

LABEL_24:
  v130 = v27;
  v131 = v28;
  v132 = type metadata accessor for LibraryCanvasContentState(0);
  v133 = *(v132 + 32);
  v183 = v131;
  v187 = *(v131 + 16);
  v134 = v186;
  (v187)(v31, v186 + v133, v130);
  v136 = *(v134 + 9);
  v137 = v134 + *(v132 + 28);
  LOBYTE(v189[0]) = *(v134 + 8);
  v135 = v189[0];
  BYTE1(v189[0]) = v136;

  LOBYTE(v134) = sub_1E5B0E330(v138, v189, v31);
  sub_1E5B20FBC(v137);
  v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
  *v137 = v32;
  *(v137 + 8) = v135;
  *(v137 + 9) = v136;
  (v187)(v137 + v139, v31, v130);
  v140 = swift_storeEnumTagMultiPayload();
  if (v134)
  {
    (v195)(v140);
  }

  (*(v183 + 8))(v31, v130);
}

unint64_t sub_1E5B35FE0()
{
  result = qword_1ED032DD0;
  if (!qword_1ED032DD0)
  {
    result = swift_getWitnessTable(byte_1E5B45864, &type metadata for LibraryCanvasContentFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED032DD0);
  }

  return result;
}

uint64_t sub_1E5B36034(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = sub_1E5B3DAB4();
  *(v2 + 40) = sub_1E5B3DAA4();
  *(v2 + 48) = *a2;
  v6 = (*(a2 + 96) + **(a2 + 96));
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B36148;

  return v6();
}

uint64_t sub_1E5B36148()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    MEMORY[0x1E6936830](v0);
  }

  v6 = (*(v2 + 48) + **(v2 + 48));
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_1E5B362E4;

  return v6();
}

uint64_t sub_1E5B362E4(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {
    v6 = sub_1E5B3DA84();

    return MEMORY[0x1EEE6DFA0](sub_1E5B39590, v6, v5);
  }

  else
  {
    v4[2] = a1;
    v7 = swift_task_alloc();
    v4[11] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v7 = v4;
    v7[1] = sub_1E5B364A0;

    return MEMORY[0x1EEE01A40](v4 + 2, v8);
  }
}

uint64_t sub_1E5B364A0()
{
  v1 = *v0;

  sub_1E5B39520(*(v1 + 16));
  v3 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B16388, v3, v2);
}

uint64_t sub_1E5B36600(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = sub_1E5B3DAB4();
  *(v2 + 40) = sub_1E5B3DAA4();
  *(v2 + 48) = *a2;
  v6 = (*(a2 + 96) + **(a2 + 96));
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B36714;

  return v6();
}

uint64_t sub_1E5B36714()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    MEMORY[0x1E6936830](v0);
  }

  v6 = (*(v2 + 48) + **(v2 + 48));
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_1E5B368B0;

  return v6();
}

uint64_t sub_1E5B368B0(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {
    v6 = sub_1E5B3DA84();

    return MEMORY[0x1EEE6DFA0](sub_1E5B36BCC, v6, v5);
  }

  else
  {
    v4[2] = a1;
    v7 = swift_task_alloc();
    v4[11] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v7 = v4;
    v7[1] = sub_1E5B36A6C;

    return MEMORY[0x1EEE01A40](v4 + 2, v8);
  }
}

uint64_t sub_1E5B36A6C()
{
  v1 = *v0;

  sub_1E5B39520(*(v1 + 16));
  v3 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B14848, v3, v2);
}

uint64_t sub_1E5B36BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B36C30(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = sub_1E5B3DAB4();
  v2[15] = sub_1E5B3DAA4();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B36D44;

  return v6(v2 + 2);
}

uint64_t sub_1E5B36D44()
{
  v2 = *v1;
  v2[17] = v0;

  v4 = sub_1E5B3DA84();
  v2[18] = v4;
  v2[19] = v3;
  if (v0)
  {
    v5 = sub_1E5B374A8;
  }

  else
  {
    v5 = sub_1E5B36EA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B36EA4()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v5 = sub_1E5B3DAA4();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B37074;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v5, v7);
}

uint64_t sub_1E5B37074()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x1EEE6DFA0](sub_1E5B37188, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B37188()
{
  if (*(v0 + 184) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 96) = 3;
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v3 = v0;
    v3[1] = sub_1E5B372AC;

    return MEMORY[0x1EEE01A40](v0 + 96, v4);
  }
}

uint64_t sub_1E5B372AC()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5B373CC, v3, v2);
}

uint64_t sub_1E5B373CC(uint64_t a1)
{
  v2 = sub_1E5B3DAA4();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v1[10]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B37074;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 23, v2, v4);
}

uint64_t sub_1E5B374A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B3750C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DF0, &qword_1E5B458B8);
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DF8, &qword_1E5B458C0);
  *(v2 + 48) = v6;
  *(v2 + 56) = *(v6 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = sub_1E5B3DAB4();
  *(v2 + 80) = sub_1E5B3DAA4();
  v7 = *(a2 + 16);
  *(v2 + 88) = *(a2 + 112);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v2 + 104) = v8;
  *v8 = v2;
  v8[1] = sub_1E5B376FC;

  return v10(v5);
}

uint64_t sub_1E5B376FC()
{
  v2 = *v1;
  v2[14] = v0;

  v4 = sub_1E5B3DA84();
  v2[15] = v4;
  v2[16] = v3;
  if (v0)
  {
    v5 = sub_1E5B37BE8;
  }

  else
  {
    v5 = sub_1E5B3785C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B3785C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E5B3DB14();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1E5B3DAA4();
  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B3794C;
  v6 = v0[6];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v4, v7, v6);
}

uint64_t sub_1E5B3794C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E5B37A90, v3, v2);
}

uint64_t sub_1E5B37A90()
{
  if (*(v0 + 16))
  {
    (*(v0 + 88))(*(v0 + 16));

    v1 = sub_1E5B3DAA4();
    *(v0 + 136) = v1;
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1E5B3794C;
    v3 = *(v0 + 48);
    v4 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 16, v1, v4, v3);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E5B37BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B37C64(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 186) = a3;
  *(v3 + 104) = a1;
  *(v3 + 112) = sub_1E5B3DAB4();
  *(v3 + 120) = sub_1E5B3DAA4();
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  *v5 = v3;
  v5[1] = sub_1E5B37D7C;

  return v7(v3 + 16);
}

uint64_t sub_1E5B37D7C()
{
  v2 = *v1;
  v2[17] = v0;

  v4 = sub_1E5B3DA84();
  v2[18] = v4;
  v2[19] = v3;
  if (v0)
  {
    v5 = sub_1E5B3958C;
  }

  else
  {
    v5 = sub_1E5B37EDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B37EDC()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v5 = sub_1E5B3DAA4();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B380AC;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v5, v7);
}

uint64_t sub_1E5B380AC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x1EEE6DFA0](sub_1E5B381C0, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B381C0()
{
  v15 = v0;
  if (*(v0 + 184))
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (qword_1ED031620 != -1)
    {
      swift_once();
    }

    v1 = sub_1E5B3CD84();
    __swift_project_value_buffer(v1, qword_1ED032ED8);
    v2 = sub_1E5B3CD64();
    v3 = sub_1E5B3DB84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 186);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      *(v0 + 185) = v4;
      v7 = sub_1E5B3D9F4();
      v9 = sub_1E5B38EB0(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1E5AE7000, v2, v3, "finished items updated observation for %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E6936A00](v6, -1, -1);
      MEMORY[0x1E6936A00](v5, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 96) = 3;
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v12 = v0;
    v12[1] = sub_1E5B38414;

    return MEMORY[0x1EEE01A40](v0 + 96, v13);
  }
}

uint64_t sub_1E5B38414()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5B38534, v3, v2);
}

uint64_t sub_1E5B38534(uint64_t a1)
{
  v2 = sub_1E5B3DAA4();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v1[10]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B380AC;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 23, v2, v4);
}

uint64_t sub_1E5B38610(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5B3DAB4();
  v2[3] = sub_1E5B3DAA4();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5AF6058;

  return v6();
}

uint64_t sub_1E5B38720(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B36C30(a1, v1 + 16);
}

uint64_t sub_1E5B387F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B3750C(a1, v1 + 16);
}

uint64_t sub_1E5B38888(uint64_t a1)
{
  v4 = *(v1 + 144);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B16384;

  return sub_1E5B37C64(a1, v1 + 16, v4);
}

uint64_t sub_1E5B38930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B38610(a1, v1 + 16);
}

uint64_t sub_1E5B389C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5AF632C;

  return sub_1E5B36600(a1, v1 + 16);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5B38ADC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B36034(a1, v1 + 16);
}

unint64_t sub_1E5B38B78()
{
  result = qword_1EE2C2A30;
  if (!qword_1EE2C2A30)
  {
    result = swift_getWitnessTable("IA5\td,", &type metadata for LibraryCanvasContentAction, v0, v1);
    atomic_store(result, &qword_1EE2C2A30);
  }

  return result;
}

unint64_t sub_1E5B38BD0()
{
  result = qword_1EE2C2A38[0];
  if (!qword_1EE2C2A38[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasContentAction, &type metadata for LibraryCanvasContentAction, v0, v1);
    atomic_store(result, qword_1EE2C2A38);
  }

  return result;
}

unint64_t sub_1E5B38C28()
{
  result = qword_1EE2C2B78[0];
  if (!qword_1EE2C2B78[0])
  {
    v3 = type metadata accessor for LibraryCanvasContentState(255);
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryCanvasContentState, v3, v0, v1);
    atomic_store(result, qword_1EE2C2B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryCanvasContentFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LibraryCanvasContentFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E5B38DEC(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1E5B38E18(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

unint64_t sub_1E5B38E5C()
{
  result = qword_1ED032DD8;
  if (!qword_1ED032DD8)
  {
    result = swift_getWitnessTable(a65, &type metadata for LibraryCanvasContentFeature.TaskIdentifier, v0, v1);
    atomic_store(result, &qword_1ED032DD8);
  }

  return result;
}

unint64_t sub_1E5B38EB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5B38F7C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5B39530(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5B38F7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5B39088(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E5B3DC14();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E5B39088(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5B390D4(a1, a2);
  sub_1E5B39204(&unk_1F5F6DD50);
  return v3;
}

void *sub_1E5B390D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5B392F0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5B3DC14();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5B3DA34();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5B392F0(v10, 0);
        result = sub_1E5B3DBD4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5B39204(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E5B39364(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E5B392F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE8, &qword_1E5B458B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5B39364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE8, &qword_1E5B458B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E5B39458(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        a1 &= 0x3Fu;
        a2 &= 0x3Fu;
        return sub_1E5AFEB1C(a1, a2);
      }
    }

    else if (a1 <= 0x81u)
    {
      if (a1 == 128)
      {
        if (a2 == 128)
        {
          return 1;
        }
      }

      else if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a1 == 130)
    {
      if (a2 == 130)
      {
        return 1;
      }
    }

    else if (a1 == 131)
    {
      if (a2 == 131)
      {
        return 1;
      }
    }

    else if (a2 == 132)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return sub_1E5AFEB1C(a1, a2);
  }

  return 0;
}

unint64_t sub_1E5B39520(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1E5B39530(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LibraryDataItem.init(id:artwork:title:subtitle:presentationContextKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v27[0] = a6;
  v27[1] = a7;
  v27[2] = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v20 = type metadata accessor for LibraryDataItem(0, v27);
  v21 = v20[21];
  v22 = sub_1E5B3CB14();
  (*(*(v22 - 8) + 32))(a9 + v21, a5, v22);
  (*(*(a6 - 8) + 32))(a9 + v20[22], a2, a6);
  v23 = v20[23];
  v24 = sub_1E5B3CC14();
  v25 = *(*(v24 - 8) + 32);
  v25(a9 + v23, a3, v24);
  return (v25)(a9 + v20[24], a4, v24);
}

uint64_t LibraryDataItem.presentationContextKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = sub_1E5B3CB14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static LibraryDataItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_1E5B3D974() & 1) != 0 && (v18[0] = a3, v18[1] = a4, v18[2] = a5, v18[3] = a6, v18[4] = a7, v18[5] = a8, v18[6] = a9, v18[7] = a10, type metadata accessor for LibraryDataItem(0, v18), (sub_1E5B3CB04()) && (sub_1E5B3D974() & 1) != 0 && (sub_1E5B3CC04())
  {
    v16 = sub_1E5B3CC04();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E5B398E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5B46170 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1E5B39A94(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6B726F77747261;
  v3 = 0x656C746974;
  if (a1 != 3)
  {
    v3 = 0x656C746974627573;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000016;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5B39B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B398E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B39BA4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5B3B490();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B39BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1E5B45B10, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B39C34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1E5B45B10, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LibraryDataItem.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v12 = *(a2 + 16);
  v15 = v12;
  v14 = *(a2 + 24);
  v16 = v14;
  v11 = *(a2 + 40);
  v17 = v11;
  v18 = v3;
  v13 = *(a2 + 64);
  v19 = v13;
  v4 = type metadata accessor for LibraryDataItem.CodingKeys(255, &v15);
  swift_getWitnessTable(byte_1E5B45B10, v4);
  v5 = sub_1E5B3DD84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B3DE14();
  LOBYTE(v15) = 0;
  v9 = v20;
  sub_1E5B3DD74();
  if (v9)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v15) = 1;
  sub_1E5B3CB14();
  sub_1E5B3AA88(&qword_1ED032E00, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1E5B3DD74();
  LOBYTE(v15) = 2;
  sub_1E5B3DD74();
  LOBYTE(v15) = 3;
  sub_1E5B3CC14();
  sub_1E5B3AA88(&qword_1ED032E08, MEMORY[0x1E699D908], MEMORY[0x1E699D910]);
  sub_1E5B3DD74();
  LOBYTE(v15) = 4;
  sub_1E5B3DD74();
  return (*(v6 + 8))(v8, v5);
}

uint64_t LibraryDataItem.hash(into:)(uint64_t a1, void *a2)
{
  sub_1E5B3D964();
  sub_1E5B3CB14();
  sub_1E5B3AA88(&qword_1ED032E10, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5B3D964();
  sub_1E5B3D964();
  sub_1E5B3CC14();
  sub_1E5B3AA88(&qword_1ED032E18, MEMORY[0x1E699D908], MEMORY[0x1E699D918]);
  sub_1E5B3D964();
  return sub_1E5B3D964();
}

uint64_t LibraryDataItem.hashValue.getter(void *a1)
{
  sub_1E5B3DDC4();
  LibraryDataItem.hash(into:)(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t LibraryDataItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v72 = a1;
  v82 = a8;
  v53 = a9;
  v71 = a10;
  v66 = sub_1E5B3CC14();
  v58 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v51 - v18;
  v59 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E5B3CB14();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  v75 = a3;
  v76 = a4;
  v77 = a5;
  v78 = a6;
  v79 = a7;
  v80 = v82;
  v81 = a10;
  v24 = type metadata accessor for LibraryDataItem.CodingKeys(255, &v74);
  swift_getWitnessTable(byte_1E5B45B10, v24);
  v68 = sub_1E5B3DD14();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v26 = &v51 - v25;
  v57 = a2;
  v74 = a2;
  v75 = a3;
  v69 = a3;
  v56 = a4;
  v76 = a4;
  v77 = a5;
  v78 = a6;
  v79 = a7;
  v67 = a7;
  v27 = v72;
  v80 = v82;
  v81 = v71;
  v28 = type metadata accessor for LibraryDataItem(0, &v74);
  v71 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v51 - v29;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v82 = v26;
  v31 = v73;
  sub_1E5B3DE04();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v32 = v64;
  v33 = v65;
  v34 = v63;
  v73 = v30;
  v52 = v28;
  v35 = v27;
  v36 = v66;
  LOBYTE(v74) = 0;
  v37 = v69;
  sub_1E5B3DCF4();
  (*(v62 + 32))(v73, v70, v37);
  LOBYTE(v74) = 1;
  sub_1E5B3AA88(&qword_1ED032E20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v38 = v32;
  v39 = v61;
  sub_1E5B3DCF4();
  (*(v60 + 32))(&v73[v52[21]], v38, v39);
  LOBYTE(v74) = 2;
  v40 = v57;
  sub_1E5B3DCF4();
  v41 = v58;
  (*(v59 + 32))(&v73[v52[22]], v33, v40);
  LOBYTE(v74) = 3;
  v42 = sub_1E5B3AA88(qword_1ED032E28, MEMORY[0x1E699D908], MEMORY[0x1E699D920]);
  v43 = v55;
  v70 = v42;
  sub_1E5B3DCF4();
  v44 = v43;
  v45 = *(v41 + 32);
  v45(&v73[v52[23]], v44, v36);
  LOBYTE(v74) = 4;
  v46 = v54;
  sub_1E5B3DCF4();
  (*(v34 + 8))(v82, v68);
  v47 = v52;
  v48 = v73;
  v45(&v73[v52[24]], v46, v36);
  v49 = v71;
  (*(v71 + 16))(v53, v48, v47);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v49 + 8))(v48, v47);
}

uint64_t sub_1E5B3AA44(uint64_t a1, void *a2)
{
  sub_1E5B3DDC4();
  LibraryDataItem.hash(into:)(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B3AA88(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B3ABAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v37 = *(a3 + 24);
  v5 = *(v37 - 8);
  v6 = *(v5 + 84);
  v36 = sub_1E5B3CB14();
  v7 = *(v36 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v34 = *(a3 + 16);
  v10 = *(v34 - 8);
  v35 = *(v10 + 84);
  if (v35 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = *(sub_1E5B3CC14() - 8);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v5 + 64) + v13;
  v20 = a1;
  if (a2 > v18)
  {
    v21 = ((*(v12 + 64) + v17 + ((v16 + v17 + ((v14 + v15 + (v19 & ~v13)) & ~v15)) & ~v17)) & ~v17) + *(v12 + 64);
    v22 = 8 * v21;
    if (v21 <= 3)
    {
      v24 = ((a2 - v18 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v24))
      {
        v23 = *(a1 + v21);
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v24 > 0xFF)
      {
        v23 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v24 < 2)
      {
LABEL_33:
        if (v18)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_33;
    }

LABEL_20:
    v25 = (v23 - 1) << v22;
    if (v21 > 3)
    {
      v25 = 0;
    }

    if (v21)
    {
      if (v21 <= 3)
      {
        v26 = v21;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 2)
      {
        if (v26 == 3)
        {
          v27 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v27 = *a1;
        }
      }

      else if (v26 == 1)
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
      }
    }

    else
    {
      v27 = 0;
    }

    return v18 + (v27 | v25) + 1;
  }

LABEL_34:
  if (v6 == v18)
  {
    v28 = v37;
    v29 = *(v5 + 48);
    v30 = v6;

    return v29(v20, v30, v28);
  }

  v20 = ((a1 + v19) & ~v13);
  if (v8 == v18)
  {
    v29 = *(v7 + 48);
    v30 = v8;
    v28 = v36;

    return v29(v20, v30, v28);
  }

  v20 = ((v20 + v14 + v15) & ~v15);
  if (v35 == v18)
  {
    v29 = *(v10 + 48);
    v30 = v35;
    v28 = v34;

    return v29(v20, v30, v28);
  }

  v32 = *(v12 + 48);
  v33 = (v20 + v16 + v17) & ~v17;

  return v32(v33);
}

void sub_1E5B3AFCC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v38 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_1E5B3CB14() - 8);
  v40 = v8;
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(a4 + 16) - 8);
  v39 = v11;
  v37 = *(v11 + 84);
  if (v37 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v13 = *(sub_1E5B3CC14() - 8);
  v14 = v13;
  v15 = *(v6 + 64);
  if (*(v13 + 84) <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v8 + 80);
  v18 = v15 + v17;
  v19 = *(v8 + 64);
  v20 = *(v11 + 80);
  v21 = (v19 + v20 + ((v15 + v17) & ~v17)) & ~v20;
  v22 = *(v11 + 64);
  v23 = *(v13 + 80);
  v24 = ((*(v13 + 64) + v23 + ((v22 + v23 + v21) & ~v23)) & ~v23) + *(v13 + 64);
  if (a3 <= v16)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v24 <= 3)
    {
      v30 = ((a3 - v16 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v16 < v26)
  {
    v28 = ~v16 + v26;
    if (v24 < 4)
    {
      v29 = (v28 >> (8 * v24)) + 1;
      if (v24)
      {
        v32 = v28 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v32;
            if (v27 > 1)
            {
LABEL_56:
              if (v27 == 2)
              {
                *&v25[v24] = v29;
              }

              else
              {
                *&v25[v24] = v29;
              }

              return;
            }
          }

          else
          {
            *v25 = v28;
            if (v27 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v25 = v32;
        v25[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v27)
    {
      v25[v24] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v25[v24] = 0;
      if (!v26)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v25[v24] = 0;
  }

  else if (v27)
  {
    v25[v24] = 0;
    if (!v26)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    return;
  }

LABEL_37:
  if (v7 == v16)
  {
    v33 = *(v38 + 56);
    v34 = v25;
    goto LABEL_41;
  }

  v34 = (&v25[v18] & ~v17);
  if (v9 == v16)
  {
    v33 = *(v40 + 56);
LABEL_41:

LABEL_43:
    v33(v34);
    return;
  }

  v34 = (&v34[v19 + v20] & ~v20);
  if (v37 == v16)
  {
    v33 = *(v39 + 56);

    goto LABEL_43;
  }

  v35 = *(v14 + 56);
  v36 = &v34[v22 + v23] & ~v23;

  v35(v36);
}

uint64_t sub_1E5B3B498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v157 = a8;
  v147 = a6;
  v145 = a5;
  v148 = a4;
  v146 = a3;
  v138 = a2;
  v137 = a1;
  v160 = a9;
  v162 = a12;
  v126 = sub_1E5B3CF84();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032EB0, &qword_1E5B45B60);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v123 = &v116 - v16;
  v133 = sub_1E5B3CD04();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0329F0, &qword_1E5B44520);
  MEMORY[0x1EEE9AC00](v18);
  v140 = (&v116 - v19);
  v141 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1E5B3CC14();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v154 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032EB8, &qword_1E5B45B68);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v152 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v116 - v26;
  v27 = sub_1E5B3CCA4();
  v155 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v153 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v29;
  v161 = a10;
  v30 = sub_1E5B3CF34();
  v136 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v135 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v116 - v33;
  v34 = *(a7 + 16);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a7 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v128 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v116 - v43;
  v156 = v18;
  v45 = sub_1E5B3D164();
  v158 = *(v45 - 8);
  v159 = v45;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v150 = &v116 - v47;
  v48 = *(v39 + 16);
  v144 = v13;
  v127 = v48;
  (v48)(v44, v13, a7, v46);
  v49 = a7;
  v50 = (*(v39 + 88))(v44, a7);
  if (v50 == *MEMORY[0x1E699D9D0])
  {
    v143 = a11;
    v51 = *(v39 + 96);
    v119 = a7;
    v51(v44, a7);
    v122 = v35;
    (*(v35 + 32))(v38, v44, v34);
    v52 = v129;
    v117 = *(v129 + 56);
    v53 = v130;
    v54 = v117(v151, 1, 1, v130);
    v142 = &v116;
    v55 = MEMORY[0x1EEE9AC00](v54);
    v140 = &v116 - 18;
    v132 = *(v34 + 16);
    v133 = *(v34 + 24);
    v56 = v133;
    *(&v116 - 16) = v132;
    *(&v116 - 15) = v56;
    v57 = v161;
    *(&v116 - 14) = v157;
    *(&v116 - 13) = v57;
    v126 = *(v34 + 32);
    *(&v116 - 12) = v126;
    v125 = *(v34 + 40);
    *(&v116 - 11) = v125;
    v124 = *(v34 + 48);
    *(&v116 - 10) = v124;
    v118 = *(v34 + 56);
    *(&v116 - 9) = v118;
    v131 = *(v34 + 64);
    *(&v116 - 8) = v131;
    v123 = *(v34 + 72);
    v58 = v143;
    *(&v116 - 7) = v123;
    *(&v116 - 6) = v58;
    v59 = v162;
    v60 = v137;
    *(&v116 - 5) = v162;
    *(&v116 - 4) = v60;
    *(&v116 - 3) = v138;
    v115 = v38;
    v61 = v30;
    v62 = v59;
    v63 = *(v52 + 16);
    v64 = &v38[*(v34 + 92)];
    v121 = v34;
    v138 = v40;
    v120 = v38;
    v63(v154, v64, v53, v55);
    v65 = v152;
    (v63)(v152, &v38[*(v34 + 96)], v53);
    v66 = v62;
    v67 = v61;
    v117(v65, 0, 1, v53);
    v68 = v128;
    v69 = v119;
    v127(v128, v144, v119);
    v70 = (*(v39 + 80) + 128) & ~*(v39 + 80);
    v71 = swift_allocObject();
    v72 = v133;
    *(v71 + 16) = v132;
    *(v71 + 24) = v72;
    v73 = v161;
    *(v71 + 32) = v157;
    *(v71 + 40) = v73;
    *&v74 = v126;
    *(&v74 + 1) = v125;
    *&v75 = v124;
    *(&v75 + 1) = v118;
    *(v71 + 48) = v74;
    *(v71 + 64) = v75;
    v76 = v123;
    *(v71 + 80) = v131;
    *(v71 + 88) = v76;
    v77 = v143;
    *(v71 + 96) = v143;
    *(v71 + 104) = v66;
    v78 = v147;
    *(v71 + 112) = v145;
    *(v71 + 120) = v78;
    (*(v39 + 32))(v71 + v70, v68, v69);

    v115 = v77;
    v79 = v153;
    sub_1E5B3CC94();
    v80 = v139;
    v81 = v120;
    v146(v120);
    v82 = sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
    v83 = v135;
    v84 = v149;
    v85 = v161;
    MEMORY[0x1E6935CB0](v80, v149, v161, v82);
    (*(v141 + 8))(v80, v85);
    (*(v155 + 8))(v79, v84);
    v163[0] = v82;
    v163[1] = v162;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v67, v163);
    v87 = v134;
    sub_1E5AF144C();
    v88 = *(v136 + 8);
    v88(v83, v67);
    sub_1E5AF144C();
    v89 = sub_1E5B2611C();
    v90 = v150;
    sub_1E5AF7058(v83, v67, v156, WitnessTable, v89);
    v88(v83, v67);
    v88(v87, v67);
    (*(v122 + 8))(v81, v121);
LABEL_8:
    v165[0] = sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
    v165[1] = v162;
    v111 = swift_getWitnessTable(MEMORY[0x1E697E858], v67, v165);
    v112 = sub_1E5B2611C();
    v164[0] = v111;
    v164[1] = v112;
    v113 = v159;
    swift_getWitnessTable(MEMORY[0x1E697F968], v159, v164);
    sub_1E5AF144C();
    return (*(v158 + 8))(v90, v113);
  }

  v91 = v153;
  v92 = v155;
  v93 = v150;
  v161 = v30;
  if (v50 == *MEMORY[0x1E699D9C8])
  {
    (*(v39 + 96))(v44, v49);
    v94 = *(v34 + 24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032EC0, &unk_1E5B45B70);
    v95 = *&v44[*(swift_getTupleTypeMetadata2() + 48)];
    v96 = v132;
    v97 = v131;
    v98 = v133;
    v99 = (*(v132 + 104))(v131, *MEMORY[0x1E699DA10], v133);
    v100 = sub_1E5B3C734(v97, v95, v99);

    (*(v96 + 8))(v97, v98);
    if (v100)
    {
      v101 = 1;
      v90 = v93;
      v102 = v143;
      v103 = v142;
      v104 = v140;
    }

    else
    {
      sub_1E5B3CC84();
      v105 = v124;
      sub_1E5B3CF74();
      sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
      v106 = v123;
      v107 = v149;
      sub_1E5B3D584();
      (*(v125 + 8))(v105, v126);
      (*(v92 + 8))(v91, v107);
      v103 = v142;
      v104 = v140;
      v102 = v143;
      (v142[4])(v140, v106, v143);
      v101 = 0;
      v90 = v93;
    }

    (v103[7])(v104, v101, 1, v102);
    v108 = sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958], MEMORY[0x1E699D950]);
    v67 = v161;
    v166[0] = v108;
    v166[1] = v162;
    v109 = swift_getWitnessTable(MEMORY[0x1E697E858], v161, v166);
    v110 = sub_1E5B2611C();
    sub_1E5AF7150(v104, v67, v156, v109, v110);
    sub_1E5AEDBAC(v104);
    (*(*(v94 - 8) + 8))(v44, v94);
    goto LABEL_8;
  }

  result = sub_1E5B3DD94();
  __break(1u);
  return result;
}

uint64_t sub_1E5B3C47C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  v24[0] = v16;
  v24[1] = v17;
  v24[2] = v18;
  v25 = v19;
  v26 = v13;
  v27 = v20;
  v21 = type metadata accessor for LibraryDataItem(0, v24);
  a1(a3 + *(v21 + 88));
  sub_1E5AF144C();
  v22 = *(v9 + 8);
  v22(v11, a6);
  sub_1E5AF144C();
  return (v22)(v15, a6);
}

uint64_t sub_1E5B3C5F4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v19 = v14;
  v20 = v8;
  v21 = v15;
  v16 = type metadata accessor for LibraryDataItem(255, v18);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v16);
  sub_1E5B3CCF4();
  sub_1E5B3CCE4();
  a1(v10);
  return (*(v7 + 8))(v10, a5);
}

uint64_t sub_1E5B3C734(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1E5B3CD04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1E5B3CAAC(&qword_1ED032EC8, MEMORY[0x1E699DA18], MEMORY[0x1E699DA20]), v8 = sub_1E5B3D954(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v5 + 16;
    v13 = *(v5 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v4);
      sub_1E5B3CAAC(&qword_1ED032ED0, MEMORY[0x1E699DA18], MEMORY[0x1E699DA28]);
      v16 = sub_1E5B3D974();
      (*v15)(v7, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E5B3C998()
{
  v8 = *(v0 + 16);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v9[1] = *(v0 + 48);
  v9[0] = v8;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v5 = type metadata accessor for LibraryDataItem(255, v9);
  swift_getWitnessTable(protocol conformance descriptor for LibraryDataItem<A, B>, v5);
  v6 = *(sub_1E5B3CCF4() - 8);
  return sub_1E5B3C5F4(*(v0 + 112), *(v0 + 120), v0 + ((*(v6 + 80) + 128) & ~*(v6 + 80)), v8, *(&v8 + 1));
}

uint64_t sub_1E5B3CAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}