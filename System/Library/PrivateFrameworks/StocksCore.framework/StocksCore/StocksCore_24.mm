BOOL (*sub_1DAC79718())(__int128 *a1)
{
  sub_1DAAD4C70(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;
  return sub_1DAC79B44;
}

BOOL sub_1DAC797E4(uint64_t a1, uint64_t a2)
{
  sub_1DAAD4C70(a1, v13);
  sub_1DAAD4C70(a2, &v17);
  if (v16 > 4u)
  {
    if (v16 > 6u)
    {
      if (v16 != 7)
      {
        if (v16 == 9)
        {
          v5 = vorrq_s8(v14, v15);
          v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v13[1];
          if (v13[0] != 3 || v6)
          {
            if (v13[0] != 4)
            {
              goto LABEL_33;
            }

            v9 = !v6 && v21 == 9;
            if (!v9 || v17 != 4)
            {
              goto LABEL_33;
            }
          }

          else if (v21 != 9 || v17 != 3)
          {
            goto LABEL_33;
          }

          v10 = vorrq_s8(v19, v20);
          if (!(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v18))
          {
            v3 = 1;
            goto LABEL_34;
          }
        }

LABEL_33:
        sub_1DAAD4D7C(&v17);
        v3 = 0;
        goto LABEL_34;
      }

      sub_1DAAD4C70(v13, &v11);
      v4 = v11;
      if (v21 != 7)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v16 == 5)
      {
        sub_1DAAD4C70(v13, &v11);
        if (v21 != 5)
        {
          goto LABEL_33;
        }

LABEL_26:
        v3 = *&v11 == *&v17;
        goto LABEL_34;
      }

      if (v16 != 6)
      {
        goto LABEL_33;
      }

      sub_1DAAD4C70(v13, &v11);
      v4 = v11;
      if (v21 != 6)
      {
        goto LABEL_32;
      }
    }

    v7 = sub_1DAC37150(v4, v17);
    goto LABEL_31;
  }

  if (v16 > 2u)
  {
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        goto LABEL_33;
      }

      sub_1DAAD4C70(v13, &v11);
      if (v21 != 4)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    sub_1DAAD4C70(v13, &v11);
    if (v21 == 3)
    {
      v7 = sub_1DAA51414(v11, v17);
LABEL_31:
      v3 = v7;

      goto LABEL_34;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!v16)
  {
    sub_1DAAD4C70(v13, &v11);
    swift_unknownObjectRelease();
    if (!v21)
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v18);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v3 = 1;
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_33;
  }

  if (v16 != 2 || v21 != 2)
  {
    goto LABEL_33;
  }

  sub_1DAAD4D7C(&v17);
  v3 = 1;
LABEL_34:
  sub_1DAAD4D7C(v13);
  return v3;
}

uint64_t sub_1DAC79A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 49))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC79ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1DAC79B0C(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DAC79B48()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC79B80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

void *sub_1DAC79BE4()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t sub_1DAC79C34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a7 = result;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  *(a7 + 24) = a10;
  *(a7 + 32) = a11;
  *(a7 + 40) = a2;
  *(a7 + 48) = a12;
  *(a7 + 56) = a13;
  *(a7 + 64) = a14;
  *(a7 + 72) = a15;
  *(a7 + 80) = a16;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  *(a7 + 120) = a17;
  *(a7 + 128) = a18;
  return result;
}

int8x16_t sub_1DAC79C6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 112);
  *a4 = a2;
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 24) = round(v4 * 10000.0) / 10000.0;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  v9 = *(a1 + 96);
  *(a4 + 48) = *(a1 + 40);
  *(a4 + 64) = v9;
  *(a4 + 80) = v8;
  *(a4 + 88) = a3;
  *(a4 + 96) = v7;
  v10 = *(a1 + 64);
  *(a4 + 104) = *(a1 + 80);
  result = vextq_s8(v10, v10, 8uLL);
  *(a4 + 120) = result;
  return result;
}

uint64_t sub_1DAC79D0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE11EA20 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EE11EA78;
  v11[6] = xmmword_1EE11EA88;
  v11[7] = xmmword_1EE11EA98;
  v2 = xmmword_1EE11EA38;
  v3 = xmmword_1EE11EA48;
  v11[2] = xmmword_1EE11EA48;
  v11[3] = xmmword_1EE11EA58;
  v4 = xmmword_1EE11EA58;
  v5 = xmmword_1EE11EA68;
  v11[4] = xmmword_1EE11EA68;
  v11[5] = xmmword_1EE11EA78;
  v6 = xmmword_1EE11EA28;
  v11[0] = xmmword_1EE11EA28;
  v11[1] = xmmword_1EE11EA38;
  v7 = xmmword_1EE11EA98;
  *(a1 + 96) = xmmword_1EE11EA88;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1EE11EAA8;
  *(a1 + 128) = qword_1EE11EAA8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAAA5860(v11, v10);
}

uint64_t sub_1DAC79DDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1DAC79E24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DAC79EA4()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC79ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioUpsellConfig(0) + 20);

  return sub_1DAA4DC58(v3, a1);
}

uint64_t sub_1DAC79F60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, void *a8@<X8>)
{
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  if (!a2)
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  sub_1DAA4DC58(a3, &v22 - v15);
  if (a5)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a4;
  }

  v18 = sub_1DACB9F04();

  if (v18 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18 == 1;
  }

  sub_1DAA4DDD0(a3);
  *a8 = a1;
  a8[1] = a2;
  v20 = type metadata accessor for AudioUpsellConfig(0);
  result = sub_1DAB4CCC4(v16, a8 + v20[5]);
  *(a8 + v20[6]) = v17;
  *(a8 + v20[7]) = v19;
  return result;
}

uint64_t sub_1DAC7A0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  a5[1] = a2;
  v10 = type metadata accessor for AudioUpsellConfig(0);
  result = sub_1DAB4CCC4(a3, a5 + v10[5]);
  *(a5 + v10[6]) = a6;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_1DAC7A148(char a1)
{
  if (!a1)
  {
    return 0x6E696E6E69676562;
  }

  if (a1 == 1)
  {
    return 0x656C6464696DLL;
  }

  return 6581861;
}

uint64_t sub_1DAC7A198(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E696E6E69676562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C6464696DLL;
  if (*a2 != 1)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E696E6E69676562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC7A284()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC7A320(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC7A3A8(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC7A440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC7B934(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC7A470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xE600000000000000;
  v5 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v5 = 6581861;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E696E6E69676562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC7A4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v62 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - v8;
  sub_1DAC7BA38(0, &qword_1ECBE98E8, MEMORY[0x1E69E6F48]);
  v11 = v10;
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v14 = type metadata accessor for AudioUpsellConfig(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC7B980();
  v17 = v74;
  sub_1DACBA2F4();
  if (v17)
  {
    v39 = a1;
  }

  else
  {
    v68 = v16;
    v69 = v14;
    v74 = v9;
    v80 = MEMORY[0x1E69E7CC0];
    v79 = 0;
    sub_1DACB9F84();
    v18 = v78;
    v67 = v77;
    if (v78)
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_beginAccess();
      v19 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      *(v22 + 4) = 0x696669746E656469;
      *(v22 + 5) = 0xEA00000000007265;
      v80 = v19;
      swift_endAccess();
    }

    LOBYTE(v77) = 1;
    v23 = sub_1DACB7AB4();
    sub_1DAC7BDC4(&qword_1EE1252A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v24 = v72;
    sub_1DACB9F84();
    v25 = (*(*(v23 - 8) + 48))(v24, 1, v23);
    v66 = v18;
    if (v25 == 1)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DAA9A3B0(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = 7107189;
      *(v28 + 5) = 0xE300000000000000;
      v80 = v19;
      swift_endAccess();
    }

    sub_1DAB4CCC4(v72, v74);
    v79 = 2;
    sub_1DACB9F84();
    v29 = v77;
    v30 = v78;
    if (v78)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v69;
      v33 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1DAA9A3B0(0, *(v19 + 2) + 1, 1, v19);
      }

      v34 = v19;
      v35 = *(v19 + 2);
      v36 = v34;
      v37 = *(v34 + 3);
      if (v35 >= v37 >> 1)
      {
        v36 = sub_1DAA9A3B0((v37 > 1), v35 + 1, 1, v36);
      }

      *(v36 + 2) = v35 + 1;
      v38 = &v36[16 * v35];
      v19 = v36;
      *(v38 + 4) = 0x6E6F697461727564;
      *(v38 + 5) = 0xE800000000000000;
      v80 = v36;
      swift_endAccess();
    }

    else
    {
      v32 = v69;
      v33 = v66;
    }

    LOBYTE(v77) = 3;
    sub_1DACB9F84();
    v64 = v11;
    v65 = v13;
    v63 = a1;
    v72 = 0;
    if (v76)
    {
      v69 = v75;
      v41 = v19;
      v42 = v71;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DAA9A3B0(0, *(v19 + 2) + 1, 1, v19);
      }

      v42 = v71;
      v44 = *(v19 + 2);
      v43 = *(v19 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v61 = sub_1DAA9A3B0((v43 > 1), v44 + 1, 1, v19);
        v45 = v44 + 1;
        v19 = v61;
      }

      v69 = 0;
      v41 = v19;
      *(v19 + 2) = v45;
      v46 = &v19[16 * v44];
      strcpy(v46 + 32, "playPosition");
      v46[45] = 0;
      *(v46 + 23) = -5120;
    }

    v47 = v67;
    if (!v33)
    {
      v47 = 0.0;
    }

    v71 = *&v47;
    if (v33)
    {
      v48 = v33;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v49 = v74;
    sub_1DAA4DC58(v74, v42);
    if (v30)
    {
      v29 = 0.0;
    }

    v50 = sub_1DACB9F04();

    if (v50 == 2)
    {
      v51 = 2;
    }

    else
    {
      v51 = v50 == 1;
    }

    sub_1DAA4DDD0(v49);
    v52 = v68;
    *v68 = v71;
    *(v52 + 8) = v48;
    sub_1DAB4CCC4(v42, v52 + v32[5]);
    *(v52 + v32[6]) = v29;
    *(v52 + v32[7]) = v51;
    if (*(v41 + 2))
    {
      sub_1DAA5311C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1DACC1D20;
      sub_1DAA613E8();
      *(v53 + 56) = v54;
      *(v53 + 64) = sub_1DAC7BDC4(&qword_1EE123E80, sub_1DAA613E8, MEMORY[0x1E6969E28]);
      *(v53 + 32) = v41;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v55 = sub_1DACB9AD4();
      v56 = sub_1DACB9914();
      sub_1DACB8C64("loaded Audio Upsell configuration with fallback values for keys: %@", 67, 2, &dword_1DAA3F000, v55, v56, v53);
    }

    else
    {
      sub_1DAA41DCC();
      v55 = sub_1DACB9AD4();
      v57 = sub_1DACB9914();
      sub_1DACB8C64("loaded Audio Upsell configuration with no need for fallback values", 66, 2, &dword_1DAA3F000, v55, v57, MEMORY[0x1E69E7CC0]);
    }

    v58 = v70;
    v59 = v73;
    v60 = v64;

    (*(v59 + 8))(v65, v60);

    sub_1DAC7B9D4(v52, v58);
    v39 = v63;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1DAC7AE1C(void *a1)
{
  sub_1DAC7BA38(0, &qword_1ECBE98F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC7B980();
  sub_1DACBA304();
  v9[15] = 0;
  sub_1DACBA094();
  if (v1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for AudioUpsellConfig(0);
  v9[14] = 1;
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  sub_1DAC7BA9C();
  sub_1DACBA0E4();
  v9[13] = 2;
  sub_1DACBA0B4();
  v9[12] = 3;
  sub_1DACBA094();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAC7B0C0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC7B188(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC7B23C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC7B300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC7BD1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC7B330(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461727564;
  if (*v1 != 2)
  {
    v5 = 0x69736F5079616C70;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 7107189;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DAC7B3B4()
{
  v1 = 0x696669746E656469;
  v2 = 0x6E6F697461727564;
  if (*v0 != 2)
  {
    v2 = 0x69736F5079616C70;
  }

  if (*v0)
  {
    v1 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAC7B434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC7BD1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC7B45C(uint64_t a1)
{
  v2 = sub_1DAC7B980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC7B498(uint64_t a1)
{
  v2 = sub_1DAC7B980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC7B50C(void *a1, void *a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  sub_1DAA52DE4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1DACBA174() & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = v7;
  v15 = type metadata accessor for AudioUpsellConfig(0);
  v16 = v15[5];
  v17 = *(v12 + 48);
  sub_1DAA4DC58(a1 + v16, v14);
  sub_1DAA4DC58(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1DAA4DC58(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      v19 = v32;
      (*(v5 + 32))(v32, &v14[v17], v4);
      sub_1DAC7BDC4(&qword_1EE1252B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v20 = sub_1DACB9264();
      v21 = *(v5 + 8);
      v21(v19, v4);
      v21(v10, v4);
      sub_1DAA4DDD0(v14);
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1DAC7BD68(v14);
    goto LABEL_15;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1DAA4DDD0(v14);
LABEL_10:
  if (*(a1 + v15[6]) == *(a2 + v15[6]))
  {
    v22 = 0xE900000000000067;
    v23 = 0x6E696E6E69676562;
    v24 = v15[7];
    v25 = *(a1 + v24);
    v26 = *(a2 + v24);
    if (v25)
    {
      if (v25 == 1)
      {
        v27 = 0xE600000000000000;
        v28 = 0x656C6464696DLL;
        if (!v26)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v27 = 0xE300000000000000;
        v28 = 6581861;
        if (!v26)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v28 = 0x6E696E6E69676562;
      v27 = 0xE900000000000067;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

    if (v26 != 1)
    {
      v22 = 0xE300000000000000;
      if (v28 != 6581861)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v22 = 0xE600000000000000;
    v23 = 0x656C6464696DLL;
LABEL_22:
    if (v28 != v23)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (v27 == v22)
    {

      v29 = 1;
      return v29 & 1;
    }

LABEL_27:
    v29 = sub_1DACBA174();

    return v29 & 1;
  }

LABEL_15:
  v29 = 0;
  return v29 & 1;
}

unint64_t sub_1DAC7B934(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAC7B980()
{
  result = qword_1ECBE98F0;
  if (!qword_1ECBE98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98F0);
  }

  return result;
}

uint64_t sub_1DAC7B9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioUpsellConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAC7BA38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC7B980();
    v7 = a3(a1, &type metadata for AudioUpsellConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAC7BA9C()
{
  result = qword_1ECBE9900;
  if (!qword_1ECBE9900)
  {
    sub_1DAA5311C(255, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    sub_1DAC7BDC4(&qword_1EE1252B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9900);
  }

  return result;
}

unint64_t sub_1DAC7BB78()
{
  result = qword_1ECBE9908;
  if (!qword_1ECBE9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9908);
  }

  return result;
}

unint64_t sub_1DAC7BC18()
{
  result = qword_1ECBE9910;
  if (!qword_1ECBE9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9910);
  }

  return result;
}

unint64_t sub_1DAC7BC70()
{
  result = qword_1ECBE9918;
  if (!qword_1ECBE9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9918);
  }

  return result;
}

unint64_t sub_1DAC7BCC8()
{
  result = qword_1ECBE9920;
  if (!qword_1ECBE9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9920);
  }

  return result;
}

unint64_t sub_1DAC7BD1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC7BD68(uint64_t a1)
{
  sub_1DAA52DE4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC7BDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAC7BE0C(uint64_t a1)
{
  v3 = sub_1DACB7DC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v13[1] = v1;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DAB25F08(0, v7, 0);
    v8 = v14;
    v9 = a1 + 40;
    do
    {
      sub_1DACB71E4();
      sub_1DACB7DD4();
      v14 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1DAB25F08((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
      v9 += 16;
      --v7;
    }

    while (v7);
  }

  return v8;
}

double sub_1DAC7BFA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1DAB09820(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1DAA7C694(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DAC7C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-v8];
  v12[15] = v5;
  v10 = sub_1DACB88D4();
  sub_1DAC8ED5C(0, &qword_1EE123CD0, sub_1DAC8AC48, &type metadata for AppConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  sub_1DAA4680C(&qword_1EE1240E0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1DACB9F84();
  if (!v3)
  {
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      sub_1DAC8AA30(v5, a2);
    }

    sub_1DAC8AB40(v9, a3);
  }
}

uint64_t sub_1DAC7C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, char a28, double a29, char a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, double a37, char a38, double a39, char a40, double a41, char a42, double a43, char a44, double a45, char a46, unint64_t a47, unint64_t a48, double a49, char a50, double a51, char a52, double a53, char a54, double a55, char a56, double a57, char a58, uint64_t a59, char a60, uint64_t a61, char a62, uint64_t a63)
{
  v86 = MEMORY[0x1EEE9AC00](a1);
  v447 = v87;
  v442 = v88;
  v444 = v89;
  v438 = v90;
  v440 = v91;
  v436 = v92;
  v402 = v93;
  v400 = v86;
  v95 = v94;
  v96 = STACK[0x2B50];
  v97 = STACK[0x2B48];
  v588 = *(STACK[0x2B20] + 8);
  v387 = *STACK[0x2B20];
  v388 = *(STACK[0x2B20] + 16);
  v98 = *(STACK[0x2B20] + 24);
  v394 = *STACK[0x2B28];
  v418 = *(STACK[0x2B28] + 8);
  v390 = *(STACK[0x2B28] + 16);
  v393 = *(STACK[0x2B28] + 24);
  v395 = *(STACK[0x2B28] + 32);
  v389 = *(STACK[0x2B28] + 40);
  v391 = *(STACK[0x2B28] + 48);
  v396 = *(STACK[0x2B28] + 56);
  v392 = *(STACK[0x2B28] + 64);
  v419 = *STACK[0x2B30];
  v420 = *(STACK[0x2B30] + 8);
  v99.i32[1] = HIDWORD(*(STACK[0x2B30] + 8));
  v99.i32[0] = *(STACK[0x2B48] + 16);
  v519 = vmovl_u8(v99).u64[0];
  v100 = *(STACK[0x2B48] + 352);
  v682 = *(STACK[0x2B48] + 336);
  v683 = v100;
  v585 = *(v97 + 376);
  v684 = *(v97 + 368);
  v101 = *(v97 + 288);
  v678 = *(v97 + 272);
  v679 = v101;
  v102 = *(v97 + 320);
  v680 = *(v97 + 304);
  v681 = v102;
  v103 = *(v97 + 224);
  v674 = *(v97 + 208);
  v675 = v103;
  v104 = *(v97 + 256);
  v676 = *(v97 + 240);
  v677 = v104;
  v673[0] = *(v97 + 385);
  *(v673 + 3) = *(v97 + 388);
  v672[0] = *(v97 + 401);
  *(v672 + 3) = *(v97 + 404);
  v670 = *(v97 + 482);
  v671 = *(v97 + 486);
  v424 = *v96;
  v386 = *(v96 + 16);
  v687[0] = *(v96 + 17);
  *(v687 + 3) = *(v96 + 20);
  v385 = *(v96 + 24);
  v105 = *(v96 + 32);
  v686[0] = *(v96 + 33);
  *(v686 + 3) = *(v96 + 36);
  v106 = *(v96 + 40);
  *(v685 + 3) = *(v96 + 52);
  v685[0] = *(v96 + 49);
  v382 = *(v96 + 48);
  v380 = *(v96 + 56);
  v381 = v106;
  v383 = *(v96 + 64);
  v384 = v105;
  v425 = *STACK[0x2B58];
  v522 = *(STACK[0x2B58] + 8);
  v108 = *(STACK[0x2B58] + 16);
  v107 = *(STACK[0x2B58] + 24);
  v427 = *(STACK[0x2B58] + 32);
  v426 = *(STACK[0x2B58] + 40);
  v109 = *(STACK[0x2B58] + 48);
  v110 = *(STACK[0x2B58] + 56);
  v429 = *(STACK[0x2B58] + 64);
  v428 = *(STACK[0x2B58] + 72);
  v532 = *(STACK[0x2B58] + 80);
  v530 = *(STACK[0x2B58] + 88);
  v528 = *(STACK[0x2B58] + 96);
  v526 = *(STACK[0x2B58] + 104);
  v111 = *(STACK[0x2B58] + 120);
  v535 = *(STACK[0x2B58] + 112);
  v112 = *(STACK[0x2B58] + 128);
  v432 = *(STACK[0x2B58] + 136);
  v430 = *(STACK[0x2B58] + 144);
  v434 = *(STACK[0x2B58] + 152);
  v423 = *(STACK[0x2B58] + 160);
  v416 = STACK[0x2B10];
  v415 = STACK[0x2B18];
  v414 = STACK[0x2B00];
  v413 = STACK[0x2B08];
  v412 = STACK[0x2AF0];
  v411 = STACK[0x2AF8];
  v410 = STACK[0x2AE0];
  v409 = STACK[0x2AE8];
  v408 = STACK[0x2AD0];
  v407 = STACK[0x2AD8];
  v406 = LOBYTE(STACK[0x2AC9]);
  v405 = LOBYTE(STACK[0x2AC8]);
  v404 = STACK[0x2AB8];
  v403 = STACK[0x2AC0];
  v401 = STACK[0x2AB0];
  v399 = LOBYTE(STACK[0x2AA1]);
  v398 = STACK[0x2AA0];
  v397 = STACK[0x2A90];
  v113 = STACK[0x2DF0];
  v114 = STACK[0x2D78];
  v465 = *v97;
  v462 = *(v97 + 8);
  v417 = *(v97 + 20);
  v457 = *(v97 + 24);
  v498 = *(v97 + 32);
  v455 = *(v97 + 40);
  v559 = *(v97 + 48);
  v556 = *(v97 + 56);
  v541 = *(v97 + 64);
  v538 = *(v97 + 72);
  v422 = *(v97 + 80);
  v487 = *(v97 + 88);
  v477 = *(v97 + 96);
  v474 = *(v97 + 104);
  v468 = *(v97 + 112);
  v562 = *(v97 + 120);
  v504 = *(v97 + 128);
  v510 = *(v97 + 136);
  v421 = *(v97 + 144);
  v471 = *(v97 + 152);
  v553 = *(v97 + 160);
  v550 = *(v97 + 168);
  v547 = *(v97 + 176);
  v507 = *(v97 + 184);
  v501 = *(v97 + 192);
  v544 = *(v97 + 200);
  v453 = *(v97 + 384);
  v516 = *(v97 + 392);
  v449 = *(v97 + 400);
  v583 = *(v97 + 408);
  v580 = *(v97 + 416);
  v577 = *(v97 + 424);
  v495 = *(v97 + 432);
  v574 = *(v97 + 440);
  v571 = *(v97 + 448);
  v513 = *(v97 + 456);
  v568 = *(v97 + 464);
  v565 = *(v97 + 472);
  v483 = *(v97 + 480);
  v480 = *(v97 + 481);
  v491 = *(v97 + 488);
  v459 = *(v97 + 496);
  v451 = *(v97 + 504);
  memcpy(v688, STACK[0x2B60], 0x8DCuLL);
  v115 = v447;
  v446 = v114[1];
  v448 = *v114;
  *v95 = v400 & 1;
  v116 = v402;
  v117 = MEMORY[0x1E69E7CC0];
  if (!v402)
  {
    v116 = MEMORY[0x1E69E7CC0];
  }

  v118 = v436;
  if (!v436)
  {
    v118 = MEMORY[0x1E69E7CC0];
  }

  *(v95 + 8) = v116;
  *(v95 + 16) = v118;
  v119 = 3;
  v120 = v440;
  if (v438)
  {
    v120 = 3;
  }

  v121 = v444;
  if (v442)
  {
    v121 = 1;
  }

  *(v95 + 24) = v120;
  *(v95 + 32) = v121;
  v122 = 0x40F5180000000000;
  if (a17)
  {
    v115 = 86400.0;
  }

  v123 = 0x410FA40000000000;
  if ((a19 & 1) == 0)
  {
    v123 = a18;
  }

  v124 = 100;
  if (a21)
  {
    a20 = 100;
  }

  if ((a23 & 1) == 0)
  {
    v124 = a22;
  }

  *(v95 + 56) = a20;
  *(v95 + 64) = v124;
  if (a25)
  {
    a24 = 1;
  }

  if (a26)
  {
    v127 = a26;
  }

  else
  {
    v127 = v117;
  }

  *(v95 + 72) = a24;
  *(v95 + 80) = v127;
  *(v95 + 88) = (a27 == 2) | a27 & 1;
  *(v95 + 89) = (a28 == 2) | a28 & 1;
  if (a30)
  {
    a29 = 0.001;
  }

  *(v95 + 104) = (a31 == 2) | a31 & 1;
  *(v95 + 105) = (a32 == 2) | a32 & 1;
  if (a34)
  {
    a33 = 3;
  }

  if ((a36 & 1) == 0)
  {
    v119 = a35;
  }

  *(v95 + 112) = a33;
  *(v95 + 120) = v119;
  if (a38)
  {
    v130 = 86400.0;
  }

  else
  {
    v130 = a37;
  }

  if (a40)
  {
    v131 = 60.0;
  }

  else
  {
    v131 = a39;
  }

  if (a42)
  {
    a41 = 300.0;
  }

  v133 = 10.0;
  if ((a44 & 1) == 0)
  {
    v133 = a43;
  }

  if (a46)
  {
    a45 = 1200.0;
  }

  v135 = 0xD00000000000002CLL;
  if (a48)
  {
    v135 = a47;
  }

  v136 = 0x80000001DACEDBE0;
  if (a48)
  {
    v136 = a48;
  }

  *(v95 + 168) = v135;
  *(v95 + 176) = v136;
  if (a50)
  {
    a49 = 600.0;
  }

  if (a52)
  {
    a51 = 600.0;
  }

  v139 = 0x4122750000000000;
  if (a54)
  {
    a53 = 604800.0;
  }

  if (a56)
  {
    a55 = 604800.0;
  }

  if (a58)
  {
    a57 = 604800.0;
  }

  if ((a60 & 1) == 0)
  {
    v139 = a59;
  }

  v143 = 0x40BC200000000000;
  if ((a62 & 1) == 0)
  {
    v143 = a61;
  }

  v144 = 0x405E000000000000;
  if ((a64 & 1) == 0)
  {
    v144 = a63;
  }

  *(v95 + 248) = (a65 == 2) | a65 & 1;
  *(v95 + 249) = a66 & 1;
  *(v95 + 250) = a67 & 1;
  v145 = 12;
  if (a69)
  {
    a68 = 12;
  }

  *(v95 + 40) = v115;
  *(v95 + 48) = v123;
  *(v95 + 96) = a29;
  *(v95 + 128) = v130;
  *(v95 + 136) = v131;
  *(v95 + 144) = a41;
  *(v95 + 152) = v133;
  *(v95 + 160) = a45;
  *(v95 + 184) = a49;
  *(v95 + 192) = a51;
  *(v95 + 200) = a53;
  *(v95 + 208) = a55;
  if ((a71 & 1) == 0)
  {
    v145 = a70;
  }

  *(v95 + 256) = a68;
  *(v95 + 264) = v145;
  v443 = *v113;
  v445 = *(v113 + 8);
  *(v95 + 216) = a57;
  *(v95 + 224) = v139;
  v147 = 0x40CC200000000000;
  v441 = *(v113 + 16);
  v439 = *(v113 + 24);
  v437 = *(v113 + 32);
  *(v95 + 232) = v143;
  *(v95 + 240) = v144;
  if (a73)
  {
    a72 = 14400.0;
  }

  if (a75)
  {
    a74 = 14400.0;
  }

  *(v95 + 272) = a72;
  *(v95 + 280) = a74;
  if (a77)
  {
    a76 = 600.0;
  }

  if (a79)
  {
    a78 = 60.0;
  }

  *(v95 + 288) = a76;
  *(v95 + 296) = a78;
  if ((a81 & 1) == 0)
  {
    v147 = a80;
  }

  if (a83)
  {
    a82 = 600.0;
  }

  *(v95 + 304) = v147;
  *(v95 + 312) = a82;
  if (a85)
  {
    a84 = 60.0;
  }

  *(v95 + 320) = a84;
  v154 = 2;
  if ((v397 & 1) == 0)
  {
    v154 = a86;
  }

  *(v95 + 328) = v154;
  v155 = *&STACK[0x2A98];
  if (v398)
  {
    v155 = 1.5;
  }

  *(v95 + 336) = v155;
  *(v95 + 344) = (v399 == 2) | v399 & 1;
  if ((v401 & 1) == 0)
  {
    v122 = STACK[0x2AA8];
  }

  v157 = v403;
  v156 = v404;
  if (!v403)
  {
    v156 = 0x34343334312D5357;
    v157 = 0xEC0000006E652D31;
  }

  *(v95 + 1384) = v156;
  *(v95 + 1392) = v157;
  v158 = v588;
  *(v95 + 1400) = (v405 == 2) | v405 & 1;
  *(v95 + 1401) = (v406 == 2) | v406 & 1;
  v159 = 0xFFFFFFFFLL;
  if ((v407 & 1) == 0)
  {
    v159 = v408;
  }

  *(v95 + 1408) = v159;
  v160 = qword_1F567D1D0;
  if ((v409 & 1) == 0)
  {
    v160 = v410;
  }

  *(v95 + 1416) = v160;
  v161 = 0x34343334312D5359;
  if (v411)
  {
    v161 = v412;
    v162 = v411;
  }

  else
  {
    v162 = 0xEC0000006E652D31;
  }

  *(v95 + 1424) = v161;
  *(v95 + 1432) = v162;
  v163 = v414;
  if (!v413)
  {
    v163 = 0;
  }

  v164 = 0xE000000000000000;
  if (v413)
  {
    v164 = v413;
  }

  *(v95 + 1440) = v163;
  *(v95 + 1448) = v164;
  v165 = 500000;
  if ((v415 & 1) == 0)
  {
    v165 = v416;
  }

  *(v95 + 1456) = v165;
  *(v95 + 352) = v122;
  if (v588)
  {
    v167 = v387;
    v166 = v388;
  }

  else
  {
    v158 = 0x80000001DACE6EB0;
    v166 = MEMORY[0x1E69E7CC0];
    v98 = 0x40D5180000000000;
    v167 = 0xD000000000000017;
  }

  v168 = STACK[0x2B40];
  v169 = STACK[0x2B38];
  *(v95 + 1464) = v167;
  *(v95 + 1472) = v158;
  *(v95 + 1480) = v166;
  *(v95 + 1488) = v98;
  v170 = v418;
  if (v418)
  {
    v172 = v395;
    v171 = v396;
    v173 = v393;
    v174 = v394;
    v175 = v391;
    v176 = v392;
    v177 = v389;
    v178 = v390;
  }

  else
  {
    v171 = 0;
    v170 = 0x80000001DACEDC10;
    v172 = 0x80000001DACEDC40;
    v174 = 0xD00000000000002FLL;
    v173 = 0xD00000000000005ELL;
    v176 = 0xE000000000000000;
    v175 = 0xE200000000000000;
    v178 = MEMORY[0x1E69E7CC0];
    v177 = 23899;
  }

  *v650 = v673[0];
  *v653 = v672[0];
  v665 = v670;
  *(v95 + 1496) = v174;
  *(v95 + 1504) = v170;
  *(v95 + 1512) = v178;
  *(v95 + 1520) = v173;
  *(v95 + 1528) = v172;
  *(v95 + 1536) = v177;
  *(v95 + 1544) = v175;
  *(v95 + 1552) = v171;
  *(v95 + 1560) = v176;
  v179 = v419 != 2;
  *(v95 + 1568) = v179 & v419;
  v180 = vdup_n_s32(v179);
  if (!v169)
  {
    v169 = MEMORY[0x1E69E7CC0];
  }

  if (!v168)
  {
    v168 = MEMORY[0x1E69E7CC0];
  }

  *(v95 + 400) = v169;
  *(v95 + 408) = v168;
  v612 = v417;
  *v615 = *(v97 + 33);
  *&v615[3] = *(v97 + 36);
  v647 = v684;
  *&v650[3] = *(v673 + 3);
  *&v653[3] = *(v672 + 3);
  v666 = v671;
  v181.i64[0] = v180.u32[0];
  v181.i64[1] = v180.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v187 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v181, 0x3FuLL)), v420, _Q1);
  *(v95 + 1576) = v187;
  v610[0] = v465;
  v610[1] = v462;
  v611 = vuzp1_s8(v519, *v187.i8).u32[0];
  v613 = v457;
  v614 = v498;
  v616 = v455;
  v617 = v559;
  v618 = v556;
  v619 = v541;
  v620 = v538;
  v621 = v422;
  v622 = v487;
  v623 = v477;
  v624 = v474;
  v625 = v468;
  v626 = v562;
  v627 = v504;
  v628 = v510;
  v629 = v421;
  v630 = v471;
  v631 = v553;
  v632 = v550;
  v633 = v547;
  v634 = v507;
  v635 = v501;
  v636 = v544;
  v645 = v682;
  v646 = v683;
  v641 = v678;
  v642 = v679;
  v644 = v681;
  v643 = v680;
  v637 = v674;
  v638 = v675;
  v640 = v677;
  v639 = v676;
  v648 = v585;
  v649 = v453;
  v651 = v516;
  v652 = v449;
  v654 = v583;
  v655 = v580;
  v656 = v577;
  v657 = v495;
  v658 = v574;
  v659 = v571;
  v660 = v513;
  v661 = v568;
  v662 = v565;
  v663 = v483;
  v664 = v480;
  v667 = v491;
  v668 = v459;
  v669 = v451;
  if (sub_1DAC8AA18(v610) == 1)
  {
    sub_1DAA4BB18(v591);
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v188 = qword_1EE1242C0;
    v189 = qword_1EE1242C8;
    sub_1DACB71E4();
    v559 = sub_1DAA4BBA0(v188, v189);
    v556 = v190;

    v191 = qword_1EE1242C0;
    v192 = qword_1EE1242C8;
    sub_1DACB71E4();
    v541 = sub_1DAA4C06C(v191, v192);
    v538 = v193;

    v194 = qword_1EE1242C0;
    v195 = qword_1EE1242C8;
    sub_1DACB71E4();
    v196 = sub_1DAA4C248(v194, v195);
    v198 = v197;

    v199 = qword_1EE1242C0;
    v200 = qword_1EE1242C8;
    sub_1DACB71E4();
    v201 = sub_1DAA4C424(v199, v200);
    v203 = v202;

    v204 = qword_1EE1242C0;
    v205 = qword_1EE1242C8;
    sub_1DACB71E4();
    v206 = sub_1DAA4C600(v204, v205);
    v562 = v207;

    v208 = 0;
    v209 = 0;
    v210 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v553 = 0;
    v550 = 0;
    v547 = 0;
    v215 = 0;
    v216 = 0;
    v544 = 0;
    v585 = 0;
    v217 = 0;
    v583 = 0;
    v580 = 0;
    v577 = 0;
    v574 = 0;
    v571 = 0;
    v218 = 0;
    v568 = 0;
    v565 = 0;
    v219 = 0;
    v220 = 0;
    v607 = v591[8];
    v608 = v591[9];
    v609 = *&v591[10];
    v603 = v591[4];
    v604 = v591[5];
    v605 = v591[6];
    v606 = v591[7];
    v599 = v591[0];
    v600 = v591[1];
    v221 = 0xE000000000000000;
    v222 = 1;
    v223 = 25;
    v601 = v591[2];
    v602 = v591[3];
    v224 = 172800;
    v225 = 604800;
    v226 = 0x10000;
    v227 = 1;
    v228 = 1;
    v229 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v607 = v682;
    v608 = v683;
    v609 = v684;
    v603 = v678;
    v604 = v679;
    v605 = v680;
    v606 = v681;
    v599 = v674;
    v600 = v675;
    v601 = v676;
    v602 = v677;
    v226 = *&v519 & 0xFF01FF01FF01FF01;
    v196 = v422;
    v218 = v513;
    v214 = v510;
    v215 = v507;
    v213 = v504;
    v216 = v501;
    v211 = v498;
    v221 = v495;
    v223 = v491;
    v198 = v487;
    v219 = v483;
    v220 = v480;
    v201 = v477;
    v203 = v474;
    v225 = v421;
    v224 = v471;
    v206 = v468;
    v208 = v465;
    v209 = v462;
    v229 = v459;
    v210 = v457;
    v212 = v455;
    v222 = v453;
    v228 = v451;
    v227 = v449;
    v217 = v516;
  }

  *(v95 + 416) = v208;
  *(v95 + 424) = v209;
  *(v95 + 440) = v210;
  *(v95 + 456) = v212;
  *(v95 + 464) = v559;
  *(v95 + 472) = v556;
  *(v95 + 480) = v541;
  *(v95 + 488) = v538;
  *(v95 + 496) = v196;
  *(v95 + 504) = v198;
  *(v95 + 512) = v201;
  *(v95 + 520) = v203;
  *(v95 + 528) = v206;
  v598 = v222 & 1;
  v560 = STACK[0x2C70];
  v597 = v227 & 1;
  v557 = STACK[0x2BB0];
  *(v95 + 448) = v211 & 1;
  v542 = STACK[0x2BA0];
  *(v95 + 536) = v562;
  v563 = STACK[0x2B90];
  *(v95 + 544) = v213;
  v539 = STACK[0x2B80];
  *(v95 + 432) = vuzp1_s8(v226, v226).u32[0];
  *(v95 + 552) = v214;
  *(v95 + 560) = v225;
  *(v95 + 568) = v224;
  *(v95 + 576) = v553;
  *(v95 + 584) = v550;
  *(v95 + 592) = v547;
  *(v95 + 600) = v215;
  *(v95 + 608) = v216;
  *(v95 + 616) = v544;
  v230 = v608;
  *(v95 + 752) = v607;
  *(v95 + 768) = v230;
  *(v95 + 784) = v609;
  v231 = v604;
  *(v95 + 688) = v603;
  *(v95 + 704) = v231;
  v232 = v606;
  *(v95 + 720) = v605;
  *(v95 + 736) = v232;
  v233 = v600;
  *(v95 + 624) = v599;
  *(v95 + 640) = v233;
  v234 = v602;
  *(v95 + 656) = v601;
  *(v95 + 672) = v234;
  *(v95 + 792) = v585;
  *(v95 + 800) = v598;
  *(v95 + 808) = v217;
  *(v95 + 816) = v597;
  *(v95 + 824) = v583;
  *(v95 + 832) = v580;
  *(v95 + 840) = v577;
  *(v95 + 848) = v221;
  *(v95 + 856) = v574;
  *(v95 + 864) = v571;
  *(v95 + 872) = v218;
  *(v95 + 880) = v568;
  *(v95 + 888) = v565;
  *(v95 + 896) = v219 & 1;
  *(v95 + 897) = v220 & 1;
  *(v95 + 904) = v223;
  *(v95 + 912) = v229;
  v235 = v424;
  *(v95 + 920) = v228 & 1;
  if (v424 == 1)
  {
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v240 = 0;
    LOBYTE(v591[0]) = 0;
    v590[0] = 0;
    LOBYTE(v592[0]) = 0;
    LOBYTE(v596[0]) = 0;
    v241 = 86400;
    v242 = 1;
    v235 = xmmword_1DACD4110;
  }

  else
  {
    v596[0] = v687[0];
    *(v596 + 3) = *(v687 + 3);
    v595[0] = v686[0];
    *(v595 + 3) = *(v686 + 3);
    v594[0] = v685[0];
    *(v594 + 3) = *(v685 + 3);
    v236 = v386;
    v237 = v385;
    v240 = v383;
    v238 = v384;
    v239 = v382;
    v241 = v380;
    v242 = v381;
  }

  v586 = STACK[0x2CB8];
  v581 = STACK[0x2CA9];
  v575 = STACK[0x2CA8];
  v578 = STACK[0x2CA0];
  v572 = STACK[0x2C98];
  v569 = STACK[0x2C90];
  v566 = STACK[0x2C88];
  v554 = STACK[0x2C80];
  v551 = STACK[0x2C78];
  v545 = STACK[0x2C68];
  v548 = STACK[0x2C60];
  v517 = STACK[0x2C58];
  v520 = STACK[0x2C50];
  v511 = STACK[0x2C48];
  v514 = STACK[0x2C40];
  v505 = STACK[0x2C38];
  v508 = STACK[0x2C30];
  v502 = STACK[0x2C28];
  v478 = STACK[0x2C20];
  v499 = STACK[0x2C18];
  *(v95 + 948) = *(v596 + 3);
  *(v95 + 945) = v596[0];
  *(v95 + 964) = *(v595 + 3);
  *(v95 + 961) = v595[0];
  *(v95 + 980) = *(v594 + 3);
  *(v95 + 977) = v594[0];
  v496 = STACK[0x2C10];
  v492 = STACK[0x2C08];
  *(v95 + 944) = v236;
  v488 = STACK[0x2C00];
  *(v95 + 952) = v237;
  v481 = STACK[0x2BF8];
  *(v95 + 960) = v238;
  v484 = STACK[0x2BF0];
  *(v95 + 968) = v242;
  v472 = STACK[0x2BE8];
  *(v95 + 976) = v239;
  v475 = STACK[0x2BE0];
  *(v95 + 984) = v241;
  v469 = STACK[0x2BD8];
  *(v95 + 992) = v240;
  v466 = STACK[0x2BD0];
  v593 = v423;
  v243 = STACK[0x2BC8];
  v460 = STACK[0x2BC0];
  *(v95 + 928) = v235;
  *v592 = v425;
  *&v592[1] = v522;
  *&v592[2] = v108;
  *&v592[3] = v107;
  *&v592[4] = v427;
  *&v592[5] = v426;
  *&v592[6] = v109;
  *&v592[7] = v110;
  *&v592[8] = v429;
  *&v592[9] = v428;
  *&v592[10] = v532;
  *&v592[11] = v530;
  *&v592[12] = v528;
  *&v592[13] = v526;
  *&v592[14] = v535;
  *&v592[15] = v111;
  *&v592[16] = v112;
  *&v592[17] = v432;
  *&v592[18] = v430;
  *&v592[19] = v434;
  v244 = STACK[0x2BB8];
  v245 = STACK[0x2BA8];
  v246 = STACK[0x2B98];
  v247 = STACK[0x2B88];
  v248 = STACK[0x2B78];
  v249 = STACK[0x2B70];
  v250 = STACK[0x2B68];
  v251 = sub_1DAC8AB08(v592);
  v252 = 0.05;
  v253 = 0.01;
  v254 = 0.1;
  if (v251 == 1)
  {
    v255 = 0.05;
  }

  else
  {
    v255 = v425;
  }

  v256 = 0.12;
  *(v95 + 1000) = v255;
  v257 = v522;
  if (v251 == 1)
  {
    v257 = 0.3;
  }

  *(v95 + 1008) = v257;
  v258 = v108;
  if (v251 == 1)
  {
    v258 = 1.0;
  }

  *(v95 + 1016) = v258;
  v259 = v107;
  if (v251 == 1)
  {
    v259 = 0.0;
    v260 = 0.0;
  }

  else
  {
    v260 = v427;
  }

  if (v251 == 1)
  {
    v261 = 0.0;
  }

  else
  {
    v261 = v426;
  }

  *(v95 + 1024) = v259;
  if (v251 != 1)
  {
    v252 = v109;
    v253 = v110;
  }

  *(v95 + 1032) = v260;
  if (v251 == 1)
  {
    v262 = 0.1;
  }

  else
  {
    v262 = v429;
  }

  if (v251 != 1)
  {
    v256 = v428;
  }

  *(v95 + 1040) = v261;
  *(v95 + 1048) = v252;
  v263 = v532;
  if (v251 == 1)
  {
    v263 = 0.15;
  }

  v264 = v530;
  if (v251 == 1)
  {
    v264 = 0.3;
  }

  *(v95 + 1056) = v253;
  v265 = v528;
  if (v251 == 1)
  {
    v265 = 1.0;
  }

  v266 = v526;
  if (v251 == 1)
  {
    v266 = 0.0;
  }

  *(v95 + 1064) = v262;
  v267 = v535;
  if (v251 == 1)
  {
    v267 = 0.3;
  }

  v268 = v111;
  if (v251 == 1)
  {
    v268 = 0.2;
  }

  *(v95 + 1072) = v256;
  v269 = v112;
  if (v251 == 1)
  {
    v269 = 0.5;
  }

  *(v95 + 1080) = v263;
  if (v251 == 1)
  {
    v270 = 0.5;
  }

  else
  {
    v270 = v432;
  }

  if (v251 != 1)
  {
    v254 = v430;
  }

  *(v95 + 1088) = v264;
  if (v251 == 1)
  {
    v271 = 0.0;
  }

  else
  {
    v271 = v434;
  }

  *(v95 + 1096) = v265;
  *(v95 + 1104) = v266;
  *(v95 + 1112) = v267;
  *(v95 + 1120) = v268;
  *(v95 + 1128) = v269;
  *(v95 + 1136) = v270;
  *(v95 + 1144) = v254;
  *(v95 + 1152) = v271;
  memcpy(v591, v688, 0x8DCuLL);
  if (sub_1DAC8AB24(v591) == 1)
  {
    sub_1DAA4C870(v590);
    memcpy(__dst, v590, 0x46BuLL);
    v272 = &__dst[1136];
    v273 = v590;
    v274 = 1131;
  }

  else
  {
    v272 = __dst;
    v273 = v688;
    v274 = 2267;
  }

  memcpy(v272, v273, v274);
  v584 = STACK[0x2E68];
  v536 = STACK[0x2D30];
  v533 = STACK[0x2D20];
  v523 = STACK[0x2CD8];
  v275 = STACK[0x2CC8];
  v463 = STACK[0x2CC0];
  memcpy((v95 + 1592), __dst, 0x8DBuLL);
  v276 = *&v563;
  v277 = *&v542;
  *(v95 + 3944) = v478;
  v278 = *&v557;
  v279 = *&v560;
  *(v95 + 3859) = v250 & 1;
  if (v248)
  {
    v280 = 1;
  }

  else
  {
    v280 = v249;
  }

  *(v95 + 360) = v280;
  if (v247)
  {
    v281 = 2592000.0;
  }

  else
  {
    v281 = *&v539;
  }

  if (v246)
  {
    v276 = 2592000.0;
  }

  if (v245)
  {
    v277 = 3.0;
  }

  if (v244)
  {
    v278 = 2.0;
  }

  v282 = 32123;
  if (v243)
  {
    v282 = v460;
  }

  v283 = 0xE200000000000000;
  if (v243)
  {
    v283 = v243;
  }

  *(v95 + 368) = v281;
  *(v95 + 376) = v276;
  *(v95 + 384) = v277;
  *(v95 + 392) = v278;
  *(v95 + 1160) = v282;
  *(v95 + 1168) = v283;
  v284 = 0x3FD0000000000000;
  if ((v469 & 1) == 0)
  {
    v284 = v466;
  }

  *(v95 + 3864) = v284;
  *(v95 + 3872) = 0;
  v285 = 2;
  if ((v472 & 1) == 0)
  {
    v285 = v475;
  }

  *(v95 + 3880) = v285;
  *(v95 + 3888) = 0;
  v286 = 2592000;
  if ((v481 & 1) == 0)
  {
    v286 = v484;
  }

  *(v95 + 3896) = v286;
  *(v95 + 3904) = 0;
  v287 = 0x3FF0000000000000;
  v288 = v488;
  if (v492)
  {
    v288 = 0x3FF0000000000000;
  }

  *(v95 + 3912) = v288;
  *(v95 + 3920) = 0;
  if ((v499 & 1) == 0)
  {
    v287 = v496;
  }

  *(v95 + 3928) = v287;
  *(v95 + 3936) = 0;
  *(v95 + 3952) = v502 & 1;
  v289 = 600;
  if ((v505 & 1) == 0)
  {
    v289 = v508;
  }

  *(v95 + 1272) = v289;
  v290 = 7200;
  if ((v511 & 1) == 0)
  {
    v290 = v514;
  }

  *(v95 + 1280) = v290;
  v291 = 300;
  if ((v517 & 1) == 0)
  {
    v291 = v520;
  }

  *(v95 + 1288) = v291;
  v292 = 180;
  if ((v545 & 1) == 0)
  {
    v292 = v548;
  }

  *(v95 + 1296) = v292;
  if (v551)
  {
    v279 = 3.0;
  }

  *(v95 + 1304) = v279;
  v293 = 0x80000001DACEDCA0;
  v294 = 0xD00000000000001CLL;
  if (v566)
  {
    v294 = v554;
    v293 = v566;
  }

  *(v95 + 1312) = v294;
  *(v95 + 1320) = v293;
  v295 = 0x80000001DACEDCC0;
  v296 = 0xD00000000000002BLL;
  if (v572)
  {
    v296 = v569;
    v295 = v572;
  }

  *(v95 + 1328) = v296;
  *(v95 + 1336) = v295;
  v297 = v578;
  if (v575)
  {
    v297 = 0;
  }

  *(v95 + 1344) = v297;
  *(v95 + 1176) = v581 & 1;
  if (v586)
  {
    [objc_opt_self() fc_timeIntervalOneDay];
  }

  else
  {
    v298 = STACK[0x2CB0];
  }

  v587 = STACK[0x2F00];
  v582 = STACK[0x2ED8];
  v579 = STACK[0x2EA8];
  v576 = STACK[0x2EA0];
  v573 = STACK[0x2E98];
  v570 = STACK[0x2E90];
  v567 = STACK[0x2E88];
  v564 = STACK[0x2E80];
  v561 = STACK[0x2E78];
  v558 = STACK[0x2E71];
  v555 = STACK[0x2E70];
  v552 = STACK[0x2E60];
  v549 = STACK[0x2E58];
  v546 = STACK[0x2E50];
  v543 = STACK[0x2E48];
  v540 = STACK[0x2E40];
  v531 = STACK[0x2E38];
  v529 = STACK[0x2E30];
  v527 = STACK[0x2E28];
  v521 = STACK[0x2E20];
  v518 = STACK[0x2E18];
  v515 = STACK[0x2E10];
  v512 = STACK[0x2E08];
  v509 = STACK[0x2E00];
  v506 = STACK[0x2DF8];
  v500 = STACK[0x2DE8];
  v503 = STACK[0x2DE0];
  v497 = STACK[0x2DD8];
  v482 = STACK[0x2DD0];
  v299 = v463;
  if (v275)
  {
    v299 = 0;
  }

  *(v95 + 3968) = v299;
  v479 = STACK[0x2DC8];
  *(v95 + 3960) = v298;
  v476 = STACK[0x2DC0];
  v473 = STACK[0x2DB8];
  v470 = STACK[0x2DB0];
  v300 = STACK[0x2DA8];
  v301 = STACK[0x2DA0];
  v302 = STACK[0x2D98];
  v303 = STACK[0x2D90];
  v304 = STACK[0x2D88];
  v305 = STACK[0x2D80];
  v306 = STACK[0x2D70];
  v307 = STACK[0x2D68];
  v308 = STACK[0x2D60];
  v309 = STACK[0x2D58];
  v310 = STACK[0x2D50];
  v311 = STACK[0x2D48];
  v312 = STACK[0x2D40];
  v313 = STACK[0x2D38];
  v314 = STACK[0x2D28];
  v315 = STACK[0x2D18];
  v316 = STACK[0x2D10];
  v317 = STACK[0x2D08];
  v318 = STACK[0x2D00];
  v319 = STACK[0x2CF9];
  v320 = STACK[0x2CF8];
  v321 = STACK[0x2CF0];
  v322 = STACK[0x2CE8];
  v323 = STACK[0x2CE0];
  if (v523)
  {
    v524 = STACK[0x2D70];
    v493 = STACK[0x2DA8];
    v489 = STACK[0x2D98];
    v485 = STACK[0x2DA0];
    v467 = STACK[0x2D90];
    v464 = STACK[0x2D88];
    v461 = STACK[0x2D80];
    v458 = STACK[0x2D68];
    v450 = STACK[0x2D08];
    v433 = STACK[0x2D60];
    v324 = STACK[0x2D58];
    v431 = STACK[0x2D50];
    v435 = STACK[0x2CF8];
    v325 = STACK[0x2D48];
    v454 = STACK[0x2D10];
    v326 = STACK[0x2D40];
    v452 = STACK[0x2D00];
    v327 = STACK[0x2D38];
    v456 = STACK[0x2D18];
    v328 = STACK[0x2D28];
    v329 = STACK[0x2CE0];
    [objc_opt_self() fc_timeIntervalOneDay];
    v323 = v329;
    v314 = v328;
    v315 = v456;
    v313 = v327;
    v318 = v452;
    v312 = v326;
    v316 = v454;
    v311 = v325;
    v320 = v435;
    v310 = v431;
    v309 = v324;
    v308 = v433;
    v317 = v450;
    v306 = v524;
    v307 = v458;
    v305 = v461;
    v304 = v464;
    v303 = v467;
    v301 = v485;
    v302 = v489;
    v300 = v493;
    v331 = v330 * 15.0;
  }

  else
  {
    v331 = *&STACK[0x2CD0];
  }

  v332 = 0xFFFFFFFFLL;
  if ((v322 & 1) == 0)
  {
    v332 = v323;
  }

  *(v95 + 1184) = v332;
  v333 = MEMORY[0x1E69E7CC0];
  if (v321)
  {
    v334 = v321;
  }

  else
  {
    v334 = MEMORY[0x1E69E7CC0];
  }

  *(v95 + 1192) = v334;
  v335 = v320 & 1;
  v336 = v333;
  *(v95 + 3984) = v335;
  *(v95 + 3985) = (v319 == 2) | v319 & 1;
  if (v317)
  {
    v337 = 0;
  }

  else
  {
    v337 = v318;
  }

  *(v95 + 3992) = v337;
  if (v315)
  {
    v338 = 0xFFFFFFFFLL;
  }

  else
  {
    v338 = v316;
  }

  *(v95 + 1200) = v338;
  v339 = *&v533;
  if (v314)
  {
    v339 = -600.0;
  }

  v340 = 600.0;
  if ((v313 & 1) == 0)
  {
    v340 = *&v536;
  }

  if (v312)
  {
    v341 = v312;
  }

  else
  {
    v341 = v333;
  }

  *(v95 + 1224) = v341;
  if (v311)
  {
    v342 = v311;
  }

  else
  {
    v342 = v333;
  }

  *(v95 + 1232) = v342;
  *(v95 + 3976) = v331;
  if (v310)
  {
    v343 = v310;
  }

  else
  {
    v343 = v333;
  }

  *(v95 + 1240) = v343;
  v344 = STACK[0x2EF8];
  *(v95 + 4000) = v309;
  v345 = STACK[0x2EF0];
  *(v95 + 4008) = v308 & 1;
  v346 = STACK[0x2EE9];
  v347 = 5;
  if ((v306 & 1) == 0)
  {
    v347 = v307;
  }

  v537 = STACK[0x2EE8];
  *(v95 + 4016) = v347;
  v534 = STACK[0x2EE0];
  if (v305)
  {
    v348 = v305;
  }

  else
  {
    v348 = v333;
  }

  *(v95 + 1248) = v348;
  v525 = STACK[0x2ED0];
  if (v304)
  {
    v349 = v304;
  }

  else
  {
    v349 = v333;
  }

  *(v95 + 1256) = v349;
  v494 = STACK[0x2EC8];
  if (v303)
  {
    v350 = v303;
  }

  else
  {
    v350 = v333;
  }

  *(v95 + 1264) = v350;
  v351 = STACK[0x2EC0];
  v352 = 1296000;
  if ((v301 & 1) == 0)
  {
    v352 = v302;
  }

  v490 = STACK[0x2EB8];
  *(v95 + 1352) = v352;
  if (v300)
  {
    v353 = v300;
  }

  else
  {
    v353 = &unk_1F567D1D8;
  }

  v486 = STACK[0x2EB0];
  *(v95 + 1208) = v339;
  *(v95 + 1216) = v340;
  *(v95 + 4024) = v448;
  *(v95 + 4040) = v446;
  v354 = sub_1DAA5518C(v353);

  *(v95 + 1360) = v354;
  v355 = v470;
  if (v473)
  {
    v355 = 0;
  }

  *(v95 + 1368) = v355;
  v356 = v476;
  if (v479)
  {
    v356 = 0;
  }

  *(v95 + 1376) = v356;
  if (v497)
  {
    v357 = 0;
  }

  else
  {
    v357 = v482;
  }

  v358 = type metadata accessor for AppConfiguration(0);
  v359 = *&v584;
  *(v95 + v358[135]) = v357;
  v360 = v503;
  if (v500)
  {
    v360 = 0;
  }

  *(v95 + 4056) = v360;
  *(v95 + 4064) = 0;
  v361 = 0x7FEFFFFFFFFFFFFFLL;
  if (!v437)
  {
    v361 = v443;
  }

  v362 = 0x7FFFFFFFFFFFFFFFLL;
  v363 = v445;
  if (v437)
  {
    v363 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v364 = v441;
  if (v437)
  {
    v364 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v362 = v439;
  }

  *(v95 + 4072) = v361;
  *(v95 + 4080) = v363;
  *(v95 + 4088) = v364;
  *(v95 + 4096) = v362;
  *(v95 + 4104) = 0;
  *(v95 + 4112) = v506;
  *(v95 + 4120) = v509;
  v365 = v512;
  if (!v515)
  {
    v365 = 0;
  }

  v366 = 0xE000000000000000;
  if (v515)
  {
    v366 = v515;
  }

  *(v95 + 4128) = v365;
  *(v95 + 4136) = v366;
  v367 = v518;
  if (v521)
  {
    v367 = 0;
  }

  *(v95 + 4144) = v367;
  *(v95 + 4152) = 0;
  v368 = v527;
  if (v529)
  {
    v368 = 0;
  }

  *(v95 + 4160) = v368;
  *(v95 + 4168) = 0;
  *(v95 + 4176) = v531;
  *(v95 + 4184) = v540;
  v369 = v543;
  if (v546)
  {
    v369 = 0;
  }

  *(v95 + 4192) = v369;
  *(v95 + 4200) = 0;
  v370 = v549;
  if (v552)
  {
    v370 = 1;
  }

  *(v95 + 4208) = v370;
  if (v555)
  {
    v359 = 7776000.0;
  }

  *(v95 + 4224) = (v558 == 2) | v558 & 1;
  v371 = v561;
  if (v564)
  {
    v371 = 0;
  }

  *(v95 + 4232) = v371;
  v372 = v567;
  if (v570)
  {
    v372 = 0xFFFFFFFFLL;
  }

  *(v95 + 4248) = v372;
  v373 = v573;
  if (v576)
  {
    v373 = 0xFFFFFFFFLL;
  }

  *(v95 + 4256) = v373;
  *(v95 + 4216) = v359;
  v374 = v579;
  if (!v579)
  {
    sub_1DAA4691C(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
    sub_1DACB7DC4();
    v374 = swift_allocObject();
    *(v374 + 16) = xmmword_1DACC1D40;
    sub_1DACB7DB4();
    sub_1DACB7DB4();
  }

  v375 = sub_1DAA4CB70(v374);

  *(v95 + 4264) = v375;
  v376 = v486;
  if (v490)
  {
    v376 = 0;
  }

  *(v95 + 4272) = v376;
  if (v351)
  {
    v377 = v351;
  }

  else
  {
    v377 = v336;
  }

  *(v95 + 4240) = v377;
  *(v95 + 4280) = v494 & 1;
  *(v95 + 4288) = v525;
  sub_1DAC8AB40(v582, v95 + v358[134]);
  *(v95 + v358[136]) = v534;
  *(v95 + v358[137]) = (v537 == 2) | v537 & 1;
  *(v95 + v358[138]) = v346 & 1;
  v378 = v95 + v358[139];
  *v378 = v345;
  *(v378 + 8) = v344 & 1;
  return sub_1DAC8AB40(v587, v95 + v358[140]);
}

uint64_t sub_1DAC7E3A0()
{
  v1 = *(v0 + 168);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E4C8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 416), 0x1F9uLL);
  memcpy(a1, (v1 + 416), 0x1F9uLL);
  return sub_1DAA4F398(__dst, v4);
}

uint64_t sub_1DAC7E51C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 976);
  v9 = *(v1 + 960);
  v10 = v2;
  v11 = *(v1 + 992);
  v3 = v11;
  v4 = *(v1 + 944);
  v8[0] = *(v1 + 928);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1DAA4F3F4(v8, v7);
}

__n128 sub_1DAC7E568@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1112);
  *(a1 + 96) = *(v1 + 1096);
  *(a1 + 112) = v2;
  v3 = *(v1 + 1144);
  *(a1 + 128) = *(v1 + 1128);
  *(a1 + 144) = v3;
  v4 = *(v1 + 1048);
  *(a1 + 32) = *(v1 + 1032);
  *(a1 + 48) = v4;
  v5 = *(v1 + 1080);
  *(a1 + 64) = *(v1 + 1064);
  *(a1 + 80) = v5;
  result = *(v1 + 1000);
  v7 = *(v1 + 1016);
  *a1 = result;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_1DAC7E598()
{
  v1 = *(v0 + 1160);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E654()
{
  v1 = *(v0 + 1312);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E688()
{
  v1 = *(v0 + 1328);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E6E4()
{
  v1 = *(v0 + 1384);
  sub_1DACB71E4();
  return v1;
}

__n128 sub_1DAC7E744@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4104);
  result = *(v1 + 4072);
  v4 = *(v1 + 4088);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AppConfiguration.userConcernConfigurationResourceId.getter()
{
  v1 = *(v0 + 4112);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E790()
{
  v1 = *(v0 + 4128);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E7E4()
{
  v1 = *(v0 + 4176);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E8AC()
{
  type metadata accessor for AppConfiguration(0);

  return sub_1DACB71E4();
}

uint64_t sub_1DAC7E9A8(uint64_t a1)
{
  v459 = v1;
  v2 = MEMORY[0x1EEE9AC00](a1);
  v372 = v3;
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v370 = v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v371 = v153 - v8;
  sub_1DAA4691C(0, &qword_1EE124F88, type metadata accessor for LanguageConfig, v4);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v369 = v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v368 = v153 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v367 = v153 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v366 = v153 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v365 = v153 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v364 = v153 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v363 = v153 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v362 = v153 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v361 = v153 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v360 = v153 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v359 = v153 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v358 = v153 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v357 = v153 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v373 = v153 - v36;
  v37 = MEMORY[0x1E69E6F48];
  sub_1DAC8ED5C(0, &qword_1EE123CC8, sub_1DAC8ABF4, &type metadata for LocalizationKeys, MEMORY[0x1E69E6F48]);
  v375 = v38;
  v374 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v377 = v153 - v39;
  sub_1DAC8ED5C(0, &qword_1EE123CD0, sub_1DAC8AC48, &type metadata for AppConfiguration.CodingKeys, v37);
  v41 = v40;
  v376 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = v153 - v42;
  v44 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAC8AC48();
  v47 = v459;
  sub_1DACBA2F4();
  if (v47)
  {
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  v459 = v46;
  v355 = v43;
  v356 = v41;
  v48 = swift_allocObject();
  *(v48 + 16) = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAC8ABF4();
  swift_retain_n();
  sub_1DACBA2F4();
  sub_1DAA4691C(0, &qword_1EE123F78, type metadata accessor for LanguageConfig, MEMORY[0x1E69E62F8]);
  LOBYTE(v399[0]) = 0;
  sub_1DAC8AC9C();
  sub_1DACB9F84();
  v352 = (v48 + 16);
  v353 = v48;
  v354 = v2;
  if (*v400)
  {
    v49 = *v400;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v400[0] = 1;
  v50 = sub_1DACB9F34();
  v52 = v51;
  v53 = sub_1DACB7D64();
  sub_1DAC85EC0(v49, v53, v50, v52, v373);

  v400[0] = 0;
  v54 = sub_1DACB9F44();
  if (v54 == 2)
  {
    __swift_project_boxed_opaque_existential_1(v354, v354[3]);
    v55 = sub_1DACBA2E4();
    if (qword_1EE123D90 != -1)
    {
      swift_once();
    }

    v56 = sub_1DACB9DF4();
    v57 = __swift_project_value_buffer(v56, qword_1EE123D98);
    sub_1DAC7BFA8(v57, v55, v400);

    if (*&v400[24])
    {
      if (swift_dynamicCast())
      {
        v54 = v458[0];
        goto LABEL_14;
      }
    }

    else
    {
      sub_1DAC8AD74(v400, &qword_1EE11F460, MEMORY[0x1E69E7CA0] + 8);
    }

    v54 = 2;
  }

  v458[0] = v54;
LABEL_14:
  sub_1DAA46070(0, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
  v400[0] = 1;
  sub_1DAC8ADE4();
  sub_1DACB9F84();
  if (v399[0])
  {
    v351 = v399[0];
    v457 = v399[0];
  }

  else
  {
    v350 = v54;
    __swift_project_boxed_opaque_existential_1(v354, v354[3]);
    v58 = sub_1DACBA2E4();
    if (qword_1EE123D68 != -1)
    {
      swift_once();
    }

    v59 = sub_1DACB9DF4();
    v60 = __swift_project_value_buffer(v59, qword_1EE123D70);
    sub_1DAC7BFA8(v60, v58, v400);

    if (*&v400[24])
    {
      v61 = swift_dynamicCast();
      v54 = v350;
      if (v61)
      {
        v62 = v457;
      }

      else
      {
        v62 = 0;
        v457 = 0;
      }

      v351 = v62;
    }

    else
    {
      sub_1DAC8AD74(v400, &qword_1EE11F460, MEMORY[0x1E69E7CA0] + 8);
      v351 = 0;
      v457 = 0;
      v54 = v350;
    }
  }

  sub_1DAA46070(0, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  v400[0] = 2;
  sub_1DAC8AE78();
  sub_1DACB9F84();
  v350 = v54;
  if (v399[0])
  {
    v349 = v399[0];
    v456 = v399[0];
LABEL_28:
    v64 = v353;
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(v354, v354[3]);
  v65 = sub_1DACBA2E4();
  if (qword_1EE123D40 != -1)
  {
    swift_once();
  }

  v66 = sub_1DACB9DF4();
  v67 = __swift_project_value_buffer(v66, qword_1EE123D48);
  sub_1DAC7BFA8(v67, v65, v400);

  if (!*&v400[24])
  {
    sub_1DAC8AD74(v400, &qword_1EE11F460, MEMORY[0x1E69E7CA0] + 8);
    v349 = 0;
    v456 = 0;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v68 = v456;
  }

  else
  {
    v68 = 0;
    v456 = 0;
  }

  v64 = v353;
  v349 = v68;
LABEL_37:
  LOBYTE(v399[0]) = 3;
  sub_1DACB9F84();
  v348 = *v400;
  v347 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(3, v64);
  }

  LOBYTE(v399[0]) = 4;
  sub_1DACB9F84();
  v346 = *v400;
  v345 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(4, v64);
  }

  LOBYTE(v399[0]) = 5;
  sub_1DACB9F84();
  v69 = v351;
  v344 = *v400;
  v70 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(5, v353);
  }

  LOBYTE(v399[0]) = 6;
  sub_1DACB9F84();
  v343 = *v400;
  v71 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(6, v353);
  }

  LOBYTE(v399[0]) = 7;
  sub_1DACB9F84();
  v342 = *v400;
  v72 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(7, v353);
  }

  LOBYTE(v399[0]) = 8;
  sub_1DACB9F84();
  v341 = *v400;
  v340 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(8, v353);
  }

  LOBYTE(v399[0]) = 9;
  sub_1DACB9F84();
  v338 = *v400;
  v337 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(9, v353);
  }

  LOBYTE(v399[0]) = 10;
  sub_1DAA46070(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v74 = v73;
  v75 = sub_1DAB588C4();
  v339 = v74;
  v336 = v75;
  sub_1DACB9F84();
  v335 = *v400;
  if (!*v400)
  {
    sub_1DAC8AA30(10, v353);
  }

  v400[0] = 11;
  sub_1DACB9F84();
  v334 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(11, v353);
  }

  v400[0] = 12;
  sub_1DACB9F84();
  v333 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(12, v353);
  }

  LOBYTE(v399[0]) = 13;
  sub_1DACB9F84();
  v332 = *v400;
  v331 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(13, v353);
  }

  v400[0] = 14;
  sub_1DACB9F84();
  v330 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(14, v353);
  }

  v400[0] = 15;
  sub_1DACB9F84();
  v329 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(15, v353);
  }

  LOBYTE(v399[0]) = 16;
  sub_1DACB9F84();
  v328 = *v400;
  v327 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(16, v353);
  }

  LOBYTE(v399[0]) = 17;
  sub_1DACB9F84();
  v326 = *v400;
  v325 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(17, v353);
  }

  LOBYTE(v399[0]) = 18;
  sub_1DACB9F84();
  v324 = *v400;
  v323 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(18, v353);
  }

  LOBYTE(v399[0]) = 19;
  sub_1DACB9F84();
  v322 = *v400;
  v321 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(19, v353);
  }

  LOBYTE(v399[0]) = 20;
  sub_1DACB9F84();
  v320 = *v400;
  v319 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(20, v353);
  }

  LOBYTE(v399[0]) = 21;
  sub_1DACB9F84();
  v318 = *v400;
  v317 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(21, v353);
  }

  LOBYTE(v399[0]) = 22;
  sub_1DACB9F84();
  v316 = *v400;
  v315 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(22, v353);
  }

  LOBYTE(v399[0]) = 23;
  sub_1DACB9F84();
  v313 = *v400;
  v314 = *&v400[8];
  if (!*&v400[8])
  {
    sub_1DAC8AA30(23, v353);
  }

  LOBYTE(v399[0]) = 24;
  sub_1DACB9F84();
  v312 = *v400;
  v311 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(24, v353);
  }

  LOBYTE(v399[0]) = 25;
  sub_1DACB9F84();
  v310 = *v400;
  v309 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(25, v353);
  }

  LOBYTE(v399[0]) = 26;
  sub_1DACB9F84();
  v308 = *v400;
  v307 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(26, v353);
  }

  LOBYTE(v399[0]) = 27;
  sub_1DACB9F84();
  v306 = *v400;
  v305 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(27, v353);
  }

  LOBYTE(v399[0]) = 28;
  sub_1DACB9F84();
  v304 = *v400;
  v303 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(28, v353);
  }

  LOBYTE(v399[0]) = 29;
  sub_1DACB9F84();
  v302 = *v400;
  v301 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(29, v353);
  }

  LOBYTE(v399[0]) = 30;
  sub_1DACB9F84();
  v292 = *v400;
  v291 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(30, v353);
  }

  LOBYTE(v399[0]) = 31;
  sub_1DACB9F84();
  v286 = *v400;
  v285 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(31, v353);
  }

  v400[0] = 32;
  sub_1DACB9F84();
  v283 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(32, v353);
  }

  v400[0] = 33;
  sub_1DACB9F84();
  v227 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(33, v353);
  }

  v400[0] = 34;
  sub_1DACB9F84();
  v226 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(34, v353);
  }

  LOBYTE(v399[0]) = 35;
  sub_1DACB9F84();
  v225 = *v400;
  v224 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(35, v353);
  }

  LOBYTE(v399[0]) = 36;
  sub_1DACB9F84();
  v223 = *v400;
  v222 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(36, v353);
  }

  LOBYTE(v399[0]) = 37;
  sub_1DACB9F84();
  v221 = *v400;
  v220 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(37, v353);
  }

  LOBYTE(v399[0]) = 38;
  sub_1DACB9F84();
  v219 = *v400;
  v218 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(38, v353);
  }

  LOBYTE(v399[0]) = 39;
  sub_1DACB9F84();
  v217 = *v400;
  v216 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(39, v353);
  }

  LOBYTE(v399[0]) = 40;
  sub_1DACB9F84();
  v215 = *v400;
  v214 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(40, v353);
  }

  LOBYTE(v399[0]) = 41;
  sub_1DACB9F84();
  v213 = *v400;
  v212 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(41, v353);
  }

  LOBYTE(v399[0]) = 42;
  sub_1DACB9F84();
  v211 = *v400;
  v210 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(42, v353);
  }

  LOBYTE(v399[0]) = 43;
  sub_1DACB9F84();
  v209 = *v400;
  v208 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(43, v353);
  }

  LOBYTE(v399[0]) = 44;
  sub_1DACB9F84();
  v207 = *v400;
  v206 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(44, v353);
  }

  LOBYTE(v399[0]) = 45;
  sub_1DACB9F84();
  v205 = *v400;
  v204 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(45, v353);
  }

  v400[0] = 46;
  sub_1DACB9F84();
  v203 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(46, v353);
  }

  LOBYTE(v399[0]) = 47;
  sub_1DACB9F84();
  v202 = *v400;
  v201 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(47, v353);
  }

  v76 = v357;
  sub_1DAA540A0(v373, v357, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  v77 = type metadata accessor for LanguageConfig(0);
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  v289 = v77;
  v288 = v79;
  v287 = v78 + 48;
  if ((v79)(v76, 1) == 1)
  {
    sub_1DAA54120(v357, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v80 = v357;
    v81 = *(v357 + 24);
    v257 = *(v357 + 16);
    sub_1DACB71E4();
    sub_1DAC8EE90(v80, type metadata accessor for LanguageConfig);
    v357 = v81;
    if (v81)
    {
      goto LABEL_133;
    }
  }

  LOBYTE(v399[0]) = 83;
  sub_1DACB9F84();
  v257 = *v400;
  v357 = *&v400[8];
  if (!*&v400[8])
  {
    sub_1DAC8AA30(83, v353);
  }

LABEL_133:
  v400[0] = 84;
  sub_1DACB9F84();
  v200 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(84, v353);
  }

  v400[0] = 85;
  sub_1DACB9F84();
  v199 = LOBYTE(v399[0]);
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(85, v353);
  }

  LOBYTE(v399[0]) = 86;
  sub_1DACB9F84();
  v198 = *v400;
  v197 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(86, v353);
  }

  LOBYTE(v399[0]) = 87;
  sub_1DACB9F84();
  v196 = *v400;
  v195 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(87, v353);
  }

  v82 = v358;
  sub_1DAA540A0(v373, v358, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v82, 1, v289) == 1)
  {
    sub_1DAA54120(v358, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v83 = v358;
    v84 = *(v358 + 40);
    v256 = *(v358 + 32);
    sub_1DACB71E4();
    sub_1DAC8EE90(v83, type metadata accessor for LanguageConfig);
    v358 = v84;
    if (v84)
    {
      goto LABEL_147;
    }
  }

  LOBYTE(v399[0]) = 88;
  sub_1DACB9F84();
  v256 = *v400;
  v358 = *&v400[8];
  if (!*&v400[8])
  {
    sub_1DAC8AA30(88, v353);
  }

LABEL_147:
  LOBYTE(v399[0]) = 89;
  sub_1DACB9F84();
  v194 = *v400;
  v300 = *&v400[8];
  if (!*&v400[8])
  {
    sub_1DAC8AA30(89, v353);
  }

  LOBYTE(v399[0]) = 90;
  sub_1DACB9F84();
  *&v290 = 0;
  v193 = *v400;
  v192 = v400[8];
  if (v400[8])
  {
    sub_1DAC8AA30(90, v353);
  }

  v85 = v359;
  sub_1DAA540A0(v373, v359, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v85, 1, v289) == 1)
  {
    sub_1DAA54120(v359, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    v86 = 0;
    v299 = 0;
  }

  else
  {
    v87 = v359;
    v88 = *(v359 + 112);
    v298 = *(v359 + 96);
    v89 = *(&v298 + 1);
    v86 = v298;
    v297 = v88;
    v299 = *(&v88 + 1);
    sub_1DAC8B694(v298, *(&v298 + 1), v88);
    sub_1DAC8EE90(v87, type metadata accessor for LanguageConfig);
    if (v89)
    {
      goto LABEL_159;
    }
  }

  LOBYTE(v399[0]) = 91;
  sub_1DAC8AF0C();
  v90 = v290;
  sub_1DACB9F84();
  *&v290 = v90;
  if (v90)
  {

    sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v374 + 8))(v377, v375);
    (*(v376 + 8))(v355, v356);
    sub_1DAC8AF60(v86, 0);

LABEL_394:

    v2 = v354;
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  if (!*&v400[8])
  {
    sub_1DAC8AA30(91, v353);
  }

  sub_1DAC8AF60(v86, 0);
  v298 = *v400;
  v297 = *&v400[16];
LABEL_159:
  v454 = v298;
  v455 = v297;
  v453 = 92;
  sub_1DAC8AFA4();
  v91 = v290;
  sub_1DACB9F84();
  if (v91)
  {

    sub_1DAC8AF60(v454, *(&v454 + 1));
    sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v374 + 8))(v377, v375);
    (*(v376 + 8))(v355, v356);

    v2 = v354;
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  if (!*(&v448 + 1))
  {
    sub_1DAC8AA30(92, v353);
  }

  v444 = v449;
  v445 = v450;
  v446 = v451;
  v447 = v452;
  v443 = v448;
  LOBYTE(v398[0]) = 93;
  sub_1DAC8AFF8();
  sub_1DACB9F84();
  v92 = v399[0];
  if (LOBYTE(v399[0]) == 2)
  {
    sub_1DAC8AA30(93, v353);
    v92 = v399[0];
  }

  v441 = v92;
  v442 = *&v399[1];
  LOBYTE(v398[0]) = 53;
  sub_1DAA46070(0, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B04C();
  sub_1DACB9F84();
  v359 = v399[0];
  if (!v399[0])
  {
    sub_1DAC8AA30(53, v353);
  }

  v440 = 54;
  sub_1DAA46070(0, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B13C();
  sub_1DACB9F84();
  v299 = v439;
  if (!v439)
  {
    sub_1DAC8AA30(54, v353);
  }

  v93 = v360;
  sub_1DAA540A0(v373, v360, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v93, 1, v289) == 1)
  {
    sub_1DAA54120(v360, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    sub_1DAC8B22C(v400);
    v94 = v400;
  }

  else
  {
    v95 = v360;
    memcpy(v399, (v360 + 128), 0x1F9uLL);
    sub_1DAC8B614(v399, v398, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    sub_1DAC8EE90(v95, type metadata accessor for LanguageConfig);
    memcpy(v400, v399, 0x1F9uLL);
    if (sub_1DAC8AA18(v400) != 1)
    {
      v96 = v399;
      goto LABEL_178;
    }

    v94 = v399;
  }

  memcpy(v437, v94, 0x1F9uLL);
  LOBYTE(v398[0]) = 55;
  sub_1DAC8B27C();
  sub_1DACB9F84();
  memcpy(v399, v400, 0x1F9uLL);
  if (sub_1DAC8AA18(v399) == 1)
  {
    sub_1DAC8AA30(55, v353);
  }

  sub_1DAC8AD74(v437, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
  v96 = v400;
LABEL_178:
  memcpy(v438, v96, sizeof(v438));
  memcpy(v432, v438, sizeof(v432));
  v97 = v361;
  sub_1DAA540A0(v373, v361, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v97, 1, v289) == 1)
  {
    sub_1DAA54120(v361, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    *&v433[0] = 1;
    *(v433 + 8) = 0u;
    *(&v433[1] + 8) = 0u;
    *(&v433[2] + 8) = 0u;
    *(&v433[3] + 1) = 0u;
  }

  else
  {
    v98 = v361;
    v99 = *(v361 + 640);
    *&v400[16] = *(v361 + 656);
    v100 = *(v361 + 688);
    *&v400[32] = *(v361 + 672);
    *&v400[48] = v100;
    v400[64] = *(v361 + 704);
    *v400 = v99;
    sub_1DAC8B614(v400, v399, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    sub_1DAC8EE90(v98, type metadata accessor for LanguageConfig);
    if (*v400 != 1)
    {
      v101 = *&v400[16];
      v434 = *&v400[32];
      v435 = *&v400[48];
      v436 = v400[64];
      v102 = *v400;
      goto LABEL_187;
    }

    v433[2] = *&v400[32];
    v433[3] = *&v400[48];
    LOBYTE(v433[4]) = v400[64];
    v433[0] = *v400;
    v433[1] = *&v400[16];
  }

  LOBYTE(v392[0]) = 56;
  sub_1DAC8B2D0();
  sub_1DACB9F84();
  if (*&v398[0] == 1)
  {
    sub_1DAC8AA30(56, v353);
  }

  sub_1DAC8AD74(v433, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
  v434 = v398[2];
  v435 = v398[3];
  v436 = v398[4];
  v102 = v398[0];
  v101 = v398[1];
LABEL_187:
  v433[5] = v102;
  v433[6] = v101;
  v429 = v434;
  v430 = v435;
  v431 = v436;
  v427 = v102;
  v428 = v101;
  v426 = 57;
  sub_1DAC8B324();
  sub_1DACB9F84();
  v413[8] = v423;
  v413[9] = v424;
  v414 = v425;
  v413[4] = v419;
  v413[5] = v420;
  v413[6] = v421;
  v413[7] = v422;
  v413[0] = v415;
  v413[1] = v416;
  v413[2] = v417;
  v413[3] = v418;
  if (sub_1DAC8AB08(v413) == 1)
  {
    sub_1DAC8AA30(57, v353);
  }

  v409 = v422;
  v410 = v423;
  v411 = v424;
  v405 = v418;
  v406 = v419;
  v407 = v420;
  v408 = v421;
  v402 = v415;
  v403 = v416;
  v412 = v425;
  v404 = v417;
  v401 = 94;
  sub_1DAC8B378();
  sub_1DACB9F84();
  memcpy(v399, v400, 0x8DCuLL);
  if (sub_1DAC8AB24(v399) == 1)
  {
    sub_1DAC8AA30(94, v353);
  }

  memcpy(v398, v400, 0x8DCuLL);
  LOBYTE(v381) = 95;
  sub_1DACB9F84();
  v191 = v384;
  if (v384 == 2)
  {
    sub_1DAC8AA30(95, v353);
  }

  LOBYTE(v384) = 48;
  sub_1DACB9F84();
  v190 = v381;
  v189 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(48, v353);
  }

  LOBYTE(v384) = 49;
  sub_1DACB9F84();
  v188 = v381;
  v187 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(49, v353);
  }

  LOBYTE(v384) = 50;
  sub_1DACB9F84();
  v186 = v381;
  v185 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(50, v353);
  }

  LOBYTE(v384) = 51;
  sub_1DACB9F84();
  v184 = v381;
  v183 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(51, v353);
  }

  LOBYTE(v384) = 52;
  sub_1DACB9F84();
  v182 = v381;
  v181 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(52, v353);
  }

  v103 = v362;
  sub_1DAA540A0(v373, v362, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v103, 1, v289) == 1)
  {
    sub_1DAA54120(v362, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v104 = v362;
    v255 = *(v362 + 712);
    v105 = *(v362 + 720);
    sub_1DACB71E4();
    sub_1DAC8EE90(v104, type metadata accessor for LanguageConfig);
    v362 = v105;
    if (v105)
    {
      goto LABEL_209;
    }
  }

  LOBYTE(v384) = 58;
  sub_1DACB9F84();
  v362 = *(&v381 + 1);
  v255 = v381;
  if (!*(&v381 + 1))
  {
    sub_1DAC8AA30(58, v353);
  }

LABEL_209:
  LOBYTE(v393) = 96;
  sub_1DACB9F84();
  v254 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(96, v353);
    v282 = 1;
  }

  else
  {
    v282 = 0;
  }

  LOBYTE(v393) = 97;
  sub_1DACB9F84();
  v253 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(97, v353);
    v281 = 1;
  }

  else
  {
    v281 = 0;
  }

  LOBYTE(v393) = 98;
  sub_1DACB9F84();
  v252 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(98, v353);
    v280 = 1;
  }

  else
  {
    v280 = 0;
  }

  LOBYTE(v393) = 99;
  sub_1DACB9F84();
  v251 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(99, v353);
    v279 = 1;
  }

  else
  {
    v279 = 0;
  }

  LOBYTE(v393) = 100;
  sub_1DACB9F84();
  v250 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(100, v353);
    v278 = 1;
  }

  else
  {
    v278 = 0;
  }

  LOBYTE(v393) = 101;
  sub_1DACB9F84();
  v249 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(101, v353);
    v277 = 1;
  }

  else
  {
    v277 = 0;
  }

  LOBYTE(v393) = 71;
  sub_1DACB9F84();
  v248 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(71, v353);
    v276 = 1;
  }

  else
  {
    v276 = 0;
  }

  LOBYTE(v393) = 72;
  sub_1DACB9F84();
  v247 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(72, v353);
    v275 = 1;
  }

  else
  {
    v275 = 0;
  }

  LOBYTE(v393) = 73;
  sub_1DACB9F84();
  v246 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(73, v353);
    v274 = 1;
  }

  else
  {
    v274 = 0;
  }

  LOBYTE(v393) = 74;
  sub_1DACB9F84();
  v245 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(74, v353);
    v273 = 1;
  }

  else
  {
    v273 = 0;
  }

  LOBYTE(v393) = 75;
  sub_1DACB9F84();
  v244 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(75, v353);
    v272 = 1;
  }

  else
  {
    v272 = 0;
  }

  v106 = v363;
  sub_1DAA540A0(v373, v363, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v106, 1, v289) == 1)
  {
    sub_1DAA54120(v363, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v107 = v363;
    v108 = *(v363 + 56);
    v243 = *(v363 + 48);
    sub_1DACB71E4();
    sub_1DAC8EE90(v107, type metadata accessor for LanguageConfig);
    v363 = v108;
    if (v108)
    {
      goto LABEL_248;
    }
  }

  LOBYTE(v384) = 76;
  sub_1DACB9F84();
  v363 = *(&v381 + 1);
  v243 = v381;
  if (!*(&v381 + 1))
  {
    sub_1DAC8AA30(76, v353);
  }

LABEL_248:
  v109 = v364;
  sub_1DAA540A0(v373, v364, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v109, 1, v289) == 1)
  {
    sub_1DAA54120(v364, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v110 = v364;
    v111 = *(v364 + 72);
    v242 = *(v364 + 64);
    sub_1DACB71E4();
    sub_1DAC8EE90(v110, type metadata accessor for LanguageConfig);
    v364 = v111;
    if (v111)
    {
      goto LABEL_254;
    }
  }

  LOBYTE(v384) = 77;
  sub_1DACB9F84();
  v364 = *(&v381 + 1);
  v242 = v381;
  if (!*(&v381 + 1))
  {
    sub_1DAC8AA30(77, v353);
  }

LABEL_254:
  LOBYTE(v384) = 78;
  sub_1DACB9F84();
  v180 = v381;
  v179 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(78, v353);
  }

  LOBYTE(v392[0]) = 59;
  sub_1DACB9F84();
  v271 = v393;
  if (v393 == 2)
  {
    sub_1DAC8AA30(59, v353);
    v271 = 2;
  }

  LOBYTE(v384) = 102;
  sub_1DACB9F84();
  v178 = v381;
  v177 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(102, v353);
  }

  LOBYTE(v393) = 103;
  sub_1DACB9F84();
  v241 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(103, v353);
    v270 = 1;
  }

  else
  {
    v270 = 0;
  }

  LOBYTE(v384) = 104;
  sub_1DACB9F84();
  v176 = v381;
  v175 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(104, v353);
  }

  LOBYTE(v393) = 60;
  sub_1DACB9F84();
  v240 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(60, v353);
    v269 = 1;
  }

  else
  {
    v269 = 0;
  }

  LOBYTE(v393) = 61;
  sub_1DAA46070(0, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
  sub_1DAC8B3CC();
  sub_1DACB9F84();
  v361 = v392[0];
  if (!v392[0])
  {
    sub_1DAC8AA30(61, v353);
    v361 = 0;
  }

  LOBYTE(v392[0]) = 105;
  sub_1DACB9F84();
  v268 = v393;
  if (v393 == 2)
  {
    sub_1DAC8AA30(105, v353);
    v268 = 2;
  }

  LOBYTE(v392[0]) = 106;
  sub_1DACB9F84();
  v267 = v393;
  if (v393 == 2)
  {
    sub_1DAC8AA30(106, v353);
    v267 = 2;
  }

  LOBYTE(v393) = 107;
  sub_1DACB9F84();
  v239 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(107, v353);
    v266 = 1;
  }

  else
  {
    v266 = 0;
  }

  LOBYTE(v393) = 62;
  sub_1DACB9F84();
  v238 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(62, v353);
    v265 = 1;
  }

  else
  {
    v265 = 0;
  }

  LOBYTE(v393) = 63;
  sub_1DACB9F84();
  v237 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(63, v353);
    v264 = 1;
  }

  else
  {
    v264 = 0;
  }

  LOBYTE(v393) = 64;
  sub_1DACB9F84();
  v236 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(64, v353);
    v263 = 1;
  }

  else
  {
    v263 = 0;
  }

  LOBYTE(v384) = 65;
  sub_1DACB9F84();
  v360 = v381;
  if (!v381)
  {
    sub_1DAC8AA30(65, v353);
  }

  LOBYTE(v384) = 66;
  sub_1DACB9F84();
  *&v298 = v381;
  if (!v381)
  {
    sub_1DAC8AA30(66, v353);
  }

  LOBYTE(v384) = 67;
  sub_1DACB9F84();
  *&v297 = v381;
  if (!v381)
  {
    sub_1DAC8AA30(67, v353);
  }

  LOBYTE(v384) = 108;
  sub_1DACB9F84();
  v174 = v381;
  v173 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(108, v353);
  }

  LOBYTE(v384) = 109;
  sub_1DACB9F84();
  v172 = v381;
  v171 = BYTE8(v381);
  if (BYTE8(v381))
  {
    sub_1DAC8AA30(109, v353);
  }

  LOBYTE(v384) = 110;
  sub_1DAC8B4BC();
  sub_1DACB9F84();
  v112 = *(&v381 + 1);
  if (*(&v381 + 1) == 1)
  {
    sub_1DAC8AA30(110, v353);
    v112 = *(&v381 + 1);
  }

  v384 = v381;
  v385 = v112;
  v386 = v382;
  LOBYTE(v378) = 68;
  sub_1DACB9F84();
  v296 = v381;
  if (!v381)
  {
    sub_1DAC8AA30(68, v353);
  }

  LOBYTE(v378) = 69;
  sub_1DACB9F84();
  v294 = v381;
  if (!v381)
  {
    sub_1DAC8AA30(69, v353);
  }

  LOBYTE(v378) = 70;
  sub_1DACB9F84();
  v293 = v381;
  if (!v381)
  {
    sub_1DAC8AA30(70, v353);
  }

  LOBYTE(v393) = 79;
  sub_1DACB9F84();
  v235 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(79, v353);
    v262 = 1;
  }

  else
  {
    v262 = 0;
  }

  LOBYTE(v393) = 80;
  sub_1DACB9F84();
  v295 = v392[0];
  if (!v392[0])
  {
    sub_1DAC8AA30(80, v353);
    v295 = 0;
  }

  LOBYTE(v393) = 81;
  sub_1DACB9F84();
  v234 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(81, v353);
    v261 = 1;
  }

  else
  {
    v261 = 0;
  }

  LOBYTE(v393) = 82;
  sub_1DACB9F84();
  v233 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(82, v353);
    v260 = 1;
  }

  else
  {
    v260 = 0;
  }

  LOBYTE(v393) = -125;
  sub_1DACB9F84();
  v232 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(131, v353);
    v259 = 1;
  }

  else
  {
    v259 = 0;
  }

  LOBYTE(v393) = 111;
  sub_1DACB9F84();
  v231 = v392[0];
  if (v392[1])
  {
    sub_1DAC8AA30(111, v353);
    v258 = 1;
  }

  else
  {
    v258 = 0;
  }

  v113 = v365;
  sub_1DAA540A0(v373, v365, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v113, 1, v289) == 1)
  {
    sub_1DAA54120(v365, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v114 = *(v365 + 744);
    v290 = *(v365 + 728);
    v284 = v114;
    v115 = *(v365 + 760);
    sub_1DAC8EE90(v365, type metadata accessor for LanguageConfig);
    if (v115 != 1)
    {
      v116 = 0;
      goto LABEL_330;
    }
  }

  LOBYTE(v378) = 112;
  sub_1DAC8B510();
  sub_1DACB9F84();
  if (v383)
  {
    sub_1DAC8AA30(112, v353);
    v116 = v383;
  }

  else
  {
    v116 = 0;
  }

  v290 = v381;
  v284 = v382;
LABEL_330:
  v381 = v290;
  v382 = v284;
  v383 = v116;
  v117 = v366;
  sub_1DAA540A0(v373, v366, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v117, 1, v289) == 1)
  {
    sub_1DAA54120(v366, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v118 = v366;
    v230 = *(v366 + 768);
    v119 = *(v366 + 776);
    sub_1DACB71E4();
    sub_1DAC8EE90(v118, type metadata accessor for LanguageConfig);
    v366 = v119;
    if (v119)
    {
      goto LABEL_336;
    }
  }

  v380 = 113;
  sub_1DACB9F84();
  v230 = v378;
  v366 = v379;
  if (!v379)
  {
    sub_1DAC8AA30(113, v353);
  }

LABEL_336:
  v120 = v367;
  sub_1DAA540A0(v373, v367, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v120, 1, v289) == 1)
  {
    sub_1DAA54120(v367, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v121 = v367;
    v229 = *(v367 + 784);
    v122 = *(v367 + 792);
    sub_1DACB71E4();
    sub_1DAC8EE90(v121, type metadata accessor for LanguageConfig);
    v367 = v122;
    if (v122)
    {
      goto LABEL_342;
    }
  }

  v380 = 114;
  sub_1DACB9F84();
  v229 = v378;
  v367 = v379;
  if (!v379)
  {
    sub_1DAC8AA30(114, v353);
  }

LABEL_342:
  v380 = 115;
  sub_1DACB9F84();
  v170 = v378;
  v169 = v379;
  if (v379)
  {
    sub_1DAC8AA30(115, v353);
  }

  v380 = 116;
  sub_1DACB9F84();
  v168 = v378;
  v167 = v379;
  if (v379)
  {
    sub_1DAC8AA30(116, v353);
  }

  v123 = v368;
  sub_1DAA540A0(v373, v368, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v123, 1, v289) == 1)
  {
    sub_1DAA54120(v368, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v124 = v368;
    v125 = *(v368 + 88);
    v228 = *(v368 + 80);
    sub_1DACB71E4();
    sub_1DAC8EE90(v124, type metadata accessor for LanguageConfig);
    v368 = v125;
    if (v125)
    {
      goto LABEL_352;
    }
  }

  v380 = 117;
  sub_1DACB9F84();
  v228 = v378;
  v368 = v379;
  if (!v379)
  {
    sub_1DAC8AA30(117, v353);
  }

LABEL_352:
  v380 = 118;
  sub_1DACB9F84();
  v166 = v378;
  v165 = v379;
  if (v379)
  {
    sub_1DAC8AA30(118, v353);
  }

  v380 = 119;
  sub_1DACB9F84();
  v164 = v378;
  v163 = v379;
  if (v379)
  {
    sub_1DAC8AA30(119, v353);
  }

  v380 = 120;
  sub_1DACB9F84();
  v162 = v378;
  v161 = v379;
  if (v379)
  {
    sub_1DAC8AA30(120, v353);
  }

  LOBYTE(v378) = 121;
  sub_1DACB9F84();
  v160 = v380;
  if (v380 == 2)
  {
    sub_1DAC8AA30(121, v353);
  }

  v380 = 122;
  sub_1DACB9F84();
  v159 = v378;
  v158 = v379;
  if (v379)
  {
    sub_1DAC8AA30(122, v353);
  }

  v380 = 124;
  sub_1DACB9F84();
  v157 = v378;
  v156 = v379;
  if (v379)
  {
    sub_1DAC8AA30(124, v353);
  }

  v380 = 125;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v155 = v378;
  v154 = v379;
  if (v379)
  {
    sub_1DAC8AA30(125, v353);
  }

  v380 = 126;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v126 = v378;
  if (v378)
  {

    v365 = sub_1DAC7BE0C(v126);
  }

  else
  {
    sub_1DAC8AA30(126, v353);

    v365 = 0;
  }

  v380 = 127;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v153[1] = v378;
  HIDWORD(v153[0]) = v379;
  if (v379)
  {
    sub_1DAC8AA30(127, v353);
  }

  v380 = 123;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v336 = v378;
  if (!v378)
  {
    sub_1DAC8AA30(123, v353);
  }

  LOBYTE(v378) = 0x80;
  sub_1DACB71F4();
  sub_1DACB9F84();
  *&v290 = 0;
  LODWORD(v153[0]) = v380;
  if (v380 == 2)
  {
    sub_1DAC8AA30(128, v353);
  }

  v380 = -127;
  sub_1DAA46980(0);
  sub_1DAC8B564();
  sub_1DACB71F4();
  v127 = v290;
  sub_1DACB9F84();
  *&v290 = v127;
  if (v127)
  {

    sub_1DAA53C6C(v384, v385, v386, *(&v386 + 1));
    v389 = v429;
    v390 = v430;
    v391 = v431;
    v388 = v428;
    v387 = v427;
    sub_1DAC8AD74(&v387, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    memcpy(v392, v432, 0x1F9uLL);
    sub_1DAC8AD74(v392, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v395 = v445;
    v396 = v446;
    v397 = v447;
    v393 = v443;
    v394 = v444;
    sub_1DAC8AD74(&v393, &qword_1EE127030, &type metadata for NewsUIConfiguration);
    sub_1DAC8AF60(v454, *(&v454 + 1));
    sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v374 + 8))(v377, v375);
    (*(v376 + 8))(v355, v356);
    goto LABEL_394;
  }

  *&v284 = v378;
  if (!v378)
  {
    sub_1DAC8AA30(129, v353);
  }

  v128 = v369;
  sub_1DAA540A0(v373, v369, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v288(v128, 1, v289) == 1)
  {
    sub_1DAA54120(v369, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    v129 = sub_1DACB88D4();
    (*(*(v129 - 8) + 56))(v371, 1, 1, v129);
  }

  else
  {
    v130 = v369;
    sub_1DAA540A0(v369 + *(v289 + 68), v371, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAC8EE90(v130, type metadata accessor for LanguageConfig);
  }

  v380 = -124;
  sub_1DACB71F4();
  v131 = v290;
  sub_1DACB9F84();
  if (v131)
  {

    sub_1DAA54120(v371, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAA53C6C(v384, v385, v386, *(&v386 + 1));
    v389 = v429;
    v390 = v430;
    v391 = v431;
    v388 = v428;
    v387 = v427;
    sub_1DAC8AD74(&v387, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    memcpy(v392, v432, 0x1F9uLL);
    sub_1DAC8AD74(v392, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v395 = v445;
    v396 = v446;
    v397 = v447;
    v393 = v443;
    v394 = v444;
    sub_1DAC8AD74(&v393, &qword_1EE127030, &type metadata for NewsUIConfiguration);
    sub_1DAC8AF60(v454, *(&v454 + 1));
    sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v374 + 8))(v377, v375);
    (*(v376 + 8))(v355, v356);
    goto LABEL_394;
  }

  v369 = v378;
  if (!v378)
  {
    sub_1DAC8AA30(132, v353);
  }

  LOBYTE(v378) = -123;
  sub_1DACB71F4();
  sub_1DACB9F84();
  LODWORD(v289) = v380;
  if (v380 == 2)
  {
    sub_1DAC8AA30(133, v353);
  }

  LOBYTE(v378) = -122;
  sub_1DACB71F4();
  sub_1DACB9F84();
  if (v380 == 2)
  {
    sub_1DAC8AA30(134, v353);
  }

  v380 = -121;
  sub_1DACB71F4();
  sub_1DACB9F84();
  *&v290 = 0;
  v288 = v378;
  if (v379)
  {
    sub_1DAC8AA30(135, v353);
  }

  v132 = v353;

  sub_1DACB71F4();
  v133 = v290;
  sub_1DAC7C00C(136, v132, v370);
  if (v133)
  {

    sub_1DAA54120(v371, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAA53C6C(v384, v385, v386, *(&v386 + 1));
    v389 = v429;
    v390 = v430;
    v391 = v431;
    v388 = v428;
    v387 = v427;
    sub_1DAC8AD74(&v387, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    memcpy(v392, v432, 0x1F9uLL);
    sub_1DAC8AD74(v392, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v395 = v445;
    v396 = v446;
    v397 = v447;
    v393 = v443;
    v394 = v444;
    sub_1DAC8AD74(&v393, &qword_1EE127030, &type metadata for NewsUIConfiguration);
    sub_1DAC8AF60(v454, *(&v454 + 1));
    sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v374 + 8))(v377, v375);
    (*(v376 + 8))(v355, v356);
    goto LABEL_394;
  }

  sub_1DAC7C1DC(v350, v69, v349, v348, v347, v346, v345, v344, v134, v135, v136, v137, v138, v139, v140, v141, v70, v343, v71, v342, v72, v341, v340, v338, v337, v335, v334, v333, v332, v331, v330, v329, v328, v327, v326, v325, v324, v323, v322, v321, v320, v319, v318, v317, v316, v315, v313, v314, v312, v311, v310, v309, v308, v307, v306, v305, v304, v303, v302, v301, v292, v291, v286);
  v142 = v352;
  swift_beginAccess();
  v143 = *v142;
  if (sub_1DAAF6904(v143))
  {
    sub_1DAA4691C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v144 = swift_allocObject();
    sub_1DAAF690C(v144, 1);
    v146 = v145;
    v145[3] = v339;
    v145[4] = sub_1DAAF691C();
    *v146 = v143;
    nullsub_1();
    v148 = v147;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v149 = sub_1DACB9AD4();
    v150 = sub_1DACB9914();
    sub_1DACB8C64("loaded app configuration with fallback values for keys: %@", 58, 2, &dword_1DAA3F000, v149, v150, v148, v153[0]);
  }

  else
  {
    v151 = sub_1DAAD4598(0);
    sub_1DAA41DCC();
    v149 = sub_1DACB9AD4();
    v152 = sub_1DACB9914();
    sub_1DACB8C64("loaded app configuration with no need for fallback values", 57, 2, &dword_1DAA3F000, v149, v152, v151, v153[0]);
  }

  sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  (*(v374 + 8))(v377, v375);
  (*(v376 + 8))(v355, v356);

  sub_1DAC8EDC4(v459, v372, type metadata accessor for AppConfiguration);
  return __swift_destroy_boxed_opaque_existential_1(v354);
}

uint64_t sub_1DAC85EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v63 = a2;
  v69 = a5;
  v68 = type metadata accessor for LanguageConfig(0);
  v6 = MEMORY[0x1EEE9AC00](v68);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v59 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v59 - v13;
  v16 = *(a1 + 16);
  v67 = v14;
  v61 = a1;
  v62 = v16;
  if (!v16)
  {
    v19 = MEMORY[0x1E69E7CC8];
LABEL_17:
    v37 = *(v63 + 16);
    if (v37)
    {
      v38 = v63 + 40;
      v40 = v66;
      v39 = v67;
      v42 = v64;
      v41 = v65;
      do
      {
        v43 = sub_1DACB93A4();
        if (v19[2])
        {
          v45 = sub_1DAA4BF3C(v43, v44);
          v47 = v46;

          if (v47)
          {
            v48 = v19[7] + *(v39 + 72) * v45;
            v49 = v60;
            sub_1DAC8ECF8(v48, v60);

            v50 = v49;
            v51 = v69;
            sub_1DAC8EDC4(v50, v69, type metadata accessor for LanguageConfig);
            v52 = 0;
            v53 = v68;
            return (*(v39 + 56))(v51, v52, 1, v53);
          }
        }

        else
        {
        }

        v38 += 16;
        --v37;
      }

      while (v37);
    }

    else
    {

      v40 = v66;
      v39 = v67;
      v42 = v64;
      v41 = v65;
    }

    v53 = v68;
    v54 = v62;
    if (v62)
    {
      v55 = v61 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v56 = *(v39 + 72);
      v70 = v55;
      do
      {
        sub_1DAC8ECF8(v55, v42);
        if (v40)
        {
          v73 = v41;
          v74 = v40;
          v57 = v42[1];
          v71 = *v42;
          v72 = v57;
          sub_1DAA642D8();
          if (!sub_1DACB9B54())
          {
            v51 = v69;
            sub_1DAC8EDC4(v42, v69, type metadata accessor for LanguageConfig);
            goto LABEL_33;
          }
        }

        sub_1DAC8EE90(v42, type metadata accessor for LanguageConfig);
        v55 += v56;
        --v54;
      }

      while (v54);
      v51 = v69;
      sub_1DAC8ECF8(v70, v69);
LABEL_33:
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v51 = v69;
    }

    return (*(v39 + 56))(v51, v52, 1, v53);
  }

  v17 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v18 = *(v14 + 72);
  v19 = MEMORY[0x1E69E7CC8];
  v70 = &v59 - v13;
  while (1)
  {
    sub_1DAC8ECF8(v17, v15);
    v20 = sub_1DACB93A4();
    v22 = v21;
    v23 = v12;
    sub_1DAC8ECF8(v15, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v19;
    v26 = sub_1DAA4BF3C(v20, v22);
    v27 = v19[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v19[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v23;
        if (v25)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DAB67D04();
        v12 = v23;
        if (v30)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DAB64054(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1DAA4BF3C(v20, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_38;
      }

      v26 = v31;
      v12 = v23;
      if (v30)
      {
LABEL_3:

        v19 = v73;
        sub_1DAC8EE2C(v12, v73[7] + v26 * v18);
        goto LABEL_4;
      }
    }

    v19 = v73;
    v73[(v26 >> 6) + 8] |= 1 << v26;
    v33 = (v19[6] + 16 * v26);
    *v33 = v20;
    v33[1] = v22;
    sub_1DAC8EDC4(v12, v19[7] + v26 * v18, type metadata accessor for LanguageConfig);
    v34 = v19[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_37;
    }

    v19[2] = v36;
LABEL_4:
    v15 = v70;
    sub_1DAC8EE90(v70, type metadata accessor for LanguageConfig);
    v17 += v18;
    if (!--v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DAC86388(char a1)
{
  result = 0x61626C6C61467369;
  switch(a1)
  {
    case 1:
      return 0x6E656D7461657274;
    case 2:
      return 0x53746E656D676573;
    case 3:
    case 4:
    case 6:
    case 29:
    case 44:
    case 52:
    case 63:
    case 64:
      return 0xD000000000000019;
    case 5:
    case 26:
    case 28:
    case 51:
    case 83:
    case 112:
      return 0xD000000000000015;
    case 7:
    case 11:
    case 30:
    case 81:
    case 86:
    case -125:
      return 0xD000000000000021;
    case 8:
    case 18:
    case 45:
    case 84:
    case 90:
    case 98:
    case -128:
    case -120:
      return 0xD00000000000001FLL;
    case 9:
    case 19:
    case 22:
    case 34:
    case 72:
    case 95:
    case 117:
      return 0xD000000000000023;
    case 10:
    case 15:
    case 53:
    case 99:
    case 110:
      return 0xD000000000000017;
    case 12:
    case 21:
    case 24:
    case 67:
    case 70:
    case 71:
    case 78:
    case 79:
      return 0xD000000000000024;
    case 13:
    case 42:
    case 43:
    case 48:
    case 109:
      v3 = 11;
      goto LABEL_51;
    case 14:
    case 55:
    case 91:
      return 0xD000000000000010;
    case 16:
    case 27:
    case 62:
    case 74:
    case 111:
    case -122:
      return 0xD00000000000001BLL;
    case 17:
    case 33:
    case 47:
    case 60:
    case 120:
    case 123:
    case 127:
      return 0xD00000000000001DLL;
    case 20:
    case 37:
      v3 = 5;
      goto LABEL_51;
    case 23:
      return 0xD000000000000012;
    case 25:
      return 0xD000000000000028;
    case 31:
      return 0xD000000000000020;
    case 32:
    case 73:
    case 75:
    case 89:
    case 116:
    case 118:
    case 125:
      return 0xD00000000000001ELL;
    case 35:
    case 36:
    case 94:
    case 108:
    case -121:
      return 0xD00000000000001CLL;
    case 38:
      return 0xD00000000000002ELL;
    case 39:
    case 40:
      v3 = 9;
      goto LABEL_51;
    case 41:
      return 0xD000000000000030;
    case 46:
      v3 = 10;
      goto LABEL_51;
    case 49:
      v3 = 19;
LABEL_51:
      result = v3 | 0xD000000000000020;
      break;
    case 50:
    case 65:
    case 68:
    case 113:
    case 124:
      result = 0xD000000000000022;
      break;
    case 54:
      result = 0x746E696F70646E65;
      break;
    case 56:
    case 59:
    case 80:
    case 121:
      result = 0xD000000000000018;
      break;
    case 57:
    case 106:
      result = 0xD000000000000014;
      break;
    case 58:
    case 76:
    case 114:
    case 119:
      result = 0xD00000000000001ALL;
      break;
    case 61:
      result = 0xD000000000000016;
      break;
    case 66:
      result = 0xD000000000000020;
      break;
    case 69:
      result = 0xD000000000000020;
      break;
    case 77:
      result = 0xD000000000000020;
      break;
    case 82:
      result = 0xD000000000000020;
      break;
    case 85:
    case 87:
    case 102:
    case 122:
    case -126:
      result = 0xD000000000000026;
      break;
    case 88:
      result = 0x6F43756F59726F66;
      break;
    case 92:
      result = 0x6F4349557377656ELL;
      break;
    case 93:
      result = 0x69666E6F43644169;
      break;
    case 96:
      result = 0xD000000000000020;
      break;
    case 97:
    case 103:
    case 115:
      result = 0xD000000000000027;
      break;
    case 100:
      result = 0xD000000000000011;
      break;
    case 101:
    case 107:
      result = 0xD000000000000013;
      break;
    case 104:
      result = 0xD00000000000002CLL;
      break;
    case 105:
      result = 0x506C6C4165646968;
      break;
    case 126:
      result = 0xD000000000000020;
      break;
    case -127:
      result = 0xD000000000000020;
      break;
    case -124:
      result = 0x43656C6369747261;
      break;
    case -123:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAC86D80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAC8C3F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAC86DB4(uint64_t a1)
{
  v2 = sub_1DAC8AC48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC86DF0(uint64_t a1)
{
  v2 = sub_1DAC8AC48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC86E2C(uint64_t a1)
{
  v77 = v2;
  v3 = v1;
  v4 = MEMORY[0x1EEE9AC00](a1);
  sub_1DAC8ED5C(0, &qword_1EE123C10, sub_1DAC8AC48, &type metadata for AppConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - v8;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DAC8AC48();
  sub_1DACBA304();
  LOBYTE(v41[0]) = 0;
  v10 = v77;
  sub_1DACBA0A4();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  *&v41[0] = v3[1];
  v75[0] = 1;
  sub_1DAA46070(0, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
  sub_1DAC8B6D8();
  sub_1DACBA0E4();
  *&v41[0] = v3[2];
  v75[0] = 2;
  sub_1DAA46070(0, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  sub_1DAC8B76C();
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 3;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 4;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 5;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 6;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 7;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 8;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 9;
  sub_1DACBA0C4();
  v77 = v3;
  *&v41[0] = v3[10];
  v75[0] = 10;
  sub_1DAA46070(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC8B800();
  v11 = v9;
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 11;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 12;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 13;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 14;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 15;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 16;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 17;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 18;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 19;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 20;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 21;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 22;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 23;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 24;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 25;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 26;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 27;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 28;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 29;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 30;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 31;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 32;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 33;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 34;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 35;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 36;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 37;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 38;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 39;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 40;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 41;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 42;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 43;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 44;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 45;
  sub_1DACBA0B4();
  v39 = (v77 + 43);
  LOBYTE(v41[0]) = 46;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 47;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 48;
  sub_1DACBA0C4();
  LOBYTE(v41[0]) = 49;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 50;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 51;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 52;
  sub_1DACBA0B4();
  *&v41[0] = v77[50];
  v75[0] = 53;
  sub_1DAA46070(0, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B894();
  sub_1DACBA0E4();
  v76[0] = v77[51];
  v75[511] = 54;
  sub_1DAA46070(0, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B984();
  sub_1DACBA0E4();
  memcpy(v75, v77 + 52, 0x1F9uLL);
  memcpy(v74, v77 + 52, sizeof(v74));
  v73 = 55;
  sub_1DAA4F398(v75, v41);
  sub_1DAA955A0();
  sub_1DACBA0E4();
  memcpy(v68, v74, 0x1F9uLL);
  sub_1DAA531E4(v68);
  v13 = *(v77 + 59);
  v14 = *(v77 + 61);
  v70 = *(v77 + 60);
  v71 = v14;
  v15 = *(v77 + 59);
  v69[0] = *(v77 + 58);
  v69[1] = v15;
  v16 = *(v77 + 61);
  v65 = v70;
  v66 = v16;
  v72 = *(v77 + 992);
  v67 = *(v77 + 992);
  v63 = v69[0];
  v64 = v13;
  v62 = 56;
  sub_1DAA4F3F4(v69, v41);
  sub_1DAB6A5A4();
  sub_1DACBA0E4();
  v60[2] = v65;
  v60[3] = v66;
  v61 = v67;
  v60[0] = v63;
  v60[1] = v64;
  sub_1DAA5337C(v60);
  v17 = *(v77 + 139);
  v41[6] = *(v77 + 137);
  v41[7] = v17;
  v18 = *(v77 + 143);
  v41[8] = *(v77 + 141);
  v41[9] = v18;
  v19 = *(v77 + 131);
  v41[2] = *(v77 + 129);
  v41[3] = v19;
  v20 = *(v77 + 135);
  v41[4] = *(v77 + 133);
  v41[5] = v20;
  v21 = *(v77 + 127);
  v41[0] = *(v77 + 125);
  v41[1] = v21;
  LOBYTE(v53[0]) = 57;
  sub_1DAC8BA74();
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 58;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 59;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 60;
  sub_1DACBA0D4();
  *&v41[0] = v77[149];
  LOBYTE(v53[0]) = 61;
  sub_1DAA46070(0, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
  sub_1DAC8BAC8();
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 62;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 63;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 64;
  sub_1DACBA0B4();
  *&v41[0] = v77[153];
  LOBYTE(v53[0]) = 65;
  sub_1DACBA0E4();
  *&v41[0] = v77[154];
  LOBYTE(v53[0]) = 66;
  sub_1DACBA0E4();
  *&v41[0] = v77[155];
  LOBYTE(v53[0]) = 67;
  sub_1DACBA0E4();
  *&v41[0] = v77[156];
  LOBYTE(v53[0]) = 68;
  sub_1DACBA0E4();
  *&v41[0] = v77[157];
  LOBYTE(v53[0]) = 69;
  sub_1DACBA0E4();
  *&v41[0] = v77[158];
  LOBYTE(v53[0]) = 70;
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 71;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 72;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 73;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 74;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 75;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 76;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 77;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 78;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 79;
  sub_1DACBA0D4();
  *&v41[0] = v77[170];
  LOBYTE(v53[0]) = 80;
  sub_1DAA46720();
  sub_1DAC8BBB8();
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 81;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 82;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 83;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 84;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 85;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 86;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 87;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 88;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 89;
  sub_1DACBA094();
  LOBYTE(v41[0]) = 90;
  sub_1DACBA0C4();
  v22 = v77[184];
  v23 = v77[185];
  v24 = v77[186];
  v56 = v77[183];
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v55 = 91;
  sub_1DAC8BC28();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACBA0E4();

  v25 = *(v77 + 187);
  v53[1] = *(v77 + 189);
  v26 = *(v77 + 189);
  v53[2] = *(v77 + 191);
  v27 = *(v77 + 191);
  v53[3] = *(v77 + 193);
  v53[0] = *(v77 + 187);
  v49 = v26;
  v50 = v27;
  v51 = *(v77 + 193);
  v54 = v77[195];
  v52 = v77[195];
  v48 = v25;
  v47 = 92;
  sub_1DAA4F450(v53, v41);
  sub_1DAC8BC7C();
  sub_1DACBA0E4();
  v45[1] = v49;
  v45[2] = v50;
  v45[3] = v51;
  v46 = v52;
  v45[0] = v48;
  sub_1DAA53A2C(v45);
  v43[0] = *(v39 + 1224);
  v44 = *(v39 + 1232);
  v42 = 93;
  sub_1DAC8BCD0();
  sub_1DACBA0E4();
  memcpy(v41, v77 + 199, 0x8DBuLL);
  v40 = 94;
  sub_1DAA55138();
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 95;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 96;
  sub_1DACBA044();
  LOBYTE(v41[0]) = 97;
  sub_1DACBA054();
  LOBYTE(v41[0]) = 98;
  sub_1DACBA054();
  LOBYTE(v41[0]) = 99;
  sub_1DACBA044();
  LOBYTE(v41[0]) = 100;
  sub_1DACBA044();
  LOBYTE(v41[0]) = 101;
  sub_1DACBA064();
  LOBYTE(v41[0]) = 102;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 103;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 104;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 105;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 106;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 107;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 108;
  sub_1DACBA064();
  LOBYTE(v41[0]) = 109;
  sub_1DACBA0F4();
  v28 = v77[504];
  v29 = v77[505];
  v30 = v77[506];
  *&v41[0] = v77[503];
  *(&v41[0] + 1) = v28;
  *&v41[1] = v29;
  *(&v41[1] + 1) = v30;
  v40 = 110;
  sub_1DAA53C24(*&v41[0], v28, v29, v30);
  sub_1DAC8BD24();
  sub_1DACBA074();
  sub_1DAA53C6C(*&v41[0], *(&v41[0] + 1), *&v41[1], *(&v41[1] + 1));
  LOBYTE(v41[0]) = 111;
  sub_1DACBA064();
  v31 = *(v39 + 3760);
  v32 = *(v39 + 3744);
  v41[0] = *(v39 + 3728);
  v41[1] = v32;
  LOBYTE(v41[2]) = v31;
  v40 = 112;
  sub_1DAC8BD78();
  sub_1DACBA074();
  LOBYTE(v41[0]) = 113;
  sub_1DACBA024();
  LOBYTE(v41[0]) = 114;
  sub_1DACBA024();
  LOBYTE(v41[0]) = 115;
  sub_1DACBA064();
  LOBYTE(v41[0]) = 116;
  sub_1DACBA064();
  LOBYTE(v41[0]) = 117;
  sub_1DACBA024();
  LOBYTE(v41[0]) = 118;
  sub_1DACBA064();
  LOBYTE(v41[0]) = 119;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 120;
  sub_1DACBA0B4();
  LOBYTE(v41[0]) = 121;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = 122;
  sub_1DACBA0D4();
  *&v41[0] = v77[530];
  v40 = 123;
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 124;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 125;
  sub_1DACBA0D4();
  *&v41[0] = v77[533];
  v40 = 126;
  sub_1DAA46778(0);
  sub_1DAC8BDCC();
  sub_1DACBA0E4();
  LOBYTE(v41[0]) = 127;
  sub_1DACBA0D4();
  LOBYTE(v41[0]) = 0x80;
  sub_1DACBA0A4();
  *&v41[0] = v77[536];
  v40 = -127;
  sub_1DAA46980(0);
  v34 = v33;
  sub_1DAB68654();
  v38[0] = v34;
  sub_1DACBA074();
  v35 = type metadata accessor for AppConfiguration(0);
  LOBYTE(v41[0]) = -126;
  v36 = sub_1DACB88D4();
  v37 = sub_1DAA4680C(&qword_1EE1240E8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
  v38[1] = v36;
  v39 = v37;
  sub_1DACBA074();
  LOBYTE(v41[0]) = -125;
  sub_1DACBA0D4();
  *&v41[0] = *(v77 + *(v35 + 544));
  v40 = -124;
  sub_1DACBA074();
  LOBYTE(v41[0]) = -123;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = -122;
  sub_1DACBA0A4();
  LOBYTE(v41[0]) = -121;
  sub_1DACBA054();
  LOBYTE(v41[0]) = -120;
  sub_1DACBA074();
  return (*(v7 + 8))(v11, 0);
}

uint64_t sub_1DAC88E4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x65676175676E616CLL;
  }

  if (v2)
  {
    v4 = 0xEF736769666E6F43;
  }

  else
  {
    v4 = 0x80000001DACE2D60;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x65676175676E616CLL;
  }

  if (*a2)
  {
    v6 = 0x80000001DACE2D60;
  }

  else
  {
    v6 = 0xEF736769666E6F43;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC88F04()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC88F98(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC89018(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC890A8@<X0>(char *a2@<X8>)
{
  v3 = sub_1DACB9F04();

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

  *a2 = v5;
  return result;
}

void sub_1DAC89108(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DACE2D60;
  v3 = 0x65676175676E616CLL;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEF736769666E6F43;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DAC89158()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_1DAC891A4@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAC89208(uint64_t a1)
{
  v2 = sub_1DAC8ABF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC89244(uint64_t a1)
{
  v2 = sub_1DAC8ABF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAC89280(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
    case 10:
      v3 = 5;
      goto LABEL_13;
    case 2:
      result = 0x6F43756F59726F66;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
    case 12:
      v3 = 10;
LABEL_13:
      result = v3 | 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0x666E6F4369626174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAC8942C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAC89280(*a1);
  v5 = v4;
  if (v3 == sub_1DAC89280(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC894B4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC89280(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC89518(uint64_t a1)
{
  sub_1DAC89280(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAC8956C(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAC89280(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC895CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC8F148(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAC895FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAC89280(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAC89644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC8F148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC89678(uint64_t a1)
{
  v2 = sub_1DAC8ECA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC896B4(uint64_t a1)
{
  v2 = sub_1DAC8ECA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC896F0(void *a1)
{
  v2 = v1;
  sub_1DAC8ED5C(0, &qword_1ECBE9938, sub_1DAC8ECA4, &type metadata for LanguageConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC8ECA4();
  sub_1DACBA304();
  v38[0] = 0;
  v9 = v43;
  sub_1DACBA094();
  if (!v9)
  {
    v38[0] = 1;
    sub_1DACBA024();
    v38[0] = 2;
    sub_1DACBA024();
    v38[0] = 3;
    sub_1DACBA024();
    v38[0] = 4;
    sub_1DACBA024();
    v38[0] = 5;
    sub_1DACBA024();
    v10 = *(v2 + 104);
    v11 = *(v2 + 112);
    v12 = *(v2 + 120);
    v39 = *(v2 + 96);
    v40 = v10;
    v41 = v11;
    v42 = v12;
    v38[511] = 6;
    sub_1DAC8B694(v39, v10, v11);
    sub_1DAC8BC28();
    sub_1DACBA074();
    sub_1DAC8AF60(v39, v40);
    memcpy(v38, (v2 + 128), 0x1F9uLL);
    memcpy(v37, (v2 + 128), sizeof(v37));
    v36[511] = 7;
    sub_1DAC8B614(v38, v36, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    sub_1DAA955A0();
    sub_1DACBA074();
    memcpy(v36, v37, 0x1F9uLL);
    sub_1DAC8AD74(v36, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v13 = *(v2 + 656);
    v14 = *(v2 + 688);
    v33 = *(v2 + 672);
    v34 = v14;
    v15 = *(v2 + 656);
    v32[0] = *(v2 + 640);
    v32[1] = v15;
    v16 = *(v2 + 688);
    v29 = v33;
    v30 = v16;
    v35 = *(v2 + 704);
    v31 = *(v2 + 704);
    v27 = v32[0];
    v28 = v13;
    v26 = 8;
    sub_1DAC8B614(v32, v24, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    sub_1DAB6A5A4();
    sub_1DACBA074();
    v24[2] = v29;
    v24[3] = v30;
    v25 = v31;
    v24[0] = v27;
    v24[1] = v28;
    sub_1DAC8AD74(v24, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    LOBYTE(v21) = 9;
    sub_1DACBA024();
    v17 = *(v2 + 760);
    v18 = *(v2 + 744);
    v21 = *(v2 + 728);
    v22 = v18;
    v23 = v17;
    v20[15] = 10;
    sub_1DAC8BD78();
    sub_1DACBA074();
    LOBYTE(v21) = 11;
    sub_1DACBA024();
    LOBYTE(v21) = 12;
    sub_1DACBA024();
    type metadata accessor for LanguageConfig(0);
    LOBYTE(v21) = 13;
    sub_1DACB88D4();
    sub_1DAA4680C(&qword_1EE1240E8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
    sub_1DACBA074();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAC89CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = v39 - v4;
  sub_1DAC8ED5C(0, &qword_1EE123CE8, sub_1DAC8ECA4, &type metadata for LanguageConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  v8 = type metadata accessor for LanguageConfig(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC8ECA4();
  v46 = v7;
  v11 = v59;
  sub_1DACBA2F4();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v8;
  v41 = a1;
  v12 = v44;
  v59 = v10;
  LOBYTE(v58[0]) = 0;
  v13 = sub_1DACB9FA4();
  v14 = v59;
  *v59 = v13;
  *(v14 + 1) = v15;
  LOBYTE(v58[0]) = 1;
  *(v14 + 2) = sub_1DACB9F34();
  *(v14 + 3) = v16;
  LOBYTE(v58[0]) = 2;
  v39[1] = 0;
  *(v14 + 4) = sub_1DACB9F34();
  *(v14 + 5) = v17;
  LOBYTE(v58[0]) = 3;
  *(v14 + 6) = sub_1DACB9F34();
  *(v14 + 7) = v18;
  LOBYTE(v58[0]) = 4;
  *(v14 + 8) = sub_1DACB9F34();
  *(v14 + 9) = v19;
  LOBYTE(v58[0]) = 5;
  *(v14 + 10) = sub_1DACB9F34();
  *(v14 + 11) = v20;
  LOBYTE(v52) = 6;
  sub_1DAC8AF0C();
  sub_1DACB9F84();
  v21 = v58[1];
  *(v14 + 6) = v58[0];
  *(v14 + 7) = v21;
  v57 = 7;
  sub_1DAC8B27C();
  sub_1DACB9F84();
  memcpy(v14 + 128, v58, 0x1F9uLL);
  v51 = 8;
  sub_1DAC8B2D0();
  sub_1DACB9F84();
  v22 = v55;
  v23 = v59;
  *(v59 + 42) = v54;
  *(v23 + 43) = v22;
  v23[704] = v56;
  v24 = v53;
  *(v23 + 40) = v52;
  *(v23 + 41) = v24;
  LOBYTE(v48) = 9;
  v25 = sub_1DACB9F34();
  v26 = v59;
  *(v59 + 89) = v25;
  *(v26 + 90) = v27;
  v47 = 10;
  sub_1DAC8B510();
  sub_1DACB9F84();
  v28 = v59 + 728;
  v29 = v50;
  v30 = v49;
  *(v59 + 728) = v48;
  *(v28 + 1) = v30;
  v28[32] = v29;
  LOBYTE(v48) = 11;
  v31 = sub_1DACB9F34();
  v32 = v59;
  *(v59 + 96) = v31;
  *(v32 + 97) = v33;
  LOBYTE(v48) = 12;
  v34 = sub_1DACB9F34();
  v35 = v59;
  *(v59 + 98) = v34;
  *(v35 + 99) = v36;
  sub_1DACB88D4();
  LOBYTE(v48) = 13;
  sub_1DAA4680C(&qword_1EE1240E0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1DACB9F84();
  (*(v12 + 8))(v46, v45);
  v37 = v59;
  sub_1DAC8AB40(v43, &v59[*(v40 + 68)]);
  sub_1DAC8ECF8(v37, v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1DAC8EE90(v37, type metadata accessor for LanguageConfig);
}

uint64_t sub_1DAC8A80C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1DAA4691C(0, &qword_1EE123D38, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1DACB9DF4();
  __swift_allocate_value_buffer(v8, a2);
  v9 = __swift_project_value_buffer(v8, a2);
  sub_1DACB9DE4();
  v10 = *(v8 - 8);
  result = (*(v10 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 32))(v9, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC8A980@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB9DF4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1DAC8AA18(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAC8AA30(char a1, uint64_t a2)
{
  v3 = sub_1DAC86388(a1);
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DAA9A3B0(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DAA9A3B0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_1DAC8AB08(uint64_t a1)
{
  if (*(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC8AB24(uint64_t a1)
{
  if (*(a1 + 2267))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC8AB40(uint64_t a1, uint64_t a2)
{
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAC8ABF4()
{
  result = qword_1EE124DF8;
  if (!qword_1EE124DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124DF8);
  }

  return result;
}

unint64_t sub_1DAC8AC48()
{
  result = qword_1EE124E48;
  if (!qword_1EE124E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E48);
  }

  return result;
}

unint64_t sub_1DAC8AC9C()
{
  result = qword_1EE123F70;
  if (!qword_1EE123F70)
  {
    sub_1DAA4691C(255, &qword_1EE123F78, type metadata accessor for LanguageConfig, MEMORY[0x1E69E62F8]);
    sub_1DAA4680C(&qword_1EE124F90, type metadata accessor for LanguageConfig, &unk_1DACDD4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F70);
  }

  return result;
}

uint64_t sub_1DAC8AD74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAA46070(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAC8ADE4()
{
  result = qword_1EE123E40;
  if (!qword_1EE123E40)
  {
    sub_1DAA46070(255, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E40);
  }

  return result;
}

unint64_t sub_1DAC8AE78()
{
  result = qword_1EE123E58;
  if (!qword_1EE123E58)
  {
    sub_1DAA46070(255, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E58);
  }

  return result;
}

unint64_t sub_1DAC8AF0C()
{
  result = qword_1EE1246B0;
  if (!qword_1EE1246B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246B0);
  }

  return result;
}

uint64_t sub_1DAC8AF60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DAC8AFA4()
{
  result = qword_1EE124CA0;
  if (!qword_1EE124CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CA0);
  }

  return result;
}

unint64_t sub_1DAC8AFF8()
{
  result = qword_1EE124EB0;
  if (!qword_1EE124EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EB0);
  }

  return result;
}

unint64_t sub_1DAC8B04C()
{
  result = qword_1EE123EE0;
  if (!qword_1EE123EE0)
  {
    sub_1DAA46070(255, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8B0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123EE0);
  }

  return result;
}

unint64_t sub_1DAC8B0E8()
{
  result = qword_1EE124400;
  if (!qword_1EE124400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124400);
  }

  return result;
}

unint64_t sub_1DAC8B13C()
{
  result = qword_1EE123F40;
  if (!qword_1EE123F40)
  {
    sub_1DAA46070(255, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8B1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F40);
  }

  return result;
}

unint64_t sub_1DAC8B1D8()
{
  result = qword_1EE1248F0;
  if (!qword_1EE1248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248F0);
  }

  return result;
}

double sub_1DAC8B22C(_OWORD *a1)
{
  result = 0.0;
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 489) = 0u;
  return result;
}

unint64_t sub_1DAC8B27C()
{
  result = qword_1EE124798;
  if (!qword_1EE124798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124798);
  }

  return result;
}

unint64_t sub_1DAC8B2D0()
{
  result = qword_1EE1243D8;
  if (!qword_1EE1243D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243D8);
  }

  return result;
}

unint64_t sub_1DAC8B324()
{
  result = qword_1EE124548;
  if (!qword_1EE124548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124548);
  }

  return result;
}

unint64_t sub_1DAC8B378()
{
  result = qword_1EE1244F8;
  if (!qword_1EE1244F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244F8);
  }

  return result;
}

unint64_t sub_1DAC8B3CC()
{
  result = qword_1EE123FA8;
  if (!qword_1EE123FA8)
  {
    sub_1DAA46070(255, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
    sub_1DAC8B468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FA8);
  }

  return result;
}

unint64_t sub_1DAC8B468()
{
  result = qword_1EE125250;
  if (!qword_1EE125250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125250);
  }

  return result;
}

unint64_t sub_1DAC8B4BC()
{
  result = qword_1EE1247F0;
  if (!qword_1EE1247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247F0);
  }

  return result;
}

unint64_t sub_1DAC8B510()
{
  result = qword_1EE124520;
  if (!qword_1EE124520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124520);
  }

  return result;
}

unint64_t sub_1DAC8B564()
{
  result = qword_1EE123FD8;
  if (!qword_1EE123FD8)
  {
    sub_1DAA46980(255);
    sub_1DAA4680C(&qword_1EE1240E0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FD8);
  }

  return result;
}

uint64_t sub_1DAC8B614(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1DAA46070(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1DAC8B694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1DACB71E4();

    sub_1DACB71E4();
  }
}

unint64_t sub_1DAC8B6D8()
{
  result = qword_1EE123E48;
  if (!qword_1EE123E48)
  {
    sub_1DAA46070(255, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E48);
  }

  return result;
}

unint64_t sub_1DAC8B76C()
{
  result = qword_1EE123E60;
  if (!qword_1EE123E60)
  {
    sub_1DAA46070(255, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E60);
  }

  return result;
}

unint64_t sub_1DAC8B800()
{
  result = qword_1EE123E98;
  if (!qword_1EE123E98)
  {
    sub_1DAA46070(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E98);
  }

  return result;
}

unint64_t sub_1DAC8B894()
{
  result = qword_1EE123EE8;
  if (!qword_1EE123EE8)
  {
    sub_1DAA46070(255, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8B930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123EE8);
  }

  return result;
}

unint64_t sub_1DAC8B930()
{
  result = qword_1EE124408;
  if (!qword_1EE124408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124408);
  }

  return result;
}

unint64_t sub_1DAC8B984()
{
  result = qword_1EE123F48;
  if (!qword_1EE123F48)
  {
    sub_1DAA46070(255, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8BA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F48);
  }

  return result;
}

unint64_t sub_1DAC8BA20()
{
  result = qword_1EE1248F8[0];
  if (!qword_1EE1248F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1248F8);
  }

  return result;
}

unint64_t sub_1DAC8BA74()
{
  result = qword_1EE124550;
  if (!qword_1EE124550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124550);
  }

  return result;
}

unint64_t sub_1DAC8BAC8()
{
  result = qword_1EE123FB0;
  if (!qword_1EE123FB0)
  {
    sub_1DAA46070(255, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
    sub_1DAC8BB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FB0);
  }

  return result;
}

unint64_t sub_1DAC8BB64()
{
  result = qword_1EE125258;
  if (!qword_1EE125258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125258);
  }

  return result;
}

unint64_t sub_1DAC8BBB8()
{
  result = qword_1EE123E20;
  if (!qword_1EE123E20)
  {
    sub_1DAA46720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E20);
  }

  return result;
}

unint64_t sub_1DAC8BC28()
{
  result = qword_1EE1246B8;
  if (!qword_1EE1246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246B8);
  }

  return result;
}

unint64_t sub_1DAC8BC7C()
{
  result = qword_1EE124CA8;
  if (!qword_1EE124CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CA8);
  }

  return result;
}

unint64_t sub_1DAC8BCD0()
{
  result = qword_1EE124EB8;
  if (!qword_1EE124EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EB8);
  }

  return result;
}

unint64_t sub_1DAC8BD24()
{
  result = qword_1EE1247F8;
  if (!qword_1EE1247F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247F8);
  }

  return result;
}

unint64_t sub_1DAC8BD78()
{
  result = qword_1EE124528;
  if (!qword_1EE124528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124528);
  }

  return result;
}

unint64_t sub_1DAC8BDCC()
{
  result = qword_1EE123E30;
  if (!qword_1EE123E30)
  {
    sub_1DAA46778(255);
    sub_1DAA4680C(&qword_1EE125278, MEMORY[0x1E6969680], MEMORY[0x1E6969688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x78)
  {
    goto LABEL_17;
  }

  if (a2 + 136 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 136) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 136;
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

      return (*a1 | (v4 << 8)) - 136;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 136;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x89;
  v8 = v6 - 137;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 136 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 136) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x78)
  {
    v4 = 0;
  }

  if (a2 > 0x77)
  {
    v5 = ((a2 - 120) >> 8) + 1;
    *result = a2 - 120;
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
    *result = a2 - 120;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAC8BFFC(uint64_t a1)
{
  sub_1DAA46070(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DAA46070(319, qword_1EE120FA8, &type metadata for TopStoriesConfiguration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DAA46070(319, &qword_1EE124790, &type metadata for PaidBundleConfiguration, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DAA46070(319, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1DAA46070(319, qword_1EE1208F8, &type metadata for AppReviewPromptConfiguration, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1DAA4691C(319, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DAC8C1E8()
{
  result = qword_1ECBE9928;
  if (!qword_1ECBE9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9928);
  }

  return result;
}

unint64_t sub_1DAC8C240()
{
  result = qword_1ECBE9930;
  if (!qword_1ECBE9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9930);
  }

  return result;
}

unint64_t sub_1DAC8C298()
{
  result = qword_1EE124E38;
  if (!qword_1EE124E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E38);
  }

  return result;
}

unint64_t sub_1DAC8C2F0()
{
  result = qword_1EE124E40;
  if (!qword_1EE124E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E40);
  }

  return result;
}

unint64_t sub_1DAC8C348()
{
  result = qword_1EE124E00;
  if (!qword_1EE124E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E00);
  }

  return result;
}

unint64_t sub_1DAC8C3A0()
{
  result = qword_1EE124E08;
  if (!qword_1EE124E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E08);
  }

  return result;
}

uint64_t sub_1DAC8C3F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61626C6C61467369 && a2 == 0xEA00000000006B63;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E656D676573 && a2 == 0xED00007344497465 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1140 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1160 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF1180 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF11A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF11C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF11F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1210 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACF1240 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF1260 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1290 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF12C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACF12F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACF1310 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF1330 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1350 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF1370 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1390 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001DACF13C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF13F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1420 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACF1450 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1470 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001DACF14A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF14D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF14F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF1510 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1530 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACE9D80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1550 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1580 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF15A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF15C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF15F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF1610 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001DACF1630 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001DACF1660 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001DACF1690 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001DACF16C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001DACF16F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF1730 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF1760 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACE8950 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE8970 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001DACE89A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1790 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF17B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001DACF17E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF1820 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE89D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACE89F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACF1850 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEF736769666E6F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE2E60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACE9720 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACF1870 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACE2EA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACF1890 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF18B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACF18D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF18F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1910 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1930 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF1950 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1980 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF19B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF19E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1A10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1A40 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1A70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1AA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1AD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF1AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1B10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACF1B30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1B50 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1B80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1BB0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACF1BE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 80;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF1C00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 81;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1C30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 82;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF1C60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 83;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF1C80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 84;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1CA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 85;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF1CD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 86;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1D00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 87;
  }

  else if (a1 == 0x6F43756F59726F66 && a2 == 0xEE0044496769666ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 88;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACE8900 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 89;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE8920 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 90;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE2E40 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 91;
  }

  else if (a1 == 0x6F4349557377656ELL && a2 == 0xEC0000006769666ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 92;
  }

  else if (a1 == 0x69666E6F43644169 && a2 == 0xE900000000000067 || (sub_1DACBA174() & 1) != 0)
  {

    return 93;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACE8A70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 94;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1D30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 95;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACE8F90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 96;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACF1D60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 97;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE8FF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 98;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACE9010 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 99;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACF1D90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 100;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACF1DB0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 101;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1DD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 102;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACE97D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 103;
  }

  else if (a1 == 0xD00000000000002CLL && 0x80000001DACF1E00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 104;
  }

  else if (a1 == 0x506C6C4165646968 && a2 == 0xEF736C6C61777961 || (sub_1DACBA174() & 1) != 0)
  {

    return 105;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE9880 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 106;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACE98C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 107;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF1E30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 108;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACE9130 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 109;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACE90E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 110;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF1E50 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 111;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE2EC0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 112;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACE2EE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 113;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACE2F10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 114;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACF1E70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 115;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1EA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 116;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACE2E10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 117;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1EC0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 118;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACF1EE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 119;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1F00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 120;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACF1F20 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 121;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1F40 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 122;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1F70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 123;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF1F90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 124;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1FC0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 125;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1FE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 126;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF2010 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 127;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF2030 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 128;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACE9770 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 129;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF2050 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 130;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF2080 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 131;
  }

  else if (a1 == 0x43656C6369747261 && a2 == 0xED00006769666E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 132;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF20B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 133;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF20E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 134;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF2100 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 135;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF2120 == a2)
  {

    return 136;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 4294967176;
    }

    else
    {
      return 4294967177;
    }
  }
}

unint64_t sub_1DAC8ECA4()
{
  result = qword_1EE124FA8;
  if (!qword_1EE124FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FA8);
  }

  return result;
}

uint64_t sub_1DAC8ECF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAC8ED5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DAC8EDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC8EE2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageConfig(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC8EE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for LanguageConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAC8F044()
{
  result = qword_1ECBE9940[0];
  if (!qword_1ECBE9940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE9940);
  }

  return result;
}

unint64_t sub_1DAC8F09C()
{
  result = qword_1EE124F98;
  if (!qword_1EE124F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124F98);
  }

  return result;
}

unint64_t sub_1DAC8F0F4()
{
  result = qword_1EE124FA0;
  if (!qword_1EE124FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FA0);
  }

  return result;
}

unint64_t sub_1DAC8F148(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC8F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for YahooBaseResponse.Query(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAC8F204(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

void sub_1DAC8F34C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if ((v6 & 0x80000000) != 0)
        {
          v20 = ((a1 + v8 + 8) & ~v8);
          if (v6 >= a2)
          {
            v24 = *(v5 + 56);
            v25 = (a1 + v8 + 8) & ~v8;

            v24(v25);
          }

          else
          {
            if (v9 <= 3)
            {
              v21 = ~(-1 << (8 * v9));
            }

            else
            {
              v21 = -1;
            }

            if (v9)
            {
              v22 = v21 & (~v6 + a2);
              if (v9 <= 3)
              {
                v23 = v9;
              }

              else
              {
                v23 = 4;
              }

              bzero(v20, v9);
              if (v23 > 2)
              {
                if (v23 == 3)
                {
                  *v20 = v22;
                  v20[2] = BYTE2(v22);
                }

                else
                {
                  *v20 = v22;
                }
              }

              else if (v23 == 1)
              {
                *v20 = v22;
              }

              else
              {
                *v20 = v22;
              }
            }
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v19 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v19 = a2 - 1;
          }

          *a1 = v19;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, v10);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v10) = v16;
    }

    else
    {
      *(a1 + v10) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v10) = v16;
  }
}

void sub_1DAC8F5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for YahooBaseResponse.QueryResults(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_1DAB33850();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAC8F670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for YahooBaseResponse.Item(255, *(a1 + 16), *(a1 + 24), a4);
  v6 = v5;
  result = sub_1DACB9724();
  if (v8 <= 0x3F)
  {
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAC8F718(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DAC8F89C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + 8) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_58:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = (&a1[v9 + 8] & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25(v21);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *a1 = v20;
  }
}

uint64_t sub_1DAC8FB8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAC8FBFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1DAC8FD3C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1DAC8FF70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657461657263 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DAC90074(char a1)
{
  sub_1DACBA284();
  MEMORY[0x1E1277D70](a1 & 1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC900BC(char a1)
{
  if (a1)
  {
    return 0x64657461657263;
  }

  else
  {
    return 0x73746C75736572;
  }
}

uint64_t sub_1DAC900EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  Results = type metadata accessor for YahooBaseResponse.QueryResults(0, a2, a3, a4);
  v37 = *(Results - 8);
  MEMORY[0x1EEE9AC00](Results);
  v40 = &v33 - v8;
  type metadata accessor for YahooBaseResponse.Query.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v10 = sub_1DACBA004();
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v15 = type metadata accessor for YahooBaseResponse.Query(0, a2, a3, v14);
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v42;
  sub_1DACBA2F4();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v17;
  v42 = v15;
  v20 = v37;
  v44 = 0;
  v21 = Results;
  swift_getWitnessTable();
  v22 = v40;
  v23 = v38;
  sub_1DACB9FE4();
  v24 = *(v20 + 32);
  v34 = v19;
  v24(v19, v22, v21);
  v43 = 1;
  v25 = sub_1DACB9F34();
  v27 = v26;
  (*(v39 + 8))(v13, v23);
  v28 = v42;
  v29 = v34;
  v30 = &v34[*(v42 + 36)];
  *v30 = v25;
  v30[1] = v27;
  v31 = v35;
  (*(v35 + 16))(v36, v29, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v31 + 8))(v29, v28);
}